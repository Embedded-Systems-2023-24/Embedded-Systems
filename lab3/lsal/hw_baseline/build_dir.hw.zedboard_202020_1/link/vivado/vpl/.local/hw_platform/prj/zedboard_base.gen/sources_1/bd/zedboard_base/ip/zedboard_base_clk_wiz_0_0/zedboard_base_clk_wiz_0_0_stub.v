// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Wed Feb  9 12:15:12 2022
// Host        : linux-e4n3 running 64-bit openSUSE Leap 42.2
// Command     : write_verilog -force -mode synth_stub
//               /local/embedded/labs/vitis-acceleration-tutorial/platform-build/hw/build/zedboard_base/zedboard_base.gen/sources_1/bd/zedboard_base/ip/zedboard_base_clk_wiz_0_0/zedboard_base_clk_wiz_0_0_stub.v
// Design      : zedboard_base_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module zedboard_base_clk_wiz_0_0(clk_out1, clk_out2, resetn, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,resetn,locked,clk_in1" */;
  output clk_out1;
  output clk_out2;
  input resetn;
  output locked;
  input clk_in1;
endmodule
