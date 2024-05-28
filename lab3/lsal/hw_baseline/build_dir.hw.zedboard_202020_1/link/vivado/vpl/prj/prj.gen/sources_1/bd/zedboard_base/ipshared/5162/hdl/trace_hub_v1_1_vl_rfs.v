`timescale 1ns / 1ps

module AXI_LITE_IF #(
		// Width of S_AXI data bus
		parameter integer C_S_AXI_DATA_WIDTH	= 32
	)
	(
	    input wire [31:0] slv_reg_in,
	    output wire [31:0] slv_reg_out,
	    output wire [13:0] slv_reg_addr,
	    output wire slv_reg_addr_vld,
        output wire slv_reg_out_vld,
        input wire slv_reg_in_vld,

		input wire  S_AXI_ACLK,           // Global Clock Signal
		input wire  S_AXI_ARESETN,        // Global Reset Signal. This Signal is Active LOW
		input wire [31 : 0] S_AXI_AWADDR, // Write address (issued by master, acceped by Slave)
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
		input wire [31 : 0] S_AXI_ARADDR, // Read address (issued by master, acceped by Slave)
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
	
	reg [13:0] slv_reg_addr_i = 0;
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
            2'b10: slv_reg_addr_i <= S_AXI_AWADDR[15:2];
            2'b01: slv_reg_addr_i <= S_AXI_ARADDR[15:2];
            default: slv_reg_addr_i <= 14'h1ADE;
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
            if (slv_reg_rden && slv_reg_in_vld) begin
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
            if (slv_reg_rden) begin
                axi_rdata <= slv_reg_in;     // register read data
            end   
        end
	end   

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
module trace_integrator #(
    parameter NUM_TRACE_PORTS = 2,
    parameter USE_PASSTHROUGH = 0,
    parameter EMULATION = 0,
    parameter EXT_TRACE_RST = 1,
    parameter EXT_MON_RST = 1
    )(
    //Clock & Reset synchronized with start/stop events
    input trace_clk,
    input trace_resetn,
    // Monitor clock used for counters
    input mon_clk,
    input mon_resetn,
    //Single output stream of events, FIFO interface
    output [63:0] out_data,
    output out_valid,
    input out_ready,
    //Input stream of events from another merge core
    input [63:0] pass_data,
    input pass_valid,
    output pass_ready,
    //software-control reset signal to reset trace network
    output trace_rst,
    //Input Trace ports
    output trace0_counter_overflow,
    output [44:0] trace0_counter,
    input trace0_event,
    input [63:0] trace0_data,
    input trace0_valid,
    output trace0_read,
    output trace1_counter_overflow,
    output [44:0] trace1_counter,
    input trace1_event,
    input [63:0] trace1_data,
    input trace1_valid,
    output trace1_read,
    output trace2_counter_overflow,
    output [44:0] trace2_counter,
    input trace2_event,
    input [63:0] trace2_data,
    input trace2_valid,
    output trace2_read,
    output trace3_counter_overflow,
    output [44:0] trace3_counter,
    input trace3_event,
    input [63:0] trace3_data,
    input trace3_valid,
    output trace3_read,
    output trace4_counter_overflow,
    output [44:0] trace4_counter,
    input trace4_event,
    input [63:0] trace4_data,
    input trace4_valid,
    output trace4_read,
    output trace5_counter_overflow,
    output [44:0] trace5_counter,
    input trace5_event,
    input [63:0] trace5_data,
    input trace5_valid,
    output trace5_read,
    output trace6_counter_overflow,
    output [44:0] trace6_counter,
    input trace6_event,
    input [63:0] trace6_data,
    input trace6_valid,
    output trace6_read,
    output trace7_counter_overflow,
    output [44:0] trace7_counter,
    input trace7_event,
    input [63:0] trace7_data,
    input trace7_valid,
    output trace7_read,
    output trace8_counter_overflow,
    output [44:0] trace8_counter,
    input trace8_event,
    input [63:0] trace8_data,
    input trace8_valid,
    output trace8_read,
    output trace9_counter_overflow,
    output [44:0] trace9_counter,
    input trace9_event,
    input [63:0] trace9_data,
    input trace9_valid,
    output trace9_read,
    output trace10_counter_overflow,
    output [44:0] trace10_counter,
    input trace10_event,
    input [63:0] trace10_data,
    input trace10_valid,
    output trace10_read,
    output trace11_counter_overflow,
    output [44:0] trace11_counter,
    input trace11_event,
    input [63:0] trace11_data,
    input trace11_valid,
    output trace11_read,
    output trace12_counter_overflow,
    output [44:0] trace12_counter,
    input trace12_event,
    input [63:0] trace12_data,
    input trace12_valid,
    output trace12_read,
    output trace13_counter_overflow,
    output [44:0] trace13_counter,
    input trace13_event,
    input [63:0] trace13_data,
    input trace13_valid,
    output trace13_read,
    output trace14_counter_overflow,
    output [44:0] trace14_counter,
    input trace14_event,
    input [63:0] trace14_data,
    input trace14_valid,
    output trace14_read,
    output trace15_counter_overflow,
    output [44:0] trace15_counter,
    input trace15_event,
    input [63:0] trace15_data,
    input trace15_valid,
    output trace15_read,
    output trace16_counter_overflow,
    output [44:0] trace16_counter,
    input trace16_event,
    input [63:0] trace16_data,
    input trace16_valid,
    output trace16_read,
    output trace17_counter_overflow,
    output [44:0] trace17_counter,
    input trace17_event,
    input [63:0] trace17_data,
    input trace17_valid,
    output trace17_read,
    output trace18_counter_overflow,
    output [44:0] trace18_counter,
    input trace18_event,
    input [63:0] trace18_data,
    input trace18_valid,
    output trace18_read,
    output trace19_counter_overflow,
    output [44:0] trace19_counter,
    input trace19_event,
    input [63:0] trace19_data,
    input trace19_valid,
    output trace19_read,
    output trace20_counter_overflow,
    output [44:0] trace20_counter,
    input trace20_event,
    input [63:0] trace20_data,
    input trace20_valid,
    output trace20_read,
    output trace21_counter_overflow,
    output [44:0] trace21_counter,
    input trace21_event,
    input [63:0] trace21_data,
    input trace21_valid,
    output trace21_read,
    output trace22_counter_overflow,
    output [44:0] trace22_counter,
    input trace22_event,
    input [63:0] trace22_data,
    input trace22_valid,
    output trace22_read,
    output trace23_counter_overflow,
    output [44:0] trace23_counter,
    input trace23_event,
    input [63:0] trace23_data,
    input trace23_valid,
    output trace23_read,
    output trace24_counter_overflow,
    output [44:0] trace24_counter,
    input trace24_event,
    input [63:0] trace24_data,
    input trace24_valid,
    output trace24_read,
    output trace25_counter_overflow,
    output [44:0] trace25_counter,
    input trace25_event,
    input [63:0] trace25_data,
    input trace25_valid,
    output trace25_read,
    output trace26_counter_overflow,
    output [44:0] trace26_counter,
    input trace26_event,
    input [63:0] trace26_data,
    input trace26_valid,
    output trace26_read,
    output trace27_counter_overflow,
    output [44:0] trace27_counter,
    input trace27_event,
    input [63:0] trace27_data,
    input trace27_valid,
    output trace27_read,
    output trace28_counter_overflow,
    output [44:0] trace28_counter,
    input trace28_event,
    input [63:0] trace28_data,
    input trace28_valid,
    output trace28_read,
    output trace29_counter_overflow,
    output [44:0] trace29_counter,
    input trace29_event,
    input [63:0] trace29_data,
    input trace29_valid,
    output trace29_read,
    output trace30_counter_overflow,
    output [44:0] trace30_counter,
    input trace30_event,
    input [63:0] trace30_data,
    input trace30_valid,
    output trace30_read,
    output trace31_counter_overflow,
    output [44:0] trace31_counter,
    input trace31_event,
    input [63:0] trace31_data,
    input trace31_valid,
    output trace31_read,
    output trace32_counter_overflow,
    output [44:0] trace32_counter,
    input trace32_event,
    input [63:0] trace32_data,
    input trace32_valid,
    output trace32_read,
    output trace33_counter_overflow,
    output [44:0] trace33_counter,
    input trace33_event,
    input [63:0] trace33_data,
    input trace33_valid,
    output trace33_read,
    output trace34_counter_overflow,
    output [44:0] trace34_counter,
    input trace34_event,
    input [63:0] trace34_data,
    input trace34_valid,
    output trace34_read,
    output trace35_counter_overflow,
    output [44:0] trace35_counter,
    input trace35_event,
    input [63:0] trace35_data,
    input trace35_valid,
    output trace35_read,
    output trace36_counter_overflow,
    output [44:0] trace36_counter,
    input trace36_event,
    input [63:0] trace36_data,
    input trace36_valid,
    output trace36_read,
    output trace37_counter_overflow,
    output [44:0] trace37_counter,
    input trace37_event,
    input [63:0] trace37_data,
    input trace37_valid,
    output trace37_read,
    output trace38_counter_overflow,
    output [44:0] trace38_counter,
    input trace38_event,
    input [63:0] trace38_data,
    input trace38_valid,
    output trace38_read,
    output trace39_counter_overflow,
    output [44:0] trace39_counter,
    input trace39_event,
    input [63:0] trace39_data,
    input trace39_valid,
    output trace39_read,
    output trace40_counter_overflow,
    output [44:0] trace40_counter,
    input trace40_event,
    input [63:0] trace40_data,
    input trace40_valid,
    output trace40_read,
    output trace41_counter_overflow,
    output [44:0] trace41_counter,
    input trace41_event,
    input [63:0] trace41_data,
    input trace41_valid,
    output trace41_read,
    output trace42_counter_overflow,
    output [44:0] trace42_counter,
    input trace42_event,
    input [63:0] trace42_data,
    input trace42_valid,
    output trace42_read,
    output trace43_counter_overflow,
    output [44:0] trace43_counter,
    input trace43_event,
    input [63:0] trace43_data,
    input trace43_valid,
    output trace43_read,
    output trace44_counter_overflow,
    output [44:0] trace44_counter,
    input trace44_event,
    input [63:0] trace44_data,
    input trace44_valid,
    output trace44_read,
    output trace45_counter_overflow,
    output [44:0] trace45_counter,
    input trace45_event,
    input [63:0] trace45_data,
    input trace45_valid,
    output trace45_read,
    output trace46_counter_overflow,
    output [44:0] trace46_counter,
    input trace46_event,
    input [63:0] trace46_data,
    input trace46_valid,
    output trace46_read,
    output trace47_counter_overflow,
    output [44:0] trace47_counter,
    input trace47_event,
    input [63:0] trace47_data,
    input trace47_valid,
    output trace47_read,
    output trace48_counter_overflow,
    output [44:0] trace48_counter,
    input trace48_event,
    input [63:0] trace48_data,
    input trace48_valid,
    output trace48_read,
    output trace49_counter_overflow,
    output [44:0] trace49_counter,
    input trace49_event,
    input [63:0] trace49_data,
    input trace49_valid,
    output trace49_read,
    output trace50_counter_overflow,
    output [44:0] trace50_counter,
    input trace50_event,
    input [63:0] trace50_data,
    input trace50_valid,
    output trace50_read,
    output trace51_counter_overflow,
    output [44:0] trace51_counter,
    input trace51_event,
    input [63:0] trace51_data,
    input trace51_valid,
    output trace51_read,
    output trace52_counter_overflow,
    output [44:0] trace52_counter,
    input trace52_event,
    input [63:0] trace52_data,
    input trace52_valid,
    output trace52_read,
    output trace53_counter_overflow,
    output [44:0] trace53_counter,
    input trace53_event,
    input [63:0] trace53_data,
    input trace53_valid,
    output trace53_read,
    output trace54_counter_overflow,
    output [44:0] trace54_counter,
    input trace54_event,
    input [63:0] trace54_data,
    input trace54_valid,
    output trace54_read,
    output trace55_counter_overflow,
    output [44:0] trace55_counter,
    input trace55_event,
    input [63:0] trace55_data,
    input trace55_valid,
    output trace55_read,
    output trace56_counter_overflow,
    output [44:0] trace56_counter,
    input trace56_event,
    input [63:0] trace56_data,
    input trace56_valid,
    output trace56_read,
    output trace57_counter_overflow,
    output [44:0] trace57_counter,
    input trace57_event,
    input [63:0] trace57_data,
    input trace57_valid,
    output trace57_read,
    output trace58_counter_overflow,
    output [44:0] trace58_counter,
    input trace58_event,
    input [63:0] trace58_data,
    input trace58_valid,
    output trace58_read,
    output trace59_counter_overflow,
    output [44:0] trace59_counter,
    input trace59_event,
    input [63:0] trace59_data,
    input trace59_valid,
    output trace59_read,
    output trace60_counter_overflow,
    output [44:0] trace60_counter,
    input trace60_event,
    input [63:0] trace60_data,
    input trace60_valid,
    output trace60_read,
    output trace61_counter_overflow,
    output [44:0] trace61_counter,
    input trace61_event,
    input [63:0] trace61_data,
    input trace61_valid,
    output trace61_read,
    output trace62_counter_overflow,
    output [44:0] trace62_counter,
    input trace62_event,
    input [63:0] trace62_data,
    input trace62_valid,
    output trace62_read,
    // Ports of Axi Slave Bus Interface S_AXI
    input [3 : 0] s_axi_awaddr,
    input [2 : 0] s_axi_awprot,
    input s_axi_awvalid,
    output s_axi_awready,
    input [31 : 0] s_axi_wdata,
    input [3 : 0] s_axi_wstrb,
    input s_axi_wvalid,
    output s_axi_wready,
    output [1 : 0] s_axi_bresp,
    output s_axi_bvalid,
    input s_axi_bready,
    input [3 : 0] s_axi_araddr,
    input [2 : 0] s_axi_arprot,
    input s_axi_arvalid,
    output s_axi_arready,
    output [31 : 0] s_axi_rdata,
    output [1 : 0] s_axi_rresp,
    output s_axi_rvalid,
    input s_axi_rready
    );
    // function called clogb2 returns the ceil(log2(n))
    function integer clogb2 (input integer bit_depth);
    begin
        for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
            bit_depth = bit_depth >> 1;
        end
    endfunction
   // function called flogb2 returns the floor(log2(n))
    function integer flogb2 (input integer bit_depth);
    begin
        for(flogb2=0; bit_depth>1; flogb2=flogb2+1)
            bit_depth = bit_depth >> 1;
        end
    endfunction
   //check if num is a power of 2 already, otherwise return clogb2(num)
   function integer getNumPorts(input integer num);
      begin
	 if(2**flogb2(num) == num)
	   getNumPorts=num;
	 else
	   getNumPorts=2**clogb2(num);
      end
   endfunction
    localparam _NUM_TRACE_PORTS = NUM_TRACE_PORTS + 1;  //add one for software port (always there)
    localparam _NUM_LOG_PORTS = getNumPorts(_NUM_TRACE_PORTS);
    reg [44:0] counter=1;   //centralized relative time counter in monitor domain
    reg  counter_reset;     //counter reset signal (when any event occurs)
    reg counter_start=0;    //counter start signal (to wait until the first event occurs)
    reg counter_overflow=0; //counter overflow signal (time between events was too long)
    // Counter CDC signals
    reg [44:0] sw_counter=1;  //counter in trace clk domain
    wire [44:0]ctr_dest_out;
    reg ctr_src_send;
    wire ctr_src_rcv;
    wire ctr_dest_req;
    wire ctr_of_dest_out;
    reg sw_counter_overflow;
    //signals to/from AXI interface
    reg  [31:0] slv_reg_in;
    reg         slv_reg_in_vld;
    wire [31:0] slv_reg_out;
    wire        slv_reg_out_vld;
    wire [1:0]  slv_reg_addr;
    wire        slv_reg_addr_vld;
    reg  [15:0] sw_trace_data=0;
    reg sw_reset;
    wire sw_reset_mon;
    reg sw_trace_write;
    //software trace signals
    wire [63:0] sw_data;
    wire sw_valid;
    wire sw_read;
    //trace bus signals
    wire [4095:0] trace_data;   //64 ports * 64-bits each = 4096 total bits
    wire [63:0] trace_valid;
    wire [63:0] trace_read;
    wire [63:0] trace_event;
    //output from port tree (AXIS interface)
    wire [63:0] tree_data;
    wire tree_ready;
    wire tree_valid;
    //output from final merge (FIFO interface)
    wire [63:0] merge_data;
    wire merge_valid;
    wire merge_read;
    assign trace_rst = sw_reset;
   //distribute counter to each monitor port
   assign trace0_counter = counter;
   assign trace1_counter = counter;
   assign trace2_counter = counter;
   assign trace3_counter = counter;
   assign trace4_counter = counter;
   assign trace5_counter = counter;
   assign trace6_counter = counter;
   assign trace7_counter = counter;
   assign trace8_counter = counter;
   assign trace9_counter = counter;
   assign trace10_counter = counter;
   assign trace11_counter = counter;
   assign trace12_counter = counter;
   assign trace13_counter = counter;
   assign trace14_counter = counter;
   assign trace15_counter = counter;
   assign trace16_counter = counter;
   assign trace17_counter = counter;
   assign trace18_counter = counter;
   assign trace19_counter = counter;
   assign trace20_counter = counter;
   assign trace21_counter = counter;
   assign trace22_counter = counter;
   assign trace23_counter = counter;
   assign trace24_counter = counter;
   assign trace25_counter = counter;
   assign trace26_counter = counter;
   assign trace27_counter = counter;
   assign trace28_counter = counter;
   assign trace29_counter = counter;
   assign trace30_counter = counter;
   assign trace31_counter = counter;
   assign trace32_counter = counter;
   assign trace33_counter = counter;
   assign trace34_counter = counter;
   assign trace35_counter = counter;
   assign trace36_counter = counter;
   assign trace37_counter = counter;
   assign trace38_counter = counter;
   assign trace39_counter = counter;
   assign trace40_counter = counter;
   assign trace41_counter = counter;
   assign trace42_counter = counter;
   assign trace43_counter = counter;
   assign trace44_counter = counter;
   assign trace45_counter = counter;
   assign trace46_counter = counter;
   assign trace47_counter = counter;
   assign trace48_counter = counter;
   assign trace49_counter = counter;
   assign trace50_counter = counter;
   assign trace51_counter = counter;
   assign trace52_counter = counter;
   assign trace53_counter = counter;
   assign trace54_counter = counter;
   assign trace55_counter = counter;
   assign trace56_counter = counter;
   assign trace57_counter = counter;
   assign trace58_counter = counter;
   assign trace59_counter = counter;
   assign trace60_counter = counter;
   assign trace61_counter = counter;
   assign trace62_counter = counter;
   //distribute counter overflow to each monitor port
   assign trace0_counter_overflow = counter_overflow;
   assign trace1_counter_overflow = counter_overflow;
   assign trace2_counter_overflow = counter_overflow;
   assign trace3_counter_overflow = counter_overflow;
   assign trace4_counter_overflow = counter_overflow;
   assign trace5_counter_overflow = counter_overflow;
   assign trace6_counter_overflow = counter_overflow;
   assign trace7_counter_overflow = counter_overflow;
   assign trace8_counter_overflow = counter_overflow;
   assign trace9_counter_overflow = counter_overflow;
   assign trace10_counter_overflow = counter_overflow;
   assign trace11_counter_overflow = counter_overflow;
   assign trace12_counter_overflow = counter_overflow;
   assign trace13_counter_overflow = counter_overflow;
   assign trace14_counter_overflow = counter_overflow;
   assign trace15_counter_overflow = counter_overflow;
   assign trace16_counter_overflow = counter_overflow;
   assign trace17_counter_overflow = counter_overflow;
   assign trace18_counter_overflow = counter_overflow;
   assign trace19_counter_overflow = counter_overflow;
   assign trace20_counter_overflow = counter_overflow;
   assign trace21_counter_overflow = counter_overflow;
   assign trace22_counter_overflow = counter_overflow;
   assign trace23_counter_overflow = counter_overflow;
   assign trace24_counter_overflow = counter_overflow;
   assign trace25_counter_overflow = counter_overflow;
   assign trace26_counter_overflow = counter_overflow;
   assign trace27_counter_overflow = counter_overflow;
   assign trace28_counter_overflow = counter_overflow;
   assign trace29_counter_overflow = counter_overflow;
   assign trace30_counter_overflow = counter_overflow;
   assign trace31_counter_overflow = counter_overflow;
   assign trace32_counter_overflow = counter_overflow;
   assign trace33_counter_overflow = counter_overflow;
   assign trace34_counter_overflow = counter_overflow;
   assign trace35_counter_overflow = counter_overflow;
   assign trace36_counter_overflow = counter_overflow;
   assign trace37_counter_overflow = counter_overflow;
   assign trace38_counter_overflow = counter_overflow;
   assign trace39_counter_overflow = counter_overflow;
   assign trace40_counter_overflow = counter_overflow;
   assign trace41_counter_overflow = counter_overflow;
   assign trace42_counter_overflow = counter_overflow;
   assign trace43_counter_overflow = counter_overflow;
   assign trace44_counter_overflow = counter_overflow;
   assign trace45_counter_overflow = counter_overflow;
   assign trace46_counter_overflow = counter_overflow;
   assign trace47_counter_overflow = counter_overflow;
   assign trace48_counter_overflow = counter_overflow;
   assign trace49_counter_overflow = counter_overflow;
   assign trace50_counter_overflow = counter_overflow;
   assign trace51_counter_overflow = counter_overflow;
   assign trace52_counter_overflow = counter_overflow;
   assign trace53_counter_overflow = counter_overflow;
   assign trace54_counter_overflow = counter_overflow;
   assign trace55_counter_overflow = counter_overflow;
   assign trace56_counter_overflow = counter_overflow;
   assign trace57_counter_overflow = counter_overflow;
   assign trace58_counter_overflow = counter_overflow;
   assign trace59_counter_overflow = counter_overflow;
   assign trace60_counter_overflow = counter_overflow;
   assign trace61_counter_overflow = counter_overflow;
   assign trace62_counter_overflow = counter_overflow;
   //combine event signals into one large bus
   assign trace_event[0] = sw_trace_write;
   assign trace_event[1] = trace0_event;
   assign trace_event[2] = trace1_event;
   assign trace_event[3] = trace2_event;
   assign trace_event[4] = trace3_event;
   assign trace_event[5] = trace4_event;
   assign trace_event[6] = trace5_event;
   assign trace_event[7] = trace6_event;
   assign trace_event[8] = trace7_event;
   assign trace_event[9] = trace8_event;
   assign trace_event[10] = trace9_event;
   assign trace_event[11] = trace10_event;
   assign trace_event[12] = trace11_event;
   assign trace_event[13] = trace12_event;
   assign trace_event[14] = trace13_event;
   assign trace_event[15] = trace14_event;
   assign trace_event[16] = trace15_event;
   assign trace_event[17] = trace16_event;
   assign trace_event[18] = trace17_event;
   assign trace_event[19] = trace18_event;
   assign trace_event[20] = trace19_event;
   assign trace_event[21] = trace20_event;
   assign trace_event[22] = trace21_event;
   assign trace_event[23] = trace22_event;
   assign trace_event[24] = trace23_event;
   assign trace_event[25] = trace24_event;
   assign trace_event[26] = trace25_event;
   assign trace_event[27] = trace26_event;
   assign trace_event[28] = trace27_event;
   assign trace_event[29] = trace28_event;
   assign trace_event[30] = trace29_event;
   assign trace_event[31] = trace30_event;
   assign trace_event[32] = trace31_event;
   assign trace_event[33] = trace32_event;
   assign trace_event[34] = trace33_event;
   assign trace_event[35] = trace34_event;
   assign trace_event[36] = trace35_event;
   assign trace_event[37] = trace36_event;
   assign trace_event[38] = trace37_event;
   assign trace_event[39] = trace38_event;
   assign trace_event[40] = trace39_event;
   assign trace_event[41] = trace40_event;
   assign trace_event[42] = trace41_event;
   assign trace_event[43] = trace42_event;
   assign trace_event[44] = trace43_event;
   assign trace_event[45] = trace44_event;
   assign trace_event[46] = trace45_event;
   assign trace_event[47] = trace46_event;
   assign trace_event[48] = trace47_event;
   assign trace_event[49] = trace48_event;
   assign trace_event[50] = trace49_event;
   assign trace_event[51] = trace50_event;
   assign trace_event[52] = trace51_event;
   assign trace_event[53] = trace52_event;
   assign trace_event[54] = trace53_event;
   assign trace_event[55] = trace54_event;
   assign trace_event[56] = trace55_event;
   assign trace_event[57] = trace56_event;
   assign trace_event[58] = trace57_event;
   assign trace_event[59] = trace58_event;
   assign trace_event[60] = trace59_event;
   assign trace_event[61] = trace60_event;
   assign trace_event[62] = trace61_event;
   assign trace_event[63] = trace62_event;
   //combine trace data into one large bus
   assign trace_data[63:0] = sw_data;
   assign trace_data[127:64] = trace0_data;
   assign trace_data[191:128] = trace1_data;
   assign trace_data[255:192] = trace2_data;
   assign trace_data[319:256] = trace3_data;
   assign trace_data[383:320] = trace4_data;
   assign trace_data[447:384] = trace5_data;
   assign trace_data[511:448] = trace6_data;
   assign trace_data[575:512] = trace7_data;
   assign trace_data[639:576] = trace8_data;
   assign trace_data[703:640] = trace9_data;
   assign trace_data[767:704] = trace10_data;
   assign trace_data[831:768] = trace11_data;
   assign trace_data[895:832] = trace12_data;
   assign trace_data[959:896] = trace13_data;
   assign trace_data[1023:960] = trace14_data;
   assign trace_data[1087:1024] = trace15_data;
   assign trace_data[1151:1088] = trace16_data;
   assign trace_data[1215:1152] = trace17_data;
   assign trace_data[1279:1216] = trace18_data;
   assign trace_data[1343:1280] = trace19_data;
   assign trace_data[1407:1344] = trace20_data;
   assign trace_data[1471:1408] = trace21_data;
   assign trace_data[1535:1472] = trace22_data;
   assign trace_data[1599:1536] = trace23_data;
   assign trace_data[1663:1600] = trace24_data;
   assign trace_data[1727:1664] = trace25_data;
   assign trace_data[1791:1728] = trace26_data;
   assign trace_data[1855:1792] = trace27_data;
   assign trace_data[1919:1856] = trace28_data;
   assign trace_data[1983:1920] = trace29_data;
   assign trace_data[2047:1984] = trace30_data;
   assign trace_data[2111:2048] = trace31_data;
   assign trace_data[2175:2112] = trace32_data;
   assign trace_data[2239:2176] = trace33_data;
   assign trace_data[2303:2240] = trace34_data;
   assign trace_data[2367:2304] = trace35_data;
   assign trace_data[2431:2368] = trace36_data;
   assign trace_data[2495:2432] = trace37_data;
   assign trace_data[2559:2496] = trace38_data;
   assign trace_data[2623:2560] = trace39_data;
   assign trace_data[2687:2624] = trace40_data;
   assign trace_data[2751:2688] = trace41_data;
   assign trace_data[2815:2752] = trace42_data;
   assign trace_data[2879:2816] = trace43_data;
   assign trace_data[2943:2880] = trace44_data;
   assign trace_data[3007:2944] = trace45_data;
   assign trace_data[3071:3008] = trace46_data;
   assign trace_data[3135:3072] = trace47_data;
   assign trace_data[3199:3136] = trace48_data;
   assign trace_data[3263:3200] = trace49_data;
   assign trace_data[3327:3264] = trace50_data;
   assign trace_data[3391:3328] = trace51_data;
   assign trace_data[3455:3392] = trace52_data;
   assign trace_data[3519:3456] = trace53_data;
   assign trace_data[3583:3520] = trace54_data;
   assign trace_data[3647:3584] = trace55_data;
   assign trace_data[3711:3648] = trace56_data;
   assign trace_data[3775:3712] = trace57_data;
   assign trace_data[3839:3776] = trace58_data;
   assign trace_data[3903:3840] = trace59_data;
   assign trace_data[3967:3904] = trace60_data;
   assign trace_data[4031:3968] = trace61_data;
   assign trace_data[4095:4032] = trace62_data;
   //combine trace valid signals into one large bus
   assign trace_valid[0] =  sw_valid;
   assign trace_valid[1] =  trace0_valid;
   assign trace_valid[2] =  trace1_valid;
   assign trace_valid[3] =  trace2_valid;
   assign trace_valid[4] =  trace3_valid;
   assign trace_valid[5] =  trace4_valid;
   assign trace_valid[6] =  trace5_valid;
   assign trace_valid[7] =  trace6_valid;
   assign trace_valid[8] =  trace7_valid;
   assign trace_valid[9] =  trace8_valid;
   assign trace_valid[10] =  trace9_valid;
   assign trace_valid[11] =  trace10_valid;
   assign trace_valid[12] =  trace11_valid;
   assign trace_valid[13] =  trace12_valid;
   assign trace_valid[14] =  trace13_valid;
   assign trace_valid[15] =  trace14_valid;
   assign trace_valid[16] =  trace15_valid;
   assign trace_valid[17] =  trace16_valid;
   assign trace_valid[18] =  trace17_valid;
   assign trace_valid[19] =  trace18_valid;
   assign trace_valid[20] =  trace19_valid;
   assign trace_valid[21] =  trace20_valid;
   assign trace_valid[22] =  trace21_valid;
   assign trace_valid[23] =  trace22_valid;
   assign trace_valid[24] =  trace23_valid;
   assign trace_valid[25] =  trace24_valid;
   assign trace_valid[26] =  trace25_valid;
   assign trace_valid[27] =  trace26_valid;
   assign trace_valid[28] =  trace27_valid;
   assign trace_valid[29] =  trace28_valid;
   assign trace_valid[30] =  trace29_valid;
   assign trace_valid[31] =  trace30_valid;
   assign trace_valid[32] =  trace31_valid;
   assign trace_valid[33] =  trace32_valid;
   assign trace_valid[34] =  trace33_valid;
   assign trace_valid[35] =  trace34_valid;
   assign trace_valid[36] =  trace35_valid;
   assign trace_valid[37] =  trace36_valid;
   assign trace_valid[38] =  trace37_valid;
   assign trace_valid[39] =  trace38_valid;
   assign trace_valid[40] =  trace39_valid;
   assign trace_valid[41] =  trace40_valid;
   assign trace_valid[42] =  trace41_valid;
   assign trace_valid[43] =  trace42_valid;
   assign trace_valid[44] =  trace43_valid;
   assign trace_valid[45] =  trace44_valid;
   assign trace_valid[46] =  trace45_valid;
   assign trace_valid[47] =  trace46_valid;
   assign trace_valid[48] =  trace47_valid;
   assign trace_valid[49] =  trace48_valid;
   assign trace_valid[50] =  trace49_valid;
   assign trace_valid[51] =  trace50_valid;
   assign trace_valid[52] =  trace51_valid;
   assign trace_valid[53] =  trace52_valid;
   assign trace_valid[54] =  trace53_valid;
   assign trace_valid[55] =  trace54_valid;
   assign trace_valid[56] =  trace55_valid;
   assign trace_valid[57] =  trace56_valid;
   assign trace_valid[58] =  trace57_valid;
   assign trace_valid[59] =  trace58_valid;
   assign trace_valid[60] =  trace59_valid;
   assign trace_valid[61] =  trace60_valid;
   assign trace_valid[62] =  trace61_valid;
   assign trace_valid[63] =  trace62_valid;
   //combine trace read signals into one large bus
   assign sw_read = trace_read[0];
   assign trace0_read = trace_read[1];
   assign trace1_read = trace_read[2];
   assign trace2_read = trace_read[3];
   assign trace3_read = trace_read[4];
   assign trace4_read = trace_read[5];
   assign trace5_read = trace_read[6];
   assign trace6_read = trace_read[7];
   assign trace7_read = trace_read[8];
   assign trace8_read = trace_read[9];
   assign trace9_read = trace_read[10];
   assign trace10_read = trace_read[11];
   assign trace11_read = trace_read[12];
   assign trace12_read = trace_read[13];
   assign trace13_read = trace_read[14];
   assign trace14_read = trace_read[15];
   assign trace15_read = trace_read[16];
   assign trace16_read = trace_read[17];
   assign trace17_read = trace_read[18];
   assign trace18_read = trace_read[19];
   assign trace19_read = trace_read[20];
   assign trace20_read = trace_read[21];
   assign trace21_read = trace_read[22];
   assign trace22_read = trace_read[23];
   assign trace23_read = trace_read[24];
   assign trace24_read = trace_read[25];
   assign trace25_read = trace_read[26];
   assign trace26_read = trace_read[27];
   assign trace27_read = trace_read[28];
   assign trace28_read = trace_read[29];
   assign trace29_read = trace_read[30];
   assign trace30_read = trace_read[31];
   assign trace31_read = trace_read[32];
   assign trace32_read = trace_read[33];
   assign trace33_read = trace_read[34];
   assign trace34_read = trace_read[35];
   assign trace35_read = trace_read[36];
   assign trace36_read = trace_read[37];
   assign trace37_read = trace_read[38];
   assign trace38_read = trace_read[39];
   assign trace39_read = trace_read[40];
   assign trace40_read = trace_read[41];
   assign trace41_read = trace_read[42];
   assign trace42_read = trace_read[43];
   assign trace43_read = trace_read[44];
   assign trace44_read = trace_read[45];
   assign trace45_read = trace_read[46];
   assign trace46_read = trace_read[47];
   assign trace47_read = trace_read[48];
   assign trace48_read = trace_read[49];
   assign trace49_read = trace_read[50];
   assign trace50_read = trace_read[51];
   assign trace51_read = trace_read[52];
   assign trace52_read = trace_read[53];
   assign trace53_read = trace_read[54];
   assign trace54_read = trace_read[55];
   assign trace55_read = trace_read[56];
   assign trace56_read = trace_read[57];
   assign trace57_read = trace_read[58];
   assign trace58_read = trace_read[59];
   assign trace59_read = trace_read[60];
   assign trace60_read = trace_read[61];
   assign trace61_read = trace_read[62];
   assign trace62_read = trace_read[63];

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

  wire _trace_resetn;
  if (EXT_TRACE_RST == 0) begin
    reg trace_reset_reg = 0;
    reg [3:0] trace_reset_dly_cnt = 0;
    always @(posedge trace_clk) begin
      if (trace_reset_dly_cnt < 4'hf)
        trace_reset_dly_cnt <= trace_reset_dly_cnt + 1;
      else
        trace_reset_reg <= 1;
    end
    assign _trace_resetn = trace_reset_reg;
  end
  else begin
    assign _trace_resetn = trace_resetn;
  end

   //global timer/counter for trace timestamping
   always @(posedge mon_clk) begin :COUNTER_PROCESS
      if(_mon_resetn == 0 || sw_reset_mon == 1) begin   //external reset signal
         counter <= 1;
         counter_overflow <= 0;
      end
      else begin
         counter <= counter + 1;
         if(counter == 0) begin //overflow condition
            counter_overflow <= ~counter_overflow;
         end
      end
   end

   xpm_cdc_handshake #(
      .DEST_EXT_HSK (0), // internal/external handshake
      .DEST_SYNC_FF (4), // integer; range: 2-10
      .SRC_SYNC_FF (4), // integer; range: 2-10
      .WIDTH (45) // integer; range: 1-1024
    ) xpm_cdc_handshake_inst (
      .src_clk (mon_clk),
      .src_in (counter),
      .src_send (ctr_src_send),
      .src_rcv (ctr_src_rcv),
      .dest_clk (trace_clk),
      .dest_req (ctr_dest_req),
      .dest_ack (1'b0), // optional; required when DEST_EXT_HSK = 1
      .dest_out (ctr_dest_out)
    );

    // Continuous Handshake is almost precise
    always @(posedge mon_clk) begin
        if (_mon_resetn == 0) begin
            ctr_src_send <= 1'b1;
        end
        else begin
           ctr_src_send <= ~ctr_src_rcv; 
        end
    end
    always @(posedge trace_clk) begin
        if (ctr_dest_req) begin
            sw_counter <= ctr_dest_out;
        end
    end

    // One bit sync for overflow
    xpm_cdc_single #(
    //Common module parameters
      .DEST_SYNC_FF (3), // integer; range: 2-10
      .SRC_INPUT_REG (1) // integer; 0=do not register input, 1=register input
    ) xpm_cdc_single_inst (
      .src_clk (mon_clk), // optional; required when SRC_INPUT_REG = 1
      .src_in (counter_overflow),
      .dest_clk (trace_clk),
      .dest_out (ctr_of_dest_out)
    );
    always @(posedge trace_clk) begin
        sw_counter_overflow <= ctr_of_dest_out;
    end

    // Use Sw Reset to reset main counter
    xpm_cdc_single #(
    //Common module parameters
      .DEST_SYNC_FF (3), // integer; range: 2-10
      .SRC_INPUT_REG (0) // integer; 0=do not register input, 1=register input
    ) xpm_cdc_single_sw_rst_inst (
      .src_clk (trace_clk), // optional; required when SRC_INPUT_REG = 1
      .src_in (sw_reset),
      .dest_clk (mon_clk),
      .dest_out (sw_reset_mon)
    );

   //----------------------------------------------------
   //write address decode, register map implementation
   always @(posedge trace_clk) begin
      if(_trace_resetn == 0) begin
         //values to set on reset
	 sw_reset <= 0;
	 sw_trace_write <= 0;
      end
      else begin
	 sw_reset <= 0;
	 sw_trace_write <= 0;
         if(slv_reg_out_vld) begin
            case(slv_reg_addr)
              2'd0: begin //offset 0x0 sw trace reg
		 sw_trace_data <= slv_reg_out[15:0];
		 sw_trace_write <= 1;
		 //slv_reg_out[31:16] unused
	      end
	      //2'd1: UNUSED
	      //2'd2: UNUSED
	      2'd3: begin //offset 0xC sw reset reg
		 sw_reset <= slv_reg_out[0];
		 //slv_reg_out[31:16] unused
	      end
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
           //14'd0: WRITE ONLY
	   //14'd1: UNUSED
	   //14'd2: UNUSED
           //14'd3: WRITE ONLY
	   default: begin
	      slv_reg_in_vld <= 1; //will read seafoood value
	   end
	 endcase
      end
   end
    //Instantiate the AXI Lite interface
    AXI_LITE_IF axi_lite_if_i (
	.slv_reg_in(slv_reg_in),
        .slv_reg_in_vld(slv_reg_in_vld),
        .slv_reg_out(slv_reg_out),
        .slv_reg_out_vld(slv_reg_out_vld),
        .slv_reg_addr(slv_reg_addr),
	.slv_reg_addr_vld(slv_reg_addr_vld),
        .S_AXI_ACLK(trace_clk),
        .S_AXI_ARESETN(_trace_resetn),
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
    //Instantiate the software timestamper
    sw_timestamper sw_ts (
        .sw_trace(sw_trace_data),
        .sw_trace_vld(sw_trace_write),
        .clk(trace_clk),
        .rst(sw_reset),
        .counter(sw_counter),
        .counter_overflow(sw_counter_overflow),
        .event_out(sw_data),
        .event_valid(sw_valid),
        .event_read(sw_read)
    );

    // Buffer all incoming trace streams for better timing
    wire [(_NUM_TRACE_PORTS)*64-1:0] _trace_data;
    wire [(_NUM_TRACE_PORTS)-1:0] _trace_valid;
    wire [(_NUM_TRACE_PORTS)-1:0] _trace_read;
    genvar j;
    generate
        for (j=0; j < _NUM_TRACE_PORTS; j=j+1) begin
            stream_slice ss_i (
            .data_in(trace_data[(j+1)*64-1 : j*64]),
            .valid_i(trace_valid[j]),
            .ready_i(trace_read[j]),
            .data_out(_trace_data[(j+1)*64-1 : j*64]),
            .valid_o(_trace_valid[j]),
            .ready_o(_trace_read[j]),
            .clk(trace_clk),
            .rst(sw_reset)
            );
        end
    endgenerate

   merge_tree #(
        .REAL_PORTS(_NUM_TRACE_PORTS),
        .LOG_PORTS(_NUM_LOG_PORTS)
     ) merge_tree_i (
	.clk(trace_clk),
	.reset(sw_reset),
	.port_data(_trace_data[(_NUM_TRACE_PORTS)*64-1:0]),
	.port_valid(_trace_valid[(_NUM_TRACE_PORTS)-1:0]),
	.port_read(_trace_read[(_NUM_TRACE_PORTS)-1:0]),
	.out_data(tree_data),
	.out_valid(tree_valid),
	.out_read(tree_ready)
     );
   generate
      if(USE_PASSTHROUGH == 0 && EMULATION == 0) begin
	 //output from port tree is the ouput
	 assign out_data = tree_data;
	 assign out_valid = tree_valid;
	 assign tree_ready = out_ready;
	 assign pass_ready = 0;
      end
      else if(USE_PASSTHROUGH == 1 && EMULATION == 0) begin
	 //output from port tree needs to be merged with pass through
	 stream_merge2to1 merge_out_i (
           .data_in0(tree_data),
	   .valid0(tree_valid),
           .read0(tree_ready),
           .data_in1(pass_data),
           .valid1(pass_valid),
           .read1(pass_ready),
           .clk(trace_clk),
           .reset(sw_reset),
           .data_out(merge_data),
           .valid(merge_valid),
           .read(merge_read)
          );
	 assign out_data = merge_data;
	 assign out_valid = merge_valid;
	 assign merge_read = out_ready;
      end // if (USE_PASSTHROUGH == 1 && EMULATION == 0)
      else begin
	 assign out_data = 64'd0;
	 assign out_valid = 0;
	 assign pass_ready = 0;
	 assign tree_ready = 1'b1;
	 // synthesis translate_off
	 //-----------------------------------------------
	 //output to file
	 integer file;
	 initial begin
	    file = $fopen("trace_data.dat","w");
	    if(!file)
	      $display("Unable to open trace_data.dat file");
	 end
	 always @(posedge trace_clk) begin
	    if(tree_valid) begin
	       if(file) begin
		  $fwrite(file,"%016H\n",tree_data);
	       $fflush(file);
	       end
	    end
	 end
	 // synthesis translate_on
      end
   endgenerate
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module merge_tree #(
    parameter REAL_PORTS = 2,
    parameter LOG_PORTS = 2   //next power of 2 value equal to or larger than REAL_PORTS
    )(
    input clk,
    input reset,
    //top ports
    input [REAL_PORTS*64-1:0] port_data,
    input [REAL_PORTS-1:0] port_valid,
    output [REAL_PORTS-1:0] port_read,
    //bottom ports
    output [63:0] out_data,
    output out_valid,
    input out_read
    );
    
    wire [(LOG_PORTS*2)*64-1:0] data;
    wire [(LOG_PORTS*2):0] valid;
    wire [(LOG_PORTS*2):0] read;
    
    //assign to top level inputs/outputs
    assign data [(LOG_PORTS+REAL_PORTS)*64-1:(LOG_PORTS-1)*64] = port_data;
    assign valid [(LOG_PORTS+REAL_PORTS):(LOG_PORTS-1)] = port_valid;
    assign port_read = read[(LOG_PORTS+REAL_PORTS):(LOG_PORTS-1)];
    
    //assign bottom inputs/outputs
    assign out_data = data[63:0];
    assign out_valid = valid[0];
    assign read[0] = out_read;
    
    genvar i,j;
    generate
        for (i=0; i < LOG_PORTS-1; i=i+1) begin
            stream_merge2to1 merge_i (
            .data_in0(data[(i*2+2)*64-1:(i*2+1)*64]),
            .valid0(valid[(i*2+1)]),
            .read0(read[(i*2+1)]),
            .data_in1(data[(i*2+3)*64-1:(i*2+2)*64]),
            .valid1(valid[(i*2+2)]),
            .read1(read[(i*2+2)]),
            .clk(clk),
            .reset(reset),
            .data_out(data[(i+1)*64-1:i*64]),
            .valid(valid[i]),
            .read(read[i])
            );
        end
    endgenerate
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module stream_merge2to1 (
    //Port 0
    input [63:0] data_in0,      //Input data from timestamper FIFO
    input valid0,               //Input data-valid signal from timestamper
    output read0,               //Output read signal to timestamper
    //Port 1
    input [63:0] data_in1,      //Input data from time-stamper FIFO
    input valid1,               //Input data-valid signal from timestamper
    output read1,               //Output read signal to timestamper
    
    //Clock & Reset synchronized with start/stop events
    input clk,
    input reset,
    
    output [63:0] data_out,     //Merged output data
    output valid,
    input read
    );
    
    reg have_data=0;        //tracks if there is data in internal FIFO 
    reg [63:0] data_i=0;    //internal FIFO storage
    reg wrote0 = 0;         //Fair scheduling register (1 if just accepted value from port0)
    
    assign data_out = data_i;   //output internal register to next stage
    
    /*
     * We read from port0 if we either:
     *   1. Do not have any data stored already
     *    or
     *   2. Have data that is being read out this same cycle 
     *   and there is data to read on port0 and either:
     *      we didnt just accept data from port0
     *      or the other port is not valid
     */
    assign read0 = ((~have_data) | (have_data & read)) & valid0 & ((~wrote0) | (~valid1));
    
    /*
     * We read from port1 if we either:
     *   1. Do not have any data stored already
     *    or
     *   2. Have data that is being read out this same cycle 
     *   and there is data to read on port1 and either:
     *      we just accepted data from port0
     *      or the other port is not valid
     */
    assign read1 = ((~have_data) | (have_data & read)) & valid1 & ((wrote0) | (~valid0));
    
    assign valid = have_data;  //output valid signal, is equivalent to having any data stored already
    
    always @(posedge clk) begin :DATA_TRICKLE
        if(reset == 1) begin   //reset
            have_data = 0;  //no data stored internally
            wrote0 = 0;     //have not just accepted data from port0
        end
        else if(have_data == 0 | (have_data == 1 && read == 1)) begin   //no data stored internally
            have_data = 0;  //unset flag, since data may be being read out
            if(valid0 && ((~wrote0) || (~valid1))) begin   //have data on port0 and (either we didnt just accept data on port0 or there is no data on port1)
                data_i = data_in0;  //accept data, put in internal register
                have_data = 1;      //set flag, that data is available
                wrote0 = 1;         //mark that we have just accepted data on port0 (demote priority)
            end
            else if(valid1) begin   //have data on port1
                data_i = data_in1;  //accept data, put in internal register
                have_data = 1;      //set flag, that data is available
                wrote0 = 0;         //unmark now that we have just accepted data on port1 (promote priority)
            end
        end
    end
    
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module sw_timestamper(
    //Trace bus input
    input [15:0] sw_trace,
    input sw_trace_vld,
    //Clock & Reset synchonized with start/stop events
    input clk,
    input rst,
    //current time input from centralized clock/counter
    input [44:0] counter,
    input counter_overflow,
    //output timestamped data (FIFO interface)
    output [63:0] event_out,
    output event_valid,
    input  event_read
    );
    
    wire event_valid_i;    //write signal into the internal FIFO when new event is found
    reg error = 0;          //error is triggered if backpressure causes a new event to be dropped
    wire [63:0] event_i;    //concatenated info created from various signals (counter, type, etc.)
    wire full_i;            //backpressure signal from internal FIFO
    wire event_empty_i;
    wire error_sig;
    reg error_write;
    wire write;

    assign write = event_valid_i | (error_write & error); 
    assign error_sig = event_valid_i && full_i;    
    assign event_valid = ~event_empty_i;

    assign event_i[44:0] = counter;          //Timestamp    
    assign event_i[48:45] = sw_trace[3:0];   //Trace Event Type {0x4-Start or 0x5-Stop} for SW Events
    assign event_i[60:49] = sw_trace[15:4];  //Trace Point ID
    assign event_i[61] = 0;		     //Reserved
    assign event_i[62] = counter_overflow;   //Overflow
    assign event_i[63] = 1;                  //IsSWEvent

    assign event_valid_i = sw_trace_vld;
                      
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
    
    //Internal FIFO - default to 16 elements deep, 64bit width
    trace_fifo #( 
      .WIDTH(64),
      .DEPTH(16),
      .IS_ASYNC(0)
    ) fifo_i (
      .wr_clk(clk),
      .rst(rst),
      .din(event_i),
      .write(write),
      .full(full_i),
      .dout(event_out),
      .read(event_read),
      .empty(event_empty_i),
      .rd_clk(clk) 
    );
              
endmodule

// 67d7842dbbe25473c3c32b93c0da8047785f30d78e8a024de1b57352245f9689


`timescale 1ns / 1ps

