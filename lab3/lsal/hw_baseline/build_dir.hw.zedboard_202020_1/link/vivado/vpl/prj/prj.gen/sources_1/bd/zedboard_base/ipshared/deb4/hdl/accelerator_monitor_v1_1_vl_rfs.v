//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     SDx_Accel_Monitor.v
// Version    :     v1.0
// Description:     SAM top module
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module accelerator_monitor #(
  parameter STALL_MON = 1,
  parameter TRACE_ID = 0,
  parameter MONITOR_MODE = 0,
  parameter ENABLE_TRACE = 1,
  parameter EN_AXI_LITE = 1,
  parameter COUNT_WIDTH = 32,
  parameter EXT_TRACE_RST = 1,
  parameter EXT_MON_RST = 1
  )
  (
    // Compute Unit Ports
    input mon_clk,
    input mon_resetn,
    input event_start,
    input event_done,
    input stall_start_ext,
    input stall_done_ext,
    input stall_start_str,
    input stall_done_str,
    input stall_start_int,
    input stall_done_int,
    // Axi Slave Bus
    input[31:0]      s_axi_awaddr,
    input[2:0]      s_axi_awprot,
    input           s_axi_awvalid,
    output          s_axi_awready,
    input[31:0]     s_axi_wdata,
    input[3:0]      s_axi_wstrb,
    input           s_axi_wvalid,
    output          s_axi_wready,
    output[1:0]     s_axi_bresp,
    output          s_axi_bvalid,
    input           s_axi_bready,
    input[31:0]      s_axi_araddr,
    input[2:0]      s_axi_arprot,
    input           s_axi_arvalid,
    output          s_axi_arready,
    output[31:0]    s_axi_rdata,
    output[1:0]     s_axi_rresp,
    output          s_axi_rvalid,
    input           s_axi_rready,
    // Axi Slave Monitor bus
    input[7:0]      s_axi_awaddr_mon,
    input[2:0]      s_axi_awprot_mon,
    input           s_axi_awvalid_mon,
    input           s_axi_awready_mon,
    input[31:0]     s_axi_wdata_mon,
    input[3:0]      s_axi_wstrb_mon,
    input           s_axi_wvalid_mon,
    input           s_axi_wready_mon,
    input[1:0]      s_axi_bresp_mon,
    input           s_axi_bvalid_mon,
    input           s_axi_bready_mon,
    input[7:0]      s_axi_araddr_mon,
    input[2:0]      s_axi_arprot_mon,
    input           s_axi_arvalid_mon,
    input           s_axi_arready_mon,
    input[31:0]     s_axi_rdata_mon,
    input[1:0]      s_axi_rresp_mon,
    input           s_axi_rvalid_mon,
    input           s_axi_rready_mon,
    //Input AP_CTRL bus
    input ap_continue,
    input ap_ready,
    input ap_start,
    input ap_idle,
    input ap_done,
    // Trace bus
    input trace_clk,
    input trace_rst,
    input trace_counter_overflow,
    input [44:0] trace_counter,
    output trace_event,
    output [63:0] trace_data,
    output trace_valid,
    input trace_read
  );

  wire[3:0] start_events;
  wire[3:0] stop_events;
  wire[5:0] trace_control;
  wire[31:0] sample_data;

  wire sample_en;
  wire Metrics_Cnt_Reset;
  wire Metrics_Cnt_En;
  wire Reset_On_Sample_Read;

  // Axi lite
  wire[31:0] slv_reg_out;
  wire slv_reg_out_vld;
  wire[31:0] slv_reg_in;
  wire slv_reg_in_vld;
  wire[13:0] slv_reg_addr;
  wire slv_reg_addr_vld;

  wire start_pulse;
  wire done_pulse;
  wire dataflow_en;

  /*
   * External/Internal Reset
   */
  wire _mon_resetn;
  if (EXT_MON_RST == 0) begin
    reg mon_reset_reg = 0;
    reg [3:0] mon_reset_dly_cnt = 0;
    always @(posedge mon_clk) begin
      if (mon_reset_dly_cnt < 4'hf)
        mon_reset_dly_cnt <= mon_reset_dly_cnt + 1;
      else
        mon_reset_reg <= 1;
    end
    assign _mon_resetn = mon_reset_reg;
  end
  else begin
    assign _mon_resetn = mon_resetn;
  end

  wire _trace_rst;
  if (EXT_TRACE_RST == 0) begin
    reg trace_reset_reg = 0;
    reg [3:0] trace_reset_dly_cnt = 0;
    always @(posedge trace_clk) begin
      if (trace_reset_dly_cnt < 4'hf)
        trace_reset_dly_cnt <= trace_reset_dly_cnt + 1;
      else
        trace_reset_reg <= 1;
    end
    assign _trace_rst = trace_reset_reg;
  end
  else begin
    assign _trace_rst = trace_rst;
  end

  /*
   * Select type of accelerator monitoring
   */

  if (MONITOR_MODE == 0 || MONITOR_MODE == 3) begin
    /*
     * MODE 0 = Legacy SDSoC 
     * MODE 4 = System Compiler
     */
    ap_accel_monitor #(
       .TRACE_ID(TRACE_ID)
     ) ap_trace_i (
     .ap_continue              (ap_continue),
     .ap_ready                 (ap_ready),
     .ap_start                 (ap_start),
     .ap_idle                  (ap_idle),
     .ap_done                  (ap_done),
     .mon_clk                  (mon_clk),
     .mon_resetn               (_mon_resetn),
     .start_pulse              (start_pulse),
     .stop_pulse               (done_pulse)         
    ); 
  end
  else if (MONITOR_MODE == 1) begin
    /* Axi Lite Ctrl */
    monitor_axilite mon_axilite_i
    (
      .clk            (mon_clk),
      .rst            (_mon_resetn),
      .is_dataflow    (dataflow_en),
      .araddr         (s_axi_araddr_mon),
      .arvalid        (s_axi_arvalid_mon),
      .arready        (s_axi_arready_mon),
      .rdata          (s_axi_rdata_mon),
      .rvalid         (s_axi_rvalid_mon),
      .rready         (s_axi_rready_mon),
      .awaddr         (s_axi_awaddr_mon),
      .awvalid        (s_axi_awvalid_mon),
      .awready        (s_axi_awready_mon),
      .wdata          (s_axi_wdata_mon),
      .wvalid         (s_axi_wvalid_mon),
      .wready         (s_axi_wready_mon),
      .wstrb          (s_axi_wstrb_mon),
      .cu_start_pulse (start_pulse),
      .cu_done_pulse  (done_pulse)
    );
  end
  else if (MONITOR_MODE == 2) begin
    /* HLS Event */
    assign start_pulse = event_start;
    assign done_pulse = event_done;
  end

  assign start_events = {stall_start_ext,stall_start_str,stall_start_int,start_pulse};
  assign stop_events  = {stall_done_ext, stall_done_str, stall_done_int,done_pulse};

  /*
   * Select type of counters (SDSoC vs SDAccel)
   * Todo : add SDSoC counters
   */

  if ((MONITOR_MODE > 0) && (EN_AXI_LITE > 0)) begin

    accel_counters #(
      .STALL_MON   (STALL_MON),
      .C_WIDTH     (COUNT_WIDTH)
    ) acc_ctr_i
    (
      .clk          (mon_clk),
      .rst          (_mon_resetn),
      .event_start  (start_events),
      .event_stop   (stop_events),
      .addr         (slv_reg_addr),
      .sample_en    (sample_en),
      .ctr_rst      (Metrics_Cnt_Reset),
      .ctr_enable   (Metrics_Cnt_En),
      .sample_data  (sample_data)
    );

    register_module #(
    ) registers_i (
      .mon_clk                  (mon_clk),
      .mon_resetn               (_mon_resetn),
      .slv_reg_in               (slv_reg_in),
      .slv_reg_in_vld           (slv_reg_in_vld),
      .slv_reg_out              (slv_reg_out),
      .slv_reg_out_vld          (slv_reg_out_vld),
      .slv_reg_addr             (slv_reg_addr),
      .slv_reg_addr_vld         (slv_reg_addr_vld),
      .sample_metric_ram_data   (sample_data),
      .metrics_cnt_en           (Metrics_Cnt_En),
      .metrics_cnt_reset        (Metrics_Cnt_Reset),
      .reset_on_sample_read     (Reset_On_Sample_Read),
      .lat_sample_reg           (sample_en),
      .dataflow_en              (dataflow_en),
      .trace_control            (trace_control)
    );
  end

  if (EN_AXI_LITE > 0) begin
    AXI_LITE_IF axi_lite_if_i 
    (
      .slv_reg_in         (slv_reg_in),
      .slv_reg_in_vld     (slv_reg_in_vld),
      .slv_reg_out        (slv_reg_out),
      .slv_reg_out_vld    (slv_reg_out_vld),
      .slv_reg_addr       (slv_reg_addr),
      .slv_reg_addr_vld   (slv_reg_addr_vld),
      .S_AXI_ACLK         (mon_clk),
      .S_AXI_ARESETN      (_mon_resetn),
      .S_AXI_AWADDR       (s_axi_awaddr),
      .S_AXI_AWPROT       (s_axi_awprot),
      .S_AXI_AWVALID      (s_axi_awvalid),
      .S_AXI_AWREADY      (s_axi_awready),
      .S_AXI_WDATA        (s_axi_wdata),
      .S_AXI_WSTRB        (s_axi_wstrb),
      .S_AXI_WVALID       (s_axi_wvalid),
      .S_AXI_WREADY       (s_axi_wready),
      .S_AXI_BRESP        (s_axi_bresp),
      .S_AXI_BVALID       (s_axi_bvalid),
      .S_AXI_BREADY       (s_axi_bready),
      .S_AXI_ARADDR       (s_axi_araddr),
      .S_AXI_ARPROT       (s_axi_arprot),
      .S_AXI_ARVALID      (s_axi_arvalid),
      .S_AXI_ARREADY      (s_axi_arready),
      .S_AXI_RDATA        (s_axi_rdata),
      .S_AXI_RRESP        (s_axi_rresp),
      .S_AXI_RVALID       (s_axi_rvalid),
      .S_AXI_RREADY       (s_axi_rready)
    );
  end

  /*
   * Select type of trace (SDSoC vs SDAccel)
   */

    if (ENABLE_TRACE > 0) begin

      wire[3:0] _start_events = start_events & trace_control[3:0];
      wire[3:0] _stop_events = stop_events & trace_control[3:0];
      wire[3:0] trace_start_events;
      wire[3:0] trace_stop_events;

      xpm_cdc_array_single #(
        .DEST_SYNC_FF(4),
        .SRC_INPUT_REG(1),
        .WIDTH(4)
      )
      tr_cdc_start_0 (
        .dest_out (trace_start_events),
        .dest_clk (trace_clk),
        .src_clk  (mon_clk),
        .src_in   (_start_events)
      );

      xpm_cdc_array_single #(
        .DEST_SYNC_FF(4),
        .SRC_INPUT_REG(1),
        .WIDTH(4)
      )
      tr_cdc_stop_0 (
        .dest_out (trace_stop_events),
        .dest_clk (trace_clk),
        .src_clk  (mon_clk),
        .src_in   (_stop_events)
      );

      wire trace_event = trace_start_events | trace_stop_events;

      if (MONITOR_MODE == 0) begin
        ap_timestamper #(
          .TRACE_ID        (TRACE_ID)
        ) ts_i
        (
        .start             (trace_start_events[0]),
        .stop              (trace_stop_events[1]),
        .clk               (trace_clk),
        .rst               (~_trace_rst),
        .en                (1),
        .counter           (trace_counter),
        .counter_overflow  (trace_counter_overflow),
        .event_out         (trace_data),
        .event_valid       (trace_valid),
        .event_read        (trace_read)
        );
      end
      else begin
        timestamper #( 
          .TRACE_ID           (TRACE_ID)
        ) trace_i
        (
          .event_start        (trace_start_events),
          .event_stop         (trace_stop_events),
          .trace_clk          (trace_clk),
          .mon_clk            (trace_clk),
          .rst                (_trace_rst),
          .en                 (1'b1),
          .counter            (trace_counter),
          .counter_overflow   (trace_counter_overflow),
          .event_out          (trace_data),
          .event_valid        (trace_valid),
          .event_read         (trace_read)
        );
      end
    end

endmodule
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689
//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     AXI_LITE.v
// Version    :     v1.0
// Description:     Implements an axi slave interface.
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module AXI_LITE_IF #(
		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32
	)
	(
	    input wire [31:0] slv_reg_in,
	    output wire [31:0] slv_reg_out,
	    output wire [7:0] slv_reg_addr,
	    output wire slv_reg_addr_vld,
        output wire slv_reg_out_vld,
        input wire slv_reg_in_vld,

		input wire  S_AXI_ACLK,           // Global Clock Signal
		input wire  S_AXI_ARESETN,        // Global Reset Signal. This Signal is Active LOW
		input wire [7 : 0] S_AXI_AWADDR, // Write address (issued by master, acceped by Slave)
		input wire [2 : 0] S_AXI_AWPROT,  // Write channel Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
		input wire  S_AXI_AWVALID,        // Write address valid. This signal indicates that the master signaling valid write address and control information.
		output wire  S_AXI_AWREADY,       // Write address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		input wire [31 : 0] S_AXI_WDATA,  // Write data (issued by master, acceped by Slave)
		input wire [3 : 0] S_AXI_WSTRB,   // Write strobes. This signal indicates which byte lanes hold valid data. There is one write strobe bit for each eight bits of the write data bus.
		input wire  S_AXI_WVALID,         // Write valid. This signal indicates that valid write data and strobes are available.
		output wire  S_AXI_WREADY,        // Write ready. This signal indicates that the slave can accept the write data.
		output wire [1 : 0] S_AXI_BRESP,  // Write response. This signal indicates the status of the write transaction.
		output wire  S_AXI_BVALID,        // Write response valid. This signal indicates that the channel is signaling a valid write response.
		input wire  S_AXI_BREADY,         // Response ready. This signal indicates that the master can accept a write response.
		input wire [7 : 0] S_AXI_ARADDR, // Read address (issued by master, acceped by Slave)
		input wire [2 : 0] S_AXI_ARPROT,  // Protection type. This signal indicates the privilege and security level of the transaction, and whether the transaction is a data access or an instruction access.
		input wire  S_AXI_ARVALID,        // Read address valid. This signal indicates that the channel is signaling valid read address and control information.
		output wire  S_AXI_ARREADY,       // Read address ready. This signal indicates that the slave is ready to accept an address and associated control signals.
		output wire [31 : 0] S_AXI_RDATA, // Read data (issued by slave)
		output wire [1 : 0] S_AXI_RRESP,  // Read response. This signal indicates the status of the read transfer.
		output wire  S_AXI_RVALID,        // Read valid. This signal indicates that the channel is signaling the required read data.
		input wire  S_AXI_RREADY          // Read ready. This signal indicates that the master can accept the read data and response information.
	);

	// AXI4LITE signals
	reg [31 : 0] 	axi_awaddr = 0;
	reg  	axi_awready = 0;
	reg  	axi_wready = 0;
	reg [1 : 0] 	axi_bresp = 0;
	reg  	axi_bvalid = 0;
	reg [31 : 0] 	axi_araddr = 0;
	reg  	axi_arready = 0;
	reg [31 : 0] 	axi_rdata = 0;
	reg [1 : 0] 	axi_rresp = 0;
	reg  	axi_rvalid = 0;
	
	reg [7:0] slv_reg_addr_i = 0;
    reg slv_reg_out_vld_i = 0;
    wire [31:0] slv_reg_out_i;
    
	//----------------------------------------------
	//-- Signals for user logic register space example
	//------------------------------------------------
	//-- Number of Slave Registers 4
	wire slv_reg_rden;
	wire slv_reg_wren;
	
	integer	 byte_index;

	// I/O Connections assignments
	assign S_AXI_AWREADY   = axi_awready;
	assign S_AXI_WREADY	   = axi_wready;
	assign S_AXI_BRESP	   = axi_bresp;
	assign S_AXI_BVALID	   = axi_bvalid;
	assign S_AXI_ARREADY   = axi_arready;
	assign S_AXI_RDATA	   = axi_rdata;
	assign S_AXI_RRESP	   = axi_rresp;
	assign S_AXI_RVALID	   = axi_rvalid;
		
    assign slv_reg_addr = slv_reg_addr_i;
    assign slv_reg_addr_vld = slv_reg_wren | slv_reg_rden;
    
	assign slv_reg_out      = slv_reg_out_i;	
    assign slv_reg_out_vld  = S_AXI_ARESETN & slv_reg_wren;
    
    always @(*) begin
        case ({slv_reg_wren,slv_reg_rden})
            2'b10: slv_reg_addr_i <= S_AXI_AWADDR[7:0];
            2'b01: slv_reg_addr_i <= S_AXI_ARADDR[7:0];
            default: slv_reg_addr_i <= 8'hAD;
        endcase
    end
	
	// Implement axi_awready generation
	// axi_awready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_awready is
	// de-asserted when reset is low.
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_awready <= 1'b0;
        end 
        else begin    
            if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID) begin
                // slave is ready to accept write address when 
                // there is a valid write address and write data
                // on the write address and data bus. This design 
                // expects no outstanding transactions. 
                axi_awready <= 1'b1;
            end
            else begin
                axi_awready <= 1'b0;
            end
        end 
	end       

	// Implement axi_awaddr latching
	// This process is used to latch the address when both 
	// S_AXI_AWVALID and S_AXI_WVALID are valid. 
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_awaddr <= 0;
	    end 
	  else
	    begin    
	      if (~axi_awready && S_AXI_AWVALID && S_AXI_WVALID)
	        begin
	          // Write Address latching 
	          axi_awaddr <= S_AXI_AWADDR;
	        end
	    end 
	end       

	// Implement axi_wready generation
	// axi_wready is asserted for one S_AXI_ACLK clock cycle when both
	// S_AXI_AWVALID and S_AXI_WVALID are asserted. axi_wready is 
	// de-asserted when reset is low. 
	always @( posedge S_AXI_ACLK )
	begin
	  if ( S_AXI_ARESETN == 1'b0 )
	    begin
	      axi_wready <= 1'b0;
	    end 
	  else
	    begin    
	      if (~axi_wready && S_AXI_WVALID && S_AXI_AWVALID)
	        begin
	          // slave is ready to accept write data when 
	          // there is a valid write address and write data
	          // on the write address and data bus. This design 
	          // expects no outstanding transactions. 
	          axi_wready <= 1'b1;
	        end
	      else
	        begin
	          axi_wready <= 1'b0;
	        end
	    end 
	end       

	// Implement memory mapped register select and write logic generation
	// The write data is accepted and written to memory mapped registers when
	// axi_awready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted. Write strobes are used to
	// select byte enables of slave registers while writing.
	// These registers are cleared when reset (active low) is applied.
	// Slave register write enable is asserted when valid address and data are available
	// and the slave is ready to accept the write address and write data.
	assign slv_reg_wren = axi_wready && S_AXI_WVALID && axi_awready && S_AXI_AWVALID;
    assign slv_reg_out_i = S_AXI_WDATA;

	// Implement write response logic generation
	// The write response and response valid signals are asserted by the slave 
	// when axi_wready, S_AXI_WVALID, axi_wready and S_AXI_WVALID are asserted.  
	// This marks the acceptance of address and indicates the status of 
	// write transaction.
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_bvalid  <= 0;
            axi_bresp   <= 2'b0;
        end 
        else begin    
            if (slv_reg_wren && ~axi_bvalid) begin
                // indicates a valid write response is available
                axi_bvalid <= 1'b1;
                axi_bresp  <= 2'b0; // 'OKAY' response 
            end                   // work error responses in future
            else begin
                if (S_AXI_BREADY && axi_bvalid) begin 
                    //check if bready is asserted while bvalid is high) 
                    //(there is a possibility that bready is always asserted high)
                    axi_bvalid <= 1'b0; 
                end  
            end
        end
	end   

	// Implement axi_arready generation
	// axi_arready is asserted for one S_AXI_ACLK clock cycle when
	// S_AXI_ARVALID is asserted. axi_awready is 
	// de-asserted when reset (active low) is asserted. 
	// The read address is also latched when S_AXI_ARVALID is 
	// asserted. axi_araddr is reset to zero on reset assertion.
	always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_arready <= 1'b0;
            axi_araddr  <= 32'b0;
        end 
        else begin    
            if (~axi_arready && S_AXI_ARVALID) begin
                // indicates that the slave has acceped the valid read address
                axi_arready <= 1'b1;
                // Read address latching
                axi_araddr  <= S_AXI_ARADDR;
            end
            else begin
                axi_arready <= 1'b0;
            end
        end 
    end       

    // Slave register read enable is asserted when valid address is available
	// and the slave is ready to accept the read address.
	assign slv_reg_rden = axi_arready && S_AXI_ARVALID;
	
	// Implement axi_arvalid generation
	// axi_rvalid is asserted for one S_AXI_ACLK clock cycle when both 
	// S_AXI_ARVALID and axi_arready are asserted. The slave registers 
	// data are available on the axi_rdata bus at this instance. The 
	// assertion of axi_rvalid marks the validity of read data on the 
	// bus and axi_rresp indicates the status of read transaction.axi_rvalid 
	// is deasserted on reset (active low). axi_rresp and axi_rdata are 
	// cleared to zero on reset (active low).  
	always @( posedge S_AXI_ACLK ) begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_rvalid <= 0;
            axi_rresp  <= 0;
        end 
        else begin    
            if (slv_reg_in_vld) begin
                // Valid read data is available at the read data bus
                axi_rvalid <= 1'b1;
                axi_rresp  <= 2'b0; // 'OKAY' response
            end   
            else if (axi_rvalid && S_AXI_RREADY) begin
                // Read data is accepted by the master
                axi_rvalid <= 1'b0;
            end                
        end
	end    

	// Output register or memory read data
	always @( posedge S_AXI_ACLK )
	begin
        if ( S_AXI_ARESETN == 1'b0 ) begin
            axi_rdata  <= 0;
        end 
        else begin    
            // When there is a valid read address (S_AXI_ARVALID) with 
            // acceptance of read address by the slave (axi_arready), 
            // output the read data 
            if (slv_reg_in_vld) begin
                axi_rdata <= slv_reg_in;     // register read data
            end   
        end
	end   

endmodule




//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     accel_counter.v
// Version    :     v1.0
// Description:     Counters for accelerator events.
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module accel_counters #(
  parameter STALL_MON = 1,
  parameter C_WIDTH = 32,
  parameter SAMPLE_WIDTH = 32
  )
  (
    input             clk,
    input             rst,
    input [3:0]       event_start,
    input [3:0]       event_stop,
    input [7:0]       addr,
    input             sample_en,
    input             ctr_rst,
    input             ctr_enable,
    output reg [SAMPLE_WIDTH-1:0] sample_data
  );
  
  // 1 for cu start/stop
  localparam NUM_EVENT_COUNTERS = STALL_MON == 1 ? 3 : 0;
  // Only support 32 bit and 64 bit
  localparam EN_64 = (C_WIDTH  == 64) ? 1 : 0;

  // CU rst active low
  wire RST_ACTIVE = ~rst || ctr_rst;

  /* Final Data
   * Event Mon Data
   * 0 : CU End Pulse Count, 1 : CU Total Cycles Count
   * 2,3,4 : Stall signals Cycles Count
   * Debug Data : CU Start Pulse Count
   */
  wire [63:0] event_mon_data [6:0];
  wire [63:0] minmax_data    [1:0];
  wire [63:0] debug_data     [0:0];

  /*
   * CU Execution Count
   */
  wire ip_done_pulse = event_stop[0];
  wire ip_start_pulse = event_start[0];
  reg[C_WIDTH-1 :0] ip_exec_count = 0;
  reg[C_WIDTH-1 :0] ip_start_count = 0;
  reg[C_WIDTH-1 :0] ip_cur_tranx = 0;

  always @(posedge clk) begin
    if (RST_ACTIVE) begin
      ip_exec_count <= 0;
      ip_start_count <= 0;
      ip_cur_tranx <= 0;
    end
    else begin 
      if (ip_done_pulse && ctr_enable) begin
        ip_exec_count <= ip_exec_count +1;
        if (ip_cur_tranx) begin
          ip_cur_tranx <= ip_cur_tranx - 1;
        end
      end
      if (ip_start_pulse && ctr_enable) begin
        ip_start_count <= ip_start_count +1;
        ip_cur_tranx <= ip_cur_tranx + 1;
      end
    end
  end

  /*
   * This counter averages cycles for dataflow
   * case
   */
  reg[C_WIDTH-1 :0] ip_cycles_avg = 0;
  reg[C_WIDTH-1 :0] ip_max_parallel_tranx = 0;
  wire[C_WIDTH-1 :0] cur_parallel_tx = ip_cur_tranx;
  always @(posedge clk) begin
    if (RST_ACTIVE) begin
      ip_cycles_avg = 0;
      ip_max_parallel_tranx = 0;
    end
    else begin
      ip_cycles_avg = ip_cycles_avg + cur_parallel_tx;
      if (cur_parallel_tx > ip_max_parallel_tranx) begin
        ip_max_parallel_tranx <= cur_parallel_tx;
      end
    end
  end

  assign event_mon_data[1] = ip_cycles_avg;
  assign event_mon_data[0] = ip_exec_count;
  assign event_mon_data[6] = ip_max_parallel_tranx;
  assign debug_data[0] = ip_start_count;

  /*
   * CU Counters
   */
  wire ip_idle = (ip_cur_tranx == 0);
  wire ip_active = ~ip_idle;
  event_mon #(
      .C_WIDTH(C_WIDTH)
    ) event_mon_cu_i
    (
      .clk            (clk               ),
      .rst            (RST_ACTIVE        ),
      .enable         (ctr_enable        ),
      .sample_en      (sample_en         ),
      .event_start    (ip_active         ),
      .event_stop     (ip_idle           ),
      .sample_ctr     (event_mon_data[5] )
    );

  /*
   * Stall Counters
   */

  genvar i;
  generate for (i=0; i < NUM_EVENT_COUNTERS; i=i+1) begin : GEN_EVENT_MONITORS
    event_mon #(
      .C_WIDTH(C_WIDTH)
    ) event_mon_i
    (
      .clk            (clk                 ),
      .rst            (RST_ACTIVE          ),
      .enable         (ctr_enable          ),
      .sample_en      (sample_en           ),
      .event_start    (event_start[i+1]    ),
      .event_stop     (event_stop[i+1]     ),
      .sample_ctr     (event_mon_data[i+2] )
    );
  end
  endgenerate

  /*
   * Min Max
   */

  min_max_ctr #(
    .C_WIDTH(C_WIDTH)
  ) min_max_ctr_i
  (
    .clk              (clk            ),
    .rst              (RST_ACTIVE     ),
    .sample_en        (sample_en      ),
    .event_start      (ip_start_pulse ),
    .event_stop       (ip_done_pulse  ),
    .sample_minval    (minmax_data[0] ),
    .sample_maxval    (minmax_data[1] )
  );

  /*
   * Register Map
   */

  always @(posedge clk) begin
    if (RST_ACTIVE)
      sample_data <= 0;
    else begin
      case(addr)
        8'h80: sample_data <= event_mon_data [0] [SAMPLE_WIDTH-1:0];
        8'h84: sample_data <= event_mon_data [1] [SAMPLE_WIDTH-1:0];
        8'h94: sample_data <= minmax_data    [0] [SAMPLE_WIDTH-1:0];
        8'h98: sample_data <= minmax_data    [1] [SAMPLE_WIDTH-1:0];
        8'h9c: sample_data <= debug_data     [0] [SAMPLE_WIDTH-1:0];
        // Stall Registers
        8'h88: sample_data <= STALL_MON ? event_mon_data [2] [SAMPLE_WIDTH-1:0] : 0;
        8'h8c: sample_data <= STALL_MON ? event_mon_data [3] [SAMPLE_WIDTH-1:0] : 0;
        8'h90: sample_data <= STALL_MON ? event_mon_data [4] [SAMPLE_WIDTH-1:0] : 0;
        // 64 Bit Support
        // Upper 32 bit are stored separately to ensure compatibility
        8'ha0: sample_data <= EN_64 ? event_mon_data [0] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'ha4: sample_data <= EN_64 ? event_mon_data [1] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'hb4: sample_data <= EN_64 ? minmax_data    [0] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'hb8: sample_data <= EN_64 ? minmax_data    [1] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'hbc: sample_data <= EN_64 ? debug_data     [0] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        // 64 bit Stall Registers
        8'ha8: sample_data <= (EN_64 && STALL_MON) ? event_mon_data [2] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'hac: sample_data <= (EN_64 && STALL_MON) ? event_mon_data [3] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        8'hb0: sample_data <= (EN_64 && STALL_MON) ? event_mon_data [4] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        // CU Cycles adjusted for parallel Tx in dataflow kernels
        8'hc0: sample_data <= event_mon_data[5] [SAMPLE_WIDTH-1:0];
        8'hc4: sample_data <= EN_64 ? event_mon_data[5] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        // Max Parallel Transactions
        8'hc8: sample_data <= event_mon_data[6] [SAMPLE_WIDTH-1:0];
        8'hcc: sample_data <= EN_64 ? event_mon_data[6] [C_WIDTH-1:SAMPLE_WIDTH] : 0;
        default : sample_data <= 0;
      endcase
    end
  end

