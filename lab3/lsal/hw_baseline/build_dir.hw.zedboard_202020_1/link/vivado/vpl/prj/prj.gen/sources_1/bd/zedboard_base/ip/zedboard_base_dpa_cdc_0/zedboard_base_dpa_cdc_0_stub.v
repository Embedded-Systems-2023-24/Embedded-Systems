// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue May 28 10:09:45 2024
// Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
// Command     : write_verilog -force -mode synth_stub
//               /home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/build_dir.hw.zedboard_202020_1/link/vivado/vpl/prj/prj.gen/sources_1/bd/zedboard_base/ip/zedboard_base_dpa_cdc_0/zedboard_base_dpa_cdc_0_stub.v
// Design      : zedboard_base_dpa_cdc_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "axis_clock_converter_v1_1_23_axis_clock_converter,Vivado 2020.2" *)
module zedboard_base_dpa_cdc_0(s_axis_aresetn, m_axis_aresetn, s_axis_aclk, 
  s_axis_tvalid, s_axis_tready, s_axis_tdata, m_axis_aclk, m_axis_tvalid, m_axis_tready, 
  m_axis_tdata)
/* synthesis syn_black_box black_box_pad_pin="s_axis_aresetn,m_axis_aresetn,s_axis_aclk,s_axis_tvalid,s_axis_tready,s_axis_tdata[31:0],m_axis_aclk,m_axis_tvalid,m_axis_tready,m_axis_tdata[31:0]" */;
  input s_axis_aresetn;
  input m_axis_aresetn;
  input s_axis_aclk;
  input s_axis_tvalid;
  output s_axis_tready;
  input [31:0]s_axis_tdata;
  input m_axis_aclk;
  output m_axis_tvalid;
  input m_axis_tready;
  output [31:0]m_axis_tdata;
endmodule
