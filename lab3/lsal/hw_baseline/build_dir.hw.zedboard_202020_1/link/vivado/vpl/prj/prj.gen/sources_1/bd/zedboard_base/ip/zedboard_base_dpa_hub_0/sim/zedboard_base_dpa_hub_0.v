// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:ip:trace_hub:1.1
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zedboard_base_dpa_hub_0 (
  mon_clk,
  mon_resetn,
  trace_clk,
  trace_resetn,
  trace_rst,
  out_valid,
  out_ready,
  out_data,
  s_axi_awaddr,
  s_axi_awprot,
  s_axi_awvalid,
  s_axi_awready,
  s_axi_wdata,
  s_axi_wstrb,
  s_axi_wvalid,
  s_axi_wready,
  s_axi_bvalid,
  s_axi_bready,
  s_axi_bresp,
  s_axi_araddr,
  s_axi_arprot,
  s_axi_arvalid,
  s_axi_arready,
  s_axi_rdata,
  s_axi_rresp,
  s_axi_rvalid,
  s_axi_rready,
  trace0_counter,
  trace0_read,
  trace0_event,
  trace0_data,
  trace0_counter_overflow,
  trace0_valid,
  trace1_counter,
  trace1_read,
  trace1_event,
  trace1_data,
  trace1_counter_overflow,
  trace1_valid,
  trace2_counter,
  trace2_read,
  trace2_event,
  trace2_data,
  trace2_counter_overflow,
  trace2_valid
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_clk, ASSOCIATED_RESET mon_resetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_clk CLK" *)
input wire mon_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mon_resetn RST" *)
input wire mon_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_clk, ASSOCIATED_RESET trace_resetn:trace_rst, ASSOCIATED_BUSIF S_AXI:M_AXIS:S_AXIS, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 trace_clk CLK" *)
input wire trace_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_resetn RST" *)
input wire trace_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_rst RST" *)
output wire trace_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TVALID" *)
output wire out_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TREADY" *)
input wire out_ready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS TDATA" *)
output wire [63 : 0] out_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [3 : 0] s_axi_awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *)
input wire s_axi_awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *)
output wire s_axi_awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *)
input wire s_axi_wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *)
output wire s_axi_wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *)
output wire s_axi_bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *)
input wire s_axi_bready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *)
output wire [1 : 0] s_axi_bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *)
input wire [3 : 0] s_axi_araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *)
input wire s_axi_arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *)
output wire s_axi_arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *)
output wire [31 : 0] s_axi_rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *)
output wire [1 : 0] s_axi_rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *)
output wire s_axi_rvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter" *)
output wire [44 : 0] trace0_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 read" *)
output wire trace0_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 event" *)
input wire trace0_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 data" *)
input wire [63 : 0] trace0_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 counter_overflow" *)
output wire trace0_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_0 valid" *)
input wire trace0_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter" *)
output wire [44 : 0] trace1_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 read" *)
output wire trace1_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 event" *)
input wire trace1_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 data" *)
input wire [63 : 0] trace1_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 counter_overflow" *)
output wire trace1_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_1 valid" *)
input wire trace1_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter" *)
output wire [44 : 0] trace2_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 read" *)
output wire trace2_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 event" *)
input wire trace2_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 data" *)
input wire [63 : 0] trace2_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 counter_overflow" *)
output wire trace2_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_2 valid" *)
input wire trace2_valid;

  trace_integrator #(
    .NUM_TRACE_PORTS(3),
    .USE_PASSTHROUGH(1'B0),
    .EMULATION(1'B0),
    .EXT_MON_RST(1),
    .EXT_TRACE_RST(1)
  ) inst (
    .mon_clk(mon_clk),
    .mon_resetn(mon_resetn),
    .trace_clk(trace_clk),
    .trace_resetn(trace_resetn),
    .trace_rst(trace_rst),
    .out_valid(out_valid),
    .out_ready(out_ready),
    .out_data(out_data),
    .pass_valid(1'B0),
    .pass_ready(),
    .pass_data(64'B0),
    .s_axi_awaddr(s_axi_awaddr),
    .s_axi_awprot(s_axi_awprot),
    .s_axi_awvalid(s_axi_awvalid),
    .s_axi_awready(s_axi_awready),
    .s_axi_wdata(s_axi_wdata),
    .s_axi_wstrb(s_axi_wstrb),
    .s_axi_wvalid(s_axi_wvalid),
    .s_axi_wready(s_axi_wready),
    .s_axi_bvalid(s_axi_bvalid),
    .s_axi_bready(s_axi_bready),
    .s_axi_bresp(s_axi_bresp),
    .s_axi_araddr(s_axi_araddr),
    .s_axi_arprot(s_axi_arprot),
    .s_axi_arvalid(s_axi_arvalid),
    .s_axi_arready(s_axi_arready),
    .s_axi_rdata(s_axi_rdata),
    .s_axi_rresp(s_axi_rresp),
    .s_axi_rvalid(s_axi_rvalid),
    .s_axi_rready(s_axi_rready),
    .trace0_counter(trace0_counter),
    .trace0_read(trace0_read),
    .trace0_event(trace0_event),
    .trace0_data(trace0_data),
    .trace0_counter_overflow(trace0_counter_overflow),
    .trace0_valid(trace0_valid),
    .trace1_counter(trace1_counter),
    .trace1_read(trace1_read),
    .trace1_event(trace1_event),
    .trace1_data(trace1_data),
    .trace1_counter_overflow(trace1_counter_overflow),
    .trace1_valid(trace1_valid),
    .trace2_counter(trace2_counter),
    .trace2_read(trace2_read),
    .trace2_event(trace2_event),
    .trace2_data(trace2_data),
    .trace2_counter_overflow(trace2_counter_overflow),
    .trace2_valid(trace2_valid),
    .trace3_counter(),
    .trace3_read(),
    .trace3_event(1'B0),
    .trace3_data(64'B0),
    .trace3_counter_overflow(),
    .trace3_valid(1'B0),
    .trace4_counter(),
    .trace4_read(),
    .trace4_event(1'B0),
    .trace4_data(64'B0),
    .trace4_counter_overflow(),
    .trace4_valid(1'B0),
    .trace5_counter(),
    .trace5_read(),
    .trace5_event(1'B0),
    .trace5_data(64'B0),
    .trace5_counter_overflow(),
    .trace5_valid(1'B0),
    .trace6_counter(),
    .trace6_read(),
    .trace6_event(1'B0),
    .trace6_data(64'B0),
    .trace6_counter_overflow(),
    .trace6_valid(1'B0),
    .trace7_counter(),
    .trace7_read(),
    .trace7_event(1'B0),
    .trace7_data(64'B0),
    .trace7_counter_overflow(),
    .trace7_valid(1'B0),
    .trace8_counter(),
    .trace8_read(),
    .trace8_event(1'B0),
    .trace8_data(64'B0),
    .trace8_counter_overflow(),
    .trace8_valid(1'B0),
    .trace9_counter(),
    .trace9_read(),
    .trace9_event(1'B0),
    .trace9_data(64'B0),
    .trace9_counter_overflow(),
    .trace9_valid(1'B0),
    .trace10_counter(),
    .trace10_read(),
    .trace10_event(1'B0),
    .trace10_data(64'B0),
    .trace10_counter_overflow(),
    .trace10_valid(1'B0),
    .trace11_counter(),
    .trace11_read(),
    .trace11_event(1'B0),
    .trace11_data(64'B0),
    .trace11_counter_overflow(),
    .trace11_valid(1'B0),
    .trace12_counter(),
    .trace12_read(),
    .trace12_event(1'B0),
    .trace12_data(64'B0),
    .trace12_counter_overflow(),
    .trace12_valid(1'B0),
    .trace13_counter(),
    .trace13_read(),
    .trace13_event(1'B0),
    .trace13_data(64'B0),
    .trace13_counter_overflow(),
    .trace13_valid(1'B0),
    .trace14_counter(),
    .trace14_read(),
    .trace14_event(1'B0),
    .trace14_data(64'B0),
    .trace14_counter_overflow(),
    .trace14_valid(1'B0),
    .trace15_counter(),
    .trace15_read(),
    .trace15_event(1'B0),
    .trace15_data(64'B0),
    .trace15_counter_overflow(),
    .trace15_valid(1'B0),
    .trace16_counter(),
    .trace16_read(),
    .trace16_event(1'B0),
    .trace16_data(64'B0),
    .trace16_counter_overflow(),
    .trace16_valid(1'B0),
    .trace17_counter(),
    .trace17_read(),
    .trace17_event(1'B0),
    .trace17_data(64'B0),
    .trace17_counter_overflow(),
    .trace17_valid(1'B0),
    .trace18_counter(),
    .trace18_read(),
    .trace18_event(1'B0),
    .trace18_data(64'B0),
    .trace18_counter_overflow(),
    .trace18_valid(1'B0),
    .trace19_counter(),
    .trace19_read(),
    .trace19_event(1'B0),
    .trace19_data(64'B0),
    .trace19_counter_overflow(),
    .trace19_valid(1'B0),
    .trace20_counter(),
    .trace20_read(),
    .trace20_event(1'B0),
    .trace20_data(64'B0),
    .trace20_counter_overflow(),
    .trace20_valid(1'B0),
    .trace21_counter(),
    .trace21_read(),
    .trace21_event(1'B0),
    .trace21_data(64'B0),
    .trace21_counter_overflow(),
    .trace21_valid(1'B0),
    .trace22_counter(),
    .trace22_read(),
    .trace22_event(1'B0),
    .trace22_data(64'B0),
    .trace22_counter_overflow(),
    .trace22_valid(1'B0),
    .trace23_counter(),
    .trace23_read(),
    .trace23_event(1'B0),
    .trace23_data(64'B0),
    .trace23_counter_overflow(),
    .trace23_valid(1'B0),
    .trace24_counter(),
    .trace24_read(),
    .trace24_event(1'B0),
    .trace24_data(64'B0),
    .trace24_counter_overflow(),
    .trace24_valid(1'B0),
    .trace25_counter(),
    .trace25_read(),
    .trace25_event(1'B0),
    .trace25_data(64'B0),
    .trace25_counter_overflow(),
    .trace25_valid(1'B0),
    .trace26_counter(),
    .trace26_read(),
    .trace26_event(1'B0),
    .trace26_data(64'B0),
    .trace26_counter_overflow(),
    .trace26_valid(1'B0),
    .trace27_counter(),
    .trace27_read(),
    .trace27_event(1'B0),
    .trace27_data(64'B0),
    .trace27_counter_overflow(),
    .trace27_valid(1'B0),
    .trace28_counter(),
    .trace28_read(),
    .trace28_event(1'B0),
    .trace28_data(64'B0),
    .trace28_counter_overflow(),
    .trace28_valid(1'B0),
    .trace29_counter(),
    .trace29_read(),
    .trace29_event(1'B0),
    .trace29_data(64'B0),
    .trace29_counter_overflow(),
    .trace29_valid(1'B0),
    .trace30_counter(),
    .trace30_read(),
    .trace30_event(1'B0),
    .trace30_data(64'B0),
    .trace30_counter_overflow(),
    .trace30_valid(1'B0),
    .trace31_counter(),
    .trace31_read(),
    .trace31_event(1'B0),
    .trace31_data(64'B0),
    .trace31_counter_overflow(),
    .trace31_valid(1'B0),
    .trace32_counter(),
    .trace32_read(),
    .trace32_event(1'B0),
    .trace32_data(64'B0),
    .trace32_counter_overflow(),
    .trace32_valid(1'B0),
    .trace33_counter(),
    .trace33_read(),
    .trace33_event(1'B0),
    .trace33_data(64'B0),
    .trace33_counter_overflow(),
    .trace33_valid(1'B0),
    .trace34_counter(),
    .trace34_read(),
    .trace34_event(1'B0),
    .trace34_data(64'B0),
    .trace34_counter_overflow(),
    .trace34_valid(1'B0),
    .trace35_counter(),
    .trace35_read(),
    .trace35_event(1'B0),
    .trace35_data(64'B0),
    .trace35_counter_overflow(),
    .trace35_valid(1'B0),
    .trace36_counter(),
    .trace36_read(),
    .trace36_event(1'B0),
    .trace36_data(64'B0),
    .trace36_counter_overflow(),
    .trace36_valid(1'B0),
    .trace37_counter(),
    .trace37_read(),
    .trace37_event(1'B0),
    .trace37_data(64'B0),
    .trace37_counter_overflow(),
    .trace37_valid(1'B0),
    .trace38_counter(),
    .trace38_read(),
    .trace38_event(1'B0),
    .trace38_data(64'B0),
    .trace38_counter_overflow(),
    .trace38_valid(1'B0),
    .trace39_counter(),
    .trace39_read(),
    .trace39_event(1'B0),
    .trace39_data(64'B0),
    .trace39_counter_overflow(),
    .trace39_valid(1'B0),
    .trace40_counter(),
    .trace40_read(),
    .trace40_event(1'B0),
    .trace40_data(64'B0),
    .trace40_counter_overflow(),
    .trace40_valid(1'B0),
    .trace41_counter(),
    .trace41_read(),
    .trace41_event(1'B0),
    .trace41_data(64'B0),
    .trace41_counter_overflow(),
    .trace41_valid(1'B0),
    .trace42_counter(),
    .trace42_read(),
    .trace42_event(1'B0),
    .trace42_data(64'B0),
    .trace42_counter_overflow(),
    .trace42_valid(1'B0),
    .trace43_counter(),
    .trace43_read(),
    .trace43_event(1'B0),
    .trace43_data(64'B0),
    .trace43_counter_overflow(),
    .trace43_valid(1'B0),
    .trace44_counter(),
    .trace44_read(),
    .trace44_event(1'B0),
    .trace44_data(64'B0),
    .trace44_counter_overflow(),
    .trace44_valid(1'B0),
    .trace45_counter(),
    .trace45_read(),
    .trace45_event(1'B0),
    .trace45_data(64'B0),
    .trace45_counter_overflow(),
    .trace45_valid(1'B0),
    .trace46_counter(),
    .trace46_read(),
    .trace46_event(1'B0),
    .trace46_data(64'B0),
    .trace46_counter_overflow(),
    .trace46_valid(1'B0),
    .trace47_counter(),
    .trace47_read(),
    .trace47_event(1'B0),
    .trace47_data(64'B0),
    .trace47_counter_overflow(),
    .trace47_valid(1'B0),
    .trace48_counter(),
    .trace48_read(),
    .trace48_event(1'B0),
    .trace48_data(64'B0),
    .trace48_counter_overflow(),
    .trace48_valid(1'B0),
    .trace49_counter(),
    .trace49_read(),
    .trace49_event(1'B0),
    .trace49_data(64'B0),
    .trace49_counter_overflow(),
    .trace49_valid(1'B0),
    .trace50_counter(),
    .trace50_read(),
    .trace50_event(1'B0),
    .trace50_data(64'B0),
    .trace50_counter_overflow(),
    .trace50_valid(1'B0),
    .trace51_counter(),
    .trace51_read(),
    .trace51_event(1'B0),
    .trace51_data(64'B0),
    .trace51_counter_overflow(),
    .trace51_valid(1'B0),
    .trace52_counter(),
    .trace52_read(),
    .trace52_event(1'B0),
    .trace52_data(64'B0),
    .trace52_counter_overflow(),
    .trace52_valid(1'B0),
    .trace53_counter(),
    .trace53_read(),
    .trace53_event(1'B0),
    .trace53_data(64'B0),
    .trace53_counter_overflow(),
    .trace53_valid(1'B0),
    .trace54_counter(),
    .trace54_read(),
    .trace54_event(1'B0),
    .trace54_data(64'B0),
    .trace54_counter_overflow(),
    .trace54_valid(1'B0),
    .trace55_counter(),
    .trace55_read(),
    .trace55_event(1'B0),
    .trace55_data(64'B0),
    .trace55_counter_overflow(),
    .trace55_valid(1'B0),
    .trace56_counter(),
    .trace56_read(),
    .trace56_event(1'B0),
    .trace56_data(64'B0),
    .trace56_counter_overflow(),
    .trace56_valid(1'B0),
    .trace57_counter(),
    .trace57_read(),
    .trace57_event(1'B0),
    .trace57_data(64'B0),
    .trace57_counter_overflow(),
    .trace57_valid(1'B0),
    .trace58_counter(),
    .trace58_read(),
    .trace58_event(1'B0),
    .trace58_data(64'B0),
    .trace58_counter_overflow(),
    .trace58_valid(1'B0),
    .trace59_counter(),
    .trace59_read(),
    .trace59_event(1'B0),
    .trace59_data(64'B0),
    .trace59_counter_overflow(),
    .trace59_valid(1'B0),
    .trace60_counter(),
    .trace60_read(),
    .trace60_event(1'B0),
    .trace60_data(64'B0),
    .trace60_counter_overflow(),
    .trace60_valid(1'B0),
    .trace61_counter(),
    .trace61_read(),
    .trace61_event(1'B0),
    .trace61_data(64'B0),
    .trace61_counter_overflow(),
    .trace61_valid(1'B0),
    .trace62_counter(),
    .trace62_read(),
    .trace62_event(1'B0),
    .trace62_data(64'B0),
    .trace62_counter_overflow(),
    .trace62_valid(1'B0)
  );
endmodule