module trace_fifo #(
    parameter DEPTH=16,
    parameter WIDTH=32,
    parameter IS_ASYNC=0
    ) (
    input wr_clk,
    input [WIDTH-1:0] din,
    input write,
    output full, 
    output [WIDTH-1:0] dout,
    input read,
    output empty,
    input rd_clk,
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
      .ECC_MODE                  ("no_ecc"),         //string; "no_ecc" or "en_ecc";
      .RELATED_CLOCKS            (IS_ASYNC),                //positive integer; 0 or 1
      .FIFO_WRITE_DEPTH          (DEPTH),            //positive integer
      .WRITE_DATA_WIDTH          (WIDTH),            //positive integer
      .WR_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_FULL_THRESH          (10),               //positive integer
      .FULL_RESET_VALUE          (0),                //positive integer; 0 or 1
      .READ_MODE                 ("fwft"),           //string; "std" or "fwft";
      .FIFO_READ_LATENCY         (1),                //positive integer;
      .READ_DATA_WIDTH           (WIDTH),            //positive integer
      .RD_DATA_COUNT_WIDTH       (ADDR_WIDTH),       //positive integer
      .PROG_EMPTY_THRESH         (10),               //positive integer
      .DOUT_RESET_VALUE          ("0"),              //string
      .CDC_SYNC_STAGES           (2),                //positive integer
      .WAKEUP_TIME               (0)                 //positive integer; 0 or 2;
    ) xpm_fifo_async_inst (
       .rst              (rst),
      .wr_clk           (wr_clk),
      .wr_en            (write),
      .din              (din),
      .full             (full),
//      .overflow         (overflow),
//      .wr_rst_busy      (wr_rst_busy),
      .rd_clk           (rd_clk),
      .rd_en            (read),
      .dout             (dout),
      .empty            (empty),
//      .underflow        (underflow),
//      .rd_rst_busy      (rd_rst_busy),
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


`timescale 1ns / 1ps
module stream_slice (
    input [63:0] data_in,
    input valid_i,
    output ready_i,

    output [63:0] data_out,
    output valid_o,
    input ready_o,

    input clk,
    input rst
    );

reg [63:0] buffer;
reg have_data = 0;
reg ready_i_reg;

assign ready_i = ready_i_reg;

wire tx_cond = valid_i & (~have_data | have_data & ready_o);

always @(posedge clk) begin
    if (tx_cond & ~ready_i_reg) begin
        ready_i_reg <= 1;
    end
    else begin
        ready_i_reg <= 0;
    end
end


assign valid_o = have_data;
assign data_out = buffer;

always @(posedge clk) begin
    if(rst) begin
        have_data = 0;
        buffer = 0;
    end
    if ((have_data == 1 & ready_o == 1) | have_data == 0) begin
        have_data = 0;
        if (ready_i) begin
            buffer = data_in;
            have_data = 1;
        end
    end
end

endmodule


