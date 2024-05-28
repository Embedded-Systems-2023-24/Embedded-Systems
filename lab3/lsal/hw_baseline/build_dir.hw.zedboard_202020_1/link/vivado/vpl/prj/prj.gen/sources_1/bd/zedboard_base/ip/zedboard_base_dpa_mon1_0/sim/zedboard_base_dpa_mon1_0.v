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


// IP VLNV: xilinx.com:ip:axi_interface_monitor:1.1
// IP Revision: 0

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zedboard_base_dpa_mon1_0 (
  mon_clk,
  mon_resetn,
  trace_clk,
  trace_rst,
  rtrace_counter_overflow,
  rtrace_counter,
  rtrace_event,
  rtrace_data,
  rtrace_valid,
  rtrace_read,
  wtrace_counter_overflow,
  wtrace_counter,
  wtrace_event,
  wtrace_data,
  wtrace_valid,
  wtrace_read,
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
  s_axi_awaddr_mon,
  s_axi_awprot_mon,
  s_axi_awvalid_mon,
  s_axi_awready_mon,
  s_axi_wdata_mon,
  s_axi_wstrb_mon,
  s_axi_wvalid_mon,
  s_axi_wready_mon,
  s_axi_bresp_mon,
  s_axi_bvalid_mon,
  s_axi_bready_mon,
  s_axi_araddr_mon,
  s_axi_arprot_mon,
  s_axi_arvalid_mon,
  s_axi_arready_mon,
  s_axi_rdata_mon,
  s_axi_rresp_mon,
  s_axi_rvalid_mon,
  s_axi_rready_mon,
  m_axi_AWVALID,
  m_axi_AWREADY,
  m_axi_AWADDR,
  m_axi_AWID,
  m_axi_AWLEN,
  m_axi_AWSIZE,
  m_axi_AWBURST,
  m_axi_AWLOCK,
  m_axi_AWCACHE,
  m_axi_AWPROT,
  m_axi_AWQOS,
  m_axi_AWREGION,
  m_axi_AWUSER,
  m_axi_WVALID,
  m_axi_WREADY,
  m_axi_WDATA,
  m_axi_WSTRB,
  m_axi_WLAST,
  m_axi_WID,
  m_axi_WUSER,
  m_axi_ARVALID,
  m_axi_ARREADY,
  m_axi_ARADDR,
  m_axi_ARID,
  m_axi_ARLEN,
  m_axi_ARSIZE,
  m_axi_ARBURST,
  m_axi_ARLOCK,
  m_axi_ARCACHE,
  m_axi_ARPROT,
  m_axi_ARQOS,
  m_axi_ARREGION,
  m_axi_ARUSER,
  m_axi_RVALID,
  m_axi_RREADY,
  m_axi_RDATA,
  m_axi_RLAST,
  m_axi_RID,
  m_axi_RUSER,
  m_axi_RRESP,
  m_axi_BVALID,
  m_axi_BREADY,
  m_axi_BRESP,
  m_axi_BID,
  m_axi_BUSER
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_clk, ASSOCIATED_RESET mon_resetn, ASSOCIATED_BUSIF MON_AP_CTRL:MON_S_AXI:MON_M_AXI:S_AXI, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_clk CLK" *)
input wire mon_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mon_resetn RST" *)
input wire mon_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_clk, ASSOCIATED_RESET trace_rst, ASSOCIATED_BUSIF TRACE_OUT_0:TRACE_OUT_1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 trace_clk CLK" *)
input wire trace_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_rst RST" *)
input wire trace_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 counter_overflow" *)
input wire rtrace_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 counter" *)
input wire [44 : 0] rtrace_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 event" *)
output wire rtrace_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 data" *)
output wire [63 : 0] rtrace_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 valid" *)
output wire rtrace_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_0 read" *)
input wire rtrace_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 counter_overflow" *)
input wire wtrace_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 counter" *)
input wire [44 : 0] wtrace_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 event" *)
output wire wtrace_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 data" *)
output wire [63 : 0] wtrace_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 valid" *)
output wire wtrace_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT_1 read" *)
input wire wtrace_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [7 : 0] s_axi_awaddr;
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
input wire [7 : 0] s_axi_araddr;
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1,\
 RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI AWADDR" *)
input wire [7 : 0] s_axi_awaddr_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI AWPROT" *)
input wire [2 : 0] s_axi_awprot_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI AWVALID" *)
input wire s_axi_awvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI AWREADY" *)
input wire s_axi_awready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI WDATA" *)
input wire [31 : 0] s_axi_wdata_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI WSTRB" *)
input wire [3 : 0] s_axi_wstrb_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI WVALID" *)
input wire s_axi_wvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI WREADY" *)
input wire s_axi_wready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI BRESP" *)
input wire [1 : 0] s_axi_bresp_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI BVALID" *)
input wire s_axi_bvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI BREADY" *)
input wire s_axi_bready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI ARADDR" *)
input wire [7 : 0] s_axi_araddr_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI ARPROT" *)
input wire [2 : 0] s_axi_arprot_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI ARVALID" *)
input wire s_axi_arvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI ARREADY" *)
input wire s_axi_arready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI RDATA" *)
input wire [31 : 0] s_axi_rdata_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI RRESP" *)
input wire [1 : 0] s_axi_rresp_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI RVALID" *)
input wire s_axi_rvalid_mon;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MON_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_S_AXI RREADY" *)
input wire s_axi_rready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWVALID" *)
input wire m_axi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWREADY" *)
input wire m_axi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWADDR" *)
input wire [31 : 0] m_axi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWID" *)
input wire [0 : 0] m_axi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWLEN" *)
input wire [7 : 0] m_axi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWSIZE" *)
input wire [2 : 0] m_axi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWBURST" *)
input wire [1 : 0] m_axi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWLOCK" *)
input wire [1 : 0] m_axi_AWLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWCACHE" *)
input wire [3 : 0] m_axi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWPROT" *)
input wire [2 : 0] m_axi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWQOS" *)
input wire [3 : 0] m_axi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWREGION" *)
input wire [3 : 0] m_axi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI AWUSER" *)
input wire [0 : 0] m_axi_AWUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WVALID" *)
input wire m_axi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WREADY" *)
input wire m_axi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WDATA" *)
input wire [31 : 0] m_axi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WSTRB" *)
input wire [3 : 0] m_axi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WLAST" *)
input wire m_axi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WID" *)
input wire [0 : 0] m_axi_WID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI WUSER" *)
input wire [0 : 0] m_axi_WUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARVALID" *)
input wire m_axi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARREADY" *)
input wire m_axi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARADDR" *)
input wire [31 : 0] m_axi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARID" *)
input wire [0 : 0] m_axi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARLEN" *)
input wire [7 : 0] m_axi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARSIZE" *)
input wire [2 : 0] m_axi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARBURST" *)
input wire [1 : 0] m_axi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARLOCK" *)
input wire [1 : 0] m_axi_ARLOCK;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARCACHE" *)
input wire [3 : 0] m_axi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARPROT" *)
input wire [2 : 0] m_axi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARQOS" *)
input wire [3 : 0] m_axi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARREGION" *)
input wire [3 : 0] m_axi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI ARUSER" *)
input wire [0 : 0] m_axi_ARUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RVALID" *)
input wire m_axi_RVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RREADY" *)
input wire m_axi_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RDATA" *)
input wire [31 : 0] m_axi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RLAST" *)
input wire m_axi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RID" *)
input wire [0 : 0] m_axi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RUSER" *)
input wire [0 : 0] m_axi_RUSER;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI RRESP" *)
input wire m_axi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI BVALID" *)
input wire m_axi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI BREADY" *)
input wire m_axi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI BRESP" *)
input wire m_axi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI BID" *)
input wire [0 : 0] m_axi_BID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME MON_M_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 1, ARUSER_WIDTH 1, WUSER_WIDTH 1, RUSER_WIDTH 1, BUSER_WIDTH 1, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 16, NUM_WRITE_OUTSTANDING 16, MAX_BURST_LENGTH 256, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREA\
DS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 MON_M_AXI BUSER" *)
input wire [0 : 0] m_axi_BUSER;

  axi_interface_monitor #(
    .TRACE_READ_ID(0),
    .TRACE_WRITE_ID(1),
    .MODE_SDACCEL(1),
    .CAPTURE_BURSTS(0),
    .ENABLE_DEBUG(1),
    .NUM_REG_STAGES(1),
    .ENABLE_COUNTERS(1),
    .ENABLE_TRACE(1),
    .WRITE_START_SELECT("Address"),
    .WRITE_STOP_SELECT("Last Data"),
    .READ_START_SELECT("Address"),
    .READ_STOP_SELECT("Last Data"),
    .DATA_WIDTH(32),
    .ADDR_WIDTH(32),
    .COUNT_WIDTH(64),
    .USER_WIDTH(0),
    .ID_WIDTH(0),
    .ENABLE_ADDR_FILTER(0),
    .ADDR_MIN(64'B0000000000000000000000000000000000000000000000000000000000000000),
    .ADDR_MAX(64'B0000000000000000000000000000000000000000000000000000000000000000),
    .EXT_MON_RST(1),
    .EXT_TRACE_RST(1)
  ) inst (
    .mon_clk(mon_clk),
    .mon_resetn(mon_resetn),
    .trace_clk(trace_clk),
    .trace_rst(trace_rst),
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
    .s_axi_awaddr_mon(s_axi_awaddr_mon),
    .s_axi_awprot_mon(s_axi_awprot_mon),
    .s_axi_awvalid_mon(s_axi_awvalid_mon),
    .s_axi_awready_mon(s_axi_awready_mon),
    .s_axi_wdata_mon(s_axi_wdata_mon),
    .s_axi_wstrb_mon(s_axi_wstrb_mon),
    .s_axi_wvalid_mon(s_axi_wvalid_mon),
    .s_axi_wready_mon(s_axi_wready_mon),
    .s_axi_bresp_mon(s_axi_bresp_mon),
    .s_axi_bvalid_mon(s_axi_bvalid_mon),
    .s_axi_bready_mon(s_axi_bready_mon),
    .s_axi_araddr_mon(s_axi_araddr_mon),
    .s_axi_arprot_mon(s_axi_arprot_mon),
    .s_axi_arvalid_mon(s_axi_arvalid_mon),
    .s_axi_arready_mon(s_axi_arready_mon),
    .s_axi_rdata_mon(s_axi_rdata_mon),
    .s_axi_rresp_mon(s_axi_rresp_mon),
    .s_axi_rvalid_mon(s_axi_rvalid_mon),
    .s_axi_rready_mon(s_axi_rready_mon),
    .ap_continue(1'B0),
    .ap_ready(1'B0),
    .ap_start(1'B0),
    .ap_idle(1'B0),
    .ap_done(1'B0),
    .m_axi_AWVALID(m_axi_AWVALID),
    .m_axi_AWREADY(m_axi_AWREADY),
    .m_axi_AWADDR(m_axi_AWADDR),
    .m_axi_AWID(m_axi_AWID),
    .m_axi_AWLEN(m_axi_AWLEN),
    .m_axi_AWSIZE(m_axi_AWSIZE),
    .m_axi_AWBURST(m_axi_AWBURST),
    .m_axi_AWLOCK(m_axi_AWLOCK),
    .m_axi_AWCACHE(m_axi_AWCACHE),
    .m_axi_AWPROT(m_axi_AWPROT),
    .m_axi_AWQOS(m_axi_AWQOS),
    .m_axi_AWREGION(m_axi_AWREGION),
    .m_axi_AWUSER(m_axi_AWUSER),
    .m_axi_WVALID(m_axi_WVALID),
    .m_axi_WREADY(m_axi_WREADY),
    .m_axi_WDATA(m_axi_WDATA),
    .m_axi_WSTRB(m_axi_WSTRB),
    .m_axi_WLAST(m_axi_WLAST),
    .m_axi_WID(m_axi_WID),
    .m_axi_WUSER(m_axi_WUSER),
    .m_axi_ARVALID(m_axi_ARVALID),
    .m_axi_ARREADY(m_axi_ARREADY),
    .m_axi_ARADDR(m_axi_ARADDR),
    .m_axi_ARID(m_axi_ARID),
    .m_axi_ARLEN(m_axi_ARLEN),
    .m_axi_ARSIZE(m_axi_ARSIZE),
    .m_axi_ARBURST(m_axi_ARBURST),
    .m_axi_ARLOCK(m_axi_ARLOCK),
    .m_axi_ARCACHE(m_axi_ARCACHE),
    .m_axi_ARPROT(m_axi_ARPROT),
    .m_axi_ARQOS(m_axi_ARQOS),
    .m_axi_ARREGION(m_axi_ARREGION),
    .m_axi_ARUSER(m_axi_ARUSER),
    .m_axi_RVALID(m_axi_RVALID),
    .m_axi_RREADY(m_axi_RREADY),
    .m_axi_RDATA(m_axi_RDATA),
    .m_axi_RLAST(m_axi_RLAST),
    .m_axi_RID(m_axi_RID),
    .m_axi_RUSER(m_axi_RUSER),
    .m_axi_RRESP(m_axi_RRESP),
    .m_axi_BVALID(m_axi_BVALID),
    .m_axi_BREADY(m_axi_BREADY),
    .m_axi_BRESP(m_axi_BRESP),
    .m_axi_BID(m_axi_BID),
    .m_axi_BUSER(m_axi_BUSER)
  );
endmodule