endmodule
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     counter.v
// Version    :     v1.0
// Description:     Implements a parameterizable N-bit up-down counter
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module counter 
#(
   parameter                          C_FAMILY             = "nofamily",
   parameter                          C_NUM_BITS           = 32,
   parameter                          COUNTER_LOAD_VALUE   = 32'h00000000
)
(
   input                              clk,
   input                              rst_n,

   input [(C_NUM_BITS - 1):0]         Load_In,  
   input                              Count_Enable,   
   input                              Count_Load,   
   input                              Count_Down,   
   output [(C_NUM_BITS - 1):0]        Count_Out,  
   output reg                         Carry_Out   

);

//-------------------------------------------------------------------
// Parameter Declaration
//-------------------------------------------------------------------
localparam RST_ACTIVE = 1'b0;

//-------------------------------------------------------------------
// Signal Declaration
//-------------------------------------------------------------------
wire [63:0] rst_load_64 = (COUNTER_LOAD_VALUE == 32'h00000000)?64'h0000000000000000:{32'hFFFFFFFF,COUNTER_LOAD_VALUE};
wire                    Overflow;
reg                     Overflow_D1;
reg  [C_NUM_BITS:0]     Count_Out_i;  

//-------------------------------------------------------------------
// Begin architecture
//-------------------------------------------------------------------
//-- counter
always @(posedge clk) begin
   if (rst_n == RST_ACTIVE) begin
       Count_Out_i <= {1'b0,rst_load_64[C_NUM_BITS-1:0]};
   end
   else begin
       if (Count_Load == 1'b1) begin
           Count_Out_i <= {1'b0, Load_In};
       end
       else if (Count_Enable == 1'b1) begin
           if (Count_Down == 1'b1) begin
               Count_Out_i <= Count_Out_i - 1;
           end
           else begin
               Count_Out_i <= Count_Out_i + 1;
           end
       end
       else begin
           Count_Out_i <= Count_Out_i;
       end
   end
end 


assign Overflow  = Count_Out_i[C_NUM_BITS] ;
assign Count_Out = Count_Out_i[C_NUM_BITS - 1:0];

//-- Delaying Overflow
always @(posedge clk) begin 
   if (rst_n == RST_ACTIVE) begin
       Overflow_D1 <= 1'b0;
   end
   else begin
       Overflow_D1 <= Overflow;
   end
end 

//-- Overflow Pulse
always @(posedge clk) begin 
   if (rst_n == RST_ACTIVE) begin
       Carry_Out <= 1'b0;
   end
   else begin
       Carry_Out <= Overflow & (~Overflow_D1);
   end
end 

endmodule



// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     event_mon.v
// Version    :     v1.0
// Description:     Counters based on stall events.
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module event_mon #(
  parameter C_WIDTH = 32
  )
  (
    input clk,
    input rst,
    input enable,
    input sample_en,
    input event_start,
    input event_stop,
    output[C_WIDTH-1:0] sample_ctr
  );
    
  reg[C_WIDTH-1:0] event_ctr_val = 0;
  reg[C_WIDTH-1:0] sample_ctr_val = 0;
  reg cnt_enabled = 0;
    
  assign sample_ctr = sample_ctr_val;
  assign RST_ACTIVE = rst;

  always @(posedge clk) begin
    if (RST_ACTIVE || ~enable) begin
      cnt_enabled <= 0;
    end
    else if (event_start) begin
      cnt_enabled <= 1;
    end
    else if(event_stop) begin
      cnt_enabled <= 0;
    end
    else begin
      cnt_enabled <= cnt_enabled;
    end
  end

  always @(posedge clk) begin
    if (RST_ACTIVE) begin
      event_ctr_val <= 0;
    end
    else if (cnt_enabled) begin
      event_ctr_val = event_ctr_val + 1;
    end
  end
    
  always @(posedge clk) begin
    if(RST_ACTIVE) begin
      sample_ctr_val <= 0;
    end
    else if(sample_en) begin
      sample_ctr_val <= event_ctr_val;
    end
    else begin
      sample_ctr_val <= sample_ctr_val;
    end
  end
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     monitor_axilite.v
// Version    :     v1.0
// Description:     Monitor axilite slave
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module monitor_axilite(
    input clk,
    input rst,
    input is_dataflow,
    input [7:0]   araddr,
    input         arvalid,
    input         arready,
    input [31:0]  rdata,
    input         rvalid,
    input         rready,
    input [7:0]   awaddr,
    input         awvalid,
    input         awready,
    input [31:0]  wdata,
    input         wvalid,
    input         wready,
    input [3:0]   wstrb,
    output        cu_start_pulse,
    output        cu_done_pulse
    );
    
    reg[31:0] last_write_addr;
    reg[31:0] last_read_addr;
    reg started = 0;
    reg ap_start_reg;
    reg ap_done_reg;
    reg ap_continue_reg;
    
    wire write_addr_valid = awvalid && awready;
    wire write_data_valid = wvalid && wready && wstrb[0];
    wire read_addr_valid  = arvalid && arready;
    wire read_data_valid  = rvalid && rready;
    
    assign RST_ACTIVE = ~rst;
    
    assign cu_start_pulse = ap_start_reg;
    assign cu_done_pulse = is_dataflow ? ap_continue_reg : ap_done_reg;

    assign ap_start_write = write_data_valid && wdata[0] && (last_write_addr == 32'h0);
    // Regular Kernel
    assign ap_done_read = read_data_valid && rdata[1] && (last_read_addr == 32'h0) && started;
    // Dataflow Kernel
    assign ap_continue_write = write_data_valid && wdata[4] && (last_write_addr == 32'h0) && started;


    always @(posedge clk) begin
      ap_start_reg <= ap_start_write;
      ap_done_reg  <= ap_done_read;
      ap_continue_reg <= ap_continue_write;
    end

    always @(posedge clk) begin
      if (RST_ACTIVE) begin
        last_write_addr <= 0;
      end
      else if (write_addr_valid) begin
        last_write_addr <= awaddr;
      end
      else begin
        last_write_addr <= last_write_addr;
      end
    end

    always @(posedge clk) begin
      if (RST_ACTIVE) begin
        last_read_addr <= 0;
      end
      else if (read_addr_valid) begin
        last_read_addr <= araddr;
      end
      else begin
        last_read_addr <= last_read_addr;
      end
    end
    // Ignore if first event is done
    always @(posedge clk) begin
      if (RST_ACTIVE) begin
        started <= 0;
      end
      else if (cu_start_pulse) begin
        started <= 1;
      end
      else begin
        started <= started;
      end
    end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     register_module.v
// Version    :     v1.0
// Description:     Register module on Axi_slave interface
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps
module register_module 
(
  input                        mon_clk,
	input                        mon_resetn,
	   
  output reg [31:0]            slv_reg_in,
	input  [31:0]                slv_reg_out,
	input  [7:0]                slv_reg_addr,
	input                        slv_reg_addr_vld,
  input                        slv_reg_out_vld,
  output reg                   slv_reg_in_vld,
  
   // metric counters
   input [31:0]                sample_metric_ram_data,

   // other registers
   output reg [5:0]            trace_control,

   // control register
   output reg                  metrics_cnt_en,
   output reg                  metrics_cnt_reset,
   output reg                  reset_on_sample_read,
   output reg                  dataflow_en,
   
   output                      lat_sample_reg
);

  //-------------------------------------------------------------------
  // parameter declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE = 1'b0;
  localparam VERSION_VALUE = 32'hDEAF0100;
  
  //-------------------------------------------------------------------
  // signal and register declaration
  //-------------------------------------------------------------------
  reg  [5:0]                   register_select;
  wire                         lat_sample_reg_rd_en;
  reg                          lat_sample_reg_rd_en_d1;

	reg                        slv_reg_addr_vld_reg;
  reg                        slv_reg_out_vld_reg;
  
  // sample register read interval counter enable 
  reg  [31:0]                  sample_time_diff_reg;  
  wire [31:0]                  sample_time_diff_reg_int;  
  reg                          sample_reg_rd_first;  
  wire [31:0]                  sample_time_diff; 
  
  wire [31:0]                  control_reg;
  wire [31:0]                  event_select_reg;
  wire                         reset_sample_reg;
  
  //-------------------------------------------------------------------
  // begin architecture
  //-------------------------------------------------------------------
               
  wire addr_7downto0_is_0x00  = (slv_reg_addr[7:0] == 8'h00) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x08  = (slv_reg_addr[7:0] == 8'h08) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x20  = (slv_reg_addr[7:0] == 8'h20) ? 1'b1 : 1'b0;
  wire addr_sampled_regs      = (slv_reg_addr[7]);
  wire addr_7downto0_is_0x10  = (slv_reg_addr[7:0] == 8'h10) ? 1'b1 : 1'b0;
  
    
  //-------------------------------------------------------------------------------
  //-- write enables and read enables generation
  //-------------------------------------------------------------------------------
  
  //-- type/version register (0x00)
  wire version_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x00;
  
  //-- write/read enables for control register (0x08)
  wire control_wr_en = slv_reg_out_vld && addr_7downto0_is_0x08;
  wire control_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x08;
  
  //-- write/read enables for trace control register (0x10)
  wire trace_control_wr_en = slv_reg_out_vld && addr_7downto0_is_0x10;
  wire trace_control_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x10;

  //-- read enable for sample register (0x20)
  wire sample_reg_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x20;
    
  //-- read enables for sampled metric count registers (8'b10******)
  wire sample_metric_counter_rd_en = slv_reg_addr_vld && addr_sampled_regs;
  
  //-- control register
  //-- NOTE: to make initialization easier, counters and trace are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      metrics_cnt_en        <= 1'b1;
      metrics_cnt_reset     <= 1'b0;
      reset_on_sample_read  <= 1'b0;
      dataflow_en           <= 1'b0;
    end
    else begin 
      if (control_wr_en == 1'b1) begin
        metrics_cnt_en        <= slv_reg_out[0];
        metrics_cnt_reset     <= slv_reg_out[1];
        reset_on_sample_read  <= slv_reg_out[2];
        dataflow_en           <= slv_reg_out[3];
      end
      else begin
        metrics_cnt_en        <= metrics_cnt_en;
        metrics_cnt_reset     <= metrics_cnt_reset;
        reset_on_sample_read  <= reset_on_sample_read;
        dataflow_en           <= dataflow_en;
      end
    end
  end 
  
  assign control_reg = { {28{1'b0}}, dataflow_en, reset_on_sample_read, metrics_cnt_reset, metrics_cnt_en };

  //-- trace control register
  //-- note: all trace events are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      trace_control      <= 6'b111111;
    end
    else begin 
      if (trace_control_wr_en == 1'b1) begin
        trace_control    <= slv_reg_out[5:0];
      end
      else begin
        trace_control    <= trace_control;
      end
    end
  end 

  //-- sample register read edge detection logic
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      lat_sample_reg_rd_en_d1  <= 0;
    end
    else begin
      lat_sample_reg_rd_en_d1  <= lat_sample_reg_rd_en;
    end
  end 
     
  //-- this rising edge pulse is used to sample metric counts into sampled metric counts
  assign lat_sample_reg = lat_sample_reg_rd_en && ~lat_sample_reg_rd_en_d1;
  
  //-- profile registers
  assign reset_sample_reg = lat_sample_reg_rd_en & reset_on_sample_read;
    
  //-- free running counter after first read of sample register
  //-- the number of clocks is in mon_clk domain
  counter 
  #(
     .C_NUM_BITS           (32),
	   .COUNTER_LOAD_VALUE   (32'h00000000)
   ) sample_reg_counter_inst 
   (
     .clk                  (mon_clk),
     .rst_n                (mon_resetn),
     .Load_In              (32'h00000001),
     .Count_Enable         (sample_reg_rd_first),
     .Count_Load           (reset_sample_reg),
     .Count_Down           (1'b0),
     .Count_Out            (sample_time_diff),
     .Carry_Out            ( )  //overflow is left to the software as they have to find the difference
                                //between two sample register reads
   );  
      
  //-- sample time capture
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
     // sample_time_diff_reg   <= 0;
      sample_reg_rd_first    <= 0;
    end
    else begin
      if (sample_reg_rd_en == 1'b1) begin
        sample_time_diff_reg <= sample_time_diff;
        sample_reg_rd_first  <= 1;
      end
      else begin
        sample_time_diff_reg <= sample_time_diff_reg;
        sample_reg_rd_first  <= sample_reg_rd_first;
      end
    end
  end
  
  assign sample_time_diff_reg_int = sample_time_diff_reg;
       
  //-- Address latched on rden
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      register_select     <= 6'b000000; 
      slv_reg_out_vld_reg <= 0;
      slv_reg_addr_vld_reg <= 0;
    end
    else begin
      slv_reg_out_vld_reg <= slv_reg_out_vld;
      slv_reg_addr_vld_reg <= slv_reg_addr_vld;
      register_select   <= {sample_metric_counter_rd_en, control_rd_en, trace_control_rd_en, 
                           1'b0, sample_reg_rd_en, version_rd_en};
    end
  end 

  assign lat_sample_reg_rd_en = sample_reg_rd_en;
  
  //-- register read logic
  always @(posedge mon_clk) begin
    if (mon_resetn == RST_ACTIVE) begin
      slv_reg_in                <= 0;
      slv_reg_in_vld            <= 1'b0;
    end
    else begin
      if (slv_reg_addr_vld_reg == 1'b1 & slv_reg_out_vld_reg == 1'b0) begin  
        case (register_select)
          6'b100000: slv_reg_in  <= sample_metric_ram_data;
          6'b010000: slv_reg_in  <= control_reg;
          6'b001000: slv_reg_in  <= { {26{1'b0}}, trace_control };
          6'b000010: slv_reg_in  <= sample_time_diff_reg_int;
          6'b000001: slv_reg_in  <= VERSION_VALUE;
          default:  slv_reg_in   <= 0;
        endcase
        
        slv_reg_in_vld           <= 1'b1;
      end
      else begin
        slv_reg_in               <= 0;
        slv_reg_in_vld           <= 1'b0;
      end
    end  
  end

endmodule
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1ns / 1ps

module timestamper #(
    parameter TRACE_ID = 0
  )
  (
    //Trace bus input
    input [3:0]       event_start,
    input [3:0]       event_stop,
    //Clock & Reset synchonized with start/stop events
    input trace_clk,
    input mon_clk,
    input rst,
    //enable this port
    input en,
    //current time input from centralized clock/counter
    input [44:0] counter,
    input counter_overflow,
    //output timestamped data (FIFO interface)
    output [63:0] event_out,
    output event_valid,
    input  event_read
    );
    
    //Set the encoded value that will be appended based on the monitored entity type
    localparam START_TYPE = 0;
    localparam STOP_TYPE  = 1;

    reg event_valid_i=0;    //write signal into the internal FIFO when new event is found
    wire wr_rst_busy;
    reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
    wire [55:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
    reg [55:0] event_i_buf; //FIFO needs registered input
    wire full_i;            //backpressure signal from internal FIFO
    wire error_sig;
    reg error_write;
    wire write;
    wire empty;
    wire [55:0] fifo_out;

    assign event_out = {fifo_out[55:53],TRACE_ID[11:4],fifo_out[52:0]};
    assign event_valid = ~empty;

    assign event_i[44:0] = counter;       //Timestamp 
    assign event_i[45] = event_start[0];  //CU start or stop if a cu event
    assign event_i[48:46] = event_start ? START_TYPE : STOP_TYPE;
    assign event_i[52:49] = event_start | event_stop;
    assign event_i[53] = ( event_start && event_stop ) ? 1 : 0;
    assign event_i[54] = counter_overflow;   //Overflow
    assign event_i[55] = 0;	 //IsSWEvent

    always @(posedge mon_clk) begin
        if(en) begin
            event_valid_i <= (event_start | event_stop) ? 1 : 0;
            event_i_buf <= event_i; 
        end
        else begin
            event_valid_i <= 0;
        end
    end
    
    assign error_sig = event_valid_i & full_i;
    assign write = (event_valid_i | (error_write & error)) & ~wr_rst_busy;

    always @(posedge mon_clk) begin :RESET_ERROR
        if (!rst) begin
            error <= 0;
            error_write <= 1;
	   end
        else begin
            if(error_sig)
                error <= 1;
            if(error && (~full_i))
                error_write <= 0;
	    end
    end
    
   //Internal FIFO - default to 16 elements deep, 52bit width
   trace_fifo_i #( 
	 .WIDTH(56),
	 .DEPTH(16)
    ) fifo_i (
	 .wr_clk(mon_clk),
	 .rst(~rst),
	 .din(event_i_buf),
	 .write(write),
	 .full(full_i),
	 .dout(fifo_out),
	 .read(event_read),
	 .empty(empty),
     .wr_rst_busy(wr_rst_busy),
	 .rd_clk(trace_clk) 
    );
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module trace_fifo_i #(
    parameter DEPTH=16,
    parameter WIDTH=32
    ) (
    input wr_clk,
    input [WIDTH-1:0] din,
    input write,
    output full, 
    output [WIDTH-1:0] dout,
    input read,
    output empty,
    input rd_clk,
    output wr_rst_busy,
    input rst
    );
    
    function integer log2(input integer x);
        integer i;
        if (x == 0)
            log2 = 0;
        else begin
            i = 0;
            while (x > (2**i)) begin
        i = i+1;
            end
            log2 = i;
        end
    endfunction
    
    localparam ADDR_WIDTH = log2(DEPTH);
    localparam FIFO_TYPE = (DEPTH*WIDTH > 32*32) ? "block" : "distributed";
    
    xpm_fifo_async # (    
      .FIFO_MEMORY_TYPE          (FIFO_TYPE),          //string; "auto", "block", or "distributed";
      .CDC_SYNC_STAGES           (3),
      .RELATED_CLOCKS            (0),
      .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
      .FIFO_WRITE_DEPTH          (DEPTH),            //positive integer
      .WRITE_DATA_WIDTH          (WIDTH),            //positive integer
      .WR_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .FULL_RESET_VALUE          (0),                //positive integer; 0 or 1
      .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
      .FIFO_READ_LATENCY         (1),                //positive integer;
      .READ_DATA_WIDTH           (WIDTH),            //positive integer
      .RD_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer               //positive integer
      .DOUT_RESET_VALUE          ("0"),              //string
      .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
    ) xpm_fifo_async_inst (
       .rst              (rst),
      .wr_clk           (wr_clk),
      .wr_en            (write),
      .din              (din),
      .full             (full),
      .rd_clk           (rd_clk),
      .rd_en            (read),
      .dout             (dout),
      .empty            (empty),
      .wr_rst_busy      (wr_rst_busy),
      .sleep            (1'b0),
      .injectsbiterr    (1'b0),
      .injectdbiterr    (1'b0)
    );
            
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-----------------------------------------------------------------------------
// (c) Copyright 2009 - 2013 Xilinx, Inc. All rights reserved.
//
//  This file contains confidential and proprietary information
//  of Xilinx, Inc. and is protected under U.S. and 
//  international copyright and other intellectual property
//  laws.
//  
//  DISCLAIMER
//  This disclaimer is not a license and does not grant any
//  rights to the materials distributed herewith. Except as
//  otherwise provided in a valid license issued to you by
//  Xilinx, and to the maximum extent permitted by applicable
//  law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
//  WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
//  AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
//  BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
//  INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
//  (2) Xilinx shall not be liable (whether in contract or tort,
//  including negligence, or under any other theory of
//  liability) for any loss or damage of any kind or nature
//  related to, arising under or in connection with these
//  materials, including for any direct, or any indirect,
//  special, incidental, or consequential loss or damage
//  (including loss of data, profits, goodwill, or any type of
//  loss or damage suffered as a result of any action brought
//  by a third party) even if such damage or loss was
//  reasonably foreseeable or Xilinx had been advised of the
//  possibility of the same.
//  
//  CRITICAL APPLICATIONS
//  Xilinx products are not designed or intended to be fail-
//  safe, or for use in any application requiring fail-safe
//  performance, such as life-support or safety devices or
//  systems, Class III medical devices, nuclear facilities,
//  applications related to the deployment of airbags, or any
//  other applications that could lead to death, personal
//  injury, or severe property or environmental damage
//  (individually and collectively, "Critical
//  Applications"). Customer assumes the sole risk and
//  liability of any use of Xilinx products in Critical
//  Applications, subject only to applicable laws and
//  regulations governing limitations on product liability.
//  
//  THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
//  PART OF THIS FILE AT ALL TIMES.
//-----------------------------------------------------------------------------
// Filename   :     event_mon.v
// Version    :     v1.0
// Description:     Counters based on stall events.
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns / 1ps

module min_max_ctr #(
  parameter C_WIDTH = 32
  )
  (
  input clk,
  input rst,
  input sample_en,
  input event_start,
  input event_stop,
  output[C_WIDTH-1:0] sample_minval,
  output[C_WIDTH-1:0] sample_maxval
  );

  parameter MAX_CONCURRENT_TX = 16;
  
  reg [C_WIDTH-1:0] min_ctr;
  reg [C_WIDTH-1:0] max_ctr;
  assign sample_minval = min_ctr;
  assign sample_maxval = max_ctr;
  assign RST_ACTIVE = rst;
  // FIFO Signals
  wire empty;
  wire full_i;
  wire wr_rst_busy;
  wire[63:0] fifo_out;
  wire write = event_start & ~wr_rst_busy & ~full_i;
  wire read = event_stop & ~empty;

  reg[63:0] counter = 0;
  always @(posedge clk) begin
    if (RST_ACTIVE)
      counter <= 0;
    else
      counter <= counter + 1;
  end

  wire[63:0] tx_length = counter - fifo_out;
  always @(posedge clk) begin
    if(RST_ACTIVE) begin
        min_ctr <= {C_WIDTH{1'b1}};
        max_ctr <= {C_WIDTH{1'b0}};
    end
    else begin
      if(read && (tx_length > max_ctr)) begin
        max_ctr <= tx_length;
      end
      if(read && (tx_length < min_ctr)) begin
        min_ctr <= tx_length;
      end
    end
  end

  trace_fifo_i #( 
   .WIDTH(64),
   .DEPTH(MAX_CONCURRENT_TX)
    ) fifo_minmax (
   .wr_clk(clk),
   .rst(rst),
   .din(counter),
   .write(write),
   .full(full_i),
   .dout(fifo_out),
   .read(read),
   .empty(empty),
   .wr_rst_busy(wr_rst_busy),
   .rd_clk(clk) 
    );
  
endmodule
// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689

`timescale 1ns / 1ps

module ap_timestamper#(
    parameter TRACE_ID = 0
    ) (
    //Trace bus input
    input start,
    input stop,
    //Clock & Reset synchonized with start/stop events
    input clk,
    input rst,
    //enable this port
    input en,
    //current time input from centralized clock/counter
    input [44:0] counter,
    input counter_overflow,
    //output timestamped data (FIFO interface)
    output [63:0] event_out,
    output event_valid,
    input  event_read
    );
    
    //Set the encoded value that will be appended based on the monitored entity type
    localparam START_TYPE = 0;
    localparam  STOP_TYPE = 1;
    
    wire [52:0] trace_data_i;
    wire    trace_empty_i;
        
    reg event_valid_i=0;    //write signal into the internal FIFO when new event is found
    reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
    wire [51:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
    wire full_i;            //backpressure signal from internal FIFO
    wire error_sig;
    reg error_write=0;
    wire write;
    wire wr_rst_busy;

    assign event_out = {trace_data_i[51:49],TRACE_ID[11:0],trace_data_i[48:0]};
    assign event_valid = ~trace_empty_i;   

    assign write = event_valid_i | (error_write & error); 
    assign error_sig = event_valid_i & full_i;
        
    assign event_i[44:0] = counter;                                 //Timestamp 
    assign event_i[48:45] = (start == 1) ? START_TYPE : STOP_TYPE;  //Trace Event Type       
    //assign event_i[60:49] = 0;                                      //Trace Point ID
    assign event_i[49] = start & stop;	                            //Reserved
    assign event_i[50] = counter_overflow;          		        //Overflow
    assign event_i[51] = error_sig | error;			                //Error

    always @(start or stop or en) begin :EVENT_CREATE 
	    if(en)
            event_valid_i <= start | stop;
        else
            event_valid_i <= 0;
    end
        
    always @(posedge clk) begin :RESET_ERROR
        if(rst == 1) begin
           error <= 0;
	   error_write <= 1;
	end
        else begin
            if(error_sig)
                error <= 1;
    
            if(error && (~full_i))
                error_write <= 0;
	    end
    end
    
   //Internal FIFO - default to 16 elements deep, 52bit width
   trace_fifo_i #( 
	 .WIDTH(52),
	 .DEPTH(16)
    ) fifo_i (
	 .wr_clk(clk),
	 .rst(rst),
	 .din(event_i),
	 .write(write),
	 .full(full_i),
	 .dout(trace_data_i),
	 .read(event_read),
	 .empty(trace_empty_i),
     .wr_rst_busy(wr_rst_busy),
	 .rd_clk(clk) 
    );
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Xilinx
// Engineer: Sam Skalicky
// 
// Create Date: 07/16/2015 10:05:03 AM
// Design Name: Accelerator Trace Monitor
// Module Name: Event_Pulse
// Project Name: SDSoC Trace Framework
// Target Devices: Zynq
// Tool Versions: 2015.2
// Description: This module produces various pulses for different events of the
//      input signal: rising or falling edge or both edges.
// 
// Dependencies: None
// 
// Revision: 1.0
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Event_Pulse(
    input in,               //Input signal to monitor
    input clk,              //clock to sample the input signal at
    output rising_edge,     //Output pulse if a rising edge is found
    output falling_edge,    //Output pulse if a falling edge is found
    output both_edges       //Output pulse if any edge is found
    );
    
    reg [1:0] reg_i = 2'b0; //two bit register for identifying edges
    
    assign rising_edge = (~reg_i[1]) &  reg_i[0];  //rising edge
    assign falling_edge =  reg_i[1]  &(~reg_i[0]); //falling edge
    assign both_edges = ((~reg_i[1]) &  reg_i[0]) | (reg_i[1] & (~reg_i[0]));   //both edges
    
    //Shift in the signal every clock cycle
    always @(posedge clk)
    begin
        reg_i[0] <= in;
        reg_i[1] <= reg_i[0];        
    end
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689



`timescale 1ns / 1ps

module ap_accel_counters (
	    output reg [31:0] slv_reg_in,
	    input  [31:0] slv_reg_out,
	    input  [13:0] slv_reg_addr,
	    input  slv_reg_addr_vld,
            input  slv_reg_out_vld,
            output reg slv_reg_in_vld,
            //Input AP CTRL Bus
            input ap_continue,
	    input ap_ready,
	    input ap_start,
	    input ap_done,
	    input ap_idle,
	    //Clock/Reset
	    input 	mon_clk,
	    input 	mon_resetn
	);

   localparam idle=2'd0, start=2'd1, ready=2'd2;
   
   reg [1:0] 		state=2'd0;
   wire 		rst_rising;
   wire 		start_ap;
   reg 			done_reg;
   
   reg [31:0] 		total_acc_starts;  //total number of times the core was started
   reg [31:0] 		total_acc_restarts;//total number of times the core started while it was already running (dataflow)
   reg [31:0] 		total_acc_dones;   //total number of times the core finished
   reg [31:0] 		total_acc_active;  //total number of cycles the core was busy
   reg [31:0] 		total_acc_idle;    //total number of cycles the core was idle (from the beginning of time)
   reg 			counter_reset;
   
   assign start_ap = ((state == idle) & ap_start) | ((state == ready) & ap_start);
   
   always @(posedge mon_clk) begin
      done_reg <= ap_done;
      
      if(mon_resetn == 0) begin
	    state <= idle;
	 end
	 else begin
	    case(state)
	      idle: begin
		 if(ap_start)
		   state <= start;		 
	      end
	      start: begin
		 if(ap_ready && (~ap_done))
		   state <= ready;
		 else if(done_reg && ap_idle)
		   state <= idle;		 
	      end
	      ready: begin
		 if(ap_start)
		   state <= start;
		 else if(done_reg && ap_idle)
		   state <= idle;		 
	      end
	      default: begin
		 state <= idle;		 
	      end
	    endcase
	 end
    end
   
   //Example counter that counts the total number of times the accelerator is executed
   always @(posedge mon_clk) begin
      if(~mon_resetn || counter_reset) begin
	 total_acc_starts <= 0;
	 total_acc_dones <= 0;
	 total_acc_active <= 0;   
	 total_acc_idle <= 0;
      end
      else begin
	 if(start_ap)
	   total_acc_starts <= total_acc_starts + 1;
	 if(start_ap && ~ap_idle)
	   total_acc_restarts <= total_acc_restarts + 1;	 
	 if(ap_done)
	   total_acc_dones <= total_acc_dones + 1;
	 if(~ap_idle)
	   total_acc_active <= total_acc_active + 1;
	 if(ap_idle)
	   total_acc_idle <= total_acc_idle + 1;	 
      end
   end
   
   //1. This IP has been packaged with a 14-bit register map, giving you
   //     16,384 registers to poll. You dont have to use all of them ;-)
   
   //----------------------------------------------------
   //write address decode, register map implementation
   always @(posedge mon_clk) begin   
      if(mon_resetn == 0) begin
         //values to set on reset
      end
      else begin
         if(slv_reg_out_vld) begin
            case(slv_reg_addr)
              14'd0: begin //offset 0x0 control reg
		 counter_reset <= slv_reg_out[0];
		 //slv_reg_out[31:1] unused
	      end
	      //14'd1: READ ONLY 
	      //14'd2: READ ONLY 
	      //14'd3: READ ONLY 
	      //14'd4: READ ONLY 
	      default: begin
              end
            endcase
         end
      end
   end
   
   //----------------------------------------------------
   //read address decode, register map implementation
   always @(*) begin
      //default values
      slv_reg_in <= 32'h5eaf000d;  //get it! Seafoood!!!!
      slv_reg_in_vld <= 0;
      
      if(slv_reg_addr_vld) begin
         case(slv_reg_addr)
           14'd0: begin   //offset 0x0 control reg
              slv_reg_in <= {31'd0,counter_reset};
              slv_reg_in_vld <= 1;
           end
	   14'd1: begin
	      slv_reg_in <= total_acc_starts;
	      slv_reg_in_vld <= 1;
	   end
	   14'd2: begin
	      slv_reg_in <= total_acc_restarts;
	      slv_reg_in_vld <= 1;
	   end
	   14'd3: begin
	      slv_reg_in <= total_acc_dones;
	      slv_reg_in_vld <= 1;
	   end
	   14'd4: begin
	      slv_reg_in <= total_acc_active;
	      slv_reg_in_vld <= 1;
	   end
	   14'd5: begin
	      slv_reg_in <= total_acc_idle;
	      slv_reg_in_vld <= 1;
	   end
	   default: begin
	   end
	 endcase
      end
   end
   
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689



`timescale 1ns / 1ps

module ap_accel_monitor #(
    parameter TRACE_ID=0
    ) (
    //Input AP CTRL Bus
    input  ap_continue,
    input  ap_ready,
    input  ap_start,
    input  ap_done,
    input  ap_idle,
    input  mon_clk,
    input  mon_resetn,
    output start_pulse,
    output stop_pulse
  );

    localparam idle=2'd0, start=2'd1, ready=2'd2;
    wire RST_ACTIVE = ~mon_resetn;

    reg [1:0] 	state=2'd0;
    wire 	start_ap;
    reg		done_reg;
   
    assign start_ap = ((state == idle) & ap_start) | ((state == ready) & ap_start);

    always @(posedge mon_clk) begin
      done_reg <= ap_done;
      if (RST_ACTIVE) begin
        state <= idle;
	    end
      else begin
	     case(state)
	       idle: begin
		        if (ap_start)
		          state <= start;
	       end
	       start: begin
		        if (ap_ready && (~ap_done))
		          state <= ready;
		        else if (done_reg && ap_idle)
		          state <= idle;
	       end
	       ready: begin
		        if (ap_start)
		          state <= start;
		        else if (done_reg && ap_idle)
		          state <= idle;
	       end
	       default: begin
		        state <= idle;
	       end
	     endcase
	    end
    end
        
    //Can optionally do cdc
    Event_Pulse ep_start_ap (
        .in(start_ap),
        .clk(mon_clk),
        .rising_edge(start_pulse),
        .falling_edge(),
        .both_edges()
    );
    
    //Can optionally do cdc
    Event_Pulse ep_stop_ap (
        .in(ap_done),
        .clk(mon_clk),
        .rising_edge(stop_pulse),
        .falling_edge(),
        .both_edges()
    );
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


