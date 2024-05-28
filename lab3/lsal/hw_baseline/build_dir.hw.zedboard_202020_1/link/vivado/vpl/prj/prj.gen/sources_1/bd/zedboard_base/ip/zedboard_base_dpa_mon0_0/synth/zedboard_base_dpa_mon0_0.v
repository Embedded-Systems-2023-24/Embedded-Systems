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


// IP VLNV: xilinx.com:ip:accelerator_monitor:1.1
// IP Revision: 0

(* X_CORE_INFO = "accelerator_monitor,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "zedboard_base_dpa_mon0_0,accelerator_monitor,{}" *)
(* CORE_GENERATION_INFO = "zedboard_base_dpa_mon0_0,accelerator_monitor,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=ip,x_ipName=accelerator_monitor,x_ipVersion=1.1,x_ipCoreRevision=0,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,STALL_MON=0,TRACE_ID=64,MONITOR_MODE=1,COUNT_WIDTH=64,EN_AXI_LITE=1,ENABLE_TRACE=1,EXT_MON_RST=1,EXT_TRACE_RST=1}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zedboard_base_dpa_mon0_0 (
  mon_clk,
  mon_resetn,
  trace_clk,
  trace_rst,
  trace_counter_overflow,
  trace_counter,
  trace_event,
  trace_data,
  trace_valid,
  trace_read,
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
  s_axi_rready_mon
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_clk, ASSOCIATED_RESET mon_resetn, ASSOCIATED_BUSIF S_AXI:MON_AP_CTRL:S_AXI_MON, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 mon_clk CLK" *)
input wire mon_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME mon_resetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 mon_resetn RST" *)
input wire mon_resetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_clk, ASSOCIATED_RESET trace_rst, ASSOCIATED_BUSIF TRACE_OUT, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 trace_clk CLK" *)
input wire trace_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME trace_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 trace_rst RST" *)
input wire trace_rst;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT counter_overflow" *)
input wire trace_counter_overflow;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT counter" *)
input wire [44 : 0] trace_counter;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT event" *)
output wire trace_event;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT data" *)
output wire [63 : 0] trace_data;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT valid" *)
output wire trace_valid;
(* X_INTERFACE_INFO = "xilinx.com:interface:sdsoc_trace:2.0 TRACE_OUT read" *)
input wire trace_read;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *)
input wire [31 : 0] s_axi_awaddr;
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
input wire [31 : 0] s_axi_araddr;
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
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *)
input wire s_axi_rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON AWADDR" *)
input wire [7 : 0] s_axi_awaddr_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON AWPROT" *)
input wire [2 : 0] s_axi_awprot_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON AWVALID" *)
input wire s_axi_awvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON AWREADY" *)
input wire s_axi_awready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON WDATA" *)
input wire [31 : 0] s_axi_wdata_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON WSTRB" *)
input wire [3 : 0] s_axi_wstrb_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON WVALID" *)
input wire s_axi_wvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON WREADY" *)
input wire s_axi_wready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON BRESP" *)
input wire [1 : 0] s_axi_bresp_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON BVALID" *)
input wire s_axi_bvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON BREADY" *)
input wire s_axi_bready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON ARADDR" *)
input wire [7 : 0] s_axi_araddr_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON ARPROT" *)
input wire [2 : 0] s_axi_arprot_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON ARVALID" *)
input wire s_axi_arvalid_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON ARREADY" *)
input wire s_axi_arready_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON RDATA" *)
input wire [31 : 0] s_axi_rdata_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON RRESP" *)
input wire [1 : 0] s_axi_rresp_mon;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON RVALID" *)
input wire s_axi_rvalid_mon;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_MON, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 8, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREAD\
S 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI_MON RREADY" *)
input wire s_axi_rready_mon;

  accelerator_monitor #(
    .STALL_MON(0),
    .TRACE_ID(64),
    .MONITOR_MODE(1),
    .COUNT_WIDTH(64),
    .EN_AXI_LITE(1),
    .ENABLE_TRACE(1),
    .EXT_MON_RST(1),
    .EXT_TRACE_RST(1)
  ) inst (
    .mon_clk(mon_clk),
    .mon_resetn(mon_resetn),
    .trace_clk(trace_clk),
    .trace_rst(trace_rst),
    .trace_counter_overflow(trace_counter_overflow),
    .trace_counter(trace_counter),
    .trace_event(trace_event),
    .trace_data(trace_data),
    .trace_valid(trace_valid),
    .trace_read(trace_read),
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
    .ap_continue(1'B1),
    .ap_ready(1'B1),
    .ap_start(1'B0),
    .ap_idle(1'B0),
    .ap_done(1'B0),
    .event_start(1'B0),
    .event_done(1'B0),
    .stall_start_ext(1'B0),
    .stall_done_ext(1'B0),
    .stall_start_str(1'B0),
    .stall_done_str(1'B0),
    .stall_start_int(1'B0),
    .stall_done_int(1'B0)
  );
endmodule
