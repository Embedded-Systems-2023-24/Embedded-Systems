// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 28 10:12:05 2024
// Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
// Command     : write_verilog -force -mode synth_stub
//               /home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/build_dir.hw.zedboard_202020_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/zedboard_base/ip/zedboard_base_dpa_mon0_0/zedboard_base_dpa_mon0_0_stub.v
// Design      : zedboard_base_dpa_mon0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "accelerator_monitor,Vivado 2020.2" *)
module zedboard_base_dpa_mon0_0(mon_clk, mon_resetn, trace_clk, trace_rst, 
  trace_counter_overflow, trace_counter, trace_event, trace_data, trace_valid, trace_read, 
  s_axi_awaddr, s_axi_awprot, s_axi_awvalid, s_axi_awready, s_axi_wdata, s_axi_wstrb, 
  s_axi_wvalid, s_axi_wready, s_axi_bvalid, s_axi_bready, s_axi_bresp, s_axi_araddr, 
  s_axi_arprot, s_axi_arvalid, s_axi_arready, s_axi_rdata, s_axi_rresp, s_axi_rvalid, 
  s_axi_rready, s_axi_awaddr_mon, s_axi_awprot_mon, s_axi_awvalid_mon, s_axi_awready_mon, 
  s_axi_wdata_mon, s_axi_wstrb_mon, s_axi_wvalid_mon, s_axi_wready_mon, s_axi_bresp_mon, 
  s_axi_bvalid_mon, s_axi_bready_mon, s_axi_araddr_mon, s_axi_arprot_mon, 
  s_axi_arvalid_mon, s_axi_arready_mon, s_axi_rdata_mon, s_axi_rresp_mon, s_axi_rvalid_mon, 
  s_axi_rready_mon)
/* synthesis syn_black_box black_box_pad_pin="mon_clk,mon_resetn,trace_clk,trace_rst,trace_counter_overflow,trace_counter[44:0],trace_event,trace_data[63:0],trace_valid,trace_read,s_axi_awaddr[31:0],s_axi_awprot[2:0],s_axi_awvalid,s_axi_awready,s_axi_wdata[31:0],s_axi_wstrb[3:0],s_axi_wvalid,s_axi_wready,s_axi_bvalid,s_axi_bready,s_axi_bresp[1:0],s_axi_araddr[31:0],s_axi_arprot[2:0],s_axi_arvalid,s_axi_arready,s_axi_rdata[31:0],s_axi_rresp[1:0],s_axi_rvalid,s_axi_rready,s_axi_awaddr_mon[7:0],s_axi_awprot_mon[2:0],s_axi_awvalid_mon,s_axi_awready_mon,s_axi_wdata_mon[31:0],s_axi_wstrb_mon[3:0],s_axi_wvalid_mon,s_axi_wready_mon,s_axi_bresp_mon[1:0],s_axi_bvalid_mon,s_axi_bready_mon,s_axi_araddr_mon[7:0],s_axi_arprot_mon[2:0],s_axi_arvalid_mon,s_axi_arready_mon,s_axi_rdata_mon[31:0],s_axi_rresp_mon[1:0],s_axi_rvalid_mon,s_axi_rready_mon" */;
  input mon_clk;
  input mon_resetn;
  input trace_clk;
  input trace_rst;
  input trace_counter_overflow;
  input [44:0]trace_counter;
  output trace_event;
  output [63:0]trace_data;
  output trace_valid;
  input trace_read;
  input [31:0]s_axi_awaddr;
  input [2:0]s_axi_awprot;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wvalid;
  output s_axi_wready;
  output s_axi_bvalid;
  input s_axi_bready;
  output [1:0]s_axi_bresp;
  input [31:0]s_axi_araddr;
  input [2:0]s_axi_arprot;
  input s_axi_arvalid;
  output s_axi_arready;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rvalid;
  input s_axi_rready;
  input [7:0]s_axi_awaddr_mon;
  input [2:0]s_axi_awprot_mon;
  input s_axi_awvalid_mon;
  input s_axi_awready_mon;
  input [31:0]s_axi_wdata_mon;
  input [3:0]s_axi_wstrb_mon;
  input s_axi_wvalid_mon;
  input s_axi_wready_mon;
  input [1:0]s_axi_bresp_mon;
  input s_axi_bvalid_mon;
  input s_axi_bready_mon;
  input [7:0]s_axi_araddr_mon;
  input [2:0]s_axi_arprot_mon;
  input s_axi_arvalid_mon;
  input s_axi_arready_mon;
  input [31:0]s_axi_rdata_mon;
  input [1:0]s_axi_rresp_mon;
  input s_axi_rvalid_mon;
  input s_axi_rready_mon;
endmodule
