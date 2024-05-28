// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Feb  9 12:15:12 2022
// Host        : linux-e4n3 running 64-bit openSUSE Leap 42.2
// Command     : write_verilog -force -mode synth_stub -rename_top zedboard_base_axi_vip_0_0 -prefix
//               zedboard_base_axi_vip_0_0_ zedboard_base_axi_vip_1_0_stub.v
// Design      : zedboard_base_axi_vip_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axi_vip_v1_1_8_top,Vivado 2020.2" *)
module zedboard_base_axi_vip_0_0(aclk, aresetn, m_axi_awaddr, m_axi_awlen, 
  m_axi_awsize, m_axi_awburst, m_axi_awlock, m_axi_awcache, m_axi_awprot, m_axi_awregion, 
  m_axi_awqos, m_axi_awvalid, m_axi_awready, m_axi_wdata, m_axi_wstrb, m_axi_wlast, 
  m_axi_wvalid, m_axi_wready, m_axi_bresp, m_axi_bvalid, m_axi_bready, m_axi_araddr, 
  m_axi_arlen, m_axi_arsize, m_axi_arburst, m_axi_arlock, m_axi_arcache, m_axi_arprot, 
  m_axi_arregion, m_axi_arqos, m_axi_arvalid, m_axi_arready, m_axi_rdata, m_axi_rresp, 
  m_axi_rlast, m_axi_rvalid, m_axi_rready)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,m_axi_awaddr[31:0],m_axi_awlen[7:0],m_axi_awsize[2:0],m_axi_awburst[1:0],m_axi_awlock[0:0],m_axi_awcache[3:0],m_axi_awprot[2:0],m_axi_awregion[3:0],m_axi_awqos[3:0],m_axi_awvalid,m_axi_awready,m_axi_wdata[31:0],m_axi_wstrb[3:0],m_axi_wlast,m_axi_wvalid,m_axi_wready,m_axi_bresp[1:0],m_axi_bvalid,m_axi_bready,m_axi_araddr[31:0],m_axi_arlen[7:0],m_axi_arsize[2:0],m_axi_arburst[1:0],m_axi_arlock[0:0],m_axi_arcache[3:0],m_axi_arprot[2:0],m_axi_arregion[3:0],m_axi_arqos[3:0],m_axi_arvalid,m_axi_arready,m_axi_rdata[31:0],m_axi_rresp[1:0],m_axi_rlast,m_axi_rvalid,m_axi_rready" */;
  input aclk;
  input aresetn;
  output [31:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awregion;
  output [3:0]m_axi_awqos;
  output m_axi_awvalid;
  input m_axi_awready;
  output [31:0]m_axi_wdata;
  output [3:0]m_axi_wstrb;
  output m_axi_wlast;
  output m_axi_wvalid;
  input m_axi_wready;
  input [1:0]m_axi_bresp;
  input m_axi_bvalid;
  output m_axi_bready;
  output [31:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arregion;
  output [3:0]m_axi_arqos;
  output m_axi_arvalid;
  input m_axi_arready;
  input [31:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input m_axi_rvalid;
  output m_axi_rready;
endmodule
