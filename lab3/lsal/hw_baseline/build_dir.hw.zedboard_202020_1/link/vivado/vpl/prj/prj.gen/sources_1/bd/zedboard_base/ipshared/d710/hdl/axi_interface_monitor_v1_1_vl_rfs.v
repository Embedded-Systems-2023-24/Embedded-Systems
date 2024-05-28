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
// Filename:       acc_sample.v
// Version :       v1.0
// Description:    Accumulator module accumulates metrics and samples
//                 into sampled metric counter if sampling trigger is set
// Verilog-Standard:verilog-2001
//---------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module acc_sample
#(
   parameter                  C_FAMILY                   = "nofamily",
   parameter                  DWIDTH                     = 32,
   parameter                  C_HAVE_SAMPLED_METRIC_CNT  = 1
)
(
   input                      clk,
   input                      rst_n,
   input                      Sample_rst_n,

   input                      Enable,
   input                      Reset,

   input  [(DWIDTH - 1):0]    Add_in,
   input                      Add_in_Valid,
   input                      Accumulate,
   input                      Sample_En,
   output [(DWIDTH - 1):0]    Accumulator,
   output [(DWIDTH - 1):0]    Sample_Accumulator
);



//-------------------------------------------------------------------
// Parameter Declaration
//-------------------------------------------------------------------
localparam RST_ACTIVE = 1'b0;

//-------------------------------------------------------------------
// Signal Declaration
//-------------------------------------------------------------------
reg [DWIDTH:0]           Accum_i;
reg [DWIDTH-1:0]         Samp_Metric_Cnt;

//-------------------------------------------------------------------
// Begin architecture
//-------------------------------------------------------------------

//-- Accumulator
always @(posedge clk) begin
   if (rst_n == RST_ACTIVE) begin
       Accum_i <= 0;
   end
   else begin
       if (Reset == 1'b1) begin
           Accum_i <= 0;
       end
       else if (Enable == 1'b1 && Add_in_Valid == 1'b1 && Accumulate == 1'b1) begin
           Accum_i <= Accum_i + {1'b0, Add_in};
       end
       else if (Enable == 1'b1 && Add_in_Valid == 1'b1) begin
           Accum_i <= Add_in ;
       end
       else begin
           Accum_i <= Accum_i;
       end
   end
end

   assign Accumulator = Accum_i[DWIDTH -1:0];
   //assign Overflow    = Accum_i[DWIDTH];

//-- Sampled Metric Counter
generate
if (C_HAVE_SAMPLED_METRIC_CNT == 1)  begin : GEN_SAMPLE_METRIC_CNT
    always @(posedge clk) begin
       if (rst_n == RST_ACTIVE) begin
           Samp_Metric_Cnt  <= 0;
       end
       else begin
           if (Sample_rst_n == RST_ACTIVE) begin
             Samp_Metric_Cnt  <= 0;
           end
           else if (Sample_En == 1'b1) begin
             Samp_Metric_Cnt  <= Accum_i[DWIDTH -1:0];
           end
           else begin
             Samp_Metric_Cnt  <= Samp_Metric_Cnt;
           end
       end
    end
    assign Sample_Accumulator = Samp_Metric_Cnt;
end
else begin : GEN_NO_SAMPLE_METRIC_CNT
    assign Sample_Accumulator = 0;
end
endgenerate

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


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

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module axi_interface_monitor #(
  parameter TRACE_READ_ID       = 0,
  parameter TRACE_WRITE_ID      = 1,
  parameter MODE_SDACCEL        = 1,
  parameter CAPTURE_BURSTS      = 1,

  parameter ENABLE_DEBUG        = 1,
  parameter NUM_REG_STAGES      = 1,
  parameter ENABLE_COUNTERS     = 1,
  parameter ENABLE_TRACE        = 1,
  parameter WRITE_START_SELECT  = "Address",   // choices: Address, First Data, First Tranx, None
  parameter WRITE_STOP_SELECT   = "Last Data", // choices: Last Data, Response, Last Tranx, None
  parameter READ_START_SELECT   = "Address",   // choices: Address, First Data, First Tranx, None
  parameter READ_STOP_SELECT    = "Last Data", // choices: Last Data, Last Tranx, None

  parameter DATA_WIDTH          = 32,
  parameter ADDR_WIDTH          = 32,
  parameter COUNT_WIDTH         = 32,
  parameter USER_WIDTH          = 1,
  parameter ID_WIDTH            = 1,
  
  parameter ENABLE_ADDR_FILTER  = 0,
  parameter ADDR_MIN            = 64'h0000000000000000,
  parameter ADDR_MAX            = 64'hFFFFFFFFFFFFFFFF,
  parameter EXT_TRACE_RST       = 1,
  parameter EXT_MON_RST         = 1
  ) (
  //AXI Full interface
  input mon_clk,
  input mon_resetn,
  input m_axi_AWVALID,
  input m_axi_AWREADY,
  input [ADDR_WIDTH-1 : 0] m_axi_AWADDR,
  input [ID_WIDTH-1 : 0] m_axi_AWID,
  input [7:0] m_axi_AWLEN,
  input [2:0] m_axi_AWSIZE,
  input [1:0] m_axi_AWBURST,
  input [1:0] m_axi_AWLOCK,
  input [3:0] m_axi_AWCACHE,
  input [2:0] m_axi_AWPROT,
  input [3:0] m_axi_AWQOS,
  input [3:0] m_axi_AWREGION,
  input [USER_WIDTH-1 : 0] m_axi_AWUSER,
  input m_axi_WVALID,
  input m_axi_WREADY,
  input [DATA_WIDTH-1 : 0] m_axi_WDATA,
  input [DATA_WIDTH/8-1 : 0] m_axi_WSTRB,
  input m_axi_WLAST,
  input [ID_WIDTH-1 : 0] m_axi_WID,
  input [USER_WIDTH-1 : 0] m_axi_WUSER,
  input m_axi_ARVALID,
  input m_axi_ARREADY,
  input [ADDR_WIDTH-1 : 0] m_axi_ARADDR,
  input [ID_WIDTH-1 : 0] m_axi_ARID,
  input [7:0] m_axi_ARLEN,
  input [2:0] m_axi_ARSIZE,
  input [1:0] m_axi_ARBURST,
  input [1:0] m_axi_ARLOCK,
  input [3:0] m_axi_ARCACHE,
  input [2:0] m_axi_ARPROT,
  input [3:0] m_axi_ARQOS,
  input [3:0] m_axi_ARREGION,
  input [USER_WIDTH-1 : 0] m_axi_ARUSER,
  input m_axi_RVALID,
  input m_axi_RREADY,
  input [DATA_WIDTH-1 : 0] m_axi_RDATA,
  input m_axi_RLAST,
  input [ID_WIDTH-1 : 0] m_axi_RID,
  input [USER_WIDTH-1 : 0] m_axi_RUSER,
  input [1:0] m_axi_RRESP,
  input m_axi_BVALID,
  input m_axi_BREADY,
  input [1:0] m_axi_BRESP,
  input [ID_WIDTH-1 : 0] m_axi_BID,
  input [USER_WIDTH-1 : 0] m_axi_BUSER,
  //Input AP_CTRL bus
  input ap_continue,
  input ap_ready,
  input ap_start,
  input ap_idle,
  input ap_done,
  //trace network clock
  input trace_clk,
  input trace_rst,
  //Read Trace Bus
  input rtrace_counter_overflow,
  input [44:0] rtrace_counter,
  output rtrace_event,
  output [63:0] rtrace_data,
  output rtrace_valid,
  input rtrace_read,
  //Write Trace Bus
  input wtrace_counter_overflow,
  input [44:0] wtrace_counter,
  output wtrace_event,
  output [63:0] wtrace_data,
  output wtrace_valid,
  input wtrace_read,
  // Ports of Axi Slave Bus Interface S_AXI
  input [7 : 0]   s_axi_awaddr,
  input [2 : 0]   s_axi_awprot,
  input           s_axi_awvalid,
  output          s_axi_awready,
  input [31 : 0]  s_axi_wdata,
  input [3 : 0]   s_axi_wstrb,
  input           s_axi_wvalid,
  output          s_axi_wready,
  output [1 : 0]  s_axi_bresp,
  output          s_axi_bvalid,
  input           s_axi_bready,
  input [7 : 0]   s_axi_araddr,
  input [2 : 0]   s_axi_arprot,
  input           s_axi_arvalid,
  output          s_axi_arready,
  output [31 : 0] s_axi_rdata,
  output [1 : 0]  s_axi_rresp,
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
  input           s_axi_rready_mon
  );

  /*----------------------------------------------------------------------
  -----------------------Parameter declarations---------------------------
  ------------------------------------------------------------------------*/
  localparam MON_DATA_WIDTH = (2*ADDR_WIDTH) + (2*DATA_WIDTH)
                              + (2*8) + (DATA_WIDTH/8) + 12;

  /*----------------------------------------------------------------------
  -----------------------wire/connection declarations---------------------
  ------------------------------------------------------------------------*/

  // Signals to/from AXI interface
  wire [31:0]     slv_reg_in;
  wire            slv_reg_in_vld;
  wire [31:0]     slv_reg_out;
  wire            slv_reg_out_vld;
  wire [31:0]     slv_reg_addr;
  wire            slv_reg_addr_vld;

  // Control signals
  wire            Metrics_Cnt_En;
  wire            Metrics_Cnt_Reset;
  wire            Event_Log_En;
  wire            Streaming_FIFO_Reset;
  wire            Reset_On_Sample_Read;
  wire            Lat_Sample_Reg;
  wire [1:0]      Write_Start_Select;
  wire [1:0]      Write_Stop_Select;
  wire [1:0]      Read_Start_Select;
  wire [1:0]      Read_Stop_Select;
  wire [1:0]      Write_Start_Select_sync;
  wire [1:0]      Write_Stop_Select_sync;
  wire [1:0]      Read_Start_Select_sync;
  wire [1:0]      Read_Stop_Select_sync;
  wire [4:0]      Lat_Addr_6downto2;
  wire [4:0]      Control_Bits_sync;
  wire [5:0]      Trace_Control;
  wire [7:0]      Event_Select_sync;
  wire [31:0]     Sample_Metric_Ram_Data;

  // Counter signals
  wire [COUNT_WIDTH:0]     Write_Byte_Cnt;
  wire [COUNT_WIDTH:0]     Read_Byte_Cnt;
  wire [COUNT_WIDTH:0]     Read_Latency;
  wire [COUNT_WIDTH:0]     Min_Read_Latency;
  wire [COUNT_WIDTH:0]     Max_Read_Latency;
  wire [COUNT_WIDTH:0]     Write_Latency;
  wire [COUNT_WIDTH:0]     Min_Write_Latency;
  wire [COUNT_WIDTH:0]     Max_Write_Latency;
  wire [COUNT_WIDTH:0]     Last_Write_Address;
  wire [COUNT_WIDTH:0]     Last_Write_Data;
  wire [COUNT_WIDTH:0]     Last_Read_Address;
  wire [COUNT_WIDTH:0]     Last_Read_Data;
  wire [7:0]      Write_Outstanding;
  wire [7:0]      Read_Outstanding;
  wire            Wtrans_Cnt_En;
  wire            Rtrans_Cnt_En;
  wire            Write_Byte_Cnt_En;
  wire            Read_Byte_Cnt_En;
  wire            Write_Beat_Cnt_En;
  wire            Read_Beat_Cnt_En;
  wire            Write_Latency_En;
  wire            Read_Latency_En;

  wire [MON_DATA_WIDTH-1:0] Mon_Data_In;
  wire [MON_DATA_WIDTH-1:0] Mon_Data_Out;
  wire                      Mon_Read_Valid;
  wire                      Mon_Write_Valid;

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

  /*----------------------------------------------------------------------
  ------------------- Submodule instantiations----------------------------
  ------------------------------------------------------------------------*/

  // ***********************************
  // Isolation Registers
  // ***********************************
  assign Mon_Data_In = {m_axi_AWADDR, m_axi_WDATA,
                        m_axi_ARADDR, m_axi_RDATA,
                        m_axi_WSTRB, m_axi_AWLEN, m_axi_ARLEN,
                        m_axi_AWVALID, m_axi_AWREADY,
                        m_axi_WLAST, m_axi_WVALID, m_axi_WREADY,
                        m_axi_BVALID, m_axi_BREADY,
                        m_axi_ARVALID, m_axi_ARREADY,
                        m_axi_RLAST, m_axi_RVALID, m_axi_RREADY};

  mon_register
  #(
     .NUM_REG_STAGES(NUM_REG_STAGES),
     .MON_DATA_WIDTH(MON_DATA_WIDTH),
     .LEN_WIDTH(8),
     .DATA_WIDTH(DATA_WIDTH),
     .ADDR_WIDTH(ADDR_WIDTH),
     .ENABLE_ADDR_FILTER(ENABLE_ADDR_FILTER),
     .ADDR_MIN(ADDR_MIN),
     .ADDR_MAX(ADDR_MAX)
   ) mon_register_i
   (
     .mon_clk(mon_clk),
     .mon_resetn(_mon_resetn),
     .data_in(Mon_Data_In),
     .data_out(Mon_Data_Out),
     .read_valid(Mon_Read_Valid),
     .write_valid(Mon_Write_Valid)
   );

  // ***********************************
  // Trace
  // ***********************************
  generate

  wire alite_ap_done;
  wire mon_done = MODE_SDACCEL ? alite_ap_done : ap_done;

  if (ENABLE_TRACE > 0) begin
    // Use Address Filtering signals to control trace
    // Trace_Control[1] is user controllable trace enable
    wire t_rd_valid = Trace_Control[1] & Mon_Read_Valid;
    wire t_wr_valid = Trace_Control[1] & Mon_Write_Valid;
    wire [5:0] t_ctrl; 
    assign  t_ctrl = {Trace_Control[5:3], t_rd_valid, t_wr_valid, Trace_Control[0]}; 

    axi_master_monitor #(
      .TRACE_READ_ID(TRACE_READ_ID),
      .TRACE_WRITE_ID(TRACE_WRITE_ID),
      .MON_DATA_WIDTH(MON_DATA_WIDTH),
      .MODE_SDACCEL(MODE_SDACCEL)
    ) trace_i (
      .mon_clk(mon_clk),
      .mon_resetn(_mon_resetn),
      .Data_In(Mon_Data_Out),
      .ap_ready(ap_ready),
      .ap_done(mon_done),
      .trace_clk(trace_clk),
      .trace_rst(_trace_rst),
      .rtrace_counter_overflow(rtrace_counter_overflow),
      .rtrace_counter(rtrace_counter),
      .rtrace_event(rtrace_event),
      .rtrace_data(rtrace_data),
      .rtrace_valid(rtrace_valid),
      .rtrace_read(rtrace_read),
      .wtrace_counter_overflow(wtrace_counter_overflow),
      .wtrace_counter(wtrace_counter),
      .wtrace_event(wtrace_event),
      .wtrace_data(wtrace_data),
      .wtrace_valid(wtrace_valid),
      .wtrace_read(wtrace_read),
      .event_log_en(Event_Log_En),
      .trace_control(t_ctrl)
    );
  end

  if (MODE_SDACCEL > 0) begin
  monitor_axilite mon_axilite_i (
      .clk            (mon_clk),
      .rst            (_mon_resetn),
      .araddr         (s_axi_araddr_mon),
      .arvalid        (s_axi_arvalid_mon),
      .arready        (s_axi_arready_mon),
      .rdata          (s_axi_rdata_mon),
      .rvalid         (s_axi_rvalid_mon),
      .rready         (s_axi_rready_mon),
      .mon_valid      (alite_ap_done)
  );
  end

  endgenerate

  generate
    // *********************************
    // Control (AXI Lite, registers)
    // *********************************
    AXI_LITE_IF axi_lite_if_i (
      .slv_reg_in(slv_reg_in),
      .slv_reg_in_vld(slv_reg_in_vld),
      .slv_reg_out(slv_reg_out),
      .slv_reg_out_vld(slv_reg_out_vld),
      .slv_reg_addr(slv_reg_addr),
      .slv_reg_addr_vld(slv_reg_addr_vld),
      .S_AXI_ACLK(mon_clk),
      .S_AXI_ARESETN(_mon_resetn),
      .S_AXI_AWADDR(s_axi_awaddr),
      .S_AXI_AWPROT(s_axi_awprot),
      .S_AXI_AWVALID(s_axi_awvalid),
      .S_AXI_AWREADY(s_axi_awready),
      .S_AXI_WDATA(s_axi_wdata),
      .S_AXI_WSTRB(s_axi_wstrb),
      .S_AXI_WVALID(s_axi_wvalid),
      .S_AXI_WREADY(s_axi_wready),
      .S_AXI_BRESP(s_axi_bresp),
      .S_AXI_BVALID(s_axi_bvalid),
      .S_AXI_BREADY(s_axi_bready),
      .S_AXI_ARADDR(s_axi_araddr),
      .S_AXI_ARPROT(s_axi_arprot),
      .S_AXI_ARVALID(s_axi_arvalid),
      .S_AXI_ARREADY(s_axi_arready),
      .S_AXI_RDATA(s_axi_rdata),
      .S_AXI_RRESP(s_axi_rresp),
      .S_AXI_RVALID(s_axi_rvalid),
      .S_AXI_RREADY(s_axi_rready)
    );

    register_module #(
      .WRITE_START_SELECT(WRITE_START_SELECT),
      .WRITE_STOP_SELECT(WRITE_STOP_SELECT),
      .READ_START_SELECT(WRITE_START_SELECT),
      .READ_STOP_SELECT(WRITE_STOP_SELECT),
      .CAPTURE_BURSTS(CAPTURE_BURSTS)
    ) registers_i (
      .mon_clk(mon_clk),
      .mon_resetn(_mon_resetn),
      .slv_reg_in(slv_reg_in),
      .slv_reg_in_vld(slv_reg_in_vld),
      .slv_reg_out(slv_reg_out),
      .slv_reg_out_vld(slv_reg_out_vld),
      .slv_reg_addr(slv_reg_addr),
      .slv_reg_addr_vld(slv_reg_addr_vld),
      .sample_metric_ram_data(Sample_Metric_Ram_Data),
      .metrics_cnt_en(Metrics_Cnt_En),
      .metrics_cnt_reset(Metrics_Cnt_Reset),
      .event_log_en(Event_Log_En),
      .streaming_fifo_reset(Streaming_FIFO_Reset),
      .reset_on_sample_read(Reset_On_Sample_Read),
      .write_start_select(Write_Start_Select),
      .write_stop_select(Write_Stop_Select),
      .read_start_select(Read_Start_Select),
      .read_stop_select(Read_Stop_Select),
      .trace_control(Trace_Control),
      .lat_sample_reg(Lat_Sample_Reg),
      .lat_addr_6downto2(Lat_Addr_6downto2)
   );

   // **********************************
   // Counters
   // **********************************
   if (ENABLE_COUNTERS > 0) begin
   metric_calc
    #(
      .C_MON_FIFO_DATA_WIDTH     (MON_DATA_WIDTH),
      .C_MON_AXI_ADDR_WIDTH      (ADDR_WIDTH),
      .C_MON_AXI_DATA_WIDTH      (DATA_WIDTH),
      .C_MON_AXI_AWLEN           (8),
      .C_METRIC_COUNT_WIDTH      (COUNT_WIDTH),
      .C_OUTSTANDING_COUNT_WIDTH (8),
      .C_ENABLE_DEBUG            (ENABLE_DEBUG)
     ) metric_calc_i
     (
      .clk                       (mon_clk),
      .rst_n                     (_mon_resetn),
      .Data_In                   (Mon_Data_Out),
      .Read_Data_Valid           (Mon_Read_Valid),
      .Write_Data_Valid          (Mon_Write_Valid),
      .Metrics_Cnt_En            (Metrics_Cnt_En),
      .Metrics_Cnt_Reset         (Metrics_Cnt_Reset),
      // Counter values
      .Write_Byte_Cnt            (Write_Byte_Cnt),
      .Read_Byte_Cnt             (Read_Byte_Cnt),
      .Read_Latency              (Read_Latency),
      .Write_Latency             (Write_Latency),
      .Max_Write_Latency         (Max_Write_Latency),
      .Min_Write_Latency         (Min_Write_Latency),
      .Max_Read_Latency          (Max_Read_Latency),
      .Min_Read_Latency          (Min_Read_Latency),
      .Write_Outstanding         (Write_Outstanding),
      .Read_Outstanding          (Read_Outstanding),
      .Last_Write_Address        (Last_Write_Address),
      .Last_Write_Data           (Last_Write_Data),
      .Last_Read_Address         (Last_Read_Address),
      .Last_Read_Data            (Last_Read_Data),
      // Counter enables
      .Wtrans_Cnt_En             (Wtrans_Cnt_En),
      .Rtrans_Cnt_En             (Rtrans_Cnt_En),
      .Write_Byte_Cnt_En         (Write_Byte_Cnt_En),
      .Read_Byte_Cnt_En          (Read_Byte_Cnt_En),
      .Write_Beat_Cnt_En         (Write_Beat_Cnt_En),
      .Read_Beat_Cnt_En          (Read_Beat_Cnt_En),
      .Write_Latency_En          (Write_Latency_En),
      .Read_Latency_En           (Read_Latency_En)
    );

    wire Metrics_Cnt_Reset_Final = Metrics_Cnt_Reset | (Lat_Sample_Reg & Reset_On_Sample_Read);
    wire Sample_En = Lat_Sample_Reg;
    wire Sample_rst_n = ~Metrics_Cnt_Reset;

    //-- metric counters instantiation
    metric_counters
    #(
      .C_METRIC_COUNT_WIDTH        (COUNT_WIDTH),
      .C_OUTSTANDING_COUNT_WIDTH   (8),
      .C_ENABLE_DEBUG              (ENABLE_DEBUG)
    ) metric_counters_i
    (
      .clk                         (mon_clk),
      .rst_n                       (_mon_resetn),
      .Sample_rst_n                (Sample_rst_n),
      .Sample_En                   (Sample_En),
      .Lat_Addr_6downto2           (Lat_Addr_6downto2),
      .Metrics_Cnt_En              (Metrics_Cnt_En),
      .Metrics_Cnt_Reset           (Metrics_Cnt_Reset_Final),
      // Metric RAM selected data
      .Sample_Metric_Ram_Data      (Sample_Metric_Ram_Data),
      // Counter values
      .Write_Byte_Cnt              (Write_Byte_Cnt),
      .Read_Byte_Cnt               (Read_Byte_Cnt),
      .Write_Latency               (Write_Latency),
      .Min_Write_Latency           (Min_Write_Latency),
      .Max_Write_Latency           (Max_Write_Latency),
      .Read_Latency                (Read_Latency),
      .Min_Read_Latency            (Min_Read_Latency),
      .Max_Read_Latency            (Max_Read_Latency),
      .Write_Outstanding           (Write_Outstanding),
      .Read_Outstanding            (Read_Outstanding),
      .Last_Write_Address          (Last_Write_Address),
      .Last_Write_Data             (Last_Write_Data),
      .Last_Read_Address           (Last_Read_Address),
      .Last_Read_Data              (Last_Read_Data),
      // Counter enables
      .Wtrans_Cnt_En               (Wtrans_Cnt_En),
      .Rtrans_Cnt_En               (Rtrans_Cnt_En),
      .Write_Byte_Cnt_En           (Write_Byte_Cnt_En),
      .Read_Byte_Cnt_En            (Read_Byte_Cnt_En),
      .Write_Beat_Cnt_En           (Write_Beat_Cnt_En),
      .Read_Beat_Cnt_En            (Read_Beat_Cnt_En),
      .Write_Latency_En            (Write_Latency_En),
      .Read_Latency_En             (Read_Latency_En)
    );

  end
  endgenerate


endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module axi_master_monitor #(
    parameter TRACE_READ_ID         = 0,
    parameter TRACE_WRITE_ID        = 1,
    parameter MON_DATA_WIDTH        = 32,
    parameter MODE_SDACCEL          = 1
    ) (
    //AXI Full interface
    input mon_clk,
    input mon_resetn,
    input [MON_DATA_WIDTH - 1 : 0] Data_In,
    //Input AP_CTRL bus
    input ap_ready,
    input ap_done,
    //trace network clock
    input trace_clk,
    input trace_rst,
    //Read Trace Bus
    input rtrace_counter_overflow,
    input [44:0] rtrace_counter,
    output rtrace_event,
    output [63:0] rtrace_data,
    output rtrace_valid,
    input rtrace_read,
    input event_log_en,
    //Write Trace Bus
    input wtrace_counter_overflow,
    input [44:0] wtrace_counter,
    output wtrace_event,
    output [63:0] wtrace_data,
    output wtrace_valid,
    input wtrace_read,
    input [5:0] trace_control
  );
   
  wire rdata_start;
  wire rdata_stop;
  wire rdata_single;
  wire wdata_start;
  wire wdata_stop;
  wire wdata_single;

  reg read_going_on;
  reg write_going_on;
  
  wire trace_done;
  wire trace_en_rd;
  wire trace_en_wr;
  wire trace_cu;
  wire rst_rising;
    
  wire First_Read_Flag;
  wire First_Write_Flag;
  wire Last_Read_Flag;
  wire Last_Write_Flag;
  wire Single_Burst_Read_flag;
  wire Single_Burst_Write_flag;
   
  wire [51:0] rtrace_data_i;
  wire [51:0] wtrace_data_i;
  wire 	rtrace_empty_i;
  wire 	wtrace_empty_i;   

  //-- Decoding individual signals from output of fifo
  //-- NOTE: this block does not use the upper bits of address and data
  wire m_axi_RREADY        = Data_In[0];
  wire m_axi_RVALID        = Data_In[1];
  wire m_axi_RLAST         = Data_In[2];
  wire m_axi_WREADY        = Data_In[7];
  wire m_axi_WVALID        = Data_In[8];
  wire m_axi_WLAST         = Data_In[9];


  assign rtrace_data = {rtrace_data_i[51:49],TRACE_READ_ID[11:0],rtrace_data_i[48:0]};
  assign wtrace_data = {wtrace_data_i[51:49],TRACE_WRITE_ID[11:0],wtrace_data_i[48:0]};
  assign rtrace_valid = ~rtrace_empty_i;
  assign wtrace_valid = ~wtrace_empty_i;
    
  assign First_Read_Flag = m_axi_RVALID && (!m_axi_RLAST) && (!read_going_on);
  assign Last_Read_Flag = m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && (read_going_on);
  assign Single_Burst_Read_flag = m_axi_RLAST && m_axi_RVALID && m_axi_RREADY && (!read_going_on);
  assign First_Write_Flag = m_axi_WVALID && (!m_axi_WLAST) && (!write_going_on);
  assign Last_Write_Flag = m_axi_WLAST && m_axi_WVALID && m_axi_WREADY && (write_going_on);
  assign Single_Burst_Write_flag = m_axi_WLAST && m_axi_WVALID && m_axi_WREADY && (!write_going_on);

	timestamper ts_0i (
	    .start(rdata_start),
	    .stop(rdata_stop),
      .single(rdata_single),
	    .trace_clk(trace_clk),
      .mon_clk(prim_clk),
	    .rst(prim_rst),
      .en(trace_en_rd),
	    .counter(rtrace_counter),
	    .counter_overflow(rtrace_counter_overflow),
	    .event_out(rtrace_data_i),
	    .event_empty(rtrace_empty_i),
	    .event_read(rtrace_read),
      .finish(trace_done),
      .trace_cu(trace_cu),
      .fifo_event_write(wtrace_event)
	);

	timestamper ts_1i (
	    .start(wdata_start),
	    .stop(wdata_stop),
      .single(wdata_single),
	    .trace_clk(trace_clk),
      .mon_clk(prim_clk),
	    .rst(prim_rst),
      .en(trace_en_wr),
	    .counter(wtrace_counter),
	    .counter_overflow(wtrace_counter_overflow),
	    .event_out(wtrace_data_i),
	    .event_empty(wtrace_empty_i),
	    .event_read(wtrace_read),
      .finish(trace_done),
      .trace_cu(trace_cu),
      .fifo_event_write(rtrace_event)
	);

  //State machine to track transfers going on
  always @(posedge mon_clk)
  begin
    if (mon_resetn == 0 || rst_rising) begin //Reset
      read_going_on <= 0;
      write_going_on <= 0;
    end
    else begin
      //data write start/stop
      if (Last_Write_Flag == 1'b1) begin  //End of transfer when last data is sent
          write_going_on <= 1'b0;
      end
      else if ((First_Write_Flag == 1'b1))  begin //Start of transfer if first data is sent
          write_going_on <= 1'b1;
      end
      //data read start/stop
      if (Last_Read_Flag == 1'b1) begin  //End of transfer when last data is read
          read_going_on <= 1'b0;
      end
      else if ((First_Read_Flag == 1'b1))  begin //Start of transfer if first data is read
          read_going_on <= 1'b1;
      end
    end
  end

  assign prim_clk = trace_clk;
  assign prim_rst = (MODE_SDACCEL > 0) ? trace_rst : ~trace_rst ;

  Event_Pulse_i ep0 (
    .in(ap_done),
    .clk(prim_clk),
    .rising_edge(trace_done),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep3 (
    .in(First_Write_Flag),
    .clk(prim_clk),
    .rising_edge(wdata_start),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep4 (
    .in(Last_Write_Flag),
    .clk(prim_clk),
    .rising_edge(wdata_stop),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep5 (
    .in(First_Read_Flag),
    .clk(prim_clk),
    .rising_edge(rdata_start),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep6 (
    .in(Last_Read_Flag),
    .clk(prim_clk),
    .rising_edge(rdata_stop),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep7 (
    .in(Single_Burst_Write_flag),
    .clk(prim_clk),
    .rising_edge(wdata_single),
    .falling_edge(),
    .both_edges()
  );

  Event_Pulse_i ep8 (
    .in(Single_Burst_Read_flag),
    .clk(prim_clk),
    .rising_edge(rdata_single),
    .falling_edge(),
    .both_edges()
  );

  // rst to reset fsm
  Event_Pulse_i ep_rst (
    .in(trace_rst),
    .clk(mon_clk),
    .rising_edge(rst_rising),
    .falling_edge(),
    .both_edges()
  );

  xpm_cdc_single cdc_trace_en_wr (
    .src_clk(mon_clk),
    .src_in(trace_control[1]),
    .dest_clk(prim_clk),
    .dest_out(trace_en_wr)
  );

  xpm_cdc_single cdc_trace_en_rd (
    .src_clk(mon_clk),
    .src_in(trace_control[2]),
    .dest_clk(prim_clk),
    .dest_out(trace_en_rd)
  );

  xpm_cdc_single cdc_trace_cu (
    .src_clk(mon_clk),
    .src_in(trace_control[0]),
    .dest_clk(prim_clk),
    .dest_out(trace_cu)
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
// Filename   :     counter_ovf.v
// Version    :     v1.0
// Description:     Implements a parameterizable N-bit up-down counter
//                  with carry out
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

//(* DowngradeIPIdentifiedWarnings="yes" *)

module counter_ovf 
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
   output                             Carry_Out   

);

//-------------------------------------------------------------------
// Parameter Declaration
//-------------------------------------------------------------------
localparam RST_ACTIVE = 1'b0;

//-------------------------------------------------------------------
// Signal Declaration
//-------------------------------------------------------------------
wire [63:0] rst_load_64 = (COUNTER_LOAD_VALUE == 32'h00000000)?64'h0000000000000000:{32'hFFFFFFFF,COUNTER_LOAD_VALUE};

   reg [C_NUM_BITS :0]        Count_Out_i; 

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


assign Carry_Out = Count_Out_i[C_NUM_BITS] ;
assign Count_Out = Count_Out_i[C_NUM_BITS - 1:0];


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


module Event_Pulse_i(
    input in,               //Input signal to monitor
    input clk,              //clock to sample the input signal at
    output rising_edge,     //Output pulse if a rising edge is found
    output falling_edge,    //Output pulse if a falling edge is found
    output both_edges       //Output pulse if any edge is found
    );

    reg [3:0] reg_i = 1'h0; //four bit register for identifying edges

    assign rising_edge = (~reg_i[3]) &  reg_i[2];  //rising edge
    assign falling_edge =  reg_i[3]  &(~reg_i[2]); //falling edge
    assign both_edges = ((~reg_i[3]) &  reg_i[2]) | (reg_i[3] & (~reg_i[2]));   //both edges

    //Shift in the signal every clock cycle
    always @(posedge clk)
    begin
        if (in == 0 || in == 1 ) begin
           reg_i = {reg_i[2:0],in}; 
        end
    end
endmodule


// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-------------------------------------------------------------------------------
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
// Filename   :     metric_calc.v 
// Version    :     v1.0
// Description:     Metric calculator module generates different metric count
//                  enables which will be used in metric counter 
// Verilog-Standard:  Verilog 2001 
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module metric_calc
  #(
    parameter C_ENABLE_DEBUG                   = 0,
    parameter C_ENABLE_MIN_MAX_LATENCY         = 0,
    parameter C_MON_FIFO_DATA_WIDTH            = 38,
    parameter C_MON_AXI_ADDR_WIDTH             = 32,
    parameter C_MON_AXI_DATA_WIDTH             = 32,
    parameter C_MON_AXI_AWLEN                  = 8,
    parameter C_METRIC_COUNT_WIDTH             = 32,
    parameter C_OUTSTANDING_COUNT_WIDTH        = 5
   )
   (
    // AXI Signals
    input                                      clk,        
    input                                      rst_n,  
    input [C_MON_FIFO_DATA_WIDTH-1:0]          Data_In,
    input                                      Read_Data_Valid,
    input                                      Write_Data_Valid,
    // Register inputs                         
    input                                      Metrics_Cnt_En,
    input                                      Metrics_Cnt_Reset,
    // Metric outputs
    output reg [C_METRIC_COUNT_WIDTH-1:0]      Write_Byte_Cnt,
    output reg [C_METRIC_COUNT_WIDTH-1:0]      Read_Byte_Cnt,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Read_Latency,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Write_Latency,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Max_Write_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Min_Write_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Max_Read_Latency,                   
    output     [C_METRIC_COUNT_WIDTH-1:0]      Min_Read_Latency,
    output     [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding,
    output     [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Address,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Data,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Address,
    output     [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Data,
    
    output reg                                 Wtrans_Cnt_En,
    output reg                                 Rtrans_Cnt_En,
    output reg                                 Write_Byte_Cnt_En,
    output reg                                 Read_Byte_Cnt_En,
    output reg                                 Write_Beat_Cnt_En,
    output reg                                 Read_Beat_Cnt_En,
    output                                     Write_Latency_En,
    output                                     Read_Latency_En
  );

  //-------------------------------------------------------------------
  // Parameter Declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE = 0; 
  localparam NUM_PAD_ADDR = C_METRIC_COUNT_WIDTH - C_MON_AXI_ADDR_WIDTH;
  localparam NUM_PAD_DATA = C_METRIC_COUNT_WIDTH - C_MON_AXI_DATA_WIDTH;
  wire [NUM_PAD_ADDR - 1:0] PAD_ADDR = 0;
  wire [NUM_PAD_DATA - 1:0] PAD_DATA = 0;
  
  //-------------------------------------------------------------------
  // Signal Declaration
  //-------------------------------------------------------------------
  wire [C_METRIC_COUNT_WIDTH-1:0] Write_Latency_Cnt_Out;
  wire [C_METRIC_COUNT_WIDTH-1:0] Read_Latency_Cnt_Out;
  reg [C_METRIC_COUNT_WIDTH:0] Read_Latency_Cnt_Out_D1;
  reg [C_METRIC_COUNT_WIDTH:0] Read_Latency_Cnt_Out_D2;
  // read and write latency counter overflow signals
  wire Write_Latency_Cnt_Ovf;
  wire Read_Latency_Cnt_Ovf;
  
  // read and write latency counter enable signals 
  reg  Read_Latency_En_Int;
  reg  Write_Latency_En_Int;
  
  // Read Latency FIFO control signals
  reg  Rd_Latency_Fifo_Wr_En;
  reg  Rd_Latency_Fifo_Rd_En;
  reg  Rd_Latency_Fifo_Rd_En_D1;
  reg  Rd_Latency_Fifo_Rd_En_D2;
  
  // Write and read latency signals
  reg [C_METRIC_COUNT_WIDTH-1:0] Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Read_Latency_Int;
  
  reg [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding_Int;
  reg [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding_Int;
  
  // read and write latency counter data signals
  reg [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Wr_Data;
  reg [C_METRIC_COUNT_WIDTH-1:0] Max_Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Min_Write_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Max_Read_Latency_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Min_Read_Latency_Int;
  reg Read_Latency_One;            
  reg Read_Latency_One_D1;
  reg [4:0] Rd_Latency_Occupancy;
    
  // Debug registers
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Write_Address_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Write_Data_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Read_Address_Int;
  reg [C_METRIC_COUNT_WIDTH-1:0] Last_Read_Data_Int;
    
  wire [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Rd_Data;
  reg  [C_METRIC_COUNT_WIDTH:0] Rd_Latency_Fifo_Rd_Data_D1;
  wire Rd_Latency_Fifo_Rd_En_out;
  wire Rd_Latency_Fifo_Full;
  wire Rd_Latency_Fifo_Empty;
  wire Wr_Latcnt_rst_n;
  wire Rd_Latcnt_rst_n;
  wire [C_METRIC_COUNT_WIDTH-1:0] ONE = 1;
  wire [C_METRIC_COUNT_WIDTH-1:0] TWO = {{(C_METRIC_COUNT_WIDTH-2){1'b0}},2'b10};
  wire [C_METRIC_COUNT_WIDTH-1:0] ALL_ONES = {C_METRIC_COUNT_WIDTH{1'b1}};
  wire Wr_cnt_ld;
  wire Rd_cnt_ld;
  wire Metrics_Cnt_En_Out;
  wire F4_Empty;
  wire F3_Empty;
  
  wire rst_int_n = rst_n &  ~(Metrics_Cnt_Reset);
  wire Metrics_Cnt_En_Int = Metrics_Cnt_En;
  assign Metrics_Cnt_En_Out = Metrics_Cnt_En_Int;
           
  wire [C_METRIC_COUNT_WIDTH-1:0] Latency_Load_value = ONE;
    
  wire [7:0] zeros = 0;
    
  //-------------------------------------------------------------------
  // Functions
  //-------------------------------------------------------------------

  // Function to find number of '1' in 4-bit strobe
  function [2:0] count_4;
    input [3:0] strobe;            //Strobe
    begin
    case (strobe) 
        4'b0001, 4'b0010, 4'b0100, 4'b1000:
          count_4 = 3'b001;
        4'b0011, 4'b0110, 4'b1100, 4'b1001, 4'b0101, 4'b1010 :
          count_4 = 3'b010;
        4'b0111, 4'b1011, 4'b1101, 4'b1110 :
          count_4 = 3'b011;
        4'b1111 :
          count_4 = 3'b100;
        default :
          count_4 = 3'b000;
    endcase
    end
  endfunction

  // Function to find number of '1' in 8-bit strobe
  function [3:0] count_8;
    input [7:0] strobe;         //Strobe
    //input valid;                //Data valid
    integer j;
    reg [2:0] count_1;
    reg [2:0] count_2;
    begin
      count_1 = count_4(strobe[3:0]);
      count_2 = count_4(strobe[7:4]);
      count_8 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 16-bit strobe
  function [4:0] count_16;
    input [15:0] strobe;      //Strobe
    //input valid;              //Data valid
    integer j;
    reg [3:0] count_1;
    reg [3:0] count_2;
    begin
      count_1 = count_8(strobe[7:0]);
      count_2 = count_8(strobe[15:8]);
      count_16 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 32-bit strobe
  function [5:0] count_32;
    input [31:0] strobe;    //Strobe
    //input valid;            //Data valid
    integer j;
    reg [4:0] count_1;
    reg [4:0] count_2;
    begin
      count_1 = count_16(strobe[15:0]);
      count_2 = count_16(strobe[31:16]);
      count_32 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 64-bit strobe
  function [6:0] count_64;
    input [63:0] strobe;   //Strobe
    //input valid;           //Data valid
    integer j;
    reg [5:0] count_1;
    reg [5:0] count_2;
    begin
      count_1  = count_32(strobe[31:0]);
      count_2  = count_32(strobe[63:32]);
      count_64 = count_1+count_2;
    end
  endfunction

  // Function to find number of '1' in 128-bit strobe
  function [7:0] count_128;
    input [127:0] strobe;    //Strobe
    //input valid;             //Data Valid
    reg [6:0] count_1;
    reg [6:0] count_2;
    begin
      count_1  = count_64(strobe[63:0]);
      count_2  = count_64(strobe[127:64]);
      count_128 = count_1+count_2;
    end
  endfunction
 
  //-------------------------------------------------------------------
  // Begin architecture
  //-------------------------------------------------------------------              
                  
  //-- Decoding individual signals from output of fifo
  wire RREADY        = Data_In[0];
  wire RVALID        = Data_In[1];
  wire RLAST         = Data_In[2];
  wire ARREADY       = Data_In[3];
  wire ARVALID       = Data_In[4];

  wire BREADY        = Data_In[5];
  wire BVALID        = Data_In[6];
  
  wire WREADY        = Data_In[7];
  wire WVALID        = Data_In[8];
  wire WLAST         = Data_In[9];
  wire AWREADY       = Data_In[10];
  wire AWVALID       = Data_In[11];
  
  wire [C_MON_AXI_AWLEN-1:0] ARLEN        = Data_In[(C_MON_AXI_AWLEN+11):12];
  wire [C_MON_AXI_AWLEN-1:0] AWLEN        = Data_In[(2*C_MON_AXI_AWLEN+11):(C_MON_AXI_AWLEN+12)];
  wire [C_MON_AXI_DATA_WIDTH/8-1:0] WSTRB = Data_In[((2*C_MON_AXI_AWLEN)+(C_MON_AXI_DATA_WIDTH/8)+11):(2*C_MON_AXI_AWLEN+12)];
  
  localparam RDATA_START = (2*C_MON_AXI_AWLEN) + (C_MON_AXI_DATA_WIDTH/8) + 12;
  localparam WDATA_START = C_MON_AXI_DATA_WIDTH + C_MON_AXI_ADDR_WIDTH + RDATA_START;
  wire [C_MON_AXI_DATA_WIDTH-1:0] RDATA   = Data_In[(RDATA_START+C_MON_AXI_DATA_WIDTH-1):RDATA_START];
  wire [C_MON_AXI_ADDR_WIDTH-1:0] ARADDR  = Data_In[(RDATA_START+C_MON_AXI_DATA_WIDTH+C_MON_AXI_ADDR_WIDTH-1):(RDATA_START+C_MON_AXI_DATA_WIDTH)];
  wire [C_MON_AXI_DATA_WIDTH-1:0] WDATA   = Data_In[(WDATA_START+C_MON_AXI_DATA_WIDTH-1):WDATA_START];
  wire [C_MON_AXI_ADDR_WIDTH-1:0] AWADDR  = Data_In[(WDATA_START+C_MON_AXI_DATA_WIDTH+C_MON_AXI_ADDR_WIDTH-1):(WDATA_START+C_MON_AXI_DATA_WIDTH)];

  //-- Generate events and data from signals 
  //-- NOTE: read tranx events: address acceptance and last data
  wire Read_Start         = ARREADY && ARVALID && Read_Data_Valid;
  wire Read_Stop          = RLAST && RVALID && RREADY && Read_Data_Valid;
  wire Read_Beat          = RVALID & RREADY & Read_Data_Valid;
  wire [7:0] Read_Length  = ARLEN;
  wire [7:0] Read_Bytes   = C_MON_AXI_DATA_WIDTH/8;
  //-- NOTE: write tranx events: address acceptance and response
  wire Write_Start        = AWREADY && AWVALID && Write_Data_Valid;
  //wire Write_Stop         = WLAST && WVALID && WREADY && Write_Data_Valid;
  wire Write_Stop         = BVALID && BREADY && Write_Data_Valid;
  wire Write_Beat         = WVALID & WREADY & Write_Data_Valid;
  wire [7:0] Write_Length = AWLEN;
  wire [7:0] Write_Bytes;
  
  // Write data byte counts for different data widths of the bus 
  generate if (C_MON_AXI_DATA_WIDTH == 32) begin : GEN_32BIT_BYTECNT
    assign Write_Bytes = {zeros[7:3],count_4(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 64) begin : GEN_64BIT_BYTECNT
    assign Write_Bytes = {zeros[7:4],count_8(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 128) begin : GEN_128BIT_BYTECNT
    assign Write_Bytes = {zeros[7:5],count_16(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 256) begin : GEN_256BIT_BYTECNT
    assign Write_Bytes = {zeros[7:6],count_32(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 512) begin : GEN_512BIT_BYTECNT
    assign Write_Bytes = {zeros[7:7],count_64(WSTRB)}; 
  end
  endgenerate

  generate if (C_MON_AXI_DATA_WIDTH == 1024) begin : GEN_1024BIT_BYTECNT
    assign Write_Bytes = count_128(WSTRB); 
  end
  endgenerate
   
  //-- ********************
  //-- Write & Read Latency
  //-- ********************
  generate if (C_ENABLE_MIN_MAX_LATENCY == 1) begin : GEN_MIN_MAX
    wire F3_Wr_En, F3_Rd_En;
    reg F34_Rd_Vld;
    wire F34_Rd_En;
    wire F4_Wr_En, F4_Rd_En;
    wire [C_METRIC_COUNT_WIDTH:0] F3_Wr_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F3_Rd_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F4_Wr_Data;
    wire [C_METRIC_COUNT_WIDTH:0] F4_Rd_Data;
    reg wr_latency_start_d1;
    reg wr_latency_end_d1;
    
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        wr_latency_start_d1 <= 1'b0;
        wr_latency_end_d1 <= 1'b0;
      end else begin
        wr_latency_start_d1 <= Write_Start;
        wr_latency_end_d1   <= Write_Stop;
      end
    end
    
    assign F3_Wr_En   = wr_latency_start_d1; 
    assign F3_Wr_Data = {Write_Latency_Cnt_Ovf,Write_Latency_Cnt_Out}; 
  
    assign F4_Wr_En   = wr_latency_end_d1; 
    assign F4_Wr_Data = {Write_Latency_Cnt_Ovf,Write_Latency_Cnt_Out};
   
    sync_fifo 
     #(
        .WIDTH      (C_METRIC_COUNT_WIDTH+1),
        .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) F3_WR_LAT_START
     (
       .rst_n    (rst_int_n        ),
       .clk      (clk              ),
       .wren     (F3_Wr_En         ),
       .rden     (F3_Rd_En         ),
       .din      (F3_Wr_Data       ),
       .dout     (F3_Rd_Data       ),
       .count    (Write_Outstanding),
       .full     (                 ),
       .empty    (F3_Empty         )
     );
   
    sync_fifo 
     #(
        .WIDTH      (C_METRIC_COUNT_WIDTH+1),
        .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) F4_WR_LAT_END
     (
       .rst_n    (rst_int_n),
       .clk      (clk),
       .wren     (F4_Wr_En   ),
       .rden     (F4_Rd_En   ),
       .din      (F4_Wr_Data ),
       .dout     (F4_Rd_Data ),
       .full     (           ),
       .empty    (F4_Empty   )
     );
  
    //Rd F3,F4 and update latency if write ID matches 
    assign F34_Rd_En = (F3_Empty == 1'b0) && (F4_Empty == 1'b0);
    assign F3_Rd_En = F34_Rd_En;
    assign F4_Rd_En = F34_Rd_En;
  
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        F34_Rd_Vld <= 1'b0;
      end else begin
        F34_Rd_Vld <= F34_Rd_En;
      end
    end
  
    reg update_min_Wr_Lat;
    reg update_max_Wr_Lat;
    reg [C_METRIC_COUNT_WIDTH-1:0] Wr_Lat_Cnt_Diff_reg1;
    reg F34_Rd_Vld_reg_d2;
    
    // Below logic is for timing violation fix Wr_Lat_Cnt_Diff_reg F34_Rd_Vld_reg 
    reg F34_Rd_Vld_reg; 
    reg [C_METRIC_COUNT_WIDTH-1:0] Wr_Lat_Cnt_Diff_reg;
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        F34_Rd_Vld_reg       <= 0;
        Wr_Lat_Cnt_Diff_reg  <= 0;
      end else begin
        if (F34_Rd_Vld) begin
          if (F4_Rd_Data[C_METRIC_COUNT_WIDTH] ^ F3_Rd_Data[C_METRIC_COUNT_WIDTH]) begin
            if (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]>F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) begin
              Wr_Lat_Cnt_Diff_reg  <= (~(F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) + F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0])+1'b1;//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Wr_Lat_Cnt_Diff_reg <= (~F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) + F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]+1'b1;
            end
          end
          else begin
            if (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]>F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]) begin
              Wr_Lat_Cnt_Diff_reg  <= (F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0] - F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0]);//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Wr_Lat_Cnt_Diff_reg  <= F4_Rd_Data[C_METRIC_COUNT_WIDTH-1:0] - F3_Rd_Data[C_METRIC_COUNT_WIDTH-1:0];
            end
          end
        end
        
        F34_Rd_Vld_reg <= F34_Rd_Vld;
      end
    end
    
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        update_min_Wr_Lat    <= 0;
        update_max_Wr_Lat    <= 0;
        Wr_Lat_Cnt_Diff_reg1  <= 0;
      end else begin
        if (F34_Rd_Vld_reg) begin
          update_min_Wr_Lat    <= Wr_Lat_Cnt_Diff_reg < Min_Write_Latency_Int;
  	      update_max_Wr_Lat    <= Wr_Lat_Cnt_Diff_reg > Max_Write_Latency_Int;
        end
       
        Wr_Lat_Cnt_Diff_reg1  <= Wr_Lat_Cnt_Diff_reg;
        F34_Rd_Vld_reg_d2 <= F34_Rd_Vld_reg;
      end
    end
    
    // Total write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
          Write_Latency_Int <= 1'b0;
          Write_Latency_En_Int <= 1'b0;
      end else if (F34_Rd_Vld_reg_d2) begin
          Write_Latency_Int <= Wr_Lat_Cnt_Diff_reg1;
          Write_Latency_En_Int <= Metrics_Cnt_En_Int;
      end else
          Write_Latency_En_Int <= 1'b0;
    end
  
    // Minimum write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        Min_Write_Latency_Int    <= ALL_ONES;
      end else if(F34_Rd_Vld_reg_d2 && update_min_Wr_Lat) begin
        Min_Write_Latency_Int    <= Wr_Lat_Cnt_Diff_reg1;
      end
    end
  
    // Maximum write latency
    always @(posedge clk) begin
      if (rst_int_n == RST_ACTIVE) begin
        Max_Write_Latency_Int    <= 0;
      end else if (F34_Rd_Vld_reg_d2 && update_max_Wr_Lat) begin
        Max_Write_Latency_Int    <= Wr_Lat_Cnt_Diff_reg1;
      end
    end
    
    assign Min_Write_Latency = Min_Write_Latency_Int;
    assign Max_Write_Latency = Max_Write_Latency_Int;
    assign Write_Latency     = Write_Latency_Int;     // Actual Latency
    assign Write_Latency_En  = Write_Latency_En_Int;  // Latency Valid
  
    assign Wr_Latcnt_rst_n = rst_int_n;
    reg Write_Data_Valid_i;
    
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Write_Data_Valid_i <= 1'b0;
      end
      else begin
        Write_Data_Valid_i <= Write_Data_Valid;
      end
    end
    
    wire Write_Lat_Cnt_en = Metrics_Cnt_En_Int & Write_Data_Valid_i; //Counter enable for ID based
  
    assign Wr_cnt_ld           = ~(rst_int_n);
    
    //--Write latency counter
    //--Counter Instantiation
    //--This counter will be enabled only when id based latency is enabled
    counter_ovf 
    #(
       .C_FAMILY             ("nofamily"),
       .C_NUM_BITS           (C_METRIC_COUNT_WIDTH),
       .COUNTER_LOAD_VALUE   (32'h00000000)
     ) wr_latency_cnt_inst 
     (
       .clk                  (clk),
       .rst_n                (Wr_Latcnt_rst_n),
       .Load_In              (Latency_Load_value),
       .Count_Enable         (Write_Lat_Cnt_en),
       .Count_Load           (Wr_cnt_ld),
       .Count_Down           (1'b0),
       .Count_Out            (Write_Latency_Cnt_Out),
       .Carry_Out            (Write_Latency_Cnt_Ovf)
     );
  
    //-- ************
    //-- Read Latency
    //-- ************
  
    //-- Read latency calculation 
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Fifo_Wr_En   <= 1'b0;
        Rd_Latency_Fifo_Wr_Data <= 0;
      end
      else begin
        if (Read_Start == 1'b1) begin
          Rd_Latency_Fifo_Wr_En     <= ~Rd_Latency_Fifo_Full;
  	      //Rd_Latency_Fifo_Wr_Data <= ONE;
          Rd_Latency_Fifo_Wr_Data   <= {Read_Latency_Cnt_Ovf,Read_Latency_Cnt_Out};
        end
        else begin
          Rd_Latency_Fifo_Wr_En     <= 1'b0;
          Rd_Latency_Fifo_Wr_Data   <= Rd_Latency_Fifo_Wr_Data;
        end
      end
    end
  
    // Reading the FIFO loaded with the count when read started 
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Fifo_Rd_En      <= 1'b0;
        Rd_Latency_Fifo_Rd_En_D1   <= 1'b0;
        Rd_Latency_Fifo_Rd_En_D2   <= 1'b0;
        Read_Latency_Cnt_Out_D1    <= 0;
        Read_Latency_Cnt_Out_D2    <= 0;
        Read_Latency_One           <= 0;       //when read response comes with in one clock 
        Read_Latency_One_D1        <= 0;
        Rd_Latency_Fifo_Rd_Data_D1 <= 0;
      end
      else begin
        Rd_Latency_Fifo_Rd_En_D1   <= Rd_Latency_Fifo_Rd_En;
        Rd_Latency_Fifo_Rd_En_D2   <= Rd_Latency_Fifo_Rd_En_D1;
        Read_Latency_Cnt_Out_D1    <= {Read_Latency_Cnt_Ovf,Read_Latency_Cnt_Out};
        Read_Latency_Cnt_Out_D2    <= Read_Latency_Cnt_Out_D1;
        Read_Latency_One_D1        <= Read_Latency_One & ~Rd_Latency_Fifo_Empty;
        Rd_Latency_Fifo_Rd_Data_D1 <= Rd_Latency_Fifo_Rd_Data;
        if (Read_Stop == 1'b1) begin
          Rd_Latency_Fifo_Rd_En   <=  ~Rd_Latency_Fifo_Empty;
          Read_Latency_One        <=   Rd_Latency_Fifo_Empty; 
        end
        else begin
          Rd_Latency_Fifo_Rd_En   <= 1'b0;
          Read_Latency_One        <= 0;    //when read response comes with in one clock 
        end
      end
    end
  
    assign Rd_Latency_Fifo_Rd_En_out = Rd_Latency_Fifo_Rd_En | Read_Latency_One_D1;
  
    //-- Rd latency FIFO Instance to store outstanding transactions
    sync_fifo 
    #(
       .WIDTH      (C_METRIC_COUNT_WIDTH+1),
       .DEPTH_LOG2 (C_OUTSTANDING_COUNT_WIDTH)
     ) rd_latency_fifo_inst 
     (
       .rst_n      (rst_int_n),
       .clk        (clk),
       .wren       (Rd_Latency_Fifo_Wr_En),
       .rden       (Rd_Latency_Fifo_Rd_En_out),
       .din        (Rd_Latency_Fifo_Wr_Data),
       .dout       (Rd_Latency_Fifo_Rd_Data),
       .count      (Read_Outstanding),
       .full       (Rd_Latency_Fifo_Full),
       .empty      (Rd_Latency_Fifo_Empty)
     );
      
    // Read latency FIFO occupancy based on write and reads to FIFO
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Rd_Latency_Occupancy   <= 0;
      end
      else begin
        if (Read_Start == 1'b1 && Read_Stop == 1'b1 ) begin 
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy;
        end
        else if (Read_Start == 1'b1) begin
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy + 1'b1;
        end
        else if (Read_Stop == 1'b1 && Rd_Latency_Occupancy != 0) begin
          Rd_Latency_Occupancy   <= Rd_Latency_Occupancy - 1'b1;
        end
      end
    end
  
    //-- Read latency capture from fifo read data with current counter value
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Read_Latency_Int        <= 0;
        Read_Latency_En_Int     <= 0;
      end
      else begin
        if (Read_Latency_One_D1 == 1'b1) begin
          Read_Latency_Int      <= ONE;
          Read_Latency_En_Int   <= Metrics_Cnt_En_Int;
        end
        else if (Rd_Latency_Fifo_Rd_En_D1 == 1'b1) begin
          if (Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH] ^ Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH]) begin
            if (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] > Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) begin
              Read_Latency_Int  <= (~(Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0]) + Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0])+1'b1;//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Read_Latency_Int  <= (~Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) + Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0]+1'b1;
            end
          end
          else begin
            if (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] > Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]) begin
              Read_Latency_Int  <= (Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0] - Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0]);//:(F4_Rd_Data - F3_Rd_Data);;
            end else begin
              Read_Latency_Int  <= Read_Latency_Cnt_Out_D2[C_METRIC_COUNT_WIDTH-1:0] - Rd_Latency_Fifo_Rd_Data_D1[C_METRIC_COUNT_WIDTH-1:0];
            end
          end
          
          Read_Latency_En_Int   <= Metrics_Cnt_En_Int;
        end
        else begin
          Read_Latency_Int      <= Read_Latency_Int;
          Read_Latency_En_Int   <= 1'b0;
        end
      end
    end
  
    assign Read_Latency    = Read_Latency_Int;
    assign Read_Latency_En = Read_Latency_En_Int; 
    wire Read_Lat_Cnt_en   = Metrics_Cnt_En_Int & Read_Data_Valid;
  
    //--Minimum read latency calculation
    //--Valid only for ID based latency
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Min_Read_Latency_Int    <= ALL_ONES;
      end
      else begin
        if (Read_Latency_Int < Min_Read_Latency_Int && Read_Latency_En == 1'b1) begin
          Min_Read_Latency_Int  <= Read_Latency;
        end
        else begin
          Min_Read_Latency_Int  <= Min_Read_Latency_Int;
        end
      end
    end
  
    assign Min_Read_Latency = Min_Read_Latency_Int;
  
    //--Maximum read latency calculation
    //--Valid only for ID based latency
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Max_Read_Latency_Int    <= 0;
      end
      else begin
        if (Read_Latency_Int > Max_Read_Latency_Int && Read_Latency_En == 1'b1) begin
          Max_Read_Latency_Int  <= Read_Latency;
        end
        else begin
          Max_Read_Latency_Int  <= Max_Read_Latency_Int;
        end
      end
    end
   
    assign Max_Read_Latency = Max_Read_Latency_Int;
    assign Rd_Latcnt_rst_n  = rst_int_n; 
    assign Rd_cnt_ld        = ~rst_int_n;
  
    //--Read latency counter
    //--Counter Instantiation
    counter_ovf 
    #(
       .C_FAMILY             ("nofamily"),
       .C_NUM_BITS           (C_METRIC_COUNT_WIDTH),
  	   .COUNTER_LOAD_VALUE   (32'h00000000)
     ) rd_latency_cnt_inst 
     (
       .clk                  (clk),
       .rst_n                (Rd_Latcnt_rst_n),
       .Load_In              (Latency_Load_value),
       .Count_Enable         (Read_Lat_Cnt_en),
       .Count_Load           (Rd_cnt_ld),
       .Count_Down           (1'b0),
       .Count_Out            (Read_Latency_Cnt_Out),
       .Carry_Out            (Read_Latency_Cnt_Ovf)
     );
  end
  else begin: GEN_NO_MIN_MAX
    assign Min_Read_Latency       = 0;
    assign Max_Read_Latency       = 0;
    assign Min_Write_Latency      = 0;
    assign Max_Write_Latency      = 0;
    
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Write_Outstanding_Int   <= 0;
        Write_Latency_En_Int    <= 0;
        Read_Outstanding_Int    <= 0;
        Read_Latency_En_Int     <= 0;
      end
      else begin
        // Always enabled
        Write_Latency_En_Int    <= Metrics_Cnt_En_Int;
        Read_Latency_En_Int     <= Metrics_Cnt_En_Int;
        
        // Write outstanding count
        if (Write_Start == Write_Stop) begin
          Write_Outstanding_Int <= Write_Outstanding_Int;
        end
        else if (Write_Start == 1'b1) begin
          Write_Outstanding_Int <= Write_Outstanding_Int + 1;
        end
        else if (Write_Stop == 1'b1) begin
          Write_Outstanding_Int <= Write_Outstanding_Int - 1;
        end
        
        // Read outstanding count
        if (Read_Start == Read_Stop) begin
          Read_Outstanding_Int <= Read_Outstanding_Int;
        end
        else if (Read_Start == 1'b1) begin
          Read_Outstanding_Int <= Read_Outstanding_Int + 1;
        end
        else if (Read_Stop == 1'b1) begin
          Read_Outstanding_Int <= Read_Outstanding_Int - 1;
        end
      end
    end
    
    // Increment total latency counter with # of outstanding tranx
    assign Write_Outstanding    = Write_Outstanding_Int;
    assign Write_Latency        = { {(C_METRIC_COUNT_WIDTH-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Write_Outstanding_Int };
    assign Write_Latency_En     = Write_Latency_En_Int;
    assign Read_Outstanding     = Read_Outstanding_Int;
    assign Read_Latency         = { {(C_METRIC_COUNT_WIDTH-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Read_Outstanding_Int };
    assign Read_Latency_En      = Read_Latency_En_Int;
  end
  endgenerate
  
  //-- *******
  //-- Outputs
  //-- *******
   
  always @(posedge clk) begin 
    if (rst_int_n == RST_ACTIVE) begin
      Wtrans_Cnt_En         <= 0;
      Rtrans_Cnt_En         <= 0;
      Write_Beat_Cnt_En     <= 0;
      Read_Beat_Cnt_En      <= 0;
      Write_Byte_Cnt        <= 0;
      Write_Byte_Cnt_En     <= 0;
      Read_Byte_Cnt         <= 0;
      Read_Byte_Cnt_En      <= 0;
    end
    else begin
      Wtrans_Cnt_En         <= Write_Start & Metrics_Cnt_En_Int;
      Rtrans_Cnt_En         <= Read_Start  & Metrics_Cnt_En_Int;
      Write_Beat_Cnt_En     <= Write_Beat & Metrics_Cnt_En_Int;
      Read_Beat_Cnt_En      <= Read_Beat & Metrics_Cnt_En_Int ; 
      Write_Byte_Cnt        <= Write_Bytes;
      Write_Byte_Cnt_En     <= Write_Beat & Metrics_Cnt_En_Int;
      Read_Byte_Cnt         <= Read_Bytes; 
      Read_Byte_Cnt_En      <= Read_Beat & Metrics_Cnt_En_Int;
    end
  end
  
  //-- ***********
  //-- Debug logic
  //-- ***********
  generate if (C_ENABLE_DEBUG == 1) begin : GEN_DEBUG
    always @(posedge clk) begin 
      if (rst_int_n == RST_ACTIVE) begin
        Last_Write_Address_Int   <= 0;
        Last_Write_Data_Int      <= 0;
        Last_Read_Address_Int    <= 0;
        Last_Read_Data_Int       <= 0;
      end
      else begin
        if (Write_Start) begin
          if (NUM_PAD_ADDR == 0) begin
            Last_Write_Address_Int <= AWADDR;
          end
          else begin
            Last_Write_Address_Int <= {PAD_ADDR[NUM_PAD_ADDR - 1:0], AWADDR[C_MON_AXI_ADDR_WIDTH-1:0]};
          end
        end
        if (Write_Beat) begin
          if (NUM_PAD_DATA == 0) begin
            Last_Write_Data_Int <= WDATA;
          end
          else begin
            Last_Write_Data_Int <= {PAD_DATA[NUM_PAD_DATA - 1:0], WDATA[C_MON_AXI_DATA_WIDTH-1:0]};
          end
        end
        if (Read_Start) begin
          if (NUM_PAD_ADDR == 0) begin
            Last_Read_Address_Int <= ARADDR;
          end
          else begin
            Last_Read_Address_Int <= {PAD_ADDR[NUM_PAD_ADDR - 1:0], ARADDR[C_MON_AXI_ADDR_WIDTH-1:0]};
          end
        end
        if (Read_Beat) begin
          if (NUM_PAD_DATA == 0) begin
            Last_Read_Data_Int <= RDATA;
          end
          else begin
            Last_Read_Data_Int <= {PAD_DATA[NUM_PAD_DATA - 1:0], RDATA[C_MON_AXI_DATA_WIDTH-1:0]};
          end
        end
      end
    end
    
    assign Last_Write_Address     = Last_Write_Address_Int;
    assign Last_Write_Data        = Last_Write_Data_Int;
    assign Last_Read_Address      = Last_Read_Address_Int;
    assign Last_Read_Data         = Last_Read_Data_Int;
  end
  else begin: GEN_NO_DEBUG
    assign Last_Write_Address     = 0;
    assign Last_Write_Data        = 0;
    assign Last_Read_Address      = 0;
    assign Last_Read_Data         = 0;
  end
  endgenerate
      
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
// Filename     : metric_counters.v
// Version      : v1.0
// Description  : Metric counter module instantiates the accumulators
//                and calculates the metric counts
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

module metric_counters 
#(
   parameter  C_FAMILY                   = "virtex7",
   parameter  C_ENABLE_DEBUG             = 0,
   parameter  C_ENABLE_MIN_MAX_LATENCY   = 0,
   parameter  C_METRIC_COUNT_WIDTH       = 32,
   parameter  C_OUTSTANDING_COUNT_WIDTH  = 8,
   parameter  C_SAMPLE_WIDTH             = 32
)                                        
(                                        
   input                                 clk,
   input                                 rst_n,
   
   input                                 Sample_rst_n,                                      
   input                                 Sample_En,
   input [4:0]                           Lat_Addr_6downto2,
                                         
   //-- Cnt Enable and Reset             
   input                                 Metrics_Cnt_En,
   input                                 Metrics_Cnt_Reset,

   // Metric Counters - in core clk domain
   //output reg [C_METRIC_COUNT_WIDTH-1:0] Metric_Ram_Data,
   output reg [C_SAMPLE_WIDTH-1:0] Sample_Metric_Ram_Data,
   
   //-- Counter metrics
   input [C_METRIC_COUNT_WIDTH-1:0]      Write_Byte_Cnt,
   input [C_METRIC_COUNT_WIDTH-1:0]      Read_Byte_Cnt,
   input [C_METRIC_COUNT_WIDTH-1:0]      Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Min_Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Max_Write_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Read_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Min_Read_Latency,
   input [C_METRIC_COUNT_WIDTH-1:0]      Max_Read_Latency,
   input [C_OUTSTANDING_COUNT_WIDTH-1:0] Write_Outstanding,
   input [C_OUTSTANDING_COUNT_WIDTH-1:0] Read_Outstanding,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Address,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Write_Data,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Address,
   input [C_METRIC_COUNT_WIDTH-1:0]      Last_Read_Data,

   input                                 Wtrans_Cnt_En,
   input                                 Rtrans_Cnt_En,
   input                                 Write_Byte_Cnt_En,
   input                                 Read_Byte_Cnt_En,
   input                                 Write_Beat_Cnt_En,
   input                                 Read_Beat_Cnt_En,
   input                                 Write_Latency_En,
   input                                 Read_Latency_En
);

  //-------------------------------------------------------------------
  // Parameter Declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE                = 1'b0;
  localparam C_NUM_OF_COUNTERS         = 8;
  localparam C_NUM_OF_MIN_MAX_COUNTERS = C_ENABLE_MIN_MAX_LATENCY ? 2 : 0;
  localparam C_NUM_OF_DEBUG_COUNTERS   = C_ENABLE_DEBUG ? 7 : 0;
  localparam C_NUM_OF_COUNTERS_EXTND   = C_NUM_OF_MIN_MAX_COUNTERS + C_NUM_OF_DEBUG_COUNTERS;
  localparam EN_64                     = (C_METRIC_COUNT_WIDTH - C_SAMPLE_WIDTH > 0) ? 1 : 0;
  
  //-------------------------------------------------------------------
  // Signal Declarations
  //------------------------------------------------------------------
  wire [C_METRIC_COUNT_WIDTH-1:0]    accum_in [C_NUM_OF_COUNTERS-1:0];
  wire [C_NUM_OF_COUNTERS-1:0]       accum_in_valid;
  wire [C_METRIC_COUNT_WIDTH-1:0]    Metric_Cnt [C_NUM_OF_COUNTERS-1:0];
  wire [C_METRIC_COUNT_WIDTH-1:0]    Sample_Metric_Cnt [C_NUM_OF_COUNTERS-1:0];
  
  wire [C_METRIC_COUNT_WIDTH-1:0]    accum_in_extnd [C_NUM_OF_COUNTERS_EXTND-1:0];
  wire [C_NUM_OF_COUNTERS_EXTND-1:0] accum_in_valid_extnd;
  wire [C_METRIC_COUNT_WIDTH-1:0]    Metric_Cnt_extnd [C_NUM_OF_COUNTERS_EXTND-1:0];
  wire [C_METRIC_COUNT_WIDTH-1:0]    Sample_Metric_Cnt_extnd [6:0];
  
  reg                                MinMax_Write_Latency_En;
  reg                                MinMax_Read_Latency_En;
  
  //-------------------------------------------------------------------
  // Begin architecture
  //-------------------------------------------------------------------

  assign accum_in[0]             = Write_Byte_Cnt;
  assign accum_in[1]             = 1'b1;
  assign accum_in[2]             = Write_Latency;
  assign accum_in[3]             = Read_Byte_Cnt;
  assign accum_in[4]             = 1'b1;
  assign accum_in[5]             = Read_Latency;
  assign accum_in[6]             = 1'b1;
  assign accum_in[7]             = 1'b1;
  assign accum_in_valid[0]       = Write_Byte_Cnt_En;
  assign accum_in_valid[1]       = Wtrans_Cnt_En;
  assign accum_in_valid[2]       = Write_Latency_En;
  assign accum_in_valid[3]       = Read_Byte_Cnt_En;
  assign accum_in_valid[4]       = Rtrans_Cnt_En;
  assign accum_in_valid[5]       = Read_Latency_En;
  assign accum_in_valid[6]       = Read_Outstanding > 0 ? 1 : 0;
  assign accum_in_valid[7]       = Write_Outstanding > 0 ? 1 : 0;
  
  //
  // Min/Max Latency
  //
  generate if (C_ENABLE_MIN_MAX_LATENCY == 1) begin : GEN_MIN_MAX
    always @(posedge clk) begin
      if (rst_n == RST_ACTIVE) begin
        MinMax_Write_Latency_En <= 0;
        MinMax_Read_Latency_En  <= 0;
      end 
      else begin
        MinMax_Write_Latency_En <= Write_Latency_En;
        MinMax_Read_Latency_En  <= Read_Latency_En;
      end
    end
    
    assign accum_in_extnd[0]       = {Max_Write_Latency[15:0], Min_Write_Latency[15:0]};    
    assign accum_in_extnd[1]       = {Max_Read_Latency[15:0],  Min_Read_Latency[15:0] };
    assign accum_in_valid_extnd[0] = MinMax_Write_Latency_En;
    assign accum_in_valid_extnd[1] = MinMax_Read_Latency_En;
  end
  else begin: GEN_NO_MIN_MAX
    assign accum_in_extnd[0]       = 0;    
    assign accum_in_extnd[1]       = 0;
    assign accum_in_valid_extnd[0] = 0;
    assign accum_in_valid_extnd[1] = 0;  
  end
  endgenerate
  
  //
  // Debug
  //
  generate if (C_ENABLE_DEBUG == 1) begin : GEN_DEBUG   
    assign accum_in_extnd[2]       = {{(16-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Write_Outstanding, 
                                    {(16-C_OUTSTANDING_COUNT_WIDTH){1'b0}}, Read_Outstanding };
    assign accum_in_extnd[3]       = Last_Write_Address;
    assign accum_in_extnd[4]       = Last_Write_Data;
    assign accum_in_extnd[5]       = Last_Read_Address;
    assign accum_in_extnd[6]       = Last_Read_Data;
  
    assign accum_in_valid_extnd[2] = 1'b1;
    assign accum_in_valid_extnd[3] = Wtrans_Cnt_En;
    assign accum_in_valid_extnd[4] = Write_Byte_Cnt_En;
    assign accum_in_valid_extnd[5] = Rtrans_Cnt_En;
    assign accum_in_valid_extnd[6] = Read_Byte_Cnt_En;
  end
  else begin: GEN_NO_DEBUG
    assign accum_in_extnd[2]       = 0;
    assign accum_in_extnd[3]       = 0;
    assign accum_in_extnd[4]       = 0;
    assign accum_in_extnd[5]       = 0;
    assign accum_in_extnd[6]       = 0;
  
    assign accum_in_valid_extnd[2] = 0;
    assign accum_in_valid_extnd[3] = 0;
    assign accum_in_valid_extnd[4] = 0;
    assign accum_in_valid_extnd[5] = 0;
    assign accum_in_valid_extnd[6] = 0;
  end
  endgenerate
  
  //
  //-- Metric Counters
  //
  genvar i;
  generate for (i=0; i < C_NUM_OF_COUNTERS; i=i+1) begin : GEN_COUNTERS
  
    acc_sample
    #(
      .C_FAMILY                      (C_FAMILY            ),
      .DWIDTH                        (C_METRIC_COUNT_WIDTH),
      .C_HAVE_SAMPLED_METRIC_CNT     (1)
    ) acc_inst_0
    (
       .clk                (clk                        ),
       .rst_n              (rst_n                      ),
       .Sample_rst_n       (Sample_rst_n               ),
       .Enable             (Metrics_Cnt_En             ),   
       .Reset              (Metrics_Cnt_Reset          ) ,   
       .Add_in             (accum_in[i]                ),  
       .Add_in_Valid       (accum_in_valid[i]          ), 
       .Sample_En          (Sample_En                  ), 
       .Accumulate         (1'b1                       ), 
       .Accumulator        (Metric_Cnt[i]              ),
       .Sample_Accumulator (Sample_Metric_Cnt[i]       )
    );
  end
  endgenerate
  
  //
  //-- Metric Counter (extended)
  //
  genvar k;
  generate
  for (k=0; k < C_NUM_OF_COUNTERS_EXTND; k=k+1) begin : GEN_COUNTERS_EXT
  
     acc_sample 
     #(
       .C_FAMILY                      (C_FAMILY            ),
       .DWIDTH                        (C_METRIC_COUNT_WIDTH),
       .C_HAVE_SAMPLED_METRIC_CNT     (1)
     ) acc_extnd_inst_0
     (
        .clk                (clk                        ),
        .rst_n              (rst_n                      ),
        .Sample_rst_n       (Sample_rst_n               ),
        .Enable             (Metrics_Cnt_En             ),
        .Reset              (Metrics_Cnt_Reset          ),
        .Add_in             (accum_in_extnd[k]          ),
        .Add_in_Valid       (accum_in_valid_extnd[k]    ),
        .Sample_En          (Sample_En                  ),
        .Accumulate         (1'b0                       ),
        .Accumulator        (Metric_Cnt_extnd[k]        ),
        .Sample_Accumulator (Sample_Metric_Cnt_extnd[k] )
     );
  end
  endgenerate  
 
  genvar n;
  generate
  for (n = C_NUM_OF_COUNTERS_EXTND; n < 7; n=n+1) begin : GEN_NO_COUNTERS_EXT
    assign Sample_Metric_Cnt_extnd[n] = 0;
  end
  endgenerate
  
  //
  // Metric counter RAM output
  // NOTE: Only sampled metric counters are accessible
  //
  always @(posedge clk) begin
    if (rst_n == RST_ACTIVE) begin
      //Metric_Ram_Data                   <= 0;
      Sample_Metric_Ram_Data            <= 0;
    end 
    else begin
      // Metric RAM output
      //case (Lat_Addr_5downto2)
      //  4'h0: Metric_Ram_Data           <= Metric_Cnt[0];
      //  4'h1: Metric_Ram_Data           <= Metric_Cnt[1]; 
      //  4'h2: Metric_Ram_Data           <= Metric_Cnt[2]; 
      //  4'h3: Metric_Ram_Data           <= Metric_Cnt[3]; 
      //  4'h4: Metric_Ram_Data           <= Metric_Cnt[4]; 
      //  4'h5: Metric_Ram_Data           <= Metric_Cnt[5];
      //  4'h6: Metric_Ram_Data           <= Metric_Cnt_extnd[0]; 
      //  4'h7: Metric_Ram_Data           <= Metric_Cnt_extnd[1];
      //  4'h8: Metric_Ram_Data           <= Metric_Cnt_extnd[2];
      //  4'h9: Metric_Ram_Data           <= Metric_Cnt_extnd[3];
      //  4'ha: Metric_Ram_Data           <= Metric_Cnt_extnd[4];
      //  4'hb: Metric_Ram_Data           <= Metric_Cnt_extnd[5];
      //  4'hc: Metric_Ram_Data           <= Metric_Cnt_extnd[6];
      //  default: Metric_Ram_Data        <= 0;
      //endcase
      
      // Sample Metric RAM output
      case (Lat_Addr_6downto2)
        5'h0: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[0] [C_SAMPLE_WIDTH - 1 : 0];
        5'h1: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[1] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h2: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[2] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h3: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[3] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h4: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[4] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h5: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[5] [C_SAMPLE_WIDTH - 1 : 0];
        5'h6: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[0] [C_SAMPLE_WIDTH - 1 : 0]; 
        5'h7: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[1] [C_SAMPLE_WIDTH - 1 : 0];
        5'h8: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[2] [C_SAMPLE_WIDTH - 1 : 0];
        5'h9: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[3] [C_SAMPLE_WIDTH - 1 : 0];
        5'ha: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[4] [C_SAMPLE_WIDTH - 1 : 0];
        5'hb: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[5] [C_SAMPLE_WIDTH - 1 : 0];
        5'hc: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt_extnd[6] [C_SAMPLE_WIDTH - 1 : 0];
        /* Read Higher Bits if present
         * The register map is compatible with old code
         */
        5'h10: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[0] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h11: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[1] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h12: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[2] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h13: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[3] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h14: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[4] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h15: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[5] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h16: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[0] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0; 
        5'h17: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[1] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h18: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[2] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h19: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[3] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1a: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[4] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1b: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[5] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1c: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt_extnd[6] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;

        // New Registers store busy duration for transfer rate calculation
        5'hd: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[6] [C_SAMPLE_WIDTH - 1 : 0];
        5'he: Sample_Metric_Ram_Data    <= Sample_Metric_Cnt[7] [C_SAMPLE_WIDTH - 1 : 0];
        5'h1d: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[6] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;
        5'h1e: Sample_Metric_Ram_Data <= EN_64 ? Sample_Metric_Cnt[7] [C_METRIC_COUNT_WIDTH - 1 : C_SAMPLE_WIDTH] : 0;

        default: Sample_Metric_Ram_Data <= 0;
      endcase
    end
  end
  
endmodule       

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-------------------------------------------------------------------------------
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
// Filename     : mon_register.v
// Version      : v1.0
// Description  : This is the top level wrapper file for the monitor-Slots of AXI
//                interface. It has the AXI slots input and sends out the
//                synchronized outputs through Asynchronous FIFO
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module mon_register 
  #(
     parameter NUM_REG_STAGES      = 1,
     parameter MON_DATA_WIDTH      = 64,
     parameter LEN_WIDTH           = 8,
     parameter DATA_WIDTH          = 32,
     parameter ADDR_WIDTH          = 32,
     parameter ENABLE_ADDR_FILTER  = 0,
     parameter ADDR_MIN            = 64'h0000000000000000,
     parameter ADDR_MAX            = 64'hFFFFFFFFFFFFFFFF
   )
   (
     input                           mon_clk,
     input                           mon_resetn,
     input  [MON_DATA_WIDTH-1:0]     data_in,
     output reg [MON_DATA_WIDTH-1:0] data_out,
     output                          read_valid,
     output                          write_valid
   );
    
  /*--------------------------local parameters------------------------*/
  localparam RST_ACTIVE = 1'b0; 
  localparam BASE_ADDR  = DATA_WIDTH + (2*LEN_WIDTH) + (DATA_WIDTH/8) + 12;

  /*--------------------wire/connection declarations------------------*/
 
  reg  [NUM_REG_STAGES:1]          Reg_Data_Valid;
  reg  [MON_DATA_WIDTH-1:0]        Reg_Data_In[NUM_REG_STAGES:1];
                             
  reg                              Read_Valid;
  reg                              Write_Valid;
  wire                             arvalid;
  wire                             awvalid;
  wire [ADDR_WIDTH-1:0]            Read_Address;
  wire [ADDR_WIDTH-1:0]            Write_Address;
                             
  /*----------------- Registering Data input based on Parameter------*/

  genvar i;
  generate for (i = 1; i <= NUM_REG_STAGES; i=i+1) begin : GEN_REG_STAGES
    always @(posedge mon_clk) begin
      if (mon_resetn == RST_ACTIVE) begin
        Reg_Data_In[i]         <= 0;
        Reg_Data_Valid[i]      <= 1'b0;
      end
      else begin
        if (i == 1) begin
          Reg_Data_In[i]       <= data_in;
          Reg_Data_Valid[i]    <= 1'b1;
        end
        else begin
          Reg_Data_In[i]       <= Reg_Data_In[i-1];
          Reg_Data_Valid[i]    <= Reg_Data_Valid[i-1];
        end
      end
    end
  end
  endgenerate
     
  generate if (NUM_REG_STAGES == 0) begin : DATA_IN_NO_REGS
    assign arvalid             = data_in[4];
    assign awvalid             = data_in[11];
    assign Read_Address        = data_in[(BASE_ADDR+ADDR_WIDTH-1):BASE_ADDR];
    assign Write_Address       = data_in[(MON_DATA_WIDTH-1):(BASE_ADDR+DATA_WIDTH+ADDR_WIDTH)];
  end 
  else begin : DATA_IN_REGS
    assign arvalid             = Reg_Data_In[NUM_REG_STAGES][4];
    assign awvalid             = Reg_Data_In[NUM_REG_STAGES][11];
    assign Read_Address        = Reg_Data_In[NUM_REG_STAGES][(BASE_ADDR+ADDR_WIDTH-1):BASE_ADDR];
    assign Write_Address       = Reg_Data_In[NUM_REG_STAGES][(MON_DATA_WIDTH-1):(BASE_ADDR+DATA_WIDTH+ADDR_WIDTH)];
  end
  endgenerate

  always @(posedge mon_clk) begin
    if (mon_resetn == RST_ACTIVE) begin
      Read_Valid               <= 0;
      Write_Valid              <= 0;
    end
    else begin
      if (ENABLE_ADDR_FILTER == 0) begin
        Read_Valid             <= 1;
        Write_Valid            <= 1;
      end
      else begin
        if (arvalid == 1) begin
          Read_Valid           <= (Read_Address >= ADDR_MIN) && (Read_Address <= ADDR_MAX);
        end

        if (awvalid == 1) begin
          Write_Valid          <= (Write_Address >= ADDR_MIN) && (Write_Address <= ADDR_MAX);
        end
      end
    end
  end

  // Always Register output data
  // As Valid signals are registered
  always @(posedge mon_clk) begin
    if (NUM_REG_STAGES == 0)
      data_out <= data_in;
    else
      data_out <= Reg_Data_In[NUM_REG_STAGES];
  end

  generate if (NUM_REG_STAGES == 0) begin : DATA_OUT_NO_REGS
    assign read_valid          = Read_Valid;
    assign write_valid         = Write_Valid;
  end 
  else begin : DATA_OUT_REGS
    assign read_valid          = Reg_Data_Valid[NUM_REG_STAGES] && Read_Valid;
    assign write_valid         = Reg_Data_Valid[NUM_REG_STAGES] && Write_Valid;
  end
  endgenerate
  
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
    input [7:0]   araddr,
    input         arvalid,
    input         arready,
    input [31:0]  rdata,
    input         rvalid,
    input         rready,
    output        mon_valid
    );

    reg[31:0] last_read_addr;
    reg ap_done_reg;

    wire read_addr_valid  = arvalid && arready;
    wire read_data_valid  = rvalid && rready;

    assign mon_valid = ap_done_reg; 
    assign ap_done_read = read_data_valid && rdata[1] && (last_read_addr == 32'h0);

    always @(posedge clk) begin
      ap_done_reg <= ap_done_read;
    end

    always @(posedge clk) begin
      if (~rst) begin
        last_read_addr <= 0;
      end
      else if (read_addr_valid) begin
        last_read_addr <= araddr;
      end
      else begin
        last_read_addr <= last_read_addr;
      end
    end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns/1ps


module register_module 
#(
  parameter CAPTURE_BURSTS = 1,
  // start/stop event selection
  parameter WRITE_START_SELECT = "Address",   // choices: Address, First Data, First Tranx, None
  parameter WRITE_STOP_SELECT  = "Last Data", // choices: Last Data, Response, Last Tranx, None
  parameter READ_START_SELECT  = "Address",   // choices: Address, First Data, First Tranx, None
  parameter READ_STOP_SELECT   = "Last Data"  // choices: Last Data, Last Tranx, None
)
(
  input                        mon_clk,
	input                        mon_resetn,
	   
  output reg [31:0]            slv_reg_in,
	input  [31:0]                slv_reg_out,
	input  [7:0]                 slv_reg_addr,
	input                        slv_reg_addr_vld,
  input                        slv_reg_out_vld,
  output reg                   slv_reg_in_vld,
  
   // metric counters
   input [31:0]                sample_metric_ram_data,

   // control register
   output reg                  metrics_cnt_en,
   output reg                  metrics_cnt_reset,
   output reg                  event_log_en,
   output reg                  streaming_fifo_reset,
   output reg                  reset_on_sample_read,
   
   // event select register
   output reg [1:0]            write_start_select,
   output reg [1:0]            write_stop_select,
   output reg [1:0]            read_start_select,
   output reg [1:0]            read_stop_select,
   
   // other registers
   output reg [5:0]            trace_control,
   output                      lat_sample_reg,
   output wire [4:0]            lat_addr_6downto2
);

  //-------------------------------------------------------------------
  // parameter declaration
  //-------------------------------------------------------------------
  localparam RST_ACTIVE = 1'b0;
  localparam TIME_DIFF_LOAD_VALUE = 32'h00000001;
  localparam VERSION_VALUE = 32'hDEAF0100;
  localparam TRACE_CONTROL_DEFAULT = (CAPTURE_BURSTS > 0) ? 6'b111110 : 6'b111111;
  
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
  wire addr_7downto0_is_0x10  = (slv_reg_addr[7:0] == 8'h10) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x18  = (slv_reg_addr[7:0] == 8'h18) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x20  = (slv_reg_addr[7:0] == 8'h20) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x28  = (slv_reg_addr[7:0] == 8'h28) ? 1'b1 : 1'b0;
  wire addr_7downto0_is_0x30  = (slv_reg_addr[7:0] == 8'h30) ? 1'b1 : 1'b0;
  wire addr_7_is_0x1          = (slv_reg_addr[7]   == 1'b1)  ? 1'b1 : 1'b0;
  
  wire [1:0] write_start_select_default = 
     (WRITE_START_SELECT == "None")        ? 2'b11 : 
    ((WRITE_START_SELECT == "First Tranx") ? 2'b10 :
    ((WRITE_START_SELECT == "First Data")  ? 2'b01 : 2'b00));
  wire [1:0] write_stop_select_default  = 
     (WRITE_STOP_SELECT  == "None")        ? 2'b11 : 
    ((WRITE_STOP_SELECT  == "Last Tranx")  ? 2'b10 : 
    ((WRITE_STOP_SELECT  == "Response")    ? 2'b01 : 2'b00));
  wire [1:0] read_start_select_default  = 
     (READ_START_SELECT  == "None")        ? 2'b11 : 
    ((READ_START_SELECT  == "First Tranx") ? 2'b10 : 
    ((READ_START_SELECT  == "First Data")  ? 2'b01 : 2'b00));
  wire [1:0] read_stop_select_default   = 
     (READ_STOP_SELECT   == "None")        ? 2'b11 : 
    ((READ_STOP_SELECT   == "Last Tranx")  ? 2'b10 : 2'b00);
    
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

  //-- write/read enables for event select register (0x18)
  wire event_select_wr_en = slv_reg_out_vld && addr_7downto0_is_0x18;
  wire event_select_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x18;
  
  //-- read enable for sample register (0x20)
  wire sample_reg_rd_en = slv_reg_addr_vld && addr_7downto0_is_0x20;
    
  //-- read enables for sampled metric count registers (8'b1*******)
  wire sample_metric_counter_rd_en = slv_reg_addr_vld && addr_7_is_0x1;
  
  //-- control register
  //-- NOTE: to make initialization easier, counters and trace are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      metrics_cnt_en        <= 1'b1;
      metrics_cnt_reset     <= 1'b0;
      event_log_en          <= 1'b1;
      streaming_fifo_reset  <= 1'b0;
      reset_on_sample_read  <= 1'b0;
    end
    else begin 
      if (control_wr_en == 1'b1) begin
        metrics_cnt_en        <= slv_reg_out[0];
        metrics_cnt_reset     <= slv_reg_out[1];
        event_log_en          <= slv_reg_out[2];
        streaming_fifo_reset  <= slv_reg_out[3];
        reset_on_sample_read  <= slv_reg_out[4];
      end
      else begin
        metrics_cnt_en        <= metrics_cnt_en;
        metrics_cnt_reset     <= metrics_cnt_reset;
        event_log_en          <= event_log_en;
        streaming_fifo_reset  <= streaming_fifo_reset;
        reset_on_sample_read  <= reset_on_sample_read;
      end
    end
  end 
  
  assign control_reg = { {27{1'b0}}, reset_on_sample_read, streaming_fifo_reset, 
                         event_log_en, metrics_cnt_reset, metrics_cnt_en };
                           
  //-- trace control register
  //-- note: all trace events are enabled upon reset
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      trace_control      <= TRACE_CONTROL_DEFAULT;
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
  
  //-- event select register
  always @(posedge mon_clk) begin 
    if (mon_resetn == RST_ACTIVE) begin
      read_stop_select        <= read_stop_select_default;
      read_start_select       <= read_start_select_default;
      write_stop_select       <= write_stop_select_default;
      write_start_select      <= write_start_select_default;
    end
    else begin 
      if (event_select_wr_en == 1'b1) begin
        read_stop_select      <= slv_reg_out[1:0];
        read_start_select     <= slv_reg_out[3:2];
        write_stop_select     <= slv_reg_out[5:4];
        write_start_select    <= slv_reg_out[7:6];
      end
      else begin
        read_stop_select      <= read_stop_select;
        read_start_select     <= read_start_select;
        write_stop_select     <= write_stop_select;
        write_start_select    <= write_start_select;
      end
    end
  end
  
  assign event_select_reg = { {24{1'b0}}, write_start_select, write_stop_select, 
                              read_start_select, read_stop_select };
                         
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
     .Load_In              (TIME_DIFF_LOAD_VALUE),
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
                           event_select_rd_en, sample_reg_rd_en, version_rd_en};
    end
  end 

  assign lat_sample_reg_rd_en = sample_reg_rd_en;
  assign lat_addr_6downto2 = slv_reg_addr[6:2];
  
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
          6'b000100: slv_reg_in  <= event_select_reg;
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


module storedstamper
#(
   parameter     FIFO_DEPTH = 16
)                                        
(
   //Trace bus input
   input         start,
   input         stop,
   //Clock & Reset synchonized with start/stop events
   input         trace_clk,
   input         mon_clk,
   input         rst,
   //enable this port
   input         en,
   //release stored timestamp
   input         finish,
   output        hasStored,
   //current time input from centralized clock/counter
   input [44:0]  counter,
   input         counter_overflow,
   //output timestamped data (FIFO interface)
   output [52:0] event_out,
   output        event_empty,
   input         event_read
);
    
   //Set the encoded value that will be appended based on the monitored entity type
   localparam START_TYPE = 0;
   localparam  STOP_TYPE = 1;
        
   reg event_valid_i=0;    //write signal into the internal FIFO when new event is found
   reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
   wire [51:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
   wire [51:0] event_mux;  //mux
   reg [51:0] stored_event;//stored event
   wire full_i;            //backpressure signal from internal FIFO
   wire error_sig;
   reg error_write;
   wire write;
   reg stored=0;

   assign hasStored = stored;   
   
   assign write = event_valid_i | (error_write & error); 
   assign error_sig = event_valid_i & full_i;
       
   assign event_i[44:0] = counter;                                 //Timestamp 
   assign event_i[48:45] = (start == 1) ? START_TYPE : STOP_TYPE;  //Trace Event Type       
   //assign event_i[60:49] = 0;                                    //Trace Point ID
   assign event_i[49] = start & stop;	                             //Reserved
   assign event_i[50] = counter_overflow;          		             //Overflow
   assign event_i[51] = 0;			                                   //IsSWEvent
   
   assign event_mux = (stored && finish) ? stored_event : event_i;

   always @(start or stored && finish or en) begin :EVENT_CREATE 
    if(en)
           event_valid_i <= start | (stored && finish);
       else
           event_valid_i <= 0;
   end
       
   always @(posedge mon_clk) begin :RESET_ERROR
       if(rst == 1) begin
           error <= 0;
        error_write <= 1;
        stored <= 0;
    end
       else begin
           if(stop) begin
               stored <= 1;
               stored_event <= event_i;
           end
           else if(finish)
               stored <= 0;
               
           if(error_sig)
               error <= 1;
   
           if(error && (~full_i))
               error_write <= 0;
    end
   end
   
   //Internal FIFO
   trace_fifo_i #(
       .WIDTH(52),
       .DEPTH(FIFO_DEPTH)
   ) fifo_i (
       .wr_clk(mon_clk),
       .rst(rst),
       .din(event_mux),
       .write(write),
       .full(full_i),
       .dout(event_out),
       .read(event_read),
       .empty(event_empty),
       .rd_clk(trace_clk) 
   );
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


//-------------------------------------------------------------------------------
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
// Filename     : sync_fifo.v
// Version      : v1.0
// Description  : This is the verilog file for the synchronous fifo 
// Verilog-Standard:verilog-2001
//-----------------------------------------------------------------------------
`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings="yes" *)

module sync_fifo 
  #(
  parameter WIDTH             = 8, // The width of the FIFO data
  parameter DEPTH_LOG2        = 3  // Specify power-of-2 FIFO depth
)

(
  input                       rst_n,
  input                       clk,
  input                       wren,
  input                       rden,
  input      [WIDTH-1:0]      din,
  output reg [WIDTH-1:0]      dout,
  output reg [DEPTH_LOG2-1:0] count,
  output reg                  full,
  output reg                  empty
);

  localparam DEPTH = 1 << DEPTH_LOG2;

/* ========================================================================== */
//  Register and Wire Declarations
/* ========================================================================== */
(* ram_style = "distributed" *) reg [WIDTH-1:0]      mem [0:DEPTH-1];// memory for storing FIFO data
reg [DEPTH_LOG2:0]  wptr; // wr ptr, with extra wrap bit
reg [DEPTH_LOG2:0]  rptr; // rd ptr, with extra wrap bit
//reg rd_en_del; //Delayed read enable
wire [DEPTH_LOG2:0]  wptr_inc;// wr ptr incremented by 1
wire [DEPTH_LOG2:0]  rptr_inc;// rd ptr incremented by 1
wire [DEPTH_LOG2:0]  wptr_nxt;// next wr ptr, with extra wrap bit
wire [DEPTH_LOG2:0]  rptr_nxt;// next rd ptr, with extra wrap bit
wire [DEPTH_LOG2-1:0] mem_wptr;// mem wrptr, extra bit removed
wire [DEPTH_LOG2-1:0] mem_rptr;// mem rdptr, extra bit removed
wire almost_full;              // only 1 entry available in FIFO
wire almost_empty;             // only 1 space used in FIFO

//================================================================================
// Code the FIFO
//================================================================================
assign wptr_inc = wptr + 1'b1; // automatically wraps
assign rptr_inc = rptr + 1'b1; // automatically wraps

assign wptr_nxt = wren ? wptr_inc : wptr;
assign rptr_nxt = rden ? rptr_inc : rptr;

assign mem_wptr = wptr[DEPTH_LOG2-1:0]; // get rid of extra bit
assign mem_rptr = rptr[DEPTH_LOG2-1:0]; // get rid of extra bit

// Assign dout
always @(posedge clk) begin
   //if (~rst_n)
   //    dout <= 0;
   //else if(rden == 1'b1) begin
    dout <= mem[mem_rptr];              //read data output
   //end
end

// Almost_full if one more write will make the FIFO full
assign almost_full = (wptr_inc[DEPTH_LOG2] != rptr[DEPTH_LOG2]) &&
              (wptr_inc[DEPTH_LOG2-1:0] == rptr[DEPTH_LOG2-1:0]);

// Almost_empty if one more read will make the FIFO empty
assign almost_empty = (wptr[DEPTH_LOG2:0] == rptr_inc[DEPTH_LOG2:0]);

// Flags
always @(posedge clk) begin
  if (~rst_n)
    begin
      full  <= 1'b0;
      empty <= 1'b1;
      rptr  <= {(DEPTH_LOG2+1){1'b0}};
      wptr  <= {(DEPTH_LOG2+1){1'b0}};
      count <= {(DEPTH_LOG2){1'b0}};
    end
  else
    begin
      full  <= (almost_full & wren & ~rden) | (full & ~rden);
      empty <= (almost_empty & rden & ~wren) | (empty & ~wren);
      rptr  <= rptr_nxt;
      wptr  <= wptr_nxt;
      
      if (wren & ~rden & ~full) begin
        count <= count + 1;
      end
      else if (rden & ~wren & ~empty) begin
        count <= count - 1;
      end
    end
end

// Assign memory
always @(posedge clk) begin
  if (wren)
    mem[mem_wptr] <= din;
end

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module timestamper(
    //Trace bus input
    input start,
    input stop,
    input single,
    //Clock & Reset synchonized with start/stop events
    input trace_clk,
    input mon_clk,
    input rst,
    input en,
    //current time input from centralized clock/counter
    input [44:0] counter,
    input counter_overflow,
    //output timestamped data (FIFO interface)
    output [51:0] event_out,
    output event_empty,
    input  event_read,
    // Storedstamper specific
    input  finish,
    input  trace_cu,
    output fifo_event_write
    );
    
//Set the encoded value that will be appended based on the monitored entity type
localparam START_TYPE = 0;
localparam  STOP_TYPE = 1;

    reg event_valid_i=0;    //write signal into the internal FIFO when new event is found
    wire wr_rst_busy;
    reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
    wire [51:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
    reg [51:0] event_buf_i;
    wire full_i;            //backpressure signal from internal FIFO
    wire error_sig;
    reg error_write;
    wire write;
    reg started = 0;        // For trace_cu
    wire any_event;
    wire start_event;

    assign error_sig = event_valid_i & full_i;
    assign fifo_event_write = write;
    assign start_event = (start | (trace_cu & single & ~started));
    assign write = (event_valid_i | (error_write & error)) & ~wr_rst_busy;

    assign event_i[44:0] = counter;                                  //Timestamp 
    assign event_i[48:45] = (start_event) ? START_TYPE : STOP_TYPE;  //Trace Event Type
    assign event_i[49] = single & ~trace_cu;                         //Single burst
    assign event_i[50] = counter_overflow;                           //Overflow
    assign event_i[51] = 0;                                          //IsSWEvent
    assign any_event = (start | stop | single);

    always @(posedge mon_clk) begin :FSM
        if (!trace_cu) begin
            event_valid_i <= any_event & en;
        end
        else begin
           event_valid_i <= (started & finish) | ((~started & (start | single)) & en);
        end
        if (any_event) begin
            event_buf_i <= event_i;
        end
    end

    always @(posedge mon_clk) begin
        if ((start | single ) & trace_cu & en) begin
            started <= 1;
        end
        else if (finish) begin
            started <= 0;
        end
    end
        
    always @(posedge mon_clk) begin :RESET_ERROR
        if (rst) begin
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
     .wr_clk(mon_clk),
     .rst(rst),
     .din(event_buf_i),
     .write(write),
     .full(full_i),
     .dout(event_out),
     .read(event_read),
     .empty(event_empty),
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
       .rst              (~rst),
      .wr_clk           (wr_clk),
      .wr_en            (write),
      .din              (din),
      .full             (full),
      .rd_clk           (rd_clk),
      .rd_en            (read),
      .dout             (dout),
      .empty            (empty),
//      .underflow        (underflow),
      .wr_rst_busy      (wr_rst_busy),
//      .prog_full        (prog_full),
//      .wr_data_count    (wr_data_count),
//      .prog_empty       (prog_empty),
//      .rd_data_count    (rd_data_count),
      .sleep            (1'b0),
      .injectsbiterr    (1'b0),
      .injectdbiterr    (1'b0),
      .sbiterr          (),
      .dbiterr          ()
    );

endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


