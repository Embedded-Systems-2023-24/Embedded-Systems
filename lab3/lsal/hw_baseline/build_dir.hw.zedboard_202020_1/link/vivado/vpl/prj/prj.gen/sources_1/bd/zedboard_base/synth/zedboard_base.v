//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue May 28 10:03:12 2024
//Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
//Command     : generate_target zedboard_base.bd
//Design      : zedboard_base
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module System_DPA_imp_6IUFM5
   (MON_M_AXI_araddr,
    MON_M_AXI_arburst,
    MON_M_AXI_arcache,
    MON_M_AXI_arlen,
    MON_M_AXI_arlock,
    MON_M_AXI_arprot,
    MON_M_AXI_arqos,
    MON_M_AXI_arready,
    MON_M_AXI_arregion,
    MON_M_AXI_arsize,
    MON_M_AXI_arvalid,
    MON_M_AXI_awaddr,
    MON_M_AXI_awburst,
    MON_M_AXI_awcache,
    MON_M_AXI_awlen,
    MON_M_AXI_awlock,
    MON_M_AXI_awprot,
    MON_M_AXI_awqos,
    MON_M_AXI_awready,
    MON_M_AXI_awregion,
    MON_M_AXI_awsize,
    MON_M_AXI_awvalid,
    MON_M_AXI_bready,
    MON_M_AXI_bresp,
    MON_M_AXI_bvalid,
    MON_M_AXI_rdata,
    MON_M_AXI_rlast,
    MON_M_AXI_rready,
    MON_M_AXI_rresp,
    MON_M_AXI_rvalid,
    MON_M_AXI_wdata,
    MON_M_AXI_wlast,
    MON_M_AXI_wready,
    MON_M_AXI_wstrb,
    MON_M_AXI_wvalid,
    MON_S_AXI_araddr,
    MON_S_AXI_arprot,
    MON_S_AXI_arready,
    MON_S_AXI_arvalid,
    MON_S_AXI_awaddr,
    MON_S_AXI_awprot,
    MON_S_AXI_awready,
    MON_S_AXI_awvalid,
    MON_S_AXI_bready,
    MON_S_AXI_bresp,
    MON_S_AXI_bvalid,
    MON_S_AXI_rdata,
    MON_S_AXI_rready,
    MON_S_AXI_rresp,
    MON_S_AXI_rvalid,
    MON_S_AXI_wdata,
    MON_S_AXI_wready,
    MON_S_AXI_wstrb,
    MON_S_AXI_wvalid,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    trace_clk,
    trace_rst);
  input [31:0]MON_M_AXI_araddr;
  input [1:0]MON_M_AXI_arburst;
  input [3:0]MON_M_AXI_arcache;
  input [7:0]MON_M_AXI_arlen;
  input [1:0]MON_M_AXI_arlock;
  input [2:0]MON_M_AXI_arprot;
  input [3:0]MON_M_AXI_arqos;
  input MON_M_AXI_arready;
  input [3:0]MON_M_AXI_arregion;
  input [2:0]MON_M_AXI_arsize;
  input MON_M_AXI_arvalid;
  input [31:0]MON_M_AXI_awaddr;
  input [1:0]MON_M_AXI_awburst;
  input [3:0]MON_M_AXI_awcache;
  input [7:0]MON_M_AXI_awlen;
  input [1:0]MON_M_AXI_awlock;
  input [2:0]MON_M_AXI_awprot;
  input [3:0]MON_M_AXI_awqos;
  input MON_M_AXI_awready;
  input [3:0]MON_M_AXI_awregion;
  input [2:0]MON_M_AXI_awsize;
  input MON_M_AXI_awvalid;
  input MON_M_AXI_bready;
  input [1:0]MON_M_AXI_bresp;
  input MON_M_AXI_bvalid;
  input [31:0]MON_M_AXI_rdata;
  input MON_M_AXI_rlast;
  input MON_M_AXI_rready;
  input [1:0]MON_M_AXI_rresp;
  input MON_M_AXI_rvalid;
  input [31:0]MON_M_AXI_wdata;
  input MON_M_AXI_wlast;
  input MON_M_AXI_wready;
  input [3:0]MON_M_AXI_wstrb;
  input MON_M_AXI_wvalid;
  input [6:0]MON_S_AXI_araddr;
  input [2:0]MON_S_AXI_arprot;
  input MON_S_AXI_arready;
  input MON_S_AXI_arvalid;
  input [6:0]MON_S_AXI_awaddr;
  input [2:0]MON_S_AXI_awprot;
  input MON_S_AXI_awready;
  input MON_S_AXI_awvalid;
  input MON_S_AXI_bready;
  input [1:0]MON_S_AXI_bresp;
  input MON_S_AXI_bvalid;
  input [31:0]MON_S_AXI_rdata;
  input MON_S_AXI_rready;
  input [1:0]MON_S_AXI_rresp;
  input MON_S_AXI_rvalid;
  input [31:0]MON_S_AXI_wdata;
  input MON_S_AXI_wready;
  input [3:0]MON_S_AXI_wstrb;
  input MON_S_AXI_wvalid;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input trace_clk;
  input trace_rst;

  wire ACLK_1;
  wire [31:0]compute_matrices_1_m_axi_gmem_ARADDR;
  wire [1:0]compute_matrices_1_m_axi_gmem_ARBURST;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARCACHE;
  wire [7:0]compute_matrices_1_m_axi_gmem_ARLEN;
  wire [1:0]compute_matrices_1_m_axi_gmem_ARLOCK;
  wire [2:0]compute_matrices_1_m_axi_gmem_ARPROT;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARQOS;
  wire compute_matrices_1_m_axi_gmem_ARREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARREGION;
  wire [2:0]compute_matrices_1_m_axi_gmem_ARSIZE;
  wire compute_matrices_1_m_axi_gmem_ARVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_AWADDR;
  wire [1:0]compute_matrices_1_m_axi_gmem_AWBURST;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWCACHE;
  wire [7:0]compute_matrices_1_m_axi_gmem_AWLEN;
  wire [1:0]compute_matrices_1_m_axi_gmem_AWLOCK;
  wire [2:0]compute_matrices_1_m_axi_gmem_AWPROT;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWQOS;
  wire compute_matrices_1_m_axi_gmem_AWREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWREGION;
  wire [2:0]compute_matrices_1_m_axi_gmem_AWSIZE;
  wire compute_matrices_1_m_axi_gmem_AWVALID;
  wire compute_matrices_1_m_axi_gmem_BREADY;
  wire [1:0]compute_matrices_1_m_axi_gmem_BRESP;
  wire compute_matrices_1_m_axi_gmem_BVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_RDATA;
  wire compute_matrices_1_m_axi_gmem_RLAST;
  wire compute_matrices_1_m_axi_gmem_RREADY;
  wire [1:0]compute_matrices_1_m_axi_gmem_RRESP;
  wire compute_matrices_1_m_axi_gmem_RVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_WDATA;
  wire compute_matrices_1_m_axi_gmem_WLAST;
  wire compute_matrices_1_m_axi_gmem_WREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_WSTRB;
  wire compute_matrices_1_m_axi_gmem_WVALID;
  wire [31:0]dpa_cdc_M_AXIS_TDATA;
  wire dpa_cdc_M_AXIS_TREADY;
  wire dpa_cdc_M_AXIS_TVALID;
  wire [31:0]dpa_converter_M_AXIS_TDATA;
  wire dpa_converter_M_AXIS_TREADY;
  wire dpa_converter_M_AXIS_TVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_ARADDR;
  wire dpa_ctrl_interconnect_M00_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M00_AXI_ARVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_AWADDR;
  wire dpa_ctrl_interconnect_M00_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M00_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M00_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M00_AXI_BRESP;
  wire dpa_ctrl_interconnect_M00_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_RDATA;
  wire dpa_ctrl_interconnect_M00_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M00_AXI_RRESP;
  wire dpa_ctrl_interconnect_M00_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M00_AXI_WDATA;
  wire dpa_ctrl_interconnect_M00_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M00_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M00_AXI_WVALID;
  wire [3:0]dpa_ctrl_interconnect_M01_AXI_ARADDR;
  wire [2:0]dpa_ctrl_interconnect_M01_AXI_ARPROT;
  wire dpa_ctrl_interconnect_M01_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M01_AXI_ARVALID;
  wire [3:0]dpa_ctrl_interconnect_M01_AXI_AWADDR;
  wire [2:0]dpa_ctrl_interconnect_M01_AXI_AWPROT;
  wire dpa_ctrl_interconnect_M01_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M01_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M01_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M01_AXI_BRESP;
  wire dpa_ctrl_interconnect_M01_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M01_AXI_RDATA;
  wire dpa_ctrl_interconnect_M01_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M01_AXI_RRESP;
  wire dpa_ctrl_interconnect_M01_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M01_AXI_WDATA;
  wire dpa_ctrl_interconnect_M01_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M01_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M01_AXI_WVALID;
  wire [31:0]dpa_ctrl_interconnect_M02_AXI_ARADDR;
  wire [2:0]dpa_ctrl_interconnect_M02_AXI_ARPROT;
  wire dpa_ctrl_interconnect_M02_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M02_AXI_ARVALID;
  wire [31:0]dpa_ctrl_interconnect_M02_AXI_AWADDR;
  wire [2:0]dpa_ctrl_interconnect_M02_AXI_AWPROT;
  wire dpa_ctrl_interconnect_M02_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M02_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M02_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M02_AXI_BRESP;
  wire dpa_ctrl_interconnect_M02_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M02_AXI_RDATA;
  wire dpa_ctrl_interconnect_M02_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M02_AXI_RRESP;
  wire dpa_ctrl_interconnect_M02_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M02_AXI_WDATA;
  wire dpa_ctrl_interconnect_M02_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M02_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M02_AXI_WVALID;
  wire [7:0]dpa_ctrl_interconnect_M03_AXI_ARADDR;
  wire [2:0]dpa_ctrl_interconnect_M03_AXI_ARPROT;
  wire dpa_ctrl_interconnect_M03_AXI_ARREADY;
  wire dpa_ctrl_interconnect_M03_AXI_ARVALID;
  wire [7:0]dpa_ctrl_interconnect_M03_AXI_AWADDR;
  wire [2:0]dpa_ctrl_interconnect_M03_AXI_AWPROT;
  wire dpa_ctrl_interconnect_M03_AXI_AWREADY;
  wire dpa_ctrl_interconnect_M03_AXI_AWVALID;
  wire dpa_ctrl_interconnect_M03_AXI_BREADY;
  wire [1:0]dpa_ctrl_interconnect_M03_AXI_BRESP;
  wire dpa_ctrl_interconnect_M03_AXI_BVALID;
  wire [31:0]dpa_ctrl_interconnect_M03_AXI_RDATA;
  wire dpa_ctrl_interconnect_M03_AXI_RREADY;
  wire [1:0]dpa_ctrl_interconnect_M03_AXI_RRESP;
  wire dpa_ctrl_interconnect_M03_AXI_RVALID;
  wire [31:0]dpa_ctrl_interconnect_M03_AXI_WDATA;
  wire dpa_ctrl_interconnect_M03_AXI_WREADY;
  wire [3:0]dpa_ctrl_interconnect_M03_AXI_WSTRB;
  wire dpa_ctrl_interconnect_M03_AXI_WVALID;
  wire [63:0]dpa_hub_M_AXIS_TDATA;
  wire dpa_hub_M_AXIS_TREADY;
  wire dpa_hub_M_AXIS_TVALID;
  wire [44:0]dpa_mon0_TRACE_OUT_counter;
  wire dpa_mon0_TRACE_OUT_counter_overflow;
  wire [63:0]dpa_mon0_TRACE_OUT_data;
  wire dpa_mon0_TRACE_OUT_event;
  wire dpa_mon0_TRACE_OUT_read;
  wire dpa_mon0_TRACE_OUT_valid;
  wire [44:0]dpa_mon1_TRACE_OUT_0_counter;
  wire dpa_mon1_TRACE_OUT_0_counter_overflow;
  wire [63:0]dpa_mon1_TRACE_OUT_0_data;
  wire dpa_mon1_TRACE_OUT_0_event;
  wire dpa_mon1_TRACE_OUT_0_read;
  wire dpa_mon1_TRACE_OUT_0_valid;
  wire [44:0]dpa_mon1_TRACE_OUT_1_counter;
  wire dpa_mon1_TRACE_OUT_1_counter_overflow;
  wire [63:0]dpa_mon1_TRACE_OUT_1_data;
  wire dpa_mon1_TRACE_OUT_1_event;
  wire dpa_mon1_TRACE_OUT_1_read;
  wire dpa_mon1_TRACE_OUT_1_valid;
  wire [31:0]dpa_reg_slice2_M_AXI_ARADDR;
  wire [1:0]dpa_reg_slice2_M_AXI_ARBURST;
  wire [3:0]dpa_reg_slice2_M_AXI_ARCACHE;
  wire [11:0]dpa_reg_slice2_M_AXI_ARID;
  wire [7:0]dpa_reg_slice2_M_AXI_ARLEN;
  wire [0:0]dpa_reg_slice2_M_AXI_ARLOCK;
  wire [2:0]dpa_reg_slice2_M_AXI_ARPROT;
  wire dpa_reg_slice2_M_AXI_ARREADY;
  wire [2:0]dpa_reg_slice2_M_AXI_ARSIZE;
  wire dpa_reg_slice2_M_AXI_ARVALID;
  wire [31:0]dpa_reg_slice2_M_AXI_RDATA;
  wire [11:0]dpa_reg_slice2_M_AXI_RID;
  wire dpa_reg_slice2_M_AXI_RLAST;
  wire dpa_reg_slice2_M_AXI_RREADY;
  wire [1:0]dpa_reg_slice2_M_AXI_RRESP;
  wire dpa_reg_slice2_M_AXI_RVALID;
  wire [31:0]dpa_reg_slice_M_AXI_ARADDR;
  wire [1:0]dpa_reg_slice_M_AXI_ARBURST;
  wire [3:0]dpa_reg_slice_M_AXI_ARCACHE;
  wire [11:0]dpa_reg_slice_M_AXI_ARID;
  wire [7:0]dpa_reg_slice_M_AXI_ARLEN;
  wire [0:0]dpa_reg_slice_M_AXI_ARLOCK;
  wire [2:0]dpa_reg_slice_M_AXI_ARPROT;
  wire [3:0]dpa_reg_slice_M_AXI_ARQOS;
  wire dpa_reg_slice_M_AXI_ARREADY;
  wire [3:0]dpa_reg_slice_M_AXI_ARREGION;
  wire [2:0]dpa_reg_slice_M_AXI_ARSIZE;
  wire dpa_reg_slice_M_AXI_ARVALID;
  wire [31:0]dpa_reg_slice_M_AXI_RDATA;
  wire [11:0]dpa_reg_slice_M_AXI_RID;
  wire dpa_reg_slice_M_AXI_RLAST;
  wire dpa_reg_slice_M_AXI_RREADY;
  wire [1:0]dpa_reg_slice_M_AXI_RRESP;
  wire dpa_reg_slice_M_AXI_RVALID;
  wire [6:0]interconnect_axilite_M01_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M01_AXI_ARPROT;
  wire interconnect_axilite_M01_AXI_ARREADY;
  wire interconnect_axilite_M01_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M01_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M01_AXI_AWPROT;
  wire interconnect_axilite_M01_AXI_AWREADY;
  wire interconnect_axilite_M01_AXI_AWVALID;
  wire interconnect_axilite_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_BRESP;
  wire interconnect_axilite_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_RDATA;
  wire interconnect_axilite_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_RRESP;
  wire interconnect_axilite_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_WDATA;
  wire interconnect_axilite_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_WSTRB;
  wire interconnect_axilite_M01_AXI_WVALID;
  wire [31:0]interconnect_axilite_M02_AXI_ARADDR;
  wire [1:0]interconnect_axilite_M02_AXI_ARBURST;
  wire [3:0]interconnect_axilite_M02_AXI_ARCACHE;
  wire [11:0]interconnect_axilite_M02_AXI_ARID;
  wire [7:0]interconnect_axilite_M02_AXI_ARLEN;
  wire [0:0]interconnect_axilite_M02_AXI_ARLOCK;
  wire [2:0]interconnect_axilite_M02_AXI_ARPROT;
  wire [3:0]interconnect_axilite_M02_AXI_ARQOS;
  wire interconnect_axilite_M02_AXI_ARREADY;
  wire [3:0]interconnect_axilite_M02_AXI_ARREGION;
  wire [2:0]interconnect_axilite_M02_AXI_ARSIZE;
  wire interconnect_axilite_M02_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M02_AXI_AWADDR;
  wire [1:0]interconnect_axilite_M02_AXI_AWBURST;
  wire [3:0]interconnect_axilite_M02_AXI_AWCACHE;
  wire [11:0]interconnect_axilite_M02_AXI_AWID;
  wire [7:0]interconnect_axilite_M02_AXI_AWLEN;
  wire [0:0]interconnect_axilite_M02_AXI_AWLOCK;
  wire [2:0]interconnect_axilite_M02_AXI_AWPROT;
  wire [3:0]interconnect_axilite_M02_AXI_AWQOS;
  wire interconnect_axilite_M02_AXI_AWREADY;
  wire [3:0]interconnect_axilite_M02_AXI_AWREGION;
  wire [2:0]interconnect_axilite_M02_AXI_AWSIZE;
  wire interconnect_axilite_M02_AXI_AWVALID;
  wire [11:0]interconnect_axilite_M02_AXI_BID;
  wire interconnect_axilite_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_BRESP;
  wire interconnect_axilite_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_RDATA;
  wire [11:0]interconnect_axilite_M02_AXI_RID;
  wire interconnect_axilite_M02_AXI_RLAST;
  wire interconnect_axilite_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_RRESP;
  wire interconnect_axilite_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_WDATA;
  wire interconnect_axilite_M02_AXI_WLAST;
  wire interconnect_axilite_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_WSTRB;
  wire interconnect_axilite_M02_AXI_WVALID;
  wire [31:0]interconnect_axilite_M03_AXI_ARADDR;
  wire [1:0]interconnect_axilite_M03_AXI_ARBURST;
  wire [3:0]interconnect_axilite_M03_AXI_ARCACHE;
  wire [11:0]interconnect_axilite_M03_AXI_ARID;
  wire [7:0]interconnect_axilite_M03_AXI_ARLEN;
  wire [0:0]interconnect_axilite_M03_AXI_ARLOCK;
  wire [2:0]interconnect_axilite_M03_AXI_ARPROT;
  wire [3:0]interconnect_axilite_M03_AXI_ARQOS;
  wire interconnect_axilite_M03_AXI_ARREADY;
  wire [3:0]interconnect_axilite_M03_AXI_ARREGION;
  wire [2:0]interconnect_axilite_M03_AXI_ARSIZE;
  wire interconnect_axilite_M03_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M03_AXI_RDATA;
  wire [11:0]interconnect_axilite_M03_AXI_RID;
  wire interconnect_axilite_M03_AXI_RLAST;
  wire interconnect_axilite_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_M03_AXI_RRESP;
  wire interconnect_axilite_M03_AXI_RVALID;
  wire proc_sys_reset_0_peripheral_aresetn;

  assign ACLK_1 = trace_clk;
  assign S00_AXI_arready = interconnect_axilite_M02_AXI_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_M02_AXI_AWREADY;
  assign S00_AXI_bid[11:0] = interconnect_axilite_M02_AXI_BID;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_M02_AXI_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_M02_AXI_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_M02_AXI_RDATA;
  assign S00_AXI_rid[11:0] = interconnect_axilite_M02_AXI_RID;
  assign S00_AXI_rlast = interconnect_axilite_M02_AXI_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_M02_AXI_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_M02_AXI_RVALID;
  assign S00_AXI_wready = interconnect_axilite_M02_AXI_WREADY;
  assign S_AXI_arready = interconnect_axilite_M03_AXI_ARREADY;
  assign S_AXI_rdata[31:0] = interconnect_axilite_M03_AXI_RDATA;
  assign S_AXI_rid[11:0] = interconnect_axilite_M03_AXI_RID;
  assign S_AXI_rlast = interconnect_axilite_M03_AXI_RLAST;
  assign S_AXI_rresp[1:0] = interconnect_axilite_M03_AXI_RRESP;
  assign S_AXI_rvalid = interconnect_axilite_M03_AXI_RVALID;
  assign compute_matrices_1_m_axi_gmem_ARADDR = MON_M_AXI_araddr[31:0];
  assign compute_matrices_1_m_axi_gmem_ARBURST = MON_M_AXI_arburst[1:0];
  assign compute_matrices_1_m_axi_gmem_ARCACHE = MON_M_AXI_arcache[3:0];
  assign compute_matrices_1_m_axi_gmem_ARLEN = MON_M_AXI_arlen[7:0];
  assign compute_matrices_1_m_axi_gmem_ARLOCK = MON_M_AXI_arlock[1:0];
  assign compute_matrices_1_m_axi_gmem_ARPROT = MON_M_AXI_arprot[2:0];
  assign compute_matrices_1_m_axi_gmem_ARQOS = MON_M_AXI_arqos[3:0];
  assign compute_matrices_1_m_axi_gmem_ARREADY = MON_M_AXI_arready;
  assign compute_matrices_1_m_axi_gmem_ARREGION = MON_M_AXI_arregion[3:0];
  assign compute_matrices_1_m_axi_gmem_ARSIZE = MON_M_AXI_arsize[2:0];
  assign compute_matrices_1_m_axi_gmem_ARVALID = MON_M_AXI_arvalid;
  assign compute_matrices_1_m_axi_gmem_AWADDR = MON_M_AXI_awaddr[31:0];
  assign compute_matrices_1_m_axi_gmem_AWBURST = MON_M_AXI_awburst[1:0];
  assign compute_matrices_1_m_axi_gmem_AWCACHE = MON_M_AXI_awcache[3:0];
  assign compute_matrices_1_m_axi_gmem_AWLEN = MON_M_AXI_awlen[7:0];
  assign compute_matrices_1_m_axi_gmem_AWLOCK = MON_M_AXI_awlock[1:0];
  assign compute_matrices_1_m_axi_gmem_AWPROT = MON_M_AXI_awprot[2:0];
  assign compute_matrices_1_m_axi_gmem_AWQOS = MON_M_AXI_awqos[3:0];
  assign compute_matrices_1_m_axi_gmem_AWREADY = MON_M_AXI_awready;
  assign compute_matrices_1_m_axi_gmem_AWREGION = MON_M_AXI_awregion[3:0];
  assign compute_matrices_1_m_axi_gmem_AWSIZE = MON_M_AXI_awsize[2:0];
  assign compute_matrices_1_m_axi_gmem_AWVALID = MON_M_AXI_awvalid;
  assign compute_matrices_1_m_axi_gmem_BREADY = MON_M_AXI_bready;
  assign compute_matrices_1_m_axi_gmem_BRESP = MON_M_AXI_bresp[1:0];
  assign compute_matrices_1_m_axi_gmem_BVALID = MON_M_AXI_bvalid;
  assign compute_matrices_1_m_axi_gmem_RDATA = MON_M_AXI_rdata[31:0];
  assign compute_matrices_1_m_axi_gmem_RLAST = MON_M_AXI_rlast;
  assign compute_matrices_1_m_axi_gmem_RREADY = MON_M_AXI_rready;
  assign compute_matrices_1_m_axi_gmem_RRESP = MON_M_AXI_rresp[1:0];
  assign compute_matrices_1_m_axi_gmem_RVALID = MON_M_AXI_rvalid;
  assign compute_matrices_1_m_axi_gmem_WDATA = MON_M_AXI_wdata[31:0];
  assign compute_matrices_1_m_axi_gmem_WLAST = MON_M_AXI_wlast;
  assign compute_matrices_1_m_axi_gmem_WREADY = MON_M_AXI_wready;
  assign compute_matrices_1_m_axi_gmem_WSTRB = MON_M_AXI_wstrb[3:0];
  assign compute_matrices_1_m_axi_gmem_WVALID = MON_M_AXI_wvalid;
  assign interconnect_axilite_M01_AXI_ARADDR = MON_S_AXI_araddr[6:0];
  assign interconnect_axilite_M01_AXI_ARPROT = MON_S_AXI_arprot[2:0];
  assign interconnect_axilite_M01_AXI_ARREADY = MON_S_AXI_arready;
  assign interconnect_axilite_M01_AXI_ARVALID = MON_S_AXI_arvalid;
  assign interconnect_axilite_M01_AXI_AWADDR = MON_S_AXI_awaddr[6:0];
  assign interconnect_axilite_M01_AXI_AWPROT = MON_S_AXI_awprot[2:0];
  assign interconnect_axilite_M01_AXI_AWREADY = MON_S_AXI_awready;
  assign interconnect_axilite_M01_AXI_AWVALID = MON_S_AXI_awvalid;
  assign interconnect_axilite_M01_AXI_BREADY = MON_S_AXI_bready;
  assign interconnect_axilite_M01_AXI_BRESP = MON_S_AXI_bresp[1:0];
  assign interconnect_axilite_M01_AXI_BVALID = MON_S_AXI_bvalid;
  assign interconnect_axilite_M01_AXI_RDATA = MON_S_AXI_rdata[31:0];
  assign interconnect_axilite_M01_AXI_RREADY = MON_S_AXI_rready;
  assign interconnect_axilite_M01_AXI_RRESP = MON_S_AXI_rresp[1:0];
  assign interconnect_axilite_M01_AXI_RVALID = MON_S_AXI_rvalid;
  assign interconnect_axilite_M01_AXI_WDATA = MON_S_AXI_wdata[31:0];
  assign interconnect_axilite_M01_AXI_WREADY = MON_S_AXI_wready;
  assign interconnect_axilite_M01_AXI_WSTRB = MON_S_AXI_wstrb[3:0];
  assign interconnect_axilite_M01_AXI_WVALID = MON_S_AXI_wvalid;
  assign interconnect_axilite_M02_AXI_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_M02_AXI_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axilite_M02_AXI_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axilite_M02_AXI_ARID = S00_AXI_arid[11:0];
  assign interconnect_axilite_M02_AXI_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axilite_M02_AXI_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axilite_M02_AXI_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_M02_AXI_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axilite_M02_AXI_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axilite_M02_AXI_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axilite_M02_AXI_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_M02_AXI_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_M02_AXI_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axilite_M02_AXI_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axilite_M02_AXI_AWID = S00_AXI_awid[11:0];
  assign interconnect_axilite_M02_AXI_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axilite_M02_AXI_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axilite_M02_AXI_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_M02_AXI_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axilite_M02_AXI_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axilite_M02_AXI_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axilite_M02_AXI_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_M02_AXI_BREADY = S00_AXI_bready;
  assign interconnect_axilite_M02_AXI_RREADY = S00_AXI_rready;
  assign interconnect_axilite_M02_AXI_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_M02_AXI_WLAST = S00_AXI_wlast;
  assign interconnect_axilite_M02_AXI_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_M02_AXI_WVALID = S00_AXI_wvalid;
  assign interconnect_axilite_M03_AXI_ARADDR = S_AXI_araddr[31:0];
  assign interconnect_axilite_M03_AXI_ARBURST = S_AXI_arburst[1:0];
  assign interconnect_axilite_M03_AXI_ARCACHE = S_AXI_arcache[3:0];
  assign interconnect_axilite_M03_AXI_ARID = S_AXI_arid[11:0];
  assign interconnect_axilite_M03_AXI_ARLEN = S_AXI_arlen[7:0];
  assign interconnect_axilite_M03_AXI_ARLOCK = S_AXI_arlock[0];
  assign interconnect_axilite_M03_AXI_ARPROT = S_AXI_arprot[2:0];
  assign interconnect_axilite_M03_AXI_ARQOS = S_AXI_arqos[3:0];
  assign interconnect_axilite_M03_AXI_ARREGION = S_AXI_arregion[3:0];
  assign interconnect_axilite_M03_AXI_ARSIZE = S_AXI_arsize[2:0];
  assign interconnect_axilite_M03_AXI_ARVALID = S_AXI_arvalid;
  assign interconnect_axilite_M03_AXI_RREADY = S_AXI_rready;
  assign proc_sys_reset_0_peripheral_aresetn = trace_rst;
  zedboard_base_dpa_cdc_0 dpa_cdc
       (.m_axis_aclk(ACLK_1),
        .m_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_tdata(dpa_cdc_M_AXIS_TDATA),
        .m_axis_tready(dpa_cdc_M_AXIS_TREADY),
        .m_axis_tvalid(dpa_cdc_M_AXIS_TVALID),
        .s_axis_aclk(ACLK_1),
        .s_axis_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axis_tdata(dpa_converter_M_AXIS_TDATA),
        .s_axis_tready(dpa_converter_M_AXIS_TREADY),
        .s_axis_tvalid(dpa_converter_M_AXIS_TVALID));
  zedboard_base_dpa_converter_0 dpa_converter
       (.aclk(ACLK_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_tdata(dpa_converter_M_AXIS_TDATA),
        .m_axis_tready(dpa_converter_M_AXIS_TREADY),
        .m_axis_tvalid(dpa_converter_M_AXIS_TVALID),
        .s_axis_tdata(dpa_hub_M_AXIS_TDATA),
        .s_axis_tready(dpa_hub_M_AXIS_TREADY),
        .s_axis_tvalid(dpa_hub_M_AXIS_TVALID));
  zedboard_base_dpa_ctrl_interconnect_0 dpa_ctrl_interconnect
       (.ACLK(ACLK_1),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(dpa_ctrl_interconnect_M00_AXI_ARADDR),
        .M00_AXI_arready(dpa_ctrl_interconnect_M00_AXI_ARREADY),
        .M00_AXI_arvalid(dpa_ctrl_interconnect_M00_AXI_ARVALID),
        .M00_AXI_awaddr(dpa_ctrl_interconnect_M00_AXI_AWADDR),
        .M00_AXI_awready(dpa_ctrl_interconnect_M00_AXI_AWREADY),
        .M00_AXI_awvalid(dpa_ctrl_interconnect_M00_AXI_AWVALID),
        .M00_AXI_bready(dpa_ctrl_interconnect_M00_AXI_BREADY),
        .M00_AXI_bresp(dpa_ctrl_interconnect_M00_AXI_BRESP),
        .M00_AXI_bvalid(dpa_ctrl_interconnect_M00_AXI_BVALID),
        .M00_AXI_rdata(dpa_ctrl_interconnect_M00_AXI_RDATA),
        .M00_AXI_rready(dpa_ctrl_interconnect_M00_AXI_RREADY),
        .M00_AXI_rresp(dpa_ctrl_interconnect_M00_AXI_RRESP),
        .M00_AXI_rvalid(dpa_ctrl_interconnect_M00_AXI_RVALID),
        .M00_AXI_wdata(dpa_ctrl_interconnect_M00_AXI_WDATA),
        .M00_AXI_wready(dpa_ctrl_interconnect_M00_AXI_WREADY),
        .M00_AXI_wstrb(dpa_ctrl_interconnect_M00_AXI_WSTRB),
        .M00_AXI_wvalid(dpa_ctrl_interconnect_M00_AXI_WVALID),
        .M01_ACLK(ACLK_1),
        .M01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M01_AXI_araddr(dpa_ctrl_interconnect_M01_AXI_ARADDR),
        .M01_AXI_arprot(dpa_ctrl_interconnect_M01_AXI_ARPROT),
        .M01_AXI_arready(dpa_ctrl_interconnect_M01_AXI_ARREADY),
        .M01_AXI_arvalid(dpa_ctrl_interconnect_M01_AXI_ARVALID),
        .M01_AXI_awaddr(dpa_ctrl_interconnect_M01_AXI_AWADDR),
        .M01_AXI_awprot(dpa_ctrl_interconnect_M01_AXI_AWPROT),
        .M01_AXI_awready(dpa_ctrl_interconnect_M01_AXI_AWREADY),
        .M01_AXI_awvalid(dpa_ctrl_interconnect_M01_AXI_AWVALID),
        .M01_AXI_bready(dpa_ctrl_interconnect_M01_AXI_BREADY),
        .M01_AXI_bresp(dpa_ctrl_interconnect_M01_AXI_BRESP),
        .M01_AXI_bvalid(dpa_ctrl_interconnect_M01_AXI_BVALID),
        .M01_AXI_rdata(dpa_ctrl_interconnect_M01_AXI_RDATA),
        .M01_AXI_rready(dpa_ctrl_interconnect_M01_AXI_RREADY),
        .M01_AXI_rresp(dpa_ctrl_interconnect_M01_AXI_RRESP),
        .M01_AXI_rvalid(dpa_ctrl_interconnect_M01_AXI_RVALID),
        .M01_AXI_wdata(dpa_ctrl_interconnect_M01_AXI_WDATA),
        .M01_AXI_wready(dpa_ctrl_interconnect_M01_AXI_WREADY),
        .M01_AXI_wstrb(dpa_ctrl_interconnect_M01_AXI_WSTRB),
        .M01_AXI_wvalid(dpa_ctrl_interconnect_M01_AXI_WVALID),
        .M02_ACLK(ACLK_1),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(dpa_ctrl_interconnect_M02_AXI_ARADDR),
        .M02_AXI_arprot(dpa_ctrl_interconnect_M02_AXI_ARPROT),
        .M02_AXI_arready(dpa_ctrl_interconnect_M02_AXI_ARREADY),
        .M02_AXI_arvalid(dpa_ctrl_interconnect_M02_AXI_ARVALID),
        .M02_AXI_awaddr(dpa_ctrl_interconnect_M02_AXI_AWADDR),
        .M02_AXI_awprot(dpa_ctrl_interconnect_M02_AXI_AWPROT),
        .M02_AXI_awready(dpa_ctrl_interconnect_M02_AXI_AWREADY),
        .M02_AXI_awvalid(dpa_ctrl_interconnect_M02_AXI_AWVALID),
        .M02_AXI_bready(dpa_ctrl_interconnect_M02_AXI_BREADY),
        .M02_AXI_bresp(dpa_ctrl_interconnect_M02_AXI_BRESP),
        .M02_AXI_bvalid(dpa_ctrl_interconnect_M02_AXI_BVALID),
        .M02_AXI_rdata(dpa_ctrl_interconnect_M02_AXI_RDATA),
        .M02_AXI_rready(dpa_ctrl_interconnect_M02_AXI_RREADY),
        .M02_AXI_rresp(dpa_ctrl_interconnect_M02_AXI_RRESP),
        .M02_AXI_rvalid(dpa_ctrl_interconnect_M02_AXI_RVALID),
        .M02_AXI_wdata(dpa_ctrl_interconnect_M02_AXI_WDATA),
        .M02_AXI_wready(dpa_ctrl_interconnect_M02_AXI_WREADY),
        .M02_AXI_wstrb(dpa_ctrl_interconnect_M02_AXI_WSTRB),
        .M02_AXI_wvalid(dpa_ctrl_interconnect_M02_AXI_WVALID),
        .M03_ACLK(ACLK_1),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(dpa_ctrl_interconnect_M03_AXI_ARADDR),
        .M03_AXI_arprot(dpa_ctrl_interconnect_M03_AXI_ARPROT),
        .M03_AXI_arready(dpa_ctrl_interconnect_M03_AXI_ARREADY),
        .M03_AXI_arvalid(dpa_ctrl_interconnect_M03_AXI_ARVALID),
        .M03_AXI_awaddr(dpa_ctrl_interconnect_M03_AXI_AWADDR),
        .M03_AXI_awprot(dpa_ctrl_interconnect_M03_AXI_AWPROT),
        .M03_AXI_awready(dpa_ctrl_interconnect_M03_AXI_AWREADY),
        .M03_AXI_awvalid(dpa_ctrl_interconnect_M03_AXI_AWVALID),
        .M03_AXI_bready(dpa_ctrl_interconnect_M03_AXI_BREADY),
        .M03_AXI_bresp(dpa_ctrl_interconnect_M03_AXI_BRESP),
        .M03_AXI_bvalid(dpa_ctrl_interconnect_M03_AXI_BVALID),
        .M03_AXI_rdata(dpa_ctrl_interconnect_M03_AXI_RDATA),
        .M03_AXI_rready(dpa_ctrl_interconnect_M03_AXI_RREADY),
        .M03_AXI_rresp(dpa_ctrl_interconnect_M03_AXI_RRESP),
        .M03_AXI_rvalid(dpa_ctrl_interconnect_M03_AXI_RVALID),
        .M03_AXI_wdata(dpa_ctrl_interconnect_M03_AXI_WDATA),
        .M03_AXI_wready(dpa_ctrl_interconnect_M03_AXI_WREADY),
        .M03_AXI_wstrb(dpa_ctrl_interconnect_M03_AXI_WSTRB),
        .M03_AXI_wvalid(dpa_ctrl_interconnect_M03_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_axilite_M02_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_axilite_M02_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_axilite_M02_AXI_ARID),
        .S00_AXI_arlen(interconnect_axilite_M02_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_axilite_M02_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_axilite_M02_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_axilite_M02_AXI_ARQOS),
        .S00_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .S00_AXI_arregion(interconnect_axilite_M02_AXI_ARREGION),
        .S00_AXI_arsize(interconnect_axilite_M02_AXI_ARSIZE),
        .S00_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_axilite_M02_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_axilite_M02_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_axilite_M02_AXI_AWID),
        .S00_AXI_awlen(interconnect_axilite_M02_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_axilite_M02_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_axilite_M02_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_axilite_M02_AXI_AWQOS),
        .S00_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .S00_AXI_awregion(interconnect_axilite_M02_AXI_AWREGION),
        .S00_AXI_awsize(interconnect_axilite_M02_AXI_AWSIZE),
        .S00_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .S00_AXI_bid(interconnect_axilite_M02_AXI_BID),
        .S00_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .S00_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .S00_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .S00_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .S00_AXI_rid(interconnect_axilite_M02_AXI_RID),
        .S00_AXI_rlast(interconnect_axilite_M02_AXI_RLAST),
        .S00_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .S00_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .S00_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .S00_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .S00_AXI_wlast(interconnect_axilite_M02_AXI_WLAST),
        .S00_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .S00_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID));
  (* DPA_IP = "true" *) 
  (* DPA_IP_FULLNAME = "dpa_fifo" *) 
  (* DPA_IP_PROPERTIES = "0" *) 
  zedboard_base_dpa_fifo_0 dpa_fifo
       (.axi_str_rxd_tdata(dpa_cdc_M_AXIS_TDATA),
        .axi_str_rxd_tlast(1'b0),
        .axi_str_rxd_tready(dpa_cdc_M_AXIS_TREADY),
        .axi_str_rxd_tvalid(dpa_cdc_M_AXIS_TVALID),
        .s_axi4_araddr(dpa_reg_slice2_M_AXI_ARADDR),
        .s_axi4_arburst(dpa_reg_slice2_M_AXI_ARBURST),
        .s_axi4_arcache(dpa_reg_slice2_M_AXI_ARCACHE),
        .s_axi4_arid(dpa_reg_slice2_M_AXI_ARID),
        .s_axi4_arlen(dpa_reg_slice2_M_AXI_ARLEN),
        .s_axi4_arlock(dpa_reg_slice2_M_AXI_ARLOCK),
        .s_axi4_arprot(dpa_reg_slice2_M_AXI_ARPROT),
        .s_axi4_arready(dpa_reg_slice2_M_AXI_ARREADY),
        .s_axi4_arsize(dpa_reg_slice2_M_AXI_ARSIZE),
        .s_axi4_arvalid(dpa_reg_slice2_M_AXI_ARVALID),
        .s_axi4_rdata(dpa_reg_slice2_M_AXI_RDATA),
        .s_axi4_rid(dpa_reg_slice2_M_AXI_RID),
        .s_axi4_rlast(dpa_reg_slice2_M_AXI_RLAST),
        .s_axi4_rready(dpa_reg_slice2_M_AXI_RREADY),
        .s_axi4_rresp(dpa_reg_slice2_M_AXI_RRESP),
        .s_axi4_rvalid(dpa_reg_slice2_M_AXI_RVALID),
        .s_axi_aclk(ACLK_1),
        .s_axi_araddr(dpa_ctrl_interconnect_M00_AXI_ARADDR),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_arready(dpa_ctrl_interconnect_M00_AXI_ARREADY),
        .s_axi_arvalid(dpa_ctrl_interconnect_M00_AXI_ARVALID),
        .s_axi_awaddr(dpa_ctrl_interconnect_M00_AXI_AWADDR),
        .s_axi_awready(dpa_ctrl_interconnect_M00_AXI_AWREADY),
        .s_axi_awvalid(dpa_ctrl_interconnect_M00_AXI_AWVALID),
        .s_axi_bready(dpa_ctrl_interconnect_M00_AXI_BREADY),
        .s_axi_bresp(dpa_ctrl_interconnect_M00_AXI_BRESP),
        .s_axi_bvalid(dpa_ctrl_interconnect_M00_AXI_BVALID),
        .s_axi_rdata(dpa_ctrl_interconnect_M00_AXI_RDATA),
        .s_axi_rready(dpa_ctrl_interconnect_M00_AXI_RREADY),
        .s_axi_rresp(dpa_ctrl_interconnect_M00_AXI_RRESP),
        .s_axi_rvalid(dpa_ctrl_interconnect_M00_AXI_RVALID),
        .s_axi_wdata(dpa_ctrl_interconnect_M00_AXI_WDATA),
        .s_axi_wready(dpa_ctrl_interconnect_M00_AXI_WREADY),
        .s_axi_wstrb(dpa_ctrl_interconnect_M00_AXI_WSTRB),
        .s_axi_wvalid(dpa_ctrl_interconnect_M00_AXI_WVALID));
  (* DPA_IP = "true" *) 
  (* DPA_IP_FULLNAME = "dpa_hub" *) 
  (* DPA_IP_PROPERTIES = "0" *) 
  zedboard_base_dpa_hub_0 dpa_hub
       (.mon_clk(ACLK_1),
        .mon_resetn(proc_sys_reset_0_peripheral_aresetn),
        .out_data(dpa_hub_M_AXIS_TDATA),
        .out_ready(dpa_hub_M_AXIS_TREADY),
        .out_valid(dpa_hub_M_AXIS_TVALID),
        .s_axi_araddr(dpa_ctrl_interconnect_M01_AXI_ARADDR),
        .s_axi_arprot(dpa_ctrl_interconnect_M01_AXI_ARPROT),
        .s_axi_arready(dpa_ctrl_interconnect_M01_AXI_ARREADY),
        .s_axi_arvalid(dpa_ctrl_interconnect_M01_AXI_ARVALID),
        .s_axi_awaddr(dpa_ctrl_interconnect_M01_AXI_AWADDR),
        .s_axi_awprot(dpa_ctrl_interconnect_M01_AXI_AWPROT),
        .s_axi_awready(dpa_ctrl_interconnect_M01_AXI_AWREADY),
        .s_axi_awvalid(dpa_ctrl_interconnect_M01_AXI_AWVALID),
        .s_axi_bready(dpa_ctrl_interconnect_M01_AXI_BREADY),
        .s_axi_bresp(dpa_ctrl_interconnect_M01_AXI_BRESP),
        .s_axi_bvalid(dpa_ctrl_interconnect_M01_AXI_BVALID),
        .s_axi_rdata(dpa_ctrl_interconnect_M01_AXI_RDATA),
        .s_axi_rready(dpa_ctrl_interconnect_M01_AXI_RREADY),
        .s_axi_rresp(dpa_ctrl_interconnect_M01_AXI_RRESP),
        .s_axi_rvalid(dpa_ctrl_interconnect_M01_AXI_RVALID),
        .s_axi_wdata(dpa_ctrl_interconnect_M01_AXI_WDATA),
        .s_axi_wready(dpa_ctrl_interconnect_M01_AXI_WREADY),
        .s_axi_wstrb(dpa_ctrl_interconnect_M01_AXI_WSTRB),
        .s_axi_wvalid(dpa_ctrl_interconnect_M01_AXI_WVALID),
        .trace0_counter(dpa_mon0_TRACE_OUT_counter),
        .trace0_counter_overflow(dpa_mon0_TRACE_OUT_counter_overflow),
        .trace0_data(dpa_mon0_TRACE_OUT_data),
        .trace0_event(dpa_mon0_TRACE_OUT_event),
        .trace0_read(dpa_mon0_TRACE_OUT_read),
        .trace0_valid(dpa_mon0_TRACE_OUT_valid),
        .trace1_counter(dpa_mon1_TRACE_OUT_0_counter),
        .trace1_counter_overflow(dpa_mon1_TRACE_OUT_0_counter_overflow),
        .trace1_data(dpa_mon1_TRACE_OUT_0_data),
        .trace1_event(dpa_mon1_TRACE_OUT_0_event),
        .trace1_read(dpa_mon1_TRACE_OUT_0_read),
        .trace1_valid(dpa_mon1_TRACE_OUT_0_valid),
        .trace2_counter(dpa_mon1_TRACE_OUT_1_counter),
        .trace2_counter_overflow(dpa_mon1_TRACE_OUT_1_counter_overflow),
        .trace2_data(dpa_mon1_TRACE_OUT_1_data),
        .trace2_event(dpa_mon1_TRACE_OUT_1_event),
        .trace2_read(dpa_mon1_TRACE_OUT_1_read),
        .trace2_valid(dpa_mon1_TRACE_OUT_1_valid),
        .trace_clk(ACLK_1),
        .trace_resetn(proc_sys_reset_0_peripheral_aresetn));
  (* DPA_IP = "true" *) 
  (* DPA_IP_FULLNAME = "/compute_matrices_1" *) 
  (* DPA_IP_PROPERTIES = "11" *) 
  zedboard_base_dpa_mon0_0 dpa_mon0
       (.mon_clk(ACLK_1),
        .mon_resetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_araddr(dpa_ctrl_interconnect_M02_AXI_ARADDR),
        .s_axi_araddr_mon({1'b0,interconnect_axilite_M01_AXI_ARADDR}),
        .s_axi_arprot(dpa_ctrl_interconnect_M02_AXI_ARPROT),
        .s_axi_arprot_mon(interconnect_axilite_M01_AXI_ARPROT),
        .s_axi_arready(dpa_ctrl_interconnect_M02_AXI_ARREADY),
        .s_axi_arready_mon(interconnect_axilite_M01_AXI_ARREADY),
        .s_axi_arvalid(dpa_ctrl_interconnect_M02_AXI_ARVALID),
        .s_axi_arvalid_mon(interconnect_axilite_M01_AXI_ARVALID),
        .s_axi_awaddr(dpa_ctrl_interconnect_M02_AXI_AWADDR),
        .s_axi_awaddr_mon({1'b0,interconnect_axilite_M01_AXI_AWADDR}),
        .s_axi_awprot(dpa_ctrl_interconnect_M02_AXI_AWPROT),
        .s_axi_awprot_mon(interconnect_axilite_M01_AXI_AWPROT),
        .s_axi_awready(dpa_ctrl_interconnect_M02_AXI_AWREADY),
        .s_axi_awready_mon(interconnect_axilite_M01_AXI_AWREADY),
        .s_axi_awvalid(dpa_ctrl_interconnect_M02_AXI_AWVALID),
        .s_axi_awvalid_mon(interconnect_axilite_M01_AXI_AWVALID),
        .s_axi_bready(dpa_ctrl_interconnect_M02_AXI_BREADY),
        .s_axi_bready_mon(interconnect_axilite_M01_AXI_BREADY),
        .s_axi_bresp(dpa_ctrl_interconnect_M02_AXI_BRESP),
        .s_axi_bresp_mon(interconnect_axilite_M01_AXI_BRESP),
        .s_axi_bvalid(dpa_ctrl_interconnect_M02_AXI_BVALID),
        .s_axi_bvalid_mon(interconnect_axilite_M01_AXI_BVALID),
        .s_axi_rdata(dpa_ctrl_interconnect_M02_AXI_RDATA),
        .s_axi_rdata_mon(interconnect_axilite_M01_AXI_RDATA),
        .s_axi_rready(dpa_ctrl_interconnect_M02_AXI_RREADY),
        .s_axi_rready_mon(interconnect_axilite_M01_AXI_RREADY),
        .s_axi_rresp(dpa_ctrl_interconnect_M02_AXI_RRESP),
        .s_axi_rresp_mon(interconnect_axilite_M01_AXI_RRESP),
        .s_axi_rvalid(dpa_ctrl_interconnect_M02_AXI_RVALID),
        .s_axi_rvalid_mon(interconnect_axilite_M01_AXI_RVALID),
        .s_axi_wdata(dpa_ctrl_interconnect_M02_AXI_WDATA),
        .s_axi_wdata_mon(interconnect_axilite_M01_AXI_WDATA),
        .s_axi_wready(dpa_ctrl_interconnect_M02_AXI_WREADY),
        .s_axi_wready_mon(interconnect_axilite_M01_AXI_WREADY),
        .s_axi_wstrb(dpa_ctrl_interconnect_M02_AXI_WSTRB),
        .s_axi_wstrb_mon(interconnect_axilite_M01_AXI_WSTRB),
        .s_axi_wvalid(dpa_ctrl_interconnect_M02_AXI_WVALID),
        .s_axi_wvalid_mon(interconnect_axilite_M01_AXI_WVALID),
        .trace_clk(ACLK_1),
        .trace_counter(dpa_mon0_TRACE_OUT_counter),
        .trace_counter_overflow(dpa_mon0_TRACE_OUT_counter_overflow),
        .trace_data(dpa_mon0_TRACE_OUT_data),
        .trace_event(dpa_mon0_TRACE_OUT_event),
        .trace_read(dpa_mon0_TRACE_OUT_read),
        .trace_rst(proc_sys_reset_0_peripheral_aresetn),
        .trace_valid(dpa_mon0_TRACE_OUT_valid));
  (* DPA_IP = "true" *) 
  (* DPA_IP_FULLNAME = "/compute_matrices_1/m_axi_gmem-DDR" *) 
  (* DPA_IP_PROPERTIES = "11" *) 
  zedboard_base_dpa_mon1_0 dpa_mon1
       (.m_axi_ARADDR(compute_matrices_1_m_axi_gmem_ARADDR),
        .m_axi_ARBURST(compute_matrices_1_m_axi_gmem_ARBURST),
        .m_axi_ARCACHE(compute_matrices_1_m_axi_gmem_ARCACHE),
        .m_axi_ARID(1'b0),
        .m_axi_ARLEN(compute_matrices_1_m_axi_gmem_ARLEN),
        .m_axi_ARLOCK(compute_matrices_1_m_axi_gmem_ARLOCK),
        .m_axi_ARPROT(compute_matrices_1_m_axi_gmem_ARPROT),
        .m_axi_ARQOS(compute_matrices_1_m_axi_gmem_ARQOS),
        .m_axi_ARREADY(compute_matrices_1_m_axi_gmem_ARREADY),
        .m_axi_ARREGION(compute_matrices_1_m_axi_gmem_ARREGION),
        .m_axi_ARSIZE(compute_matrices_1_m_axi_gmem_ARSIZE),
        .m_axi_ARUSER(1'b0),
        .m_axi_ARVALID(compute_matrices_1_m_axi_gmem_ARVALID),
        .m_axi_AWADDR(compute_matrices_1_m_axi_gmem_AWADDR),
        .m_axi_AWBURST(compute_matrices_1_m_axi_gmem_AWBURST),
        .m_axi_AWCACHE(compute_matrices_1_m_axi_gmem_AWCACHE),
        .m_axi_AWID(1'b0),
        .m_axi_AWLEN(compute_matrices_1_m_axi_gmem_AWLEN),
        .m_axi_AWLOCK(compute_matrices_1_m_axi_gmem_AWLOCK),
        .m_axi_AWPROT(compute_matrices_1_m_axi_gmem_AWPROT),
        .m_axi_AWQOS(compute_matrices_1_m_axi_gmem_AWQOS),
        .m_axi_AWREADY(compute_matrices_1_m_axi_gmem_AWREADY),
        .m_axi_AWREGION(compute_matrices_1_m_axi_gmem_AWREGION),
        .m_axi_AWSIZE(compute_matrices_1_m_axi_gmem_AWSIZE),
        .m_axi_AWUSER(1'b0),
        .m_axi_AWVALID(compute_matrices_1_m_axi_gmem_AWVALID),
        .m_axi_BID(1'b0),
        .m_axi_BREADY(compute_matrices_1_m_axi_gmem_BREADY),
        .m_axi_BRESP(compute_matrices_1_m_axi_gmem_BRESP[0]),
        .m_axi_BUSER(1'b0),
        .m_axi_BVALID(compute_matrices_1_m_axi_gmem_BVALID),
        .m_axi_RDATA(compute_matrices_1_m_axi_gmem_RDATA),
        .m_axi_RID(1'b0),
        .m_axi_RLAST(compute_matrices_1_m_axi_gmem_RLAST),
        .m_axi_RREADY(compute_matrices_1_m_axi_gmem_RREADY),
        .m_axi_RRESP(compute_matrices_1_m_axi_gmem_RRESP[0]),
        .m_axi_RUSER(1'b0),
        .m_axi_RVALID(compute_matrices_1_m_axi_gmem_RVALID),
        .m_axi_WDATA(compute_matrices_1_m_axi_gmem_WDATA),
        .m_axi_WID(1'b0),
        .m_axi_WLAST(compute_matrices_1_m_axi_gmem_WLAST),
        .m_axi_WREADY(compute_matrices_1_m_axi_gmem_WREADY),
        .m_axi_WSTRB(compute_matrices_1_m_axi_gmem_WSTRB),
        .m_axi_WUSER(1'b0),
        .m_axi_WVALID(compute_matrices_1_m_axi_gmem_WVALID),
        .mon_clk(ACLK_1),
        .mon_resetn(proc_sys_reset_0_peripheral_aresetn),
        .rtrace_counter(dpa_mon1_TRACE_OUT_0_counter),
        .rtrace_counter_overflow(dpa_mon1_TRACE_OUT_0_counter_overflow),
        .rtrace_data(dpa_mon1_TRACE_OUT_0_data),
        .rtrace_event(dpa_mon1_TRACE_OUT_0_event),
        .rtrace_read(dpa_mon1_TRACE_OUT_0_read),
        .rtrace_valid(dpa_mon1_TRACE_OUT_0_valid),
        .s_axi_araddr(dpa_ctrl_interconnect_M03_AXI_ARADDR),
        .s_axi_araddr_mon({1'b0,interconnect_axilite_M01_AXI_ARADDR}),
        .s_axi_arprot(dpa_ctrl_interconnect_M03_AXI_ARPROT),
        .s_axi_arprot_mon(interconnect_axilite_M01_AXI_ARPROT),
        .s_axi_arready(dpa_ctrl_interconnect_M03_AXI_ARREADY),
        .s_axi_arready_mon(interconnect_axilite_M01_AXI_ARREADY),
        .s_axi_arvalid(dpa_ctrl_interconnect_M03_AXI_ARVALID),
        .s_axi_arvalid_mon(interconnect_axilite_M01_AXI_ARVALID),
        .s_axi_awaddr(dpa_ctrl_interconnect_M03_AXI_AWADDR),
        .s_axi_awaddr_mon({1'b0,interconnect_axilite_M01_AXI_AWADDR}),
        .s_axi_awprot(dpa_ctrl_interconnect_M03_AXI_AWPROT),
        .s_axi_awprot_mon(interconnect_axilite_M01_AXI_AWPROT),
        .s_axi_awready(dpa_ctrl_interconnect_M03_AXI_AWREADY),
        .s_axi_awready_mon(interconnect_axilite_M01_AXI_AWREADY),
        .s_axi_awvalid(dpa_ctrl_interconnect_M03_AXI_AWVALID),
        .s_axi_awvalid_mon(interconnect_axilite_M01_AXI_AWVALID),
        .s_axi_bready(dpa_ctrl_interconnect_M03_AXI_BREADY),
        .s_axi_bready_mon(interconnect_axilite_M01_AXI_BREADY),
        .s_axi_bresp(dpa_ctrl_interconnect_M03_AXI_BRESP),
        .s_axi_bresp_mon(interconnect_axilite_M01_AXI_BRESP),
        .s_axi_bvalid(dpa_ctrl_interconnect_M03_AXI_BVALID),
        .s_axi_bvalid_mon(interconnect_axilite_M01_AXI_BVALID),
        .s_axi_rdata(dpa_ctrl_interconnect_M03_AXI_RDATA),
        .s_axi_rdata_mon(interconnect_axilite_M01_AXI_RDATA),
        .s_axi_rready(dpa_ctrl_interconnect_M03_AXI_RREADY),
        .s_axi_rready_mon(interconnect_axilite_M01_AXI_RREADY),
        .s_axi_rresp(dpa_ctrl_interconnect_M03_AXI_RRESP),
        .s_axi_rresp_mon(interconnect_axilite_M01_AXI_RRESP),
        .s_axi_rvalid(dpa_ctrl_interconnect_M03_AXI_RVALID),
        .s_axi_rvalid_mon(interconnect_axilite_M01_AXI_RVALID),
        .s_axi_wdata(dpa_ctrl_interconnect_M03_AXI_WDATA),
        .s_axi_wdata_mon(interconnect_axilite_M01_AXI_WDATA),
        .s_axi_wready(dpa_ctrl_interconnect_M03_AXI_WREADY),
        .s_axi_wready_mon(interconnect_axilite_M01_AXI_WREADY),
        .s_axi_wstrb(dpa_ctrl_interconnect_M03_AXI_WSTRB),
        .s_axi_wstrb_mon(interconnect_axilite_M01_AXI_WSTRB),
        .s_axi_wvalid(dpa_ctrl_interconnect_M03_AXI_WVALID),
        .s_axi_wvalid_mon(interconnect_axilite_M01_AXI_WVALID),
        .trace_clk(ACLK_1),
        .trace_rst(proc_sys_reset_0_peripheral_aresetn),
        .wtrace_counter(dpa_mon1_TRACE_OUT_1_counter),
        .wtrace_counter_overflow(dpa_mon1_TRACE_OUT_1_counter_overflow),
        .wtrace_data(dpa_mon1_TRACE_OUT_1_data),
        .wtrace_event(dpa_mon1_TRACE_OUT_1_event),
        .wtrace_read(dpa_mon1_TRACE_OUT_1_read),
        .wtrace_valid(dpa_mon1_TRACE_OUT_1_valid));
  zedboard_base_dpa_reg_slice_0 dpa_reg_slice
       (.aclk(ACLK_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(dpa_reg_slice_M_AXI_ARADDR),
        .m_axi_arburst(dpa_reg_slice_M_AXI_ARBURST),
        .m_axi_arcache(dpa_reg_slice_M_AXI_ARCACHE),
        .m_axi_arid(dpa_reg_slice_M_AXI_ARID),
        .m_axi_arlen(dpa_reg_slice_M_AXI_ARLEN),
        .m_axi_arlock(dpa_reg_slice_M_AXI_ARLOCK),
        .m_axi_arprot(dpa_reg_slice_M_AXI_ARPROT),
        .m_axi_arqos(dpa_reg_slice_M_AXI_ARQOS),
        .m_axi_arready(dpa_reg_slice_M_AXI_ARREADY),
        .m_axi_arregion(dpa_reg_slice_M_AXI_ARREGION),
        .m_axi_arsize(dpa_reg_slice_M_AXI_ARSIZE),
        .m_axi_arvalid(dpa_reg_slice_M_AXI_ARVALID),
        .m_axi_rdata(dpa_reg_slice_M_AXI_RDATA),
        .m_axi_rid(dpa_reg_slice_M_AXI_RID),
        .m_axi_rlast(dpa_reg_slice_M_AXI_RLAST),
        .m_axi_rready(dpa_reg_slice_M_AXI_RREADY),
        .m_axi_rresp(dpa_reg_slice_M_AXI_RRESP),
        .m_axi_rvalid(dpa_reg_slice_M_AXI_RVALID),
        .s_axi_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .s_axi_arburst(interconnect_axilite_M03_AXI_ARBURST),
        .s_axi_arcache(interconnect_axilite_M03_AXI_ARCACHE),
        .s_axi_arid(interconnect_axilite_M03_AXI_ARID),
        .s_axi_arlen(interconnect_axilite_M03_AXI_ARLEN),
        .s_axi_arlock(interconnect_axilite_M03_AXI_ARLOCK),
        .s_axi_arprot(interconnect_axilite_M03_AXI_ARPROT),
        .s_axi_arqos(interconnect_axilite_M03_AXI_ARQOS),
        .s_axi_arready(interconnect_axilite_M03_AXI_ARREADY),
        .s_axi_arregion(interconnect_axilite_M03_AXI_ARREGION),
        .s_axi_arsize(interconnect_axilite_M03_AXI_ARSIZE),
        .s_axi_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .s_axi_rdata(interconnect_axilite_M03_AXI_RDATA),
        .s_axi_rid(interconnect_axilite_M03_AXI_RID),
        .s_axi_rlast(interconnect_axilite_M03_AXI_RLAST),
        .s_axi_rready(interconnect_axilite_M03_AXI_RREADY),
        .s_axi_rresp(interconnect_axilite_M03_AXI_RRESP),
        .s_axi_rvalid(interconnect_axilite_M03_AXI_RVALID));
  zedboard_base_dpa_reg_slice2_0 dpa_reg_slice2
       (.aclk(ACLK_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(dpa_reg_slice2_M_AXI_ARADDR),
        .m_axi_arburst(dpa_reg_slice2_M_AXI_ARBURST),
        .m_axi_arcache(dpa_reg_slice2_M_AXI_ARCACHE),
        .m_axi_arid(dpa_reg_slice2_M_AXI_ARID),
        .m_axi_arlen(dpa_reg_slice2_M_AXI_ARLEN),
        .m_axi_arlock(dpa_reg_slice2_M_AXI_ARLOCK),
        .m_axi_arprot(dpa_reg_slice2_M_AXI_ARPROT),
        .m_axi_arready(dpa_reg_slice2_M_AXI_ARREADY),
        .m_axi_arsize(dpa_reg_slice2_M_AXI_ARSIZE),
        .m_axi_arvalid(dpa_reg_slice2_M_AXI_ARVALID),
        .m_axi_rdata(dpa_reg_slice2_M_AXI_RDATA),
        .m_axi_rid(dpa_reg_slice2_M_AXI_RID),
        .m_axi_rlast(dpa_reg_slice2_M_AXI_RLAST),
        .m_axi_rready(dpa_reg_slice2_M_AXI_RREADY),
        .m_axi_rresp(dpa_reg_slice2_M_AXI_RRESP),
        .m_axi_rvalid(dpa_reg_slice2_M_AXI_RVALID),
        .s_axi_araddr(dpa_reg_slice_M_AXI_ARADDR),
        .s_axi_arburst(dpa_reg_slice_M_AXI_ARBURST),
        .s_axi_arcache(dpa_reg_slice_M_AXI_ARCACHE),
        .s_axi_arid(dpa_reg_slice_M_AXI_ARID),
        .s_axi_arlen(dpa_reg_slice_M_AXI_ARLEN),
        .s_axi_arlock(dpa_reg_slice_M_AXI_ARLOCK),
        .s_axi_arprot(dpa_reg_slice_M_AXI_ARPROT),
        .s_axi_arqos(dpa_reg_slice_M_AXI_ARQOS),
        .s_axi_arready(dpa_reg_slice_M_AXI_ARREADY),
        .s_axi_arregion(dpa_reg_slice_M_AXI_ARREGION),
        .s_axi_arsize(dpa_reg_slice_M_AXI_ARSIZE),
        .s_axi_arvalid(dpa_reg_slice_M_AXI_ARVALID),
        .s_axi_rdata(dpa_reg_slice_M_AXI_RDATA),
        .s_axi_rid(dpa_reg_slice_M_AXI_RID),
        .s_axi_rlast(dpa_reg_slice_M_AXI_RLAST),
        .s_axi_rready(dpa_reg_slice_M_AXI_RREADY),
        .s_axi_rresp(dpa_reg_slice_M_AXI_RRESP),
        .s_axi_rvalid(dpa_reg_slice_M_AXI_RVALID));
endmodule

module m00_couplers_imp_17TAISI
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [31:0]auto_pc_to_m00_couplers_RDATA;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [31:0]auto_pc_to_m00_couplers_WDATA;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [3:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [11:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [31:0]m00_couplers_to_auto_pc_RDATA;
  wire [11:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [31:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [3:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zedboard_base_auto_pc_2 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m00_couplers_imp_1J4XQYC
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m00_couplers_to_m00_regslice_ARADDR;
  wire [2:0]m00_couplers_to_m00_regslice_ARPROT;
  wire m00_couplers_to_m00_regslice_ARREADY;
  wire m00_couplers_to_m00_regslice_ARVALID;
  wire [31:0]m00_couplers_to_m00_regslice_AWADDR;
  wire [2:0]m00_couplers_to_m00_regslice_AWPROT;
  wire m00_couplers_to_m00_regslice_AWREADY;
  wire m00_couplers_to_m00_regslice_AWVALID;
  wire m00_couplers_to_m00_regslice_BREADY;
  wire [1:0]m00_couplers_to_m00_regslice_BRESP;
  wire m00_couplers_to_m00_regslice_BVALID;
  wire [31:0]m00_couplers_to_m00_regslice_RDATA;
  wire m00_couplers_to_m00_regslice_RREADY;
  wire [1:0]m00_couplers_to_m00_regslice_RRESP;
  wire m00_couplers_to_m00_regslice_RVALID;
  wire [31:0]m00_couplers_to_m00_regslice_WDATA;
  wire m00_couplers_to_m00_regslice_WREADY;
  wire [3:0]m00_couplers_to_m00_regslice_WSTRB;
  wire m00_couplers_to_m00_regslice_WVALID;
  wire [31:0]m00_regslice_to_m00_couplers_ARADDR;
  wire m00_regslice_to_m00_couplers_ARREADY;
  wire m00_regslice_to_m00_couplers_ARVALID;
  wire [31:0]m00_regslice_to_m00_couplers_AWADDR;
  wire m00_regslice_to_m00_couplers_AWREADY;
  wire m00_regslice_to_m00_couplers_AWVALID;
  wire m00_regslice_to_m00_couplers_BREADY;
  wire [1:0]m00_regslice_to_m00_couplers_BRESP;
  wire m00_regslice_to_m00_couplers_BVALID;
  wire [31:0]m00_regslice_to_m00_couplers_RDATA;
  wire m00_regslice_to_m00_couplers_RREADY;
  wire [1:0]m00_regslice_to_m00_couplers_RRESP;
  wire m00_regslice_to_m00_couplers_RVALID;
  wire [31:0]m00_regslice_to_m00_couplers_WDATA;
  wire m00_regslice_to_m00_couplers_WREADY;
  wire [3:0]m00_regslice_to_m00_couplers_WSTRB;
  wire m00_regslice_to_m00_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m00_regslice_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid = m00_regslice_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_regslice_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid = m00_regslice_to_m00_couplers_AWVALID;
  assign M_AXI_bready = m00_regslice_to_m00_couplers_BREADY;
  assign M_AXI_rready = m00_regslice_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_regslice_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_regslice_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = m00_regslice_to_m00_couplers_WVALID;
  assign S_AXI_arready = m00_couplers_to_m00_regslice_ARREADY;
  assign S_AXI_awready = m00_couplers_to_m00_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_regslice_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_m00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_regslice_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_m00_regslice_RVALID;
  assign S_AXI_wready = m00_couplers_to_m00_regslice_WREADY;
  assign m00_couplers_to_m00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_m00_regslice_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_m00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_m00_regslice_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_m00_regslice_BREADY = S_AXI_bready;
  assign m00_couplers_to_m00_regslice_RREADY = S_AXI_rready;
  assign m00_couplers_to_m00_regslice_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_regslice_WVALID = S_AXI_wvalid;
  assign m00_regslice_to_m00_couplers_ARREADY = M_AXI_arready;
  assign m00_regslice_to_m00_couplers_AWREADY = M_AXI_awready;
  assign m00_regslice_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_regslice_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign m00_regslice_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_regslice_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_regslice_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign m00_regslice_to_m00_couplers_WREADY = M_AXI_wready;
  zedboard_base_m00_regslice_0 m00_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m00_regslice_to_m00_couplers_ARADDR),
        .m_axi_arready(m00_regslice_to_m00_couplers_ARREADY),
        .m_axi_arvalid(m00_regslice_to_m00_couplers_ARVALID),
        .m_axi_awaddr(m00_regslice_to_m00_couplers_AWADDR),
        .m_axi_awready(m00_regslice_to_m00_couplers_AWREADY),
        .m_axi_awvalid(m00_regslice_to_m00_couplers_AWVALID),
        .m_axi_bready(m00_regslice_to_m00_couplers_BREADY),
        .m_axi_bresp(m00_regslice_to_m00_couplers_BRESP),
        .m_axi_bvalid(m00_regslice_to_m00_couplers_BVALID),
        .m_axi_rdata(m00_regslice_to_m00_couplers_RDATA),
        .m_axi_rready(m00_regslice_to_m00_couplers_RREADY),
        .m_axi_rresp(m00_regslice_to_m00_couplers_RRESP),
        .m_axi_rvalid(m00_regslice_to_m00_couplers_RVALID),
        .m_axi_wdata(m00_regslice_to_m00_couplers_WDATA),
        .m_axi_wready(m00_regslice_to_m00_couplers_WREADY),
        .m_axi_wstrb(m00_regslice_to_m00_couplers_WSTRB),
        .m_axi_wvalid(m00_regslice_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_m00_regslice_ARADDR),
        .s_axi_arprot(m00_couplers_to_m00_regslice_ARPROT),
        .s_axi_arready(m00_couplers_to_m00_regslice_ARREADY),
        .s_axi_arvalid(m00_couplers_to_m00_regslice_ARVALID),
        .s_axi_awaddr(m00_couplers_to_m00_regslice_AWADDR),
        .s_axi_awprot(m00_couplers_to_m00_regslice_AWPROT),
        .s_axi_awready(m00_couplers_to_m00_regslice_AWREADY),
        .s_axi_awvalid(m00_couplers_to_m00_regslice_AWVALID),
        .s_axi_bready(m00_couplers_to_m00_regslice_BREADY),
        .s_axi_bresp(m00_couplers_to_m00_regslice_BRESP),
        .s_axi_bvalid(m00_couplers_to_m00_regslice_BVALID),
        .s_axi_rdata(m00_couplers_to_m00_regslice_RDATA),
        .s_axi_rready(m00_couplers_to_m00_regslice_RREADY),
        .s_axi_rresp(m00_couplers_to_m00_regslice_RRESP),
        .s_axi_rvalid(m00_couplers_to_m00_regslice_RVALID),
        .s_axi_wdata(m00_couplers_to_m00_regslice_WDATA),
        .s_axi_wready(m00_couplers_to_m00_regslice_WREADY),
        .s_axi_wstrb(m00_couplers_to_m00_regslice_WSTRB),
        .s_axi_wvalid(m00_couplers_to_m00_regslice_WVALID));
endmodule

module m00_couplers_imp_1MAGE1E
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wid,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [0:0]M_AXI_arid;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [0:0]M_AXI_awid;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [5:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input [5:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output [0:0]M_AXI_wid;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [63:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [63:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [7:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m00_couplers_ARADDR;
  wire [1:0]auto_pc_to_m00_couplers_ARBURST;
  wire [3:0]auto_pc_to_m00_couplers_ARCACHE;
  wire [0:0]auto_pc_to_m00_couplers_ARID;
  wire [3:0]auto_pc_to_m00_couplers_ARLEN;
  wire [1:0]auto_pc_to_m00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_m00_couplers_ARPROT;
  wire [3:0]auto_pc_to_m00_couplers_ARQOS;
  wire auto_pc_to_m00_couplers_ARREADY;
  wire [2:0]auto_pc_to_m00_couplers_ARSIZE;
  wire auto_pc_to_m00_couplers_ARVALID;
  wire [31:0]auto_pc_to_m00_couplers_AWADDR;
  wire [1:0]auto_pc_to_m00_couplers_AWBURST;
  wire [3:0]auto_pc_to_m00_couplers_AWCACHE;
  wire [0:0]auto_pc_to_m00_couplers_AWID;
  wire [3:0]auto_pc_to_m00_couplers_AWLEN;
  wire [1:0]auto_pc_to_m00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_m00_couplers_AWPROT;
  wire [3:0]auto_pc_to_m00_couplers_AWQOS;
  wire auto_pc_to_m00_couplers_AWREADY;
  wire [2:0]auto_pc_to_m00_couplers_AWSIZE;
  wire auto_pc_to_m00_couplers_AWVALID;
  wire [5:0]auto_pc_to_m00_couplers_BID;
  wire auto_pc_to_m00_couplers_BREADY;
  wire [1:0]auto_pc_to_m00_couplers_BRESP;
  wire auto_pc_to_m00_couplers_BVALID;
  wire [63:0]auto_pc_to_m00_couplers_RDATA;
  wire [5:0]auto_pc_to_m00_couplers_RID;
  wire auto_pc_to_m00_couplers_RLAST;
  wire auto_pc_to_m00_couplers_RREADY;
  wire [1:0]auto_pc_to_m00_couplers_RRESP;
  wire auto_pc_to_m00_couplers_RVALID;
  wire [63:0]auto_pc_to_m00_couplers_WDATA;
  wire [0:0]auto_pc_to_m00_couplers_WID;
  wire auto_pc_to_m00_couplers_WLAST;
  wire auto_pc_to_m00_couplers_WREADY;
  wire [7:0]auto_pc_to_m00_couplers_WSTRB;
  wire auto_pc_to_m00_couplers_WVALID;
  wire [31:0]m00_couplers_to_auto_pc_ARADDR;
  wire [1:0]m00_couplers_to_auto_pc_ARBURST;
  wire [3:0]m00_couplers_to_auto_pc_ARCACHE;
  wire [0:0]m00_couplers_to_auto_pc_ARID;
  wire [7:0]m00_couplers_to_auto_pc_ARLEN;
  wire [0:0]m00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m00_couplers_to_auto_pc_ARPROT;
  wire [3:0]m00_couplers_to_auto_pc_ARQOS;
  wire m00_couplers_to_auto_pc_ARREADY;
  wire [3:0]m00_couplers_to_auto_pc_ARREGION;
  wire [2:0]m00_couplers_to_auto_pc_ARSIZE;
  wire m00_couplers_to_auto_pc_ARVALID;
  wire [31:0]m00_couplers_to_auto_pc_AWADDR;
  wire [1:0]m00_couplers_to_auto_pc_AWBURST;
  wire [3:0]m00_couplers_to_auto_pc_AWCACHE;
  wire [0:0]m00_couplers_to_auto_pc_AWID;
  wire [7:0]m00_couplers_to_auto_pc_AWLEN;
  wire [0:0]m00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m00_couplers_to_auto_pc_AWPROT;
  wire [3:0]m00_couplers_to_auto_pc_AWQOS;
  wire m00_couplers_to_auto_pc_AWREADY;
  wire [3:0]m00_couplers_to_auto_pc_AWREGION;
  wire [2:0]m00_couplers_to_auto_pc_AWSIZE;
  wire m00_couplers_to_auto_pc_AWVALID;
  wire [0:0]m00_couplers_to_auto_pc_BID;
  wire m00_couplers_to_auto_pc_BREADY;
  wire [1:0]m00_couplers_to_auto_pc_BRESP;
  wire m00_couplers_to_auto_pc_BVALID;
  wire [63:0]m00_couplers_to_auto_pc_RDATA;
  wire [0:0]m00_couplers_to_auto_pc_RID;
  wire m00_couplers_to_auto_pc_RLAST;
  wire m00_couplers_to_auto_pc_RREADY;
  wire [1:0]m00_couplers_to_auto_pc_RRESP;
  wire m00_couplers_to_auto_pc_RVALID;
  wire [63:0]m00_couplers_to_auto_pc_WDATA;
  wire m00_couplers_to_auto_pc_WLAST;
  wire m00_couplers_to_auto_pc_WREADY;
  wire [7:0]m00_couplers_to_auto_pc_WSTRB;
  wire m00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_m00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_m00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_m00_couplers_ARCACHE;
  assign M_AXI_arid[0] = auto_pc_to_m00_couplers_ARID;
  assign M_AXI_arlen[3:0] = auto_pc_to_m00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_pc_to_m00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_m00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_m00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_m00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_m00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_m00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_m00_couplers_AWCACHE;
  assign M_AXI_awid[0] = auto_pc_to_m00_couplers_AWID;
  assign M_AXI_awlen[3:0] = auto_pc_to_m00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_pc_to_m00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_m00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_m00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_m00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_m00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_m00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_m00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_pc_to_m00_couplers_WDATA;
  assign M_AXI_wid[0] = auto_pc_to_m00_couplers_WID;
  assign M_AXI_wlast = auto_pc_to_m00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_pc_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_m00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = m00_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[63:0] = m00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = m00_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m00_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_m00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_m00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_m00_couplers_BID = M_AXI_bid[5:0];
  assign auto_pc_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_m00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_m00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_pc_to_m00_couplers_RID = M_AXI_rid[5:0];
  assign auto_pc_to_m00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_m00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_m00_couplers_WREADY = M_AXI_wready;
  assign m00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m00_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign m00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m00_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign m00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m00_couplers_to_auto_pc_WDATA = S_AXI_wdata[63:0];
  assign m00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[7:0];
  assign m00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zedboard_base_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_m00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_m00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_m00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_m00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_m00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_m00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_m00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_m00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_m00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_m00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_m00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_m00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_m00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_m00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_m00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_m00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_m00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_m00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_m00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_m00_couplers_BID[0]),
        .m_axi_bready(auto_pc_to_m00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_m00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_m00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_m00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_m00_couplers_RID[0]),
        .m_axi_rlast(auto_pc_to_m00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_m00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_m00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_m00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_m00_couplers_WDATA),
        .m_axi_wid(auto_pc_to_m00_couplers_WID),
        .m_axi_wlast(auto_pc_to_m00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_m00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_m00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_m00_couplers_WVALID),
        .s_axi_araddr(m00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m00_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m00_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m00_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m00_couplers_to_auto_pc_BID),
        .s_axi_bready(m00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m00_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m00_couplers_to_auto_pc_RID),
        .s_axi_rlast(m00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m00_couplers_to_auto_pc_WVALID));
endmodule

module m01_couplers_imp_1U08DY
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [6:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [6:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_m01_regslice_ARADDR;
  wire [2:0]auto_pc_to_m01_regslice_ARPROT;
  wire auto_pc_to_m01_regslice_ARREADY;
  wire auto_pc_to_m01_regslice_ARVALID;
  wire [31:0]auto_pc_to_m01_regslice_AWADDR;
  wire [2:0]auto_pc_to_m01_regslice_AWPROT;
  wire auto_pc_to_m01_regslice_AWREADY;
  wire auto_pc_to_m01_regslice_AWVALID;
  wire auto_pc_to_m01_regslice_BREADY;
  wire [1:0]auto_pc_to_m01_regslice_BRESP;
  wire auto_pc_to_m01_regslice_BVALID;
  wire [31:0]auto_pc_to_m01_regslice_RDATA;
  wire auto_pc_to_m01_regslice_RREADY;
  wire [1:0]auto_pc_to_m01_regslice_RRESP;
  wire auto_pc_to_m01_regslice_RVALID;
  wire [31:0]auto_pc_to_m01_regslice_WDATA;
  wire auto_pc_to_m01_regslice_WREADY;
  wire [3:0]auto_pc_to_m01_regslice_WSTRB;
  wire auto_pc_to_m01_regslice_WVALID;
  wire [31:0]m01_couplers_to_auto_pc_ARADDR;
  wire [1:0]m01_couplers_to_auto_pc_ARBURST;
  wire [3:0]m01_couplers_to_auto_pc_ARCACHE;
  wire [11:0]m01_couplers_to_auto_pc_ARID;
  wire [7:0]m01_couplers_to_auto_pc_ARLEN;
  wire [0:0]m01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]m01_couplers_to_auto_pc_ARPROT;
  wire [3:0]m01_couplers_to_auto_pc_ARQOS;
  wire m01_couplers_to_auto_pc_ARREADY;
  wire [3:0]m01_couplers_to_auto_pc_ARREGION;
  wire [2:0]m01_couplers_to_auto_pc_ARSIZE;
  wire m01_couplers_to_auto_pc_ARVALID;
  wire [31:0]m01_couplers_to_auto_pc_AWADDR;
  wire [1:0]m01_couplers_to_auto_pc_AWBURST;
  wire [3:0]m01_couplers_to_auto_pc_AWCACHE;
  wire [11:0]m01_couplers_to_auto_pc_AWID;
  wire [7:0]m01_couplers_to_auto_pc_AWLEN;
  wire [0:0]m01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]m01_couplers_to_auto_pc_AWPROT;
  wire [3:0]m01_couplers_to_auto_pc_AWQOS;
  wire m01_couplers_to_auto_pc_AWREADY;
  wire [3:0]m01_couplers_to_auto_pc_AWREGION;
  wire [2:0]m01_couplers_to_auto_pc_AWSIZE;
  wire m01_couplers_to_auto_pc_AWVALID;
  wire [11:0]m01_couplers_to_auto_pc_BID;
  wire m01_couplers_to_auto_pc_BREADY;
  wire [1:0]m01_couplers_to_auto_pc_BRESP;
  wire m01_couplers_to_auto_pc_BVALID;
  wire [31:0]m01_couplers_to_auto_pc_RDATA;
  wire [11:0]m01_couplers_to_auto_pc_RID;
  wire m01_couplers_to_auto_pc_RLAST;
  wire m01_couplers_to_auto_pc_RREADY;
  wire [1:0]m01_couplers_to_auto_pc_RRESP;
  wire m01_couplers_to_auto_pc_RVALID;
  wire [31:0]m01_couplers_to_auto_pc_WDATA;
  wire m01_couplers_to_auto_pc_WLAST;
  wire m01_couplers_to_auto_pc_WREADY;
  wire [3:0]m01_couplers_to_auto_pc_WSTRB;
  wire m01_couplers_to_auto_pc_WVALID;
  wire [6:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [6:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[6:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[6:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = m01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = m01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[11:0] = m01_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = m01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[11:0] = m01_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = m01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = m01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = m01_couplers_to_auto_pc_WREADY;
  assign m01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign m01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign m01_couplers_to_auto_pc_ARID = S_AXI_arid[11:0];
  assign m01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign m01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign m01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign m01_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign m01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign m01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign m01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign m01_couplers_to_auto_pc_AWID = S_AXI_awid[11:0];
  assign m01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign m01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign m01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign m01_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign m01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign m01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign m01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign m01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign m01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  zedboard_base_auto_pc_3 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_m01_regslice_ARADDR),
        .m_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .m_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .m_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .m_axi_awaddr(auto_pc_to_m01_regslice_AWADDR),
        .m_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .m_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .m_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .m_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .m_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .m_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .m_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .m_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .m_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .m_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .m_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .m_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .m_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .m_axi_wvalid(auto_pc_to_m01_regslice_WVALID),
        .s_axi_araddr(m01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(m01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(m01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(m01_couplers_to_auto_pc_ARID),
        .s_axi_arlen(m01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(m01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(m01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(m01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(m01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(m01_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(m01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(m01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(m01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(m01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(m01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(m01_couplers_to_auto_pc_AWID),
        .s_axi_awlen(m01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(m01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(m01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(m01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(m01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(m01_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(m01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(m01_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(m01_couplers_to_auto_pc_BID),
        .s_axi_bready(m01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(m01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(m01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(m01_couplers_to_auto_pc_RDATA),
        .s_axi_rid(m01_couplers_to_auto_pc_RID),
        .s_axi_rlast(m01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(m01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(m01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(m01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(m01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(m01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(m01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(m01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(m01_couplers_to_auto_pc_WVALID));
  zedboard_base_m01_regslice_2 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(auto_pc_to_m01_regslice_ARADDR[6:0]),
        .s_axi_arprot(auto_pc_to_m01_regslice_ARPROT),
        .s_axi_arready(auto_pc_to_m01_regslice_ARREADY),
        .s_axi_arvalid(auto_pc_to_m01_regslice_ARVALID),
        .s_axi_awaddr(auto_pc_to_m01_regslice_AWADDR[6:0]),
        .s_axi_awprot(auto_pc_to_m01_regslice_AWPROT),
        .s_axi_awready(auto_pc_to_m01_regslice_AWREADY),
        .s_axi_awvalid(auto_pc_to_m01_regslice_AWVALID),
        .s_axi_bready(auto_pc_to_m01_regslice_BREADY),
        .s_axi_bresp(auto_pc_to_m01_regslice_BRESP),
        .s_axi_bvalid(auto_pc_to_m01_regslice_BVALID),
        .s_axi_rdata(auto_pc_to_m01_regslice_RDATA),
        .s_axi_rready(auto_pc_to_m01_regslice_RREADY),
        .s_axi_rresp(auto_pc_to_m01_regslice_RRESP),
        .s_axi_rvalid(auto_pc_to_m01_regslice_RVALID),
        .s_axi_wdata(auto_pc_to_m01_regslice_WDATA),
        .s_axi_wready(auto_pc_to_m01_regslice_WREADY),
        .s_axi_wstrb(auto_pc_to_m01_regslice_WSTRB),
        .s_axi_wvalid(auto_pc_to_m01_regslice_WVALID));
endmodule

module m01_couplers_imp_Q0LSO0
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [3:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [3:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m01_couplers_to_m01_regslice_ARADDR;
  wire [2:0]m01_couplers_to_m01_regslice_ARPROT;
  wire m01_couplers_to_m01_regslice_ARREADY;
  wire m01_couplers_to_m01_regslice_ARVALID;
  wire [31:0]m01_couplers_to_m01_regslice_AWADDR;
  wire [2:0]m01_couplers_to_m01_regslice_AWPROT;
  wire m01_couplers_to_m01_regslice_AWREADY;
  wire m01_couplers_to_m01_regslice_AWVALID;
  wire m01_couplers_to_m01_regslice_BREADY;
  wire [1:0]m01_couplers_to_m01_regslice_BRESP;
  wire m01_couplers_to_m01_regslice_BVALID;
  wire [31:0]m01_couplers_to_m01_regslice_RDATA;
  wire m01_couplers_to_m01_regslice_RREADY;
  wire [1:0]m01_couplers_to_m01_regslice_RRESP;
  wire m01_couplers_to_m01_regslice_RVALID;
  wire [31:0]m01_couplers_to_m01_regslice_WDATA;
  wire m01_couplers_to_m01_regslice_WREADY;
  wire [3:0]m01_couplers_to_m01_regslice_WSTRB;
  wire m01_couplers_to_m01_regslice_WVALID;
  wire [3:0]m01_regslice_to_m01_couplers_ARADDR;
  wire [2:0]m01_regslice_to_m01_couplers_ARPROT;
  wire m01_regslice_to_m01_couplers_ARREADY;
  wire m01_regslice_to_m01_couplers_ARVALID;
  wire [3:0]m01_regslice_to_m01_couplers_AWADDR;
  wire [2:0]m01_regslice_to_m01_couplers_AWPROT;
  wire m01_regslice_to_m01_couplers_AWREADY;
  wire m01_regslice_to_m01_couplers_AWVALID;
  wire m01_regslice_to_m01_couplers_BREADY;
  wire [1:0]m01_regslice_to_m01_couplers_BRESP;
  wire m01_regslice_to_m01_couplers_BVALID;
  wire [31:0]m01_regslice_to_m01_couplers_RDATA;
  wire m01_regslice_to_m01_couplers_RREADY;
  wire [1:0]m01_regslice_to_m01_couplers_RRESP;
  wire m01_regslice_to_m01_couplers_RVALID;
  wire [31:0]m01_regslice_to_m01_couplers_WDATA;
  wire m01_regslice_to_m01_couplers_WREADY;
  wire [3:0]m01_regslice_to_m01_couplers_WSTRB;
  wire m01_regslice_to_m01_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[3:0] = m01_regslice_to_m01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m01_regslice_to_m01_couplers_ARPROT;
  assign M_AXI_arvalid = m01_regslice_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[3:0] = m01_regslice_to_m01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m01_regslice_to_m01_couplers_AWPROT;
  assign M_AXI_awvalid = m01_regslice_to_m01_couplers_AWVALID;
  assign M_AXI_bready = m01_regslice_to_m01_couplers_BREADY;
  assign M_AXI_rready = m01_regslice_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_regslice_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_regslice_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid = m01_regslice_to_m01_couplers_WVALID;
  assign S_AXI_arready = m01_couplers_to_m01_regslice_ARREADY;
  assign S_AXI_awready = m01_couplers_to_m01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_regslice_BRESP;
  assign S_AXI_bvalid = m01_couplers_to_m01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_regslice_RRESP;
  assign S_AXI_rvalid = m01_couplers_to_m01_regslice_RVALID;
  assign S_AXI_wready = m01_couplers_to_m01_regslice_WREADY;
  assign m01_couplers_to_m01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m01_couplers_to_m01_regslice_ARVALID = S_AXI_arvalid;
  assign m01_couplers_to_m01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m01_couplers_to_m01_regslice_AWVALID = S_AXI_awvalid;
  assign m01_couplers_to_m01_regslice_BREADY = S_AXI_bready;
  assign m01_couplers_to_m01_regslice_RREADY = S_AXI_rready;
  assign m01_couplers_to_m01_regslice_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_regslice_WVALID = S_AXI_wvalid;
  assign m01_regslice_to_m01_couplers_ARREADY = M_AXI_arready;
  assign m01_regslice_to_m01_couplers_AWREADY = M_AXI_awready;
  assign m01_regslice_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_regslice_to_m01_couplers_BVALID = M_AXI_bvalid;
  assign m01_regslice_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_regslice_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_regslice_to_m01_couplers_RVALID = M_AXI_rvalid;
  assign m01_regslice_to_m01_couplers_WREADY = M_AXI_wready;
  zedboard_base_m01_regslice_3 m01_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m01_regslice_to_m01_couplers_ARADDR),
        .m_axi_arprot(m01_regslice_to_m01_couplers_ARPROT),
        .m_axi_arready(m01_regslice_to_m01_couplers_ARREADY),
        .m_axi_arvalid(m01_regslice_to_m01_couplers_ARVALID),
        .m_axi_awaddr(m01_regslice_to_m01_couplers_AWADDR),
        .m_axi_awprot(m01_regslice_to_m01_couplers_AWPROT),
        .m_axi_awready(m01_regslice_to_m01_couplers_AWREADY),
        .m_axi_awvalid(m01_regslice_to_m01_couplers_AWVALID),
        .m_axi_bready(m01_regslice_to_m01_couplers_BREADY),
        .m_axi_bresp(m01_regslice_to_m01_couplers_BRESP),
        .m_axi_bvalid(m01_regslice_to_m01_couplers_BVALID),
        .m_axi_rdata(m01_regslice_to_m01_couplers_RDATA),
        .m_axi_rready(m01_regslice_to_m01_couplers_RREADY),
        .m_axi_rresp(m01_regslice_to_m01_couplers_RRESP),
        .m_axi_rvalid(m01_regslice_to_m01_couplers_RVALID),
        .m_axi_wdata(m01_regslice_to_m01_couplers_WDATA),
        .m_axi_wready(m01_regslice_to_m01_couplers_WREADY),
        .m_axi_wstrb(m01_regslice_to_m01_couplers_WSTRB),
        .m_axi_wvalid(m01_regslice_to_m01_couplers_WVALID),
        .s_axi_araddr(m01_couplers_to_m01_regslice_ARADDR[3:0]),
        .s_axi_arprot(m01_couplers_to_m01_regslice_ARPROT),
        .s_axi_arready(m01_couplers_to_m01_regslice_ARREADY),
        .s_axi_arvalid(m01_couplers_to_m01_regslice_ARVALID),
        .s_axi_awaddr(m01_couplers_to_m01_regslice_AWADDR[3:0]),
        .s_axi_awprot(m01_couplers_to_m01_regslice_AWPROT),
        .s_axi_awready(m01_couplers_to_m01_regslice_AWREADY),
        .s_axi_awvalid(m01_couplers_to_m01_regslice_AWVALID),
        .s_axi_bready(m01_couplers_to_m01_regslice_BREADY),
        .s_axi_bresp(m01_couplers_to_m01_regslice_BRESP),
        .s_axi_bvalid(m01_couplers_to_m01_regslice_BVALID),
        .s_axi_rdata(m01_couplers_to_m01_regslice_RDATA),
        .s_axi_rready(m01_couplers_to_m01_regslice_RREADY),
        .s_axi_rresp(m01_couplers_to_m01_regslice_RRESP),
        .s_axi_rvalid(m01_couplers_to_m01_regslice_RVALID),
        .s_axi_wdata(m01_couplers_to_m01_regslice_WDATA),
        .s_axi_wready(m01_couplers_to_m01_regslice_WREADY),
        .s_axi_wstrb(m01_couplers_to_m01_regslice_WSTRB),
        .s_axi_wvalid(m01_couplers_to_m01_regslice_WVALID));
endmodule

module m02_couplers_imp_BYT0F1
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [31:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [31:0]m02_couplers_to_m02_regslice_RDATA;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [31:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [3:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [31:0]m02_regslice_to_m02_couplers_ARADDR;
  wire [2:0]m02_regslice_to_m02_couplers_ARPROT;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [31:0]m02_regslice_to_m02_couplers_AWADDR;
  wire [2:0]m02_regslice_to_m02_couplers_AWPROT;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m02_regslice_to_m02_couplers_ARPROT;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m02_regslice_to_m02_couplers_AWPROT;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  zedboard_base_m02_regslice_3 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arprot(m02_regslice_to_m02_couplers_ARPROT),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awprot(m02_regslice_to_m02_couplers_AWPROT),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m02_couplers_imp_V7OBWR
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awregion,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [3:0]M_AXI_awregion;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m02_couplers_to_m02_regslice_ARADDR;
  wire [1:0]m02_couplers_to_m02_regslice_ARBURST;
  wire [3:0]m02_couplers_to_m02_regslice_ARCACHE;
  wire [11:0]m02_couplers_to_m02_regslice_ARID;
  wire [7:0]m02_couplers_to_m02_regslice_ARLEN;
  wire [0:0]m02_couplers_to_m02_regslice_ARLOCK;
  wire [2:0]m02_couplers_to_m02_regslice_ARPROT;
  wire [3:0]m02_couplers_to_m02_regslice_ARQOS;
  wire m02_couplers_to_m02_regslice_ARREADY;
  wire [3:0]m02_couplers_to_m02_regslice_ARREGION;
  wire [2:0]m02_couplers_to_m02_regslice_ARSIZE;
  wire m02_couplers_to_m02_regslice_ARVALID;
  wire [31:0]m02_couplers_to_m02_regslice_AWADDR;
  wire [1:0]m02_couplers_to_m02_regslice_AWBURST;
  wire [3:0]m02_couplers_to_m02_regslice_AWCACHE;
  wire [11:0]m02_couplers_to_m02_regslice_AWID;
  wire [7:0]m02_couplers_to_m02_regslice_AWLEN;
  wire [0:0]m02_couplers_to_m02_regslice_AWLOCK;
  wire [2:0]m02_couplers_to_m02_regslice_AWPROT;
  wire [3:0]m02_couplers_to_m02_regslice_AWQOS;
  wire m02_couplers_to_m02_regslice_AWREADY;
  wire [3:0]m02_couplers_to_m02_regslice_AWREGION;
  wire [2:0]m02_couplers_to_m02_regslice_AWSIZE;
  wire m02_couplers_to_m02_regslice_AWVALID;
  wire [11:0]m02_couplers_to_m02_regslice_BID;
  wire m02_couplers_to_m02_regslice_BREADY;
  wire [1:0]m02_couplers_to_m02_regslice_BRESP;
  wire m02_couplers_to_m02_regslice_BVALID;
  wire [31:0]m02_couplers_to_m02_regslice_RDATA;
  wire [11:0]m02_couplers_to_m02_regslice_RID;
  wire m02_couplers_to_m02_regslice_RLAST;
  wire m02_couplers_to_m02_regslice_RREADY;
  wire [1:0]m02_couplers_to_m02_regslice_RRESP;
  wire m02_couplers_to_m02_regslice_RVALID;
  wire [31:0]m02_couplers_to_m02_regslice_WDATA;
  wire m02_couplers_to_m02_regslice_WLAST;
  wire m02_couplers_to_m02_regslice_WREADY;
  wire [3:0]m02_couplers_to_m02_regslice_WSTRB;
  wire m02_couplers_to_m02_regslice_WVALID;
  wire [31:0]m02_regslice_to_m02_couplers_ARADDR;
  wire [1:0]m02_regslice_to_m02_couplers_ARBURST;
  wire [3:0]m02_regslice_to_m02_couplers_ARCACHE;
  wire [11:0]m02_regslice_to_m02_couplers_ARID;
  wire [7:0]m02_regslice_to_m02_couplers_ARLEN;
  wire [0:0]m02_regslice_to_m02_couplers_ARLOCK;
  wire [2:0]m02_regslice_to_m02_couplers_ARPROT;
  wire [3:0]m02_regslice_to_m02_couplers_ARQOS;
  wire m02_regslice_to_m02_couplers_ARREADY;
  wire [3:0]m02_regslice_to_m02_couplers_ARREGION;
  wire [2:0]m02_regslice_to_m02_couplers_ARSIZE;
  wire m02_regslice_to_m02_couplers_ARVALID;
  wire [31:0]m02_regslice_to_m02_couplers_AWADDR;
  wire [1:0]m02_regslice_to_m02_couplers_AWBURST;
  wire [3:0]m02_regslice_to_m02_couplers_AWCACHE;
  wire [11:0]m02_regslice_to_m02_couplers_AWID;
  wire [7:0]m02_regslice_to_m02_couplers_AWLEN;
  wire [0:0]m02_regslice_to_m02_couplers_AWLOCK;
  wire [2:0]m02_regslice_to_m02_couplers_AWPROT;
  wire [3:0]m02_regslice_to_m02_couplers_AWQOS;
  wire m02_regslice_to_m02_couplers_AWREADY;
  wire [3:0]m02_regslice_to_m02_couplers_AWREGION;
  wire [2:0]m02_regslice_to_m02_couplers_AWSIZE;
  wire m02_regslice_to_m02_couplers_AWVALID;
  wire [11:0]m02_regslice_to_m02_couplers_BID;
  wire m02_regslice_to_m02_couplers_BREADY;
  wire [1:0]m02_regslice_to_m02_couplers_BRESP;
  wire m02_regslice_to_m02_couplers_BVALID;
  wire [31:0]m02_regslice_to_m02_couplers_RDATA;
  wire [11:0]m02_regslice_to_m02_couplers_RID;
  wire m02_regslice_to_m02_couplers_RLAST;
  wire m02_regslice_to_m02_couplers_RREADY;
  wire [1:0]m02_regslice_to_m02_couplers_RRESP;
  wire m02_regslice_to_m02_couplers_RVALID;
  wire [31:0]m02_regslice_to_m02_couplers_WDATA;
  wire m02_regslice_to_m02_couplers_WLAST;
  wire m02_regslice_to_m02_couplers_WREADY;
  wire [3:0]m02_regslice_to_m02_couplers_WSTRB;
  wire m02_regslice_to_m02_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m02_regslice_to_m02_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m02_regslice_to_m02_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m02_regslice_to_m02_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m02_regslice_to_m02_couplers_ARID;
  assign M_AXI_arlen[7:0] = m02_regslice_to_m02_couplers_ARLEN;
  assign M_AXI_arlock[0] = m02_regslice_to_m02_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m02_regslice_to_m02_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m02_regslice_to_m02_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m02_regslice_to_m02_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m02_regslice_to_m02_couplers_ARSIZE;
  assign M_AXI_arvalid = m02_regslice_to_m02_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m02_regslice_to_m02_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = m02_regslice_to_m02_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = m02_regslice_to_m02_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = m02_regslice_to_m02_couplers_AWID;
  assign M_AXI_awlen[7:0] = m02_regslice_to_m02_couplers_AWLEN;
  assign M_AXI_awlock[0] = m02_regslice_to_m02_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = m02_regslice_to_m02_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = m02_regslice_to_m02_couplers_AWQOS;
  assign M_AXI_awregion[3:0] = m02_regslice_to_m02_couplers_AWREGION;
  assign M_AXI_awsize[2:0] = m02_regslice_to_m02_couplers_AWSIZE;
  assign M_AXI_awvalid = m02_regslice_to_m02_couplers_AWVALID;
  assign M_AXI_bready = m02_regslice_to_m02_couplers_BREADY;
  assign M_AXI_rready = m02_regslice_to_m02_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m02_regslice_to_m02_couplers_WDATA;
  assign M_AXI_wlast = m02_regslice_to_m02_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = m02_regslice_to_m02_couplers_WSTRB;
  assign M_AXI_wvalid = m02_regslice_to_m02_couplers_WVALID;
  assign S_AXI_arready = m02_couplers_to_m02_regslice_ARREADY;
  assign S_AXI_awready = m02_couplers_to_m02_regslice_AWREADY;
  assign S_AXI_bid[11:0] = m02_couplers_to_m02_regslice_BID;
  assign S_AXI_bresp[1:0] = m02_couplers_to_m02_regslice_BRESP;
  assign S_AXI_bvalid = m02_couplers_to_m02_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m02_couplers_to_m02_regslice_RDATA;
  assign S_AXI_rid[11:0] = m02_couplers_to_m02_regslice_RID;
  assign S_AXI_rlast = m02_couplers_to_m02_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m02_couplers_to_m02_regslice_RRESP;
  assign S_AXI_rvalid = m02_couplers_to_m02_regslice_RVALID;
  assign S_AXI_wready = m02_couplers_to_m02_regslice_WREADY;
  assign m02_couplers_to_m02_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m02_couplers_to_m02_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m02_couplers_to_m02_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m02_couplers_to_m02_regslice_ARID = S_AXI_arid[11:0];
  assign m02_couplers_to_m02_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m02_couplers_to_m02_regslice_ARLOCK = S_AXI_arlock[0];
  assign m02_couplers_to_m02_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m02_couplers_to_m02_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m02_couplers_to_m02_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m02_couplers_to_m02_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m02_couplers_to_m02_regslice_ARVALID = S_AXI_arvalid;
  assign m02_couplers_to_m02_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m02_couplers_to_m02_regslice_AWBURST = S_AXI_awburst[1:0];
  assign m02_couplers_to_m02_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign m02_couplers_to_m02_regslice_AWID = S_AXI_awid[11:0];
  assign m02_couplers_to_m02_regslice_AWLEN = S_AXI_awlen[7:0];
  assign m02_couplers_to_m02_regslice_AWLOCK = S_AXI_awlock[0];
  assign m02_couplers_to_m02_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m02_couplers_to_m02_regslice_AWQOS = S_AXI_awqos[3:0];
  assign m02_couplers_to_m02_regslice_AWREGION = S_AXI_awregion[3:0];
  assign m02_couplers_to_m02_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign m02_couplers_to_m02_regslice_AWVALID = S_AXI_awvalid;
  assign m02_couplers_to_m02_regslice_BREADY = S_AXI_bready;
  assign m02_couplers_to_m02_regslice_RREADY = S_AXI_rready;
  assign m02_couplers_to_m02_regslice_WDATA = S_AXI_wdata[31:0];
  assign m02_couplers_to_m02_regslice_WLAST = S_AXI_wlast;
  assign m02_couplers_to_m02_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m02_couplers_to_m02_regslice_WVALID = S_AXI_wvalid;
  assign m02_regslice_to_m02_couplers_ARREADY = M_AXI_arready;
  assign m02_regslice_to_m02_couplers_AWREADY = M_AXI_awready;
  assign m02_regslice_to_m02_couplers_BID = M_AXI_bid[11:0];
  assign m02_regslice_to_m02_couplers_BRESP = M_AXI_bresp[1:0];
  assign m02_regslice_to_m02_couplers_BVALID = M_AXI_bvalid;
  assign m02_regslice_to_m02_couplers_RDATA = M_AXI_rdata[31:0];
  assign m02_regslice_to_m02_couplers_RID = M_AXI_rid[11:0];
  assign m02_regslice_to_m02_couplers_RLAST = M_AXI_rlast;
  assign m02_regslice_to_m02_couplers_RRESP = M_AXI_rresp[1:0];
  assign m02_regslice_to_m02_couplers_RVALID = M_AXI_rvalid;
  assign m02_regslice_to_m02_couplers_WREADY = M_AXI_wready;
  zedboard_base_m02_regslice_2 m02_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m02_regslice_to_m02_couplers_ARADDR),
        .m_axi_arburst(m02_regslice_to_m02_couplers_ARBURST),
        .m_axi_arcache(m02_regslice_to_m02_couplers_ARCACHE),
        .m_axi_arid(m02_regslice_to_m02_couplers_ARID),
        .m_axi_arlen(m02_regslice_to_m02_couplers_ARLEN),
        .m_axi_arlock(m02_regslice_to_m02_couplers_ARLOCK),
        .m_axi_arprot(m02_regslice_to_m02_couplers_ARPROT),
        .m_axi_arqos(m02_regslice_to_m02_couplers_ARQOS),
        .m_axi_arready(m02_regslice_to_m02_couplers_ARREADY),
        .m_axi_arregion(m02_regslice_to_m02_couplers_ARREGION),
        .m_axi_arsize(m02_regslice_to_m02_couplers_ARSIZE),
        .m_axi_arvalid(m02_regslice_to_m02_couplers_ARVALID),
        .m_axi_awaddr(m02_regslice_to_m02_couplers_AWADDR),
        .m_axi_awburst(m02_regslice_to_m02_couplers_AWBURST),
        .m_axi_awcache(m02_regslice_to_m02_couplers_AWCACHE),
        .m_axi_awid(m02_regslice_to_m02_couplers_AWID),
        .m_axi_awlen(m02_regslice_to_m02_couplers_AWLEN),
        .m_axi_awlock(m02_regslice_to_m02_couplers_AWLOCK),
        .m_axi_awprot(m02_regslice_to_m02_couplers_AWPROT),
        .m_axi_awqos(m02_regslice_to_m02_couplers_AWQOS),
        .m_axi_awready(m02_regslice_to_m02_couplers_AWREADY),
        .m_axi_awregion(m02_regslice_to_m02_couplers_AWREGION),
        .m_axi_awsize(m02_regslice_to_m02_couplers_AWSIZE),
        .m_axi_awvalid(m02_regslice_to_m02_couplers_AWVALID),
        .m_axi_bid(m02_regslice_to_m02_couplers_BID),
        .m_axi_bready(m02_regslice_to_m02_couplers_BREADY),
        .m_axi_bresp(m02_regslice_to_m02_couplers_BRESP),
        .m_axi_bvalid(m02_regslice_to_m02_couplers_BVALID),
        .m_axi_rdata(m02_regslice_to_m02_couplers_RDATA),
        .m_axi_rid(m02_regslice_to_m02_couplers_RID),
        .m_axi_rlast(m02_regslice_to_m02_couplers_RLAST),
        .m_axi_rready(m02_regslice_to_m02_couplers_RREADY),
        .m_axi_rresp(m02_regslice_to_m02_couplers_RRESP),
        .m_axi_rvalid(m02_regslice_to_m02_couplers_RVALID),
        .m_axi_wdata(m02_regslice_to_m02_couplers_WDATA),
        .m_axi_wlast(m02_regslice_to_m02_couplers_WLAST),
        .m_axi_wready(m02_regslice_to_m02_couplers_WREADY),
        .m_axi_wstrb(m02_regslice_to_m02_couplers_WSTRB),
        .m_axi_wvalid(m02_regslice_to_m02_couplers_WVALID),
        .s_axi_araddr(m02_couplers_to_m02_regslice_ARADDR),
        .s_axi_arburst(m02_couplers_to_m02_regslice_ARBURST),
        .s_axi_arcache(m02_couplers_to_m02_regslice_ARCACHE),
        .s_axi_arid(m02_couplers_to_m02_regslice_ARID),
        .s_axi_arlen(m02_couplers_to_m02_regslice_ARLEN),
        .s_axi_arlock(m02_couplers_to_m02_regslice_ARLOCK),
        .s_axi_arprot(m02_couplers_to_m02_regslice_ARPROT),
        .s_axi_arqos(m02_couplers_to_m02_regslice_ARQOS),
        .s_axi_arready(m02_couplers_to_m02_regslice_ARREADY),
        .s_axi_arregion(m02_couplers_to_m02_regslice_ARREGION),
        .s_axi_arsize(m02_couplers_to_m02_regslice_ARSIZE),
        .s_axi_arvalid(m02_couplers_to_m02_regslice_ARVALID),
        .s_axi_awaddr(m02_couplers_to_m02_regslice_AWADDR),
        .s_axi_awburst(m02_couplers_to_m02_regslice_AWBURST),
        .s_axi_awcache(m02_couplers_to_m02_regslice_AWCACHE),
        .s_axi_awid(m02_couplers_to_m02_regslice_AWID),
        .s_axi_awlen(m02_couplers_to_m02_regslice_AWLEN),
        .s_axi_awlock(m02_couplers_to_m02_regslice_AWLOCK),
        .s_axi_awprot(m02_couplers_to_m02_regslice_AWPROT),
        .s_axi_awqos(m02_couplers_to_m02_regslice_AWQOS),
        .s_axi_awready(m02_couplers_to_m02_regslice_AWREADY),
        .s_axi_awregion(m02_couplers_to_m02_regslice_AWREGION),
        .s_axi_awsize(m02_couplers_to_m02_regslice_AWSIZE),
        .s_axi_awvalid(m02_couplers_to_m02_regslice_AWVALID),
        .s_axi_bid(m02_couplers_to_m02_regslice_BID),
        .s_axi_bready(m02_couplers_to_m02_regslice_BREADY),
        .s_axi_bresp(m02_couplers_to_m02_regslice_BRESP),
        .s_axi_bvalid(m02_couplers_to_m02_regslice_BVALID),
        .s_axi_rdata(m02_couplers_to_m02_regslice_RDATA),
        .s_axi_rid(m02_couplers_to_m02_regslice_RID),
        .s_axi_rlast(m02_couplers_to_m02_regslice_RLAST),
        .s_axi_rready(m02_couplers_to_m02_regslice_RREADY),
        .s_axi_rresp(m02_couplers_to_m02_regslice_RRESP),
        .s_axi_rvalid(m02_couplers_to_m02_regslice_RVALID),
        .s_axi_wdata(m02_couplers_to_m02_regslice_WDATA),
        .s_axi_wlast(m02_couplers_to_m02_regslice_WLAST),
        .s_axi_wready(m02_couplers_to_m02_regslice_WREADY),
        .s_axi_wstrb(m02_couplers_to_m02_regslice_WSTRB),
        .s_axi_wvalid(m02_couplers_to_m02_regslice_WVALID));
endmodule

module m03_couplers_imp_1CX94EH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m03_couplers_to_m03_regslice_ARADDR;
  wire [2:0]m03_couplers_to_m03_regslice_ARPROT;
  wire m03_couplers_to_m03_regslice_ARREADY;
  wire m03_couplers_to_m03_regslice_ARVALID;
  wire [31:0]m03_couplers_to_m03_regslice_AWADDR;
  wire [2:0]m03_couplers_to_m03_regslice_AWPROT;
  wire m03_couplers_to_m03_regslice_AWREADY;
  wire m03_couplers_to_m03_regslice_AWVALID;
  wire m03_couplers_to_m03_regslice_BREADY;
  wire [1:0]m03_couplers_to_m03_regslice_BRESP;
  wire m03_couplers_to_m03_regslice_BVALID;
  wire [31:0]m03_couplers_to_m03_regslice_RDATA;
  wire m03_couplers_to_m03_regslice_RREADY;
  wire [1:0]m03_couplers_to_m03_regslice_RRESP;
  wire m03_couplers_to_m03_regslice_RVALID;
  wire [31:0]m03_couplers_to_m03_regslice_WDATA;
  wire m03_couplers_to_m03_regslice_WREADY;
  wire [3:0]m03_couplers_to_m03_regslice_WSTRB;
  wire m03_couplers_to_m03_regslice_WVALID;
  wire [7:0]m03_regslice_to_m03_couplers_ARADDR;
  wire [2:0]m03_regslice_to_m03_couplers_ARPROT;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [7:0]m03_regslice_to_m03_couplers_AWADDR;
  wire [2:0]m03_regslice_to_m03_couplers_AWPROT;
  wire m03_regslice_to_m03_couplers_AWREADY;
  wire m03_regslice_to_m03_couplers_AWVALID;
  wire m03_regslice_to_m03_couplers_BREADY;
  wire [1:0]m03_regslice_to_m03_couplers_BRESP;
  wire m03_regslice_to_m03_couplers_BVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_WDATA;
  wire m03_regslice_to_m03_couplers_WREADY;
  wire [3:0]m03_regslice_to_m03_couplers_WSTRB;
  wire m03_regslice_to_m03_couplers_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[7:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = m03_regslice_to_m03_couplers_ARPROT;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = m03_regslice_to_m03_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = m03_regslice_to_m03_couplers_AWPROT;
  assign M_AXI_awvalid = m03_regslice_to_m03_couplers_AWVALID;
  assign M_AXI_bready = m03_regslice_to_m03_couplers_BREADY;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m03_regslice_to_m03_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m03_regslice_to_m03_couplers_WSTRB;
  assign M_AXI_wvalid = m03_regslice_to_m03_couplers_WVALID;
  assign S_AXI_arready = m03_couplers_to_m03_regslice_ARREADY;
  assign S_AXI_awready = m03_couplers_to_m03_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = m03_couplers_to_m03_regslice_BRESP;
  assign S_AXI_bvalid = m03_couplers_to_m03_regslice_BVALID;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_regslice_RDATA;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_regslice_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_regslice_RVALID;
  assign S_AXI_wready = m03_couplers_to_m03_regslice_WREADY;
  assign m03_couplers_to_m03_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_regslice_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign m03_couplers_to_m03_regslice_AWPROT = S_AXI_awprot[2:0];
  assign m03_couplers_to_m03_regslice_AWVALID = S_AXI_awvalid;
  assign m03_couplers_to_m03_regslice_BREADY = S_AXI_bready;
  assign m03_couplers_to_m03_regslice_RREADY = S_AXI_rready;
  assign m03_couplers_to_m03_regslice_WDATA = S_AXI_wdata[31:0];
  assign m03_couplers_to_m03_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign m03_couplers_to_m03_regslice_WVALID = S_AXI_wvalid;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_AWREADY = M_AXI_awready;
  assign m03_regslice_to_m03_couplers_BRESP = M_AXI_bresp[1:0];
  assign m03_regslice_to_m03_couplers_BVALID = M_AXI_bvalid;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  assign m03_regslice_to_m03_couplers_WREADY = M_AXI_wready;
  zedboard_base_m03_regslice_3 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arprot(m03_regslice_to_m03_couplers_ARPROT),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_awaddr(m03_regslice_to_m03_couplers_AWADDR),
        .m_axi_awprot(m03_regslice_to_m03_couplers_AWPROT),
        .m_axi_awready(m03_regslice_to_m03_couplers_AWREADY),
        .m_axi_awvalid(m03_regslice_to_m03_couplers_AWVALID),
        .m_axi_bready(m03_regslice_to_m03_couplers_BREADY),
        .m_axi_bresp(m03_regslice_to_m03_couplers_BRESP),
        .m_axi_bvalid(m03_regslice_to_m03_couplers_BVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .m_axi_wdata(m03_regslice_to_m03_couplers_WDATA),
        .m_axi_wready(m03_regslice_to_m03_couplers_WREADY),
        .m_axi_wstrb(m03_regslice_to_m03_couplers_WSTRB),
        .m_axi_wvalid(m03_regslice_to_m03_couplers_WVALID),
        .s_axi_araddr(m03_couplers_to_m03_regslice_ARADDR[7:0]),
        .s_axi_arprot(m03_couplers_to_m03_regslice_ARPROT),
        .s_axi_arready(m03_couplers_to_m03_regslice_ARREADY),
        .s_axi_arvalid(m03_couplers_to_m03_regslice_ARVALID),
        .s_axi_awaddr(m03_couplers_to_m03_regslice_AWADDR[7:0]),
        .s_axi_awprot(m03_couplers_to_m03_regslice_AWPROT),
        .s_axi_awready(m03_couplers_to_m03_regslice_AWREADY),
        .s_axi_awvalid(m03_couplers_to_m03_regslice_AWVALID),
        .s_axi_bready(m03_couplers_to_m03_regslice_BREADY),
        .s_axi_bresp(m03_couplers_to_m03_regslice_BRESP),
        .s_axi_bvalid(m03_couplers_to_m03_regslice_BVALID),
        .s_axi_rdata(m03_couplers_to_m03_regslice_RDATA),
        .s_axi_rready(m03_couplers_to_m03_regslice_RREADY),
        .s_axi_rresp(m03_couplers_to_m03_regslice_RRESP),
        .s_axi_rvalid(m03_couplers_to_m03_regslice_RVALID),
        .s_axi_wdata(m03_couplers_to_m03_regslice_WDATA),
        .s_axi_wready(m03_couplers_to_m03_regslice_WREADY),
        .s_axi_wstrb(m03_couplers_to_m03_regslice_WSTRB),
        .s_axi_wvalid(m03_couplers_to_m03_regslice_WVALID));
endmodule

module m03_couplers_imp_1T7VJJ3
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arregion,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [3:0]M_AXI_arregion;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire [31:0]m03_couplers_to_m03_regslice_ARADDR;
  wire [1:0]m03_couplers_to_m03_regslice_ARBURST;
  wire [3:0]m03_couplers_to_m03_regslice_ARCACHE;
  wire [11:0]m03_couplers_to_m03_regslice_ARID;
  wire [7:0]m03_couplers_to_m03_regslice_ARLEN;
  wire [0:0]m03_couplers_to_m03_regslice_ARLOCK;
  wire [2:0]m03_couplers_to_m03_regslice_ARPROT;
  wire [3:0]m03_couplers_to_m03_regslice_ARQOS;
  wire m03_couplers_to_m03_regslice_ARREADY;
  wire [3:0]m03_couplers_to_m03_regslice_ARREGION;
  wire [2:0]m03_couplers_to_m03_regslice_ARSIZE;
  wire m03_couplers_to_m03_regslice_ARVALID;
  wire [31:0]m03_couplers_to_m03_regslice_RDATA;
  wire [11:0]m03_couplers_to_m03_regslice_RID;
  wire m03_couplers_to_m03_regslice_RLAST;
  wire m03_couplers_to_m03_regslice_RREADY;
  wire [1:0]m03_couplers_to_m03_regslice_RRESP;
  wire m03_couplers_to_m03_regslice_RVALID;
  wire [31:0]m03_regslice_to_m03_couplers_ARADDR;
  wire [1:0]m03_regslice_to_m03_couplers_ARBURST;
  wire [3:0]m03_regslice_to_m03_couplers_ARCACHE;
  wire [11:0]m03_regslice_to_m03_couplers_ARID;
  wire [7:0]m03_regslice_to_m03_couplers_ARLEN;
  wire [0:0]m03_regslice_to_m03_couplers_ARLOCK;
  wire [2:0]m03_regslice_to_m03_couplers_ARPROT;
  wire [3:0]m03_regslice_to_m03_couplers_ARQOS;
  wire m03_regslice_to_m03_couplers_ARREADY;
  wire [3:0]m03_regslice_to_m03_couplers_ARREGION;
  wire [2:0]m03_regslice_to_m03_couplers_ARSIZE;
  wire m03_regslice_to_m03_couplers_ARVALID;
  wire [31:0]m03_regslice_to_m03_couplers_RDATA;
  wire [11:0]m03_regslice_to_m03_couplers_RID;
  wire m03_regslice_to_m03_couplers_RLAST;
  wire m03_regslice_to_m03_couplers_RREADY;
  wire [1:0]m03_regslice_to_m03_couplers_RRESP;
  wire m03_regslice_to_m03_couplers_RVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = m03_regslice_to_m03_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = m03_regslice_to_m03_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = m03_regslice_to_m03_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = m03_regslice_to_m03_couplers_ARID;
  assign M_AXI_arlen[7:0] = m03_regslice_to_m03_couplers_ARLEN;
  assign M_AXI_arlock[0] = m03_regslice_to_m03_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = m03_regslice_to_m03_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = m03_regslice_to_m03_couplers_ARQOS;
  assign M_AXI_arregion[3:0] = m03_regslice_to_m03_couplers_ARREGION;
  assign M_AXI_arsize[2:0] = m03_regslice_to_m03_couplers_ARSIZE;
  assign M_AXI_arvalid = m03_regslice_to_m03_couplers_ARVALID;
  assign M_AXI_rready = m03_regslice_to_m03_couplers_RREADY;
  assign S_AXI_arready = m03_couplers_to_m03_regslice_ARREADY;
  assign S_AXI_rdata[31:0] = m03_couplers_to_m03_regslice_RDATA;
  assign S_AXI_rid[11:0] = m03_couplers_to_m03_regslice_RID;
  assign S_AXI_rlast = m03_couplers_to_m03_regslice_RLAST;
  assign S_AXI_rresp[1:0] = m03_couplers_to_m03_regslice_RRESP;
  assign S_AXI_rvalid = m03_couplers_to_m03_regslice_RVALID;
  assign m03_couplers_to_m03_regslice_ARADDR = S_AXI_araddr[31:0];
  assign m03_couplers_to_m03_regslice_ARBURST = S_AXI_arburst[1:0];
  assign m03_couplers_to_m03_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign m03_couplers_to_m03_regslice_ARID = S_AXI_arid[11:0];
  assign m03_couplers_to_m03_regslice_ARLEN = S_AXI_arlen[7:0];
  assign m03_couplers_to_m03_regslice_ARLOCK = S_AXI_arlock[0];
  assign m03_couplers_to_m03_regslice_ARPROT = S_AXI_arprot[2:0];
  assign m03_couplers_to_m03_regslice_ARQOS = S_AXI_arqos[3:0];
  assign m03_couplers_to_m03_regslice_ARREGION = S_AXI_arregion[3:0];
  assign m03_couplers_to_m03_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign m03_couplers_to_m03_regslice_ARVALID = S_AXI_arvalid;
  assign m03_couplers_to_m03_regslice_RREADY = S_AXI_rready;
  assign m03_regslice_to_m03_couplers_ARREADY = M_AXI_arready;
  assign m03_regslice_to_m03_couplers_RDATA = M_AXI_rdata[31:0];
  assign m03_regslice_to_m03_couplers_RID = M_AXI_rid[11:0];
  assign m03_regslice_to_m03_couplers_RLAST = M_AXI_rlast;
  assign m03_regslice_to_m03_couplers_RRESP = M_AXI_rresp[1:0];
  assign m03_regslice_to_m03_couplers_RVALID = M_AXI_rvalid;
  zedboard_base_m03_regslice_2 m03_regslice
       (.aclk(M_ACLK_1),
        .aresetn(M_ARESETN_1),
        .m_axi_araddr(m03_regslice_to_m03_couplers_ARADDR),
        .m_axi_arburst(m03_regslice_to_m03_couplers_ARBURST),
        .m_axi_arcache(m03_regslice_to_m03_couplers_ARCACHE),
        .m_axi_arid(m03_regslice_to_m03_couplers_ARID),
        .m_axi_arlen(m03_regslice_to_m03_couplers_ARLEN),
        .m_axi_arlock(m03_regslice_to_m03_couplers_ARLOCK),
        .m_axi_arprot(m03_regslice_to_m03_couplers_ARPROT),
        .m_axi_arqos(m03_regslice_to_m03_couplers_ARQOS),
        .m_axi_arready(m03_regslice_to_m03_couplers_ARREADY),
        .m_axi_arregion(m03_regslice_to_m03_couplers_ARREGION),
        .m_axi_arsize(m03_regslice_to_m03_couplers_ARSIZE),
        .m_axi_arvalid(m03_regslice_to_m03_couplers_ARVALID),
        .m_axi_rdata(m03_regslice_to_m03_couplers_RDATA),
        .m_axi_rid(m03_regslice_to_m03_couplers_RID),
        .m_axi_rlast(m03_regslice_to_m03_couplers_RLAST),
        .m_axi_rready(m03_regslice_to_m03_couplers_RREADY),
        .m_axi_rresp(m03_regslice_to_m03_couplers_RRESP),
        .m_axi_rvalid(m03_regslice_to_m03_couplers_RVALID),
        .s_axi_araddr(m03_couplers_to_m03_regslice_ARADDR),
        .s_axi_arburst(m03_couplers_to_m03_regslice_ARBURST),
        .s_axi_arcache(m03_couplers_to_m03_regslice_ARCACHE),
        .s_axi_arid(m03_couplers_to_m03_regslice_ARID),
        .s_axi_arlen(m03_couplers_to_m03_regslice_ARLEN),
        .s_axi_arlock(m03_couplers_to_m03_regslice_ARLOCK),
        .s_axi_arprot(m03_couplers_to_m03_regslice_ARPROT),
        .s_axi_arqos(m03_couplers_to_m03_regslice_ARQOS),
        .s_axi_arready(m03_couplers_to_m03_regslice_ARREADY),
        .s_axi_arregion(m03_couplers_to_m03_regslice_ARREGION),
        .s_axi_arsize(m03_couplers_to_m03_regslice_ARSIZE),
        .s_axi_arvalid(m03_couplers_to_m03_regslice_ARVALID),
        .s_axi_rdata(m03_couplers_to_m03_regslice_RDATA),
        .s_axi_rid(m03_couplers_to_m03_regslice_RID),
        .s_axi_rlast(m03_couplers_to_m03_regslice_RLAST),
        .s_axi_rready(m03_couplers_to_m03_regslice_RREADY),
        .s_axi_rresp(m03_couplers_to_m03_regslice_RRESP),
        .s_axi_rvalid(m03_couplers_to_m03_regslice_RVALID));
endmodule

module s00_couplers_imp_104E3TP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arid,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awid,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rid,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wid,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [11:0]M_AXI_arid;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [11:0]M_AXI_awid;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  input [11:0]M_AXI_bid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  input [11:0]M_AXI_rid;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [3:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [3:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input [11:0]S_AXI_wid;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [1:0]auto_pc_to_s00_couplers_ARBURST;
  wire [3:0]auto_pc_to_s00_couplers_ARCACHE;
  wire [11:0]auto_pc_to_s00_couplers_ARID;
  wire [7:0]auto_pc_to_s00_couplers_ARLEN;
  wire [0:0]auto_pc_to_s00_couplers_ARLOCK;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire [3:0]auto_pc_to_s00_couplers_ARQOS;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire [2:0]auto_pc_to_s00_couplers_ARSIZE;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [1:0]auto_pc_to_s00_couplers_AWBURST;
  wire [3:0]auto_pc_to_s00_couplers_AWCACHE;
  wire [11:0]auto_pc_to_s00_couplers_AWID;
  wire [7:0]auto_pc_to_s00_couplers_AWLEN;
  wire [0:0]auto_pc_to_s00_couplers_AWLOCK;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire [3:0]auto_pc_to_s00_couplers_AWQOS;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire [2:0]auto_pc_to_s00_couplers_AWSIZE;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire [11:0]auto_pc_to_s00_couplers_BID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire [11:0]auto_pc_to_s00_couplers_RID;
  wire auto_pc_to_s00_couplers_RLAST;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WLAST;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_ARID;
  wire [3:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [1:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_AWID;
  wire [3:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [1:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [11:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [11:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire [11:0]s00_couplers_to_s00_regslice_WID;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [11:0]s00_regslice_to_auto_pc_ARID;
  wire [3:0]s00_regslice_to_auto_pc_ARLEN;
  wire [1:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [11:0]s00_regslice_to_auto_pc_AWID;
  wire [3:0]s00_regslice_to_auto_pc_AWLEN;
  wire [1:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [11:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [11:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire [11:0]s00_regslice_to_auto_pc_WID;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_pc_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_pc_to_s00_couplers_ARCACHE;
  assign M_AXI_arid[11:0] = auto_pc_to_s00_couplers_ARID;
  assign M_AXI_arlen[7:0] = auto_pc_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_pc_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_pc_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_pc_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_pc_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_pc_to_s00_couplers_AWCACHE;
  assign M_AXI_awid[11:0] = auto_pc_to_s00_couplers_AWID;
  assign M_AXI_awlen[7:0] = auto_pc_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_pc_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_pc_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_pc_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_pc_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BID = M_AXI_bid[11:0];
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RID = M_AXI_rid[11:0];
  assign auto_pc_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[3:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[3:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WID = S_AXI_wid[11:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  zedboard_base_auto_pc_4 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_pc_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_pc_to_s00_couplers_ARCACHE),
        .m_axi_arid(auto_pc_to_s00_couplers_ARID),
        .m_axi_arlen(auto_pc_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_pc_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_pc_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_pc_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_pc_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_pc_to_s00_couplers_AWCACHE),
        .m_axi_awid(auto_pc_to_s00_couplers_AWID),
        .m_axi_awlen(auto_pc_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_pc_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_pc_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_pc_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bid(auto_pc_to_s00_couplers_BID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rid(auto_pc_to_s00_couplers_RID),
        .m_axi_rlast(auto_pc_to_s00_couplers_RLAST),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_pc_to_s00_couplers_WLAST),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wid(s00_regslice_to_auto_pc_WID),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
  zedboard_base_s00_regslice_2 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wid(s00_regslice_to_auto_pc_WID),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wid(s00_couplers_to_s00_regslice_WID),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1L3WTPP
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [7:0]auto_us_to_s00_couplers_ARLEN;
  wire [0:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [7:0]auto_us_to_s00_couplers_AWLEN;
  wire [0:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_us_ARADDR;
  wire [1:0]s00_couplers_to_auto_us_ARBURST;
  wire [3:0]s00_couplers_to_auto_us_ARCACHE;
  wire [7:0]s00_couplers_to_auto_us_ARLEN;
  wire [0:0]s00_couplers_to_auto_us_ARLOCK;
  wire [2:0]s00_couplers_to_auto_us_ARPROT;
  wire [3:0]s00_couplers_to_auto_us_ARQOS;
  wire s00_couplers_to_auto_us_ARREADY;
  wire [3:0]s00_couplers_to_auto_us_ARREGION;
  wire [2:0]s00_couplers_to_auto_us_ARSIZE;
  wire s00_couplers_to_auto_us_ARVALID;
  wire [31:0]s00_couplers_to_auto_us_AWADDR;
  wire [1:0]s00_couplers_to_auto_us_AWBURST;
  wire [3:0]s00_couplers_to_auto_us_AWCACHE;
  wire [7:0]s00_couplers_to_auto_us_AWLEN;
  wire [0:0]s00_couplers_to_auto_us_AWLOCK;
  wire [2:0]s00_couplers_to_auto_us_AWPROT;
  wire [3:0]s00_couplers_to_auto_us_AWQOS;
  wire s00_couplers_to_auto_us_AWREADY;
  wire [3:0]s00_couplers_to_auto_us_AWREGION;
  wire [2:0]s00_couplers_to_auto_us_AWSIZE;
  wire s00_couplers_to_auto_us_AWVALID;
  wire s00_couplers_to_auto_us_BREADY;
  wire [1:0]s00_couplers_to_auto_us_BRESP;
  wire s00_couplers_to_auto_us_BVALID;
  wire [31:0]s00_couplers_to_auto_us_RDATA;
  wire s00_couplers_to_auto_us_RLAST;
  wire s00_couplers_to_auto_us_RREADY;
  wire [1:0]s00_couplers_to_auto_us_RRESP;
  wire s00_couplers_to_auto_us_RVALID;
  wire [31:0]s00_couplers_to_auto_us_WDATA;
  wire s00_couplers_to_auto_us_WLAST;
  wire s00_couplers_to_auto_us_WREADY;
  wire [3:0]s00_couplers_to_auto_us_WSTRB;
  wire s00_couplers_to_auto_us_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_us_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_us_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_us_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_us_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_us_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_us_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_us_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_us_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_us_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_us_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_us_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_us_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_us_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_us_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_us_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_us_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_us_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_us_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_us_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_us_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_us_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_us_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_us_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_us_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_us_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_us_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_us_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_us_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_us_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_us_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_us_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_us_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_us_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_us_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_us_WVALID = S_AXI_wvalid;
  zedboard_base_auto_us_0 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s00_couplers_to_auto_us_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_us_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s00_couplers_to_auto_us_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_us_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_us_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_us_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_us_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_us_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_us_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_us_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_us_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_us_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_us_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_us_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_us_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_us_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_us_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_us_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_us_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_us_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_us_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_us_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_us_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_us_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_us_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_us_RLAST),
        .s_axi_rready(s00_couplers_to_auto_us_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_us_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_us_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_us_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_us_WLAST),
        .s_axi_wready(s00_couplers_to_auto_us_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_us_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_us_WVALID));
endmodule

module s00_couplers_imp_1OBXDQJ
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [11:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [11:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [11:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [11:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s00_couplers_ARADDR;
  wire [2:0]auto_pc_to_s00_couplers_ARPROT;
  wire auto_pc_to_s00_couplers_ARREADY;
  wire auto_pc_to_s00_couplers_ARVALID;
  wire [31:0]auto_pc_to_s00_couplers_AWADDR;
  wire [2:0]auto_pc_to_s00_couplers_AWPROT;
  wire auto_pc_to_s00_couplers_AWREADY;
  wire auto_pc_to_s00_couplers_AWVALID;
  wire auto_pc_to_s00_couplers_BREADY;
  wire [1:0]auto_pc_to_s00_couplers_BRESP;
  wire auto_pc_to_s00_couplers_BVALID;
  wire [31:0]auto_pc_to_s00_couplers_RDATA;
  wire auto_pc_to_s00_couplers_RREADY;
  wire [1:0]auto_pc_to_s00_couplers_RRESP;
  wire auto_pc_to_s00_couplers_RVALID;
  wire [31:0]auto_pc_to_s00_couplers_WDATA;
  wire auto_pc_to_s00_couplers_WREADY;
  wire [3:0]auto_pc_to_s00_couplers_WSTRB;
  wire auto_pc_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_s00_regslice_ARADDR;
  wire [1:0]s00_couplers_to_s00_regslice_ARBURST;
  wire [3:0]s00_couplers_to_s00_regslice_ARCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_ARID;
  wire [7:0]s00_couplers_to_s00_regslice_ARLEN;
  wire [0:0]s00_couplers_to_s00_regslice_ARLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_ARPROT;
  wire [3:0]s00_couplers_to_s00_regslice_ARQOS;
  wire s00_couplers_to_s00_regslice_ARREADY;
  wire [3:0]s00_couplers_to_s00_regslice_ARREGION;
  wire [2:0]s00_couplers_to_s00_regslice_ARSIZE;
  wire s00_couplers_to_s00_regslice_ARVALID;
  wire [31:0]s00_couplers_to_s00_regslice_AWADDR;
  wire [1:0]s00_couplers_to_s00_regslice_AWBURST;
  wire [3:0]s00_couplers_to_s00_regslice_AWCACHE;
  wire [11:0]s00_couplers_to_s00_regslice_AWID;
  wire [7:0]s00_couplers_to_s00_regslice_AWLEN;
  wire [0:0]s00_couplers_to_s00_regslice_AWLOCK;
  wire [2:0]s00_couplers_to_s00_regslice_AWPROT;
  wire [3:0]s00_couplers_to_s00_regslice_AWQOS;
  wire s00_couplers_to_s00_regslice_AWREADY;
  wire [3:0]s00_couplers_to_s00_regslice_AWREGION;
  wire [2:0]s00_couplers_to_s00_regslice_AWSIZE;
  wire s00_couplers_to_s00_regslice_AWVALID;
  wire [11:0]s00_couplers_to_s00_regslice_BID;
  wire s00_couplers_to_s00_regslice_BREADY;
  wire [1:0]s00_couplers_to_s00_regslice_BRESP;
  wire s00_couplers_to_s00_regslice_BVALID;
  wire [31:0]s00_couplers_to_s00_regslice_RDATA;
  wire [11:0]s00_couplers_to_s00_regslice_RID;
  wire s00_couplers_to_s00_regslice_RLAST;
  wire s00_couplers_to_s00_regslice_RREADY;
  wire [1:0]s00_couplers_to_s00_regslice_RRESP;
  wire s00_couplers_to_s00_regslice_RVALID;
  wire [31:0]s00_couplers_to_s00_regslice_WDATA;
  wire s00_couplers_to_s00_regslice_WLAST;
  wire s00_couplers_to_s00_regslice_WREADY;
  wire [3:0]s00_couplers_to_s00_regslice_WSTRB;
  wire s00_couplers_to_s00_regslice_WVALID;
  wire [31:0]s00_regslice_to_auto_pc_ARADDR;
  wire [1:0]s00_regslice_to_auto_pc_ARBURST;
  wire [3:0]s00_regslice_to_auto_pc_ARCACHE;
  wire [11:0]s00_regslice_to_auto_pc_ARID;
  wire [7:0]s00_regslice_to_auto_pc_ARLEN;
  wire [0:0]s00_regslice_to_auto_pc_ARLOCK;
  wire [2:0]s00_regslice_to_auto_pc_ARPROT;
  wire [3:0]s00_regslice_to_auto_pc_ARQOS;
  wire s00_regslice_to_auto_pc_ARREADY;
  wire [3:0]s00_regslice_to_auto_pc_ARREGION;
  wire [2:0]s00_regslice_to_auto_pc_ARSIZE;
  wire s00_regslice_to_auto_pc_ARVALID;
  wire [31:0]s00_regslice_to_auto_pc_AWADDR;
  wire [1:0]s00_regslice_to_auto_pc_AWBURST;
  wire [3:0]s00_regslice_to_auto_pc_AWCACHE;
  wire [11:0]s00_regslice_to_auto_pc_AWID;
  wire [7:0]s00_regslice_to_auto_pc_AWLEN;
  wire [0:0]s00_regslice_to_auto_pc_AWLOCK;
  wire [2:0]s00_regslice_to_auto_pc_AWPROT;
  wire [3:0]s00_regslice_to_auto_pc_AWQOS;
  wire s00_regslice_to_auto_pc_AWREADY;
  wire [3:0]s00_regslice_to_auto_pc_AWREGION;
  wire [2:0]s00_regslice_to_auto_pc_AWSIZE;
  wire s00_regslice_to_auto_pc_AWVALID;
  wire [11:0]s00_regslice_to_auto_pc_BID;
  wire s00_regslice_to_auto_pc_BREADY;
  wire [1:0]s00_regslice_to_auto_pc_BRESP;
  wire s00_regslice_to_auto_pc_BVALID;
  wire [31:0]s00_regslice_to_auto_pc_RDATA;
  wire [11:0]s00_regslice_to_auto_pc_RID;
  wire s00_regslice_to_auto_pc_RLAST;
  wire s00_regslice_to_auto_pc_RREADY;
  wire [1:0]s00_regslice_to_auto_pc_RRESP;
  wire s00_regslice_to_auto_pc_RVALID;
  wire [31:0]s00_regslice_to_auto_pc_WDATA;
  wire s00_regslice_to_auto_pc_WLAST;
  wire s00_regslice_to_auto_pc_WREADY;
  wire [3:0]s00_regslice_to_auto_pc_WSTRB;
  wire s00_regslice_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_s00_regslice_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_regslice_AWREADY;
  assign S_AXI_bid[11:0] = s00_couplers_to_s00_regslice_BID;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_regslice_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_regslice_RDATA;
  assign S_AXI_rid[11:0] = s00_couplers_to_s00_regslice_RID;
  assign S_AXI_rlast = s00_couplers_to_s00_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_regslice_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_regslice_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_regslice_WREADY;
  assign auto_pc_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_s00_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_s00_regslice_ARID = S_AXI_arid[11:0];
  assign s00_couplers_to_s00_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_s00_regslice_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_s00_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_s00_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_s00_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_s00_regslice_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_s00_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_s00_regslice_AWID = S_AXI_awid[11:0];
  assign s00_couplers_to_s00_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_s00_regslice_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_s00_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_s00_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_s00_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_s00_regslice_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_regslice_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_regslice_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_regslice_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_regslice_WLAST = S_AXI_wlast;
  assign s00_couplers_to_s00_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_regslice_WVALID = S_AXI_wvalid;
  zedboard_base_auto_pc_5 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s00_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s00_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s00_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s00_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s00_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s00_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s00_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s00_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s00_couplers_WVALID),
        .s_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .s_axi_arid(s00_regslice_to_auto_pc_ARID),
        .s_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .s_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .s_axi_awid(s00_regslice_to_auto_pc_AWID),
        .s_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .s_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .s_axi_bid(s00_regslice_to_auto_pc_BID),
        .s_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .s_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .s_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .s_axi_rid(s00_regslice_to_auto_pc_RID),
        .s_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .s_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .s_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .s_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .s_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .s_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_regslice_to_auto_pc_WVALID));
  zedboard_base_s00_regslice_3 s00_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s00_regslice_to_auto_pc_ARADDR),
        .m_axi_arburst(s00_regslice_to_auto_pc_ARBURST),
        .m_axi_arcache(s00_regslice_to_auto_pc_ARCACHE),
        .m_axi_arid(s00_regslice_to_auto_pc_ARID),
        .m_axi_arlen(s00_regslice_to_auto_pc_ARLEN),
        .m_axi_arlock(s00_regslice_to_auto_pc_ARLOCK),
        .m_axi_arprot(s00_regslice_to_auto_pc_ARPROT),
        .m_axi_arqos(s00_regslice_to_auto_pc_ARQOS),
        .m_axi_arready(s00_regslice_to_auto_pc_ARREADY),
        .m_axi_arregion(s00_regslice_to_auto_pc_ARREGION),
        .m_axi_arsize(s00_regslice_to_auto_pc_ARSIZE),
        .m_axi_arvalid(s00_regslice_to_auto_pc_ARVALID),
        .m_axi_awaddr(s00_regslice_to_auto_pc_AWADDR),
        .m_axi_awburst(s00_regslice_to_auto_pc_AWBURST),
        .m_axi_awcache(s00_regslice_to_auto_pc_AWCACHE),
        .m_axi_awid(s00_regslice_to_auto_pc_AWID),
        .m_axi_awlen(s00_regslice_to_auto_pc_AWLEN),
        .m_axi_awlock(s00_regslice_to_auto_pc_AWLOCK),
        .m_axi_awprot(s00_regslice_to_auto_pc_AWPROT),
        .m_axi_awqos(s00_regslice_to_auto_pc_AWQOS),
        .m_axi_awready(s00_regslice_to_auto_pc_AWREADY),
        .m_axi_awregion(s00_regslice_to_auto_pc_AWREGION),
        .m_axi_awsize(s00_regslice_to_auto_pc_AWSIZE),
        .m_axi_awvalid(s00_regslice_to_auto_pc_AWVALID),
        .m_axi_bid(s00_regslice_to_auto_pc_BID),
        .m_axi_bready(s00_regslice_to_auto_pc_BREADY),
        .m_axi_bresp(s00_regslice_to_auto_pc_BRESP),
        .m_axi_bvalid(s00_regslice_to_auto_pc_BVALID),
        .m_axi_rdata(s00_regslice_to_auto_pc_RDATA),
        .m_axi_rid(s00_regslice_to_auto_pc_RID),
        .m_axi_rlast(s00_regslice_to_auto_pc_RLAST),
        .m_axi_rready(s00_regslice_to_auto_pc_RREADY),
        .m_axi_rresp(s00_regslice_to_auto_pc_RRESP),
        .m_axi_rvalid(s00_regslice_to_auto_pc_RVALID),
        .m_axi_wdata(s00_regslice_to_auto_pc_WDATA),
        .m_axi_wlast(s00_regslice_to_auto_pc_WLAST),
        .m_axi_wready(s00_regslice_to_auto_pc_WREADY),
        .m_axi_wstrb(s00_regslice_to_auto_pc_WSTRB),
        .m_axi_wvalid(s00_regslice_to_auto_pc_WVALID),
        .s_axi_araddr(s00_couplers_to_s00_regslice_ARADDR),
        .s_axi_arburst(s00_couplers_to_s00_regslice_ARBURST),
        .s_axi_arcache(s00_couplers_to_s00_regslice_ARCACHE),
        .s_axi_arid(s00_couplers_to_s00_regslice_ARID),
        .s_axi_arlen(s00_couplers_to_s00_regslice_ARLEN),
        .s_axi_arlock(s00_couplers_to_s00_regslice_ARLOCK),
        .s_axi_arprot(s00_couplers_to_s00_regslice_ARPROT),
        .s_axi_arqos(s00_couplers_to_s00_regslice_ARQOS),
        .s_axi_arready(s00_couplers_to_s00_regslice_ARREADY),
        .s_axi_arregion(s00_couplers_to_s00_regslice_ARREGION),
        .s_axi_arsize(s00_couplers_to_s00_regslice_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_s00_regslice_ARVALID),
        .s_axi_awaddr(s00_couplers_to_s00_regslice_AWADDR),
        .s_axi_awburst(s00_couplers_to_s00_regslice_AWBURST),
        .s_axi_awcache(s00_couplers_to_s00_regslice_AWCACHE),
        .s_axi_awid(s00_couplers_to_s00_regslice_AWID),
        .s_axi_awlen(s00_couplers_to_s00_regslice_AWLEN),
        .s_axi_awlock(s00_couplers_to_s00_regslice_AWLOCK),
        .s_axi_awprot(s00_couplers_to_s00_regslice_AWPROT),
        .s_axi_awqos(s00_couplers_to_s00_regslice_AWQOS),
        .s_axi_awready(s00_couplers_to_s00_regslice_AWREADY),
        .s_axi_awregion(s00_couplers_to_s00_regslice_AWREGION),
        .s_axi_awsize(s00_couplers_to_s00_regslice_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_s00_regslice_AWVALID),
        .s_axi_bid(s00_couplers_to_s00_regslice_BID),
        .s_axi_bready(s00_couplers_to_s00_regslice_BREADY),
        .s_axi_bresp(s00_couplers_to_s00_regslice_BRESP),
        .s_axi_bvalid(s00_couplers_to_s00_regslice_BVALID),
        .s_axi_rdata(s00_couplers_to_s00_regslice_RDATA),
        .s_axi_rid(s00_couplers_to_s00_regslice_RID),
        .s_axi_rlast(s00_couplers_to_s00_regslice_RLAST),
        .s_axi_rready(s00_couplers_to_s00_regslice_RREADY),
        .s_axi_rresp(s00_couplers_to_s00_regslice_RRESP),
        .s_axi_rvalid(s00_couplers_to_s00_regslice_RVALID),
        .s_axi_wdata(s00_couplers_to_s00_regslice_WDATA),
        .s_axi_wlast(s00_couplers_to_s00_regslice_WLAST),
        .s_axi_wready(s00_couplers_to_s00_regslice_WREADY),
        .s_axi_wstrb(s00_couplers_to_s00_regslice_WSTRB),
        .s_axi_wvalid(s00_couplers_to_s00_regslice_WVALID));
endmodule

module s00_couplers_imp_1Z1BNT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [3:0]M_AXI_arlen;
  output [1:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [3:0]M_AXI_awlen;
  output [1:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [0:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [0:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_auto_us_ARADDR;
  wire [1:0]auto_pc_to_auto_us_ARBURST;
  wire [3:0]auto_pc_to_auto_us_ARCACHE;
  wire [3:0]auto_pc_to_auto_us_ARLEN;
  wire [1:0]auto_pc_to_auto_us_ARLOCK;
  wire [2:0]auto_pc_to_auto_us_ARPROT;
  wire [3:0]auto_pc_to_auto_us_ARQOS;
  wire auto_pc_to_auto_us_ARREADY;
  wire [2:0]auto_pc_to_auto_us_ARSIZE;
  wire auto_pc_to_auto_us_ARVALID;
  wire [31:0]auto_pc_to_auto_us_AWADDR;
  wire [1:0]auto_pc_to_auto_us_AWBURST;
  wire [3:0]auto_pc_to_auto_us_AWCACHE;
  wire [3:0]auto_pc_to_auto_us_AWLEN;
  wire [1:0]auto_pc_to_auto_us_AWLOCK;
  wire [2:0]auto_pc_to_auto_us_AWPROT;
  wire [3:0]auto_pc_to_auto_us_AWQOS;
  wire auto_pc_to_auto_us_AWREADY;
  wire [2:0]auto_pc_to_auto_us_AWSIZE;
  wire auto_pc_to_auto_us_AWVALID;
  wire auto_pc_to_auto_us_BREADY;
  wire [1:0]auto_pc_to_auto_us_BRESP;
  wire auto_pc_to_auto_us_BVALID;
  wire [31:0]auto_pc_to_auto_us_RDATA;
  wire auto_pc_to_auto_us_RLAST;
  wire auto_pc_to_auto_us_RREADY;
  wire [1:0]auto_pc_to_auto_us_RRESP;
  wire auto_pc_to_auto_us_RVALID;
  wire [31:0]auto_pc_to_auto_us_WDATA;
  wire auto_pc_to_auto_us_WLAST;
  wire auto_pc_to_auto_us_WREADY;
  wire [3:0]auto_pc_to_auto_us_WSTRB;
  wire auto_pc_to_auto_us_WVALID;
  wire [31:0]auto_us_to_s00_couplers_ARADDR;
  wire [1:0]auto_us_to_s00_couplers_ARBURST;
  wire [3:0]auto_us_to_s00_couplers_ARCACHE;
  wire [3:0]auto_us_to_s00_couplers_ARLEN;
  wire [1:0]auto_us_to_s00_couplers_ARLOCK;
  wire [2:0]auto_us_to_s00_couplers_ARPROT;
  wire [3:0]auto_us_to_s00_couplers_ARQOS;
  wire auto_us_to_s00_couplers_ARREADY;
  wire [2:0]auto_us_to_s00_couplers_ARSIZE;
  wire auto_us_to_s00_couplers_ARVALID;
  wire [31:0]auto_us_to_s00_couplers_AWADDR;
  wire [1:0]auto_us_to_s00_couplers_AWBURST;
  wire [3:0]auto_us_to_s00_couplers_AWCACHE;
  wire [3:0]auto_us_to_s00_couplers_AWLEN;
  wire [1:0]auto_us_to_s00_couplers_AWLOCK;
  wire [2:0]auto_us_to_s00_couplers_AWPROT;
  wire [3:0]auto_us_to_s00_couplers_AWQOS;
  wire auto_us_to_s00_couplers_AWREADY;
  wire [2:0]auto_us_to_s00_couplers_AWSIZE;
  wire auto_us_to_s00_couplers_AWVALID;
  wire auto_us_to_s00_couplers_BREADY;
  wire [1:0]auto_us_to_s00_couplers_BRESP;
  wire auto_us_to_s00_couplers_BVALID;
  wire [63:0]auto_us_to_s00_couplers_RDATA;
  wire auto_us_to_s00_couplers_RLAST;
  wire auto_us_to_s00_couplers_RREADY;
  wire [1:0]auto_us_to_s00_couplers_RRESP;
  wire auto_us_to_s00_couplers_RVALID;
  wire [63:0]auto_us_to_s00_couplers_WDATA;
  wire auto_us_to_s00_couplers_WLAST;
  wire auto_us_to_s00_couplers_WREADY;
  wire [7:0]auto_us_to_s00_couplers_WSTRB;
  wire auto_us_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_auto_pc_ARADDR;
  wire [1:0]s00_couplers_to_auto_pc_ARBURST;
  wire [3:0]s00_couplers_to_auto_pc_ARCACHE;
  wire [7:0]s00_couplers_to_auto_pc_ARLEN;
  wire [0:0]s00_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s00_couplers_to_auto_pc_ARPROT;
  wire [3:0]s00_couplers_to_auto_pc_ARQOS;
  wire s00_couplers_to_auto_pc_ARREADY;
  wire [3:0]s00_couplers_to_auto_pc_ARREGION;
  wire [2:0]s00_couplers_to_auto_pc_ARSIZE;
  wire s00_couplers_to_auto_pc_ARVALID;
  wire [31:0]s00_couplers_to_auto_pc_AWADDR;
  wire [1:0]s00_couplers_to_auto_pc_AWBURST;
  wire [3:0]s00_couplers_to_auto_pc_AWCACHE;
  wire [7:0]s00_couplers_to_auto_pc_AWLEN;
  wire [0:0]s00_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s00_couplers_to_auto_pc_AWPROT;
  wire [3:0]s00_couplers_to_auto_pc_AWQOS;
  wire s00_couplers_to_auto_pc_AWREADY;
  wire [3:0]s00_couplers_to_auto_pc_AWREGION;
  wire [2:0]s00_couplers_to_auto_pc_AWSIZE;
  wire s00_couplers_to_auto_pc_AWVALID;
  wire s00_couplers_to_auto_pc_BREADY;
  wire [1:0]s00_couplers_to_auto_pc_BRESP;
  wire s00_couplers_to_auto_pc_BVALID;
  wire [31:0]s00_couplers_to_auto_pc_RDATA;
  wire s00_couplers_to_auto_pc_RLAST;
  wire s00_couplers_to_auto_pc_RREADY;
  wire [1:0]s00_couplers_to_auto_pc_RRESP;
  wire s00_couplers_to_auto_pc_RVALID;
  wire [31:0]s00_couplers_to_auto_pc_WDATA;
  wire s00_couplers_to_auto_pc_WLAST;
  wire s00_couplers_to_auto_pc_WREADY;
  wire [3:0]s00_couplers_to_auto_pc_WSTRB;
  wire s00_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_us_to_s00_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_to_s00_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_to_s00_couplers_ARCACHE;
  assign M_AXI_arlen[3:0] = auto_us_to_s00_couplers_ARLEN;
  assign M_AXI_arlock[1:0] = auto_us_to_s00_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_to_s00_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_to_s00_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_to_s00_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_to_s00_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_to_s00_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_to_s00_couplers_AWCACHE;
  assign M_AXI_awlen[3:0] = auto_us_to_s00_couplers_AWLEN;
  assign M_AXI_awlock[1:0] = auto_us_to_s00_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_to_s00_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_to_s00_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_to_s00_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_to_s00_couplers_AWVALID;
  assign M_AXI_bready = auto_us_to_s00_couplers_BREADY;
  assign M_AXI_rready = auto_us_to_s00_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_to_s00_couplers_WDATA;
  assign M_AXI_wlast = auto_us_to_s00_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_to_s00_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s00_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s00_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_auto_pc_RDATA;
  assign S_AXI_rlast = s00_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s00_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s00_couplers_to_auto_pc_WREADY;
  assign auto_us_to_s00_couplers_ARREADY = M_AXI_arready;
  assign auto_us_to_s00_couplers_AWREADY = M_AXI_awready;
  assign auto_us_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_to_s00_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_to_s00_couplers_RLAST = M_AXI_rlast;
  assign auto_us_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s00_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s00_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s00_couplers_to_auto_pc_ARLOCK = S_AXI_arlock[0];
  assign s00_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s00_couplers_to_auto_pc_ARREGION = S_AXI_arregion[3:0];
  assign s00_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s00_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s00_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s00_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s00_couplers_to_auto_pc_AWLOCK = S_AXI_awlock[0];
  assign s00_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s00_couplers_to_auto_pc_AWREGION = S_AXI_awregion[3:0];
  assign s00_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s00_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s00_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s00_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s00_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  zedboard_base_auto_pc_1 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .m_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .m_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .m_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .m_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .m_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .m_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .m_axi_arready(auto_pc_to_auto_us_ARREADY),
        .m_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .m_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .m_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .m_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .m_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .m_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .m_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .m_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .m_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .m_axi_awready(auto_pc_to_auto_us_AWREADY),
        .m_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .m_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .m_axi_bready(auto_pc_to_auto_us_BREADY),
        .m_axi_bresp(auto_pc_to_auto_us_BRESP),
        .m_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .m_axi_rdata(auto_pc_to_auto_us_RDATA),
        .m_axi_rlast(auto_pc_to_auto_us_RLAST),
        .m_axi_rready(auto_pc_to_auto_us_RREADY),
        .m_axi_rresp(auto_pc_to_auto_us_RRESP),
        .m_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .m_axi_wdata(auto_pc_to_auto_us_WDATA),
        .m_axi_wlast(auto_pc_to_auto_us_WLAST),
        .m_axi_wready(auto_pc_to_auto_us_WREADY),
        .m_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .m_axi_wvalid(auto_pc_to_auto_us_WVALID),
        .s_axi_araddr(s00_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s00_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s00_couplers_to_auto_pc_ARCACHE),
        .s_axi_arlen(s00_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s00_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s00_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s00_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s00_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion(s00_couplers_to_auto_pc_ARREGION),
        .s_axi_arsize(s00_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s00_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s00_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s00_couplers_to_auto_pc_AWCACHE),
        .s_axi_awlen(s00_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s00_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s00_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s00_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s00_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion(s00_couplers_to_auto_pc_AWREGION),
        .s_axi_awsize(s00_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_auto_pc_AWVALID),
        .s_axi_bready(s00_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s00_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s00_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s00_couplers_to_auto_pc_RDATA),
        .s_axi_rlast(s00_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s00_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s00_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s00_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s00_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s00_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s00_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s00_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s00_couplers_to_auto_pc_WVALID));
  zedboard_base_auto_us_1 auto_us
       (.m_axi_araddr(auto_us_to_s00_couplers_ARADDR),
        .m_axi_arburst(auto_us_to_s00_couplers_ARBURST),
        .m_axi_arcache(auto_us_to_s00_couplers_ARCACHE),
        .m_axi_arlen(auto_us_to_s00_couplers_ARLEN),
        .m_axi_arlock(auto_us_to_s00_couplers_ARLOCK),
        .m_axi_arprot(auto_us_to_s00_couplers_ARPROT),
        .m_axi_arqos(auto_us_to_s00_couplers_ARQOS),
        .m_axi_arready(auto_us_to_s00_couplers_ARREADY),
        .m_axi_arsize(auto_us_to_s00_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_to_s00_couplers_ARVALID),
        .m_axi_awaddr(auto_us_to_s00_couplers_AWADDR),
        .m_axi_awburst(auto_us_to_s00_couplers_AWBURST),
        .m_axi_awcache(auto_us_to_s00_couplers_AWCACHE),
        .m_axi_awlen(auto_us_to_s00_couplers_AWLEN),
        .m_axi_awlock(auto_us_to_s00_couplers_AWLOCK),
        .m_axi_awprot(auto_us_to_s00_couplers_AWPROT),
        .m_axi_awqos(auto_us_to_s00_couplers_AWQOS),
        .m_axi_awready(auto_us_to_s00_couplers_AWREADY),
        .m_axi_awsize(auto_us_to_s00_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_to_s00_couplers_AWVALID),
        .m_axi_bready(auto_us_to_s00_couplers_BREADY),
        .m_axi_bresp(auto_us_to_s00_couplers_BRESP),
        .m_axi_bvalid(auto_us_to_s00_couplers_BVALID),
        .m_axi_rdata(auto_us_to_s00_couplers_RDATA),
        .m_axi_rlast(auto_us_to_s00_couplers_RLAST),
        .m_axi_rready(auto_us_to_s00_couplers_RREADY),
        .m_axi_rresp(auto_us_to_s00_couplers_RRESP),
        .m_axi_rvalid(auto_us_to_s00_couplers_RVALID),
        .m_axi_wdata(auto_us_to_s00_couplers_WDATA),
        .m_axi_wlast(auto_us_to_s00_couplers_WLAST),
        .m_axi_wready(auto_us_to_s00_couplers_WREADY),
        .m_axi_wstrb(auto_us_to_s00_couplers_WSTRB),
        .m_axi_wvalid(auto_us_to_s00_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(auto_pc_to_auto_us_ARADDR),
        .s_axi_arburst(auto_pc_to_auto_us_ARBURST),
        .s_axi_arcache(auto_pc_to_auto_us_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(auto_pc_to_auto_us_ARLEN),
        .s_axi_arlock(auto_pc_to_auto_us_ARLOCK),
        .s_axi_arprot(auto_pc_to_auto_us_ARPROT),
        .s_axi_arqos(auto_pc_to_auto_us_ARQOS),
        .s_axi_arready(auto_pc_to_auto_us_ARREADY),
        .s_axi_arsize(auto_pc_to_auto_us_ARSIZE),
        .s_axi_arvalid(auto_pc_to_auto_us_ARVALID),
        .s_axi_awaddr(auto_pc_to_auto_us_AWADDR),
        .s_axi_awburst(auto_pc_to_auto_us_AWBURST),
        .s_axi_awcache(auto_pc_to_auto_us_AWCACHE),
        .s_axi_awlen(auto_pc_to_auto_us_AWLEN),
        .s_axi_awlock(auto_pc_to_auto_us_AWLOCK),
        .s_axi_awprot(auto_pc_to_auto_us_AWPROT),
        .s_axi_awqos(auto_pc_to_auto_us_AWQOS),
        .s_axi_awready(auto_pc_to_auto_us_AWREADY),
        .s_axi_awsize(auto_pc_to_auto_us_AWSIZE),
        .s_axi_awvalid(auto_pc_to_auto_us_AWVALID),
        .s_axi_bready(auto_pc_to_auto_us_BREADY),
        .s_axi_bresp(auto_pc_to_auto_us_BRESP),
        .s_axi_bvalid(auto_pc_to_auto_us_BVALID),
        .s_axi_rdata(auto_pc_to_auto_us_RDATA),
        .s_axi_rlast(auto_pc_to_auto_us_RLAST),
        .s_axi_rready(auto_pc_to_auto_us_RREADY),
        .s_axi_rresp(auto_pc_to_auto_us_RRESP),
        .s_axi_rvalid(auto_pc_to_auto_us_RVALID),
        .s_axi_wdata(auto_pc_to_auto_us_WDATA),
        .s_axi_wlast(auto_pc_to_auto_us_WLAST),
        .s_axi_wready(auto_pc_to_auto_us_WREADY),
        .s_axi_wstrb(auto_pc_to_auto_us_WSTRB),
        .s_axi_wvalid(auto_pc_to_auto_us_WVALID));
endmodule

module s01_couplers_imp_O1BHRT
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arburst,
    M_AXI_arcache,
    M_AXI_arlen,
    M_AXI_arlock,
    M_AXI_arprot,
    M_AXI_arqos,
    M_AXI_arready,
    M_AXI_arsize,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awburst,
    M_AXI_awcache,
    M_AXI_awlen,
    M_AXI_awlock,
    M_AXI_awprot,
    M_AXI_awqos,
    M_AXI_awready,
    M_AXI_awsize,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rlast,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wlast,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arregion,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awregion,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [1:0]M_AXI_arburst;
  output [3:0]M_AXI_arcache;
  output [7:0]M_AXI_arlen;
  output [0:0]M_AXI_arlock;
  output [2:0]M_AXI_arprot;
  output [3:0]M_AXI_arqos;
  input M_AXI_arready;
  output [2:0]M_AXI_arsize;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [1:0]M_AXI_awburst;
  output [3:0]M_AXI_awcache;
  output [7:0]M_AXI_awlen;
  output [0:0]M_AXI_awlock;
  output [2:0]M_AXI_awprot;
  output [3:0]M_AXI_awqos;
  input M_AXI_awready;
  output [2:0]M_AXI_awsize;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [63:0]M_AXI_rdata;
  input M_AXI_rlast;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [63:0]M_AXI_wdata;
  output M_AXI_wlast;
  input M_AXI_wready;
  output [7:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [7:0]S_AXI_arlen;
  input [1:0]S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [3:0]S_AXI_arregion;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [7:0]S_AXI_awlen;
  input [1:0]S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [3:0]S_AXI_awregion;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire M_ACLK_1;
  wire M_ARESETN_1;
  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_us_df_to_s01_couplers_ARADDR;
  wire [1:0]auto_us_df_to_s01_couplers_ARBURST;
  wire [3:0]auto_us_df_to_s01_couplers_ARCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_ARLEN;
  wire [0:0]auto_us_df_to_s01_couplers_ARLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_ARPROT;
  wire [3:0]auto_us_df_to_s01_couplers_ARQOS;
  wire auto_us_df_to_s01_couplers_ARREADY;
  wire [2:0]auto_us_df_to_s01_couplers_ARSIZE;
  wire auto_us_df_to_s01_couplers_ARVALID;
  wire [31:0]auto_us_df_to_s01_couplers_AWADDR;
  wire [1:0]auto_us_df_to_s01_couplers_AWBURST;
  wire [3:0]auto_us_df_to_s01_couplers_AWCACHE;
  wire [7:0]auto_us_df_to_s01_couplers_AWLEN;
  wire [0:0]auto_us_df_to_s01_couplers_AWLOCK;
  wire [2:0]auto_us_df_to_s01_couplers_AWPROT;
  wire [3:0]auto_us_df_to_s01_couplers_AWQOS;
  wire auto_us_df_to_s01_couplers_AWREADY;
  wire [2:0]auto_us_df_to_s01_couplers_AWSIZE;
  wire auto_us_df_to_s01_couplers_AWVALID;
  wire auto_us_df_to_s01_couplers_BREADY;
  wire [1:0]auto_us_df_to_s01_couplers_BRESP;
  wire auto_us_df_to_s01_couplers_BVALID;
  wire [63:0]auto_us_df_to_s01_couplers_RDATA;
  wire auto_us_df_to_s01_couplers_RLAST;
  wire auto_us_df_to_s01_couplers_RREADY;
  wire [1:0]auto_us_df_to_s01_couplers_RRESP;
  wire auto_us_df_to_s01_couplers_RVALID;
  wire [63:0]auto_us_df_to_s01_couplers_WDATA;
  wire auto_us_df_to_s01_couplers_WLAST;
  wire auto_us_df_to_s01_couplers_WREADY;
  wire [7:0]auto_us_df_to_s01_couplers_WSTRB;
  wire auto_us_df_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_s01_regslice_ARADDR;
  wire [1:0]s01_couplers_to_s01_regslice_ARBURST;
  wire [3:0]s01_couplers_to_s01_regslice_ARCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_ARLEN;
  wire [1:0]s01_couplers_to_s01_regslice_ARLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_ARPROT;
  wire [3:0]s01_couplers_to_s01_regslice_ARQOS;
  wire s01_couplers_to_s01_regslice_ARREADY;
  wire [3:0]s01_couplers_to_s01_regslice_ARREGION;
  wire [2:0]s01_couplers_to_s01_regslice_ARSIZE;
  wire s01_couplers_to_s01_regslice_ARVALID;
  wire [31:0]s01_couplers_to_s01_regslice_AWADDR;
  wire [1:0]s01_couplers_to_s01_regslice_AWBURST;
  wire [3:0]s01_couplers_to_s01_regslice_AWCACHE;
  wire [7:0]s01_couplers_to_s01_regslice_AWLEN;
  wire [1:0]s01_couplers_to_s01_regslice_AWLOCK;
  wire [2:0]s01_couplers_to_s01_regslice_AWPROT;
  wire [3:0]s01_couplers_to_s01_regslice_AWQOS;
  wire s01_couplers_to_s01_regslice_AWREADY;
  wire [3:0]s01_couplers_to_s01_regslice_AWREGION;
  wire [2:0]s01_couplers_to_s01_regslice_AWSIZE;
  wire s01_couplers_to_s01_regslice_AWVALID;
  wire s01_couplers_to_s01_regslice_BREADY;
  wire [1:0]s01_couplers_to_s01_regslice_BRESP;
  wire s01_couplers_to_s01_regslice_BVALID;
  wire [31:0]s01_couplers_to_s01_regslice_RDATA;
  wire s01_couplers_to_s01_regslice_RLAST;
  wire s01_couplers_to_s01_regslice_RREADY;
  wire [1:0]s01_couplers_to_s01_regslice_RRESP;
  wire s01_couplers_to_s01_regslice_RVALID;
  wire [31:0]s01_couplers_to_s01_regslice_WDATA;
  wire s01_couplers_to_s01_regslice_WLAST;
  wire s01_couplers_to_s01_regslice_WREADY;
  wire [3:0]s01_couplers_to_s01_regslice_WSTRB;
  wire s01_couplers_to_s01_regslice_WVALID;
  wire [31:0]s01_regslice_to_auto_us_df_ARADDR;
  wire [1:0]s01_regslice_to_auto_us_df_ARBURST;
  wire [3:0]s01_regslice_to_auto_us_df_ARCACHE;
  wire [7:0]s01_regslice_to_auto_us_df_ARLEN;
  wire [0:0]s01_regslice_to_auto_us_df_ARLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_ARPROT;
  wire [3:0]s01_regslice_to_auto_us_df_ARQOS;
  wire s01_regslice_to_auto_us_df_ARREADY;
  wire [3:0]s01_regslice_to_auto_us_df_ARREGION;
  wire [2:0]s01_regslice_to_auto_us_df_ARSIZE;
  wire s01_regslice_to_auto_us_df_ARVALID;
  wire [31:0]s01_regslice_to_auto_us_df_AWADDR;
  wire [1:0]s01_regslice_to_auto_us_df_AWBURST;
  wire [3:0]s01_regslice_to_auto_us_df_AWCACHE;
  wire [7:0]s01_regslice_to_auto_us_df_AWLEN;
  wire [0:0]s01_regslice_to_auto_us_df_AWLOCK;
  wire [2:0]s01_regslice_to_auto_us_df_AWPROT;
  wire [3:0]s01_regslice_to_auto_us_df_AWQOS;
  wire s01_regslice_to_auto_us_df_AWREADY;
  wire [3:0]s01_regslice_to_auto_us_df_AWREGION;
  wire [2:0]s01_regslice_to_auto_us_df_AWSIZE;
  wire s01_regslice_to_auto_us_df_AWVALID;
  wire s01_regslice_to_auto_us_df_BREADY;
  wire [1:0]s01_regslice_to_auto_us_df_BRESP;
  wire s01_regslice_to_auto_us_df_BVALID;
  wire [31:0]s01_regslice_to_auto_us_df_RDATA;
  wire s01_regslice_to_auto_us_df_RLAST;
  wire s01_regslice_to_auto_us_df_RREADY;
  wire [1:0]s01_regslice_to_auto_us_df_RRESP;
  wire s01_regslice_to_auto_us_df_RVALID;
  wire [31:0]s01_regslice_to_auto_us_df_WDATA;
  wire s01_regslice_to_auto_us_df_WLAST;
  wire s01_regslice_to_auto_us_df_WREADY;
  wire [3:0]s01_regslice_to_auto_us_df_WSTRB;
  wire s01_regslice_to_auto_us_df_WVALID;

  assign M_ACLK_1 = M_ACLK;
  assign M_ARESETN_1 = M_ARESETN;
  assign M_AXI_araddr[31:0] = auto_us_df_to_s01_couplers_ARADDR;
  assign M_AXI_arburst[1:0] = auto_us_df_to_s01_couplers_ARBURST;
  assign M_AXI_arcache[3:0] = auto_us_df_to_s01_couplers_ARCACHE;
  assign M_AXI_arlen[7:0] = auto_us_df_to_s01_couplers_ARLEN;
  assign M_AXI_arlock[0] = auto_us_df_to_s01_couplers_ARLOCK;
  assign M_AXI_arprot[2:0] = auto_us_df_to_s01_couplers_ARPROT;
  assign M_AXI_arqos[3:0] = auto_us_df_to_s01_couplers_ARQOS;
  assign M_AXI_arsize[2:0] = auto_us_df_to_s01_couplers_ARSIZE;
  assign M_AXI_arvalid = auto_us_df_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_us_df_to_s01_couplers_AWADDR;
  assign M_AXI_awburst[1:0] = auto_us_df_to_s01_couplers_AWBURST;
  assign M_AXI_awcache[3:0] = auto_us_df_to_s01_couplers_AWCACHE;
  assign M_AXI_awlen[7:0] = auto_us_df_to_s01_couplers_AWLEN;
  assign M_AXI_awlock[0] = auto_us_df_to_s01_couplers_AWLOCK;
  assign M_AXI_awprot[2:0] = auto_us_df_to_s01_couplers_AWPROT;
  assign M_AXI_awqos[3:0] = auto_us_df_to_s01_couplers_AWQOS;
  assign M_AXI_awsize[2:0] = auto_us_df_to_s01_couplers_AWSIZE;
  assign M_AXI_awvalid = auto_us_df_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_us_df_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_us_df_to_s01_couplers_RREADY;
  assign M_AXI_wdata[63:0] = auto_us_df_to_s01_couplers_WDATA;
  assign M_AXI_wlast = auto_us_df_to_s01_couplers_WLAST;
  assign M_AXI_wstrb[7:0] = auto_us_df_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_us_df_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_s01_regslice_ARREADY;
  assign S_AXI_awready = s01_couplers_to_s01_regslice_AWREADY;
  assign S_AXI_bresp[1:0] = s01_couplers_to_s01_regslice_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_s01_regslice_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_s01_regslice_RDATA;
  assign S_AXI_rlast = s01_couplers_to_s01_regslice_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_s01_regslice_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_s01_regslice_RVALID;
  assign S_AXI_wready = s01_couplers_to_s01_regslice_WREADY;
  assign auto_us_df_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_us_df_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_us_df_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_us_df_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_us_df_to_s01_couplers_RDATA = M_AXI_rdata[63:0];
  assign auto_us_df_to_s01_couplers_RLAST = M_AXI_rlast;
  assign auto_us_df_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_us_df_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_us_df_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_s01_regslice_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_s01_regslice_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_s01_regslice_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_s01_regslice_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_s01_regslice_ARLOCK = S_AXI_arlock[1:0];
  assign s01_couplers_to_s01_regslice_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_s01_regslice_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_s01_regslice_ARREGION = S_AXI_arregion[3:0];
  assign s01_couplers_to_s01_regslice_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_s01_regslice_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_s01_regslice_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_s01_regslice_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_s01_regslice_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_s01_regslice_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_s01_regslice_AWLOCK = S_AXI_awlock[1:0];
  assign s01_couplers_to_s01_regslice_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_s01_regslice_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_s01_regslice_AWREGION = S_AXI_awregion[3:0];
  assign s01_couplers_to_s01_regslice_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_s01_regslice_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_s01_regslice_BREADY = S_AXI_bready;
  assign s01_couplers_to_s01_regslice_RREADY = S_AXI_rready;
  assign s01_couplers_to_s01_regslice_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_s01_regslice_WLAST = S_AXI_wlast;
  assign s01_couplers_to_s01_regslice_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_s01_regslice_WVALID = S_AXI_wvalid;
  zedboard_base_auto_us_df_0 auto_us_df
       (.m_axi_araddr(auto_us_df_to_s01_couplers_ARADDR),
        .m_axi_arburst(auto_us_df_to_s01_couplers_ARBURST),
        .m_axi_arcache(auto_us_df_to_s01_couplers_ARCACHE),
        .m_axi_arlen(auto_us_df_to_s01_couplers_ARLEN),
        .m_axi_arlock(auto_us_df_to_s01_couplers_ARLOCK),
        .m_axi_arprot(auto_us_df_to_s01_couplers_ARPROT),
        .m_axi_arqos(auto_us_df_to_s01_couplers_ARQOS),
        .m_axi_arready(auto_us_df_to_s01_couplers_ARREADY),
        .m_axi_arsize(auto_us_df_to_s01_couplers_ARSIZE),
        .m_axi_arvalid(auto_us_df_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_us_df_to_s01_couplers_AWADDR),
        .m_axi_awburst(auto_us_df_to_s01_couplers_AWBURST),
        .m_axi_awcache(auto_us_df_to_s01_couplers_AWCACHE),
        .m_axi_awlen(auto_us_df_to_s01_couplers_AWLEN),
        .m_axi_awlock(auto_us_df_to_s01_couplers_AWLOCK),
        .m_axi_awprot(auto_us_df_to_s01_couplers_AWPROT),
        .m_axi_awqos(auto_us_df_to_s01_couplers_AWQOS),
        .m_axi_awready(auto_us_df_to_s01_couplers_AWREADY),
        .m_axi_awsize(auto_us_df_to_s01_couplers_AWSIZE),
        .m_axi_awvalid(auto_us_df_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_us_df_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_us_df_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_us_df_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_us_df_to_s01_couplers_RDATA),
        .m_axi_rlast(auto_us_df_to_s01_couplers_RLAST),
        .m_axi_rready(auto_us_df_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_us_df_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_us_df_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_us_df_to_s01_couplers_WDATA),
        .m_axi_wlast(auto_us_df_to_s01_couplers_WLAST),
        .m_axi_wready(auto_us_df_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_us_df_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_us_df_to_s01_couplers_WVALID),
        .s_axi_aclk(S_ACLK_1),
        .s_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .s_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .s_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .s_axi_aresetn(S_ARESETN_1),
        .s_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .s_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .s_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .s_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .s_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .s_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .s_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .s_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .s_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .s_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .s_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .s_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .s_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .s_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .s_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .s_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .s_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .s_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .s_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .s_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .s_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .s_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .s_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .s_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .s_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .s_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .s_axi_rvalid(s01_regslice_to_auto_us_df_RVALID),
        .s_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .s_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .s_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .s_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .s_axi_wvalid(s01_regslice_to_auto_us_df_WVALID));
  zedboard_base_s01_regslice_0 s01_regslice
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(s01_regslice_to_auto_us_df_ARADDR),
        .m_axi_arburst(s01_regslice_to_auto_us_df_ARBURST),
        .m_axi_arcache(s01_regslice_to_auto_us_df_ARCACHE),
        .m_axi_arlen(s01_regslice_to_auto_us_df_ARLEN),
        .m_axi_arlock(s01_regslice_to_auto_us_df_ARLOCK),
        .m_axi_arprot(s01_regslice_to_auto_us_df_ARPROT),
        .m_axi_arqos(s01_regslice_to_auto_us_df_ARQOS),
        .m_axi_arready(s01_regslice_to_auto_us_df_ARREADY),
        .m_axi_arregion(s01_regslice_to_auto_us_df_ARREGION),
        .m_axi_arsize(s01_regslice_to_auto_us_df_ARSIZE),
        .m_axi_arvalid(s01_regslice_to_auto_us_df_ARVALID),
        .m_axi_awaddr(s01_regslice_to_auto_us_df_AWADDR),
        .m_axi_awburst(s01_regslice_to_auto_us_df_AWBURST),
        .m_axi_awcache(s01_regslice_to_auto_us_df_AWCACHE),
        .m_axi_awlen(s01_regslice_to_auto_us_df_AWLEN),
        .m_axi_awlock(s01_regslice_to_auto_us_df_AWLOCK),
        .m_axi_awprot(s01_regslice_to_auto_us_df_AWPROT),
        .m_axi_awqos(s01_regslice_to_auto_us_df_AWQOS),
        .m_axi_awready(s01_regslice_to_auto_us_df_AWREADY),
        .m_axi_awregion(s01_regslice_to_auto_us_df_AWREGION),
        .m_axi_awsize(s01_regslice_to_auto_us_df_AWSIZE),
        .m_axi_awvalid(s01_regslice_to_auto_us_df_AWVALID),
        .m_axi_bready(s01_regslice_to_auto_us_df_BREADY),
        .m_axi_bresp(s01_regslice_to_auto_us_df_BRESP),
        .m_axi_bvalid(s01_regslice_to_auto_us_df_BVALID),
        .m_axi_rdata(s01_regslice_to_auto_us_df_RDATA),
        .m_axi_rlast(s01_regslice_to_auto_us_df_RLAST),
        .m_axi_rready(s01_regslice_to_auto_us_df_RREADY),
        .m_axi_rresp(s01_regslice_to_auto_us_df_RRESP),
        .m_axi_rvalid(s01_regslice_to_auto_us_df_RVALID),
        .m_axi_wdata(s01_regslice_to_auto_us_df_WDATA),
        .m_axi_wlast(s01_regslice_to_auto_us_df_WLAST),
        .m_axi_wready(s01_regslice_to_auto_us_df_WREADY),
        .m_axi_wstrb(s01_regslice_to_auto_us_df_WSTRB),
        .m_axi_wvalid(s01_regslice_to_auto_us_df_WVALID),
        .s_axi_araddr(s01_couplers_to_s01_regslice_ARADDR),
        .s_axi_arburst(s01_couplers_to_s01_regslice_ARBURST),
        .s_axi_arcache(s01_couplers_to_s01_regslice_ARCACHE),
        .s_axi_arlen(s01_couplers_to_s01_regslice_ARLEN),
        .s_axi_arlock(s01_couplers_to_s01_regslice_ARLOCK[0]),
        .s_axi_arprot(s01_couplers_to_s01_regslice_ARPROT),
        .s_axi_arqos(s01_couplers_to_s01_regslice_ARQOS),
        .s_axi_arready(s01_couplers_to_s01_regslice_ARREADY),
        .s_axi_arregion(s01_couplers_to_s01_regslice_ARREGION),
        .s_axi_arsize(s01_couplers_to_s01_regslice_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_s01_regslice_ARVALID),
        .s_axi_awaddr(s01_couplers_to_s01_regslice_AWADDR),
        .s_axi_awburst(s01_couplers_to_s01_regslice_AWBURST),
        .s_axi_awcache(s01_couplers_to_s01_regslice_AWCACHE),
        .s_axi_awlen(s01_couplers_to_s01_regslice_AWLEN),
        .s_axi_awlock(s01_couplers_to_s01_regslice_AWLOCK[0]),
        .s_axi_awprot(s01_couplers_to_s01_regslice_AWPROT),
        .s_axi_awqos(s01_couplers_to_s01_regslice_AWQOS),
        .s_axi_awready(s01_couplers_to_s01_regslice_AWREADY),
        .s_axi_awregion(s01_couplers_to_s01_regslice_AWREGION),
        .s_axi_awsize(s01_couplers_to_s01_regslice_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_s01_regslice_AWVALID),
        .s_axi_bready(s01_couplers_to_s01_regslice_BREADY),
        .s_axi_bresp(s01_couplers_to_s01_regslice_BRESP),
        .s_axi_bvalid(s01_couplers_to_s01_regslice_BVALID),
        .s_axi_rdata(s01_couplers_to_s01_regslice_RDATA),
        .s_axi_rlast(s01_couplers_to_s01_regslice_RLAST),
        .s_axi_rready(s01_couplers_to_s01_regslice_RREADY),
        .s_axi_rresp(s01_couplers_to_s01_regslice_RRESP),
        .s_axi_rvalid(s01_couplers_to_s01_regslice_RVALID),
        .s_axi_wdata(s01_couplers_to_s01_regslice_WDATA),
        .s_axi_wlast(s01_couplers_to_s01_regslice_WLAST),
        .s_axi_wready(s01_couplers_to_s01_regslice_WREADY),
        .s_axi_wstrb(s01_couplers_to_s01_regslice_WSTRB),
        .s_axi_wvalid(s01_couplers_to_s01_regslice_WVALID));
endmodule

(* CORE_GENERATION_INFO = "zedboard_base,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=zedboard_base,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=59,numReposBlks=40,numNonXlnxBlks=0,numHierBlks=19,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=1,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=Vitis,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "zedboard_base.hwdef" *) 
module zedboard_base
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb);
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DDR, AXI_ARBITRATION_SCHEME TDM, BURST_LENGTH 8, CAN_DEBUG false, CAS_LATENCY 11, CAS_WRITE_LATENCY 11, CS_ENABLED true, DATA_MASK_ENABLED true, DATA_WIDTH 8, MEMORY_TYPE COMPONENTS, MEM_ADDR_MAP ROW_COLUMN_BANK, SLOT Single, TIMEPERIOD_PS 1250" *) inout [14:0]DDR_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR BA" *) inout [2:0]DDR_ba;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CAS_N" *) inout DDR_cas_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_N" *) inout DDR_ck_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CK_P" *) inout DDR_ck_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CKE" *) inout DDR_cke;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR CS_N" *) inout DDR_cs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DM" *) inout [3:0]DDR_dm;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQ" *) inout [31:0]DDR_dq;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_N" *) inout [3:0]DDR_dqs_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR DQS_P" *) inout [3:0]DDR_dqs_p;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR ODT" *) inout DDR_odt;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RAS_N" *) inout DDR_ras_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR RESET_N" *) inout DDR_reset_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:ddrx:1.0 DDR WE_N" *) inout DDR_we_n;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRN" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME FIXED_IO, CAN_DEBUG false" *) inout FIXED_IO_ddr_vrn;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO DDR_VRP" *) inout FIXED_IO_ddr_vrp;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO MIO" *) inout [53:0]FIXED_IO_mio;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_CLK" *) inout FIXED_IO_ps_clk;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_PORB" *) inout FIXED_IO_ps_porb;
  (* X_INTERFACE_INFO = "xilinx.com:display_processing_system7:fixedio:1.0 FIXED_IO PS_SRSTB" *) inout FIXED_IO_ps_srstb;

  wire ACLK_1;
  wire Net;
  wire [31:0]axi_intc_0_intr_1_interrupt_concat_dout;
  wire axi_intc_0_irq;
  wire [31:0]axi_interconnect_0_M00_AXI1_ARADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI1_ARID;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARLEN;
  wire [1:0]axi_interconnect_0_M00_AXI1_ARLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_ARQOS;
  wire axi_interconnect_0_M00_AXI1_ARREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_ARSIZE;
  wire axi_interconnect_0_M00_AXI1_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI1_AWADDR;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWBURST;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWCACHE;
  wire [0:0]axi_interconnect_0_M00_AXI1_AWID;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWLEN;
  wire [1:0]axi_interconnect_0_M00_AXI1_AWLOCK;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWPROT;
  wire [3:0]axi_interconnect_0_M00_AXI1_AWQOS;
  wire axi_interconnect_0_M00_AXI1_AWREADY;
  wire [2:0]axi_interconnect_0_M00_AXI1_AWSIZE;
  wire axi_interconnect_0_M00_AXI1_AWVALID;
  wire [5:0]axi_interconnect_0_M00_AXI1_BID;
  wire axi_interconnect_0_M00_AXI1_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_BRESP;
  wire axi_interconnect_0_M00_AXI1_BVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_RDATA;
  wire [5:0]axi_interconnect_0_M00_AXI1_RID;
  wire axi_interconnect_0_M00_AXI1_RLAST;
  wire axi_interconnect_0_M00_AXI1_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI1_RRESP;
  wire axi_interconnect_0_M00_AXI1_RVALID;
  wire [63:0]axi_interconnect_0_M00_AXI1_WDATA;
  wire [0:0]axi_interconnect_0_M00_AXI1_WID;
  wire axi_interconnect_0_M00_AXI1_WLAST;
  wire axi_interconnect_0_M00_AXI1_WREADY;
  wire [7:0]axi_interconnect_0_M00_AXI1_WSTRB;
  wire axi_interconnect_0_M00_AXI1_WVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_ARADDR;
  wire axi_interconnect_0_M00_AXI_ARREADY;
  wire axi_interconnect_0_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_AWADDR;
  wire axi_interconnect_0_M00_AXI_AWREADY;
  wire axi_interconnect_0_M00_AXI_AWVALID;
  wire axi_interconnect_0_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_BRESP;
  wire axi_interconnect_0_M00_AXI_BVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_RDATA;
  wire axi_interconnect_0_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_0_M00_AXI_RRESP;
  wire axi_interconnect_0_M00_AXI_RVALID;
  wire [31:0]axi_interconnect_0_M00_AXI_WDATA;
  wire axi_interconnect_0_M00_AXI_WREADY;
  wire [3:0]axi_interconnect_0_M00_AXI_WSTRB;
  wire axi_interconnect_0_M00_AXI_WVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_ARADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_ARBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_ARCACHE;
  wire [3:0]axi_interconnect_1_M00_AXI_ARLEN;
  wire [1:0]axi_interconnect_1_M00_AXI_ARLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_ARPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_ARQOS;
  wire axi_interconnect_1_M00_AXI_ARREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_ARSIZE;
  wire axi_interconnect_1_M00_AXI_ARVALID;
  wire [31:0]axi_interconnect_1_M00_AXI_AWADDR;
  wire [1:0]axi_interconnect_1_M00_AXI_AWBURST;
  wire [3:0]axi_interconnect_1_M00_AXI_AWCACHE;
  wire [3:0]axi_interconnect_1_M00_AXI_AWLEN;
  wire [1:0]axi_interconnect_1_M00_AXI_AWLOCK;
  wire [2:0]axi_interconnect_1_M00_AXI_AWPROT;
  wire [3:0]axi_interconnect_1_M00_AXI_AWQOS;
  wire axi_interconnect_1_M00_AXI_AWREADY;
  wire [2:0]axi_interconnect_1_M00_AXI_AWSIZE;
  wire axi_interconnect_1_M00_AXI_AWVALID;
  wire axi_interconnect_1_M00_AXI_BREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_BRESP;
  wire axi_interconnect_1_M00_AXI_BVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_RDATA;
  wire axi_interconnect_1_M00_AXI_RLAST;
  wire axi_interconnect_1_M00_AXI_RREADY;
  wire [1:0]axi_interconnect_1_M00_AXI_RRESP;
  wire axi_interconnect_1_M00_AXI_RVALID;
  wire [63:0]axi_interconnect_1_M00_AXI_WDATA;
  wire axi_interconnect_1_M00_AXI_WLAST;
  wire axi_interconnect_1_M00_AXI_WREADY;
  wire [7:0]axi_interconnect_1_M00_AXI_WSTRB;
  wire axi_interconnect_1_M00_AXI_WVALID;
  wire [31:0]axi_vip_0_M_AXI_ARADDR;
  wire [1:0]axi_vip_0_M_AXI_ARBURST;
  wire [3:0]axi_vip_0_M_AXI_ARCACHE;
  wire [7:0]axi_vip_0_M_AXI_ARLEN;
  wire [0:0]axi_vip_0_M_AXI_ARLOCK;
  wire [2:0]axi_vip_0_M_AXI_ARPROT;
  wire [3:0]axi_vip_0_M_AXI_ARQOS;
  wire axi_vip_0_M_AXI_ARREADY;
  wire [3:0]axi_vip_0_M_AXI_ARREGION;
  wire [2:0]axi_vip_0_M_AXI_ARSIZE;
  wire axi_vip_0_M_AXI_ARVALID;
  wire [31:0]axi_vip_0_M_AXI_AWADDR;
  wire [1:0]axi_vip_0_M_AXI_AWBURST;
  wire [3:0]axi_vip_0_M_AXI_AWCACHE;
  wire [7:0]axi_vip_0_M_AXI_AWLEN;
  wire [0:0]axi_vip_0_M_AXI_AWLOCK;
  wire [2:0]axi_vip_0_M_AXI_AWPROT;
  wire [3:0]axi_vip_0_M_AXI_AWQOS;
  wire axi_vip_0_M_AXI_AWREADY;
  wire [3:0]axi_vip_0_M_AXI_AWREGION;
  wire [2:0]axi_vip_0_M_AXI_AWSIZE;
  wire axi_vip_0_M_AXI_AWVALID;
  wire axi_vip_0_M_AXI_BREADY;
  wire [1:0]axi_vip_0_M_AXI_BRESP;
  wire axi_vip_0_M_AXI_BVALID;
  wire [31:0]axi_vip_0_M_AXI_RDATA;
  wire axi_vip_0_M_AXI_RLAST;
  wire axi_vip_0_M_AXI_RREADY;
  wire [1:0]axi_vip_0_M_AXI_RRESP;
  wire axi_vip_0_M_AXI_RVALID;
  wire [31:0]axi_vip_0_M_AXI_WDATA;
  wire axi_vip_0_M_AXI_WLAST;
  wire axi_vip_0_M_AXI_WREADY;
  wire [3:0]axi_vip_0_M_AXI_WSTRB;
  wire axi_vip_0_M_AXI_WVALID;
  wire [31:0]axi_vip_1_M_AXI_ARADDR;
  wire [1:0]axi_vip_1_M_AXI_ARBURST;
  wire [3:0]axi_vip_1_M_AXI_ARCACHE;
  wire [7:0]axi_vip_1_M_AXI_ARLEN;
  wire [0:0]axi_vip_1_M_AXI_ARLOCK;
  wire [2:0]axi_vip_1_M_AXI_ARPROT;
  wire [3:0]axi_vip_1_M_AXI_ARQOS;
  wire axi_vip_1_M_AXI_ARREADY;
  wire [3:0]axi_vip_1_M_AXI_ARREGION;
  wire [2:0]axi_vip_1_M_AXI_ARSIZE;
  wire axi_vip_1_M_AXI_ARVALID;
  wire [31:0]axi_vip_1_M_AXI_AWADDR;
  wire [1:0]axi_vip_1_M_AXI_AWBURST;
  wire [3:0]axi_vip_1_M_AXI_AWCACHE;
  wire [7:0]axi_vip_1_M_AXI_AWLEN;
  wire [0:0]axi_vip_1_M_AXI_AWLOCK;
  wire [2:0]axi_vip_1_M_AXI_AWPROT;
  wire [3:0]axi_vip_1_M_AXI_AWQOS;
  wire axi_vip_1_M_AXI_AWREADY;
  wire [3:0]axi_vip_1_M_AXI_AWREGION;
  wire [2:0]axi_vip_1_M_AXI_AWSIZE;
  wire axi_vip_1_M_AXI_AWVALID;
  wire axi_vip_1_M_AXI_BREADY;
  wire [1:0]axi_vip_1_M_AXI_BRESP;
  wire axi_vip_1_M_AXI_BVALID;
  wire [31:0]axi_vip_1_M_AXI_RDATA;
  wire axi_vip_1_M_AXI_RLAST;
  wire axi_vip_1_M_AXI_RREADY;
  wire [1:0]axi_vip_1_M_AXI_RRESP;
  wire axi_vip_1_M_AXI_RVALID;
  wire [31:0]axi_vip_1_M_AXI_WDATA;
  wire axi_vip_1_M_AXI_WLAST;
  wire axi_vip_1_M_AXI_WREADY;
  wire [3:0]axi_vip_1_M_AXI_WSTRB;
  wire axi_vip_1_M_AXI_WVALID;
  wire clk_wiz_0_clk_out2;
  wire clk_wiz_0_locked;
  wire compute_matrices_1_interrupt;
  wire [31:0]compute_matrices_1_m_axi_gmem_ARADDR;
  wire [1:0]compute_matrices_1_m_axi_gmem_ARBURST;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARCACHE;
  wire [7:0]compute_matrices_1_m_axi_gmem_ARLEN;
  wire [1:0]compute_matrices_1_m_axi_gmem_ARLOCK;
  wire [2:0]compute_matrices_1_m_axi_gmem_ARPROT;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARQOS;
  wire compute_matrices_1_m_axi_gmem_ARREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_ARREGION;
  wire [2:0]compute_matrices_1_m_axi_gmem_ARSIZE;
  wire compute_matrices_1_m_axi_gmem_ARVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_AWADDR;
  wire [1:0]compute_matrices_1_m_axi_gmem_AWBURST;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWCACHE;
  wire [7:0]compute_matrices_1_m_axi_gmem_AWLEN;
  wire [1:0]compute_matrices_1_m_axi_gmem_AWLOCK;
  wire [2:0]compute_matrices_1_m_axi_gmem_AWPROT;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWQOS;
  wire compute_matrices_1_m_axi_gmem_AWREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_AWREGION;
  wire [2:0]compute_matrices_1_m_axi_gmem_AWSIZE;
  wire compute_matrices_1_m_axi_gmem_AWVALID;
  wire compute_matrices_1_m_axi_gmem_BREADY;
  wire [1:0]compute_matrices_1_m_axi_gmem_BRESP;
  wire compute_matrices_1_m_axi_gmem_BVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_RDATA;
  wire compute_matrices_1_m_axi_gmem_RLAST;
  wire compute_matrices_1_m_axi_gmem_RREADY;
  wire [1:0]compute_matrices_1_m_axi_gmem_RRESP;
  wire compute_matrices_1_m_axi_gmem_RVALID;
  wire [31:0]compute_matrices_1_m_axi_gmem_WDATA;
  wire compute_matrices_1_m_axi_gmem_WLAST;
  wire compute_matrices_1_m_axi_gmem_WREADY;
  wire [3:0]compute_matrices_1_m_axi_gmem_WSTRB;
  wire compute_matrices_1_m_axi_gmem_WVALID;
  wire [6:0]interconnect_axilite_M01_AXI_ARADDR;
  wire [2:0]interconnect_axilite_M01_AXI_ARPROT;
  wire interconnect_axilite_M01_AXI_ARREADY;
  wire interconnect_axilite_M01_AXI_ARVALID;
  wire [6:0]interconnect_axilite_M01_AXI_AWADDR;
  wire [2:0]interconnect_axilite_M01_AXI_AWPROT;
  wire interconnect_axilite_M01_AXI_AWREADY;
  wire interconnect_axilite_M01_AXI_AWVALID;
  wire interconnect_axilite_M01_AXI_BREADY;
  wire [1:0]interconnect_axilite_M01_AXI_BRESP;
  wire interconnect_axilite_M01_AXI_BVALID;
  wire [31:0]interconnect_axilite_M01_AXI_RDATA;
  wire interconnect_axilite_M01_AXI_RREADY;
  wire [1:0]interconnect_axilite_M01_AXI_RRESP;
  wire interconnect_axilite_M01_AXI_RVALID;
  wire [31:0]interconnect_axilite_M01_AXI_WDATA;
  wire interconnect_axilite_M01_AXI_WREADY;
  wire [3:0]interconnect_axilite_M01_AXI_WSTRB;
  wire interconnect_axilite_M01_AXI_WVALID;
  wire [31:0]interconnect_axilite_M02_AXI_ARADDR;
  wire [1:0]interconnect_axilite_M02_AXI_ARBURST;
  wire [3:0]interconnect_axilite_M02_AXI_ARCACHE;
  wire [11:0]interconnect_axilite_M02_AXI_ARID;
  wire [7:0]interconnect_axilite_M02_AXI_ARLEN;
  wire [0:0]interconnect_axilite_M02_AXI_ARLOCK;
  wire [2:0]interconnect_axilite_M02_AXI_ARPROT;
  wire [3:0]interconnect_axilite_M02_AXI_ARQOS;
  wire interconnect_axilite_M02_AXI_ARREADY;
  wire [3:0]interconnect_axilite_M02_AXI_ARREGION;
  wire [2:0]interconnect_axilite_M02_AXI_ARSIZE;
  wire interconnect_axilite_M02_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M02_AXI_AWADDR;
  wire [1:0]interconnect_axilite_M02_AXI_AWBURST;
  wire [3:0]interconnect_axilite_M02_AXI_AWCACHE;
  wire [11:0]interconnect_axilite_M02_AXI_AWID;
  wire [7:0]interconnect_axilite_M02_AXI_AWLEN;
  wire [0:0]interconnect_axilite_M02_AXI_AWLOCK;
  wire [2:0]interconnect_axilite_M02_AXI_AWPROT;
  wire [3:0]interconnect_axilite_M02_AXI_AWQOS;
  wire interconnect_axilite_M02_AXI_AWREADY;
  wire [3:0]interconnect_axilite_M02_AXI_AWREGION;
  wire [2:0]interconnect_axilite_M02_AXI_AWSIZE;
  wire interconnect_axilite_M02_AXI_AWVALID;
  wire [11:0]interconnect_axilite_M02_AXI_BID;
  wire interconnect_axilite_M02_AXI_BREADY;
  wire [1:0]interconnect_axilite_M02_AXI_BRESP;
  wire interconnect_axilite_M02_AXI_BVALID;
  wire [31:0]interconnect_axilite_M02_AXI_RDATA;
  wire [11:0]interconnect_axilite_M02_AXI_RID;
  wire interconnect_axilite_M02_AXI_RLAST;
  wire interconnect_axilite_M02_AXI_RREADY;
  wire [1:0]interconnect_axilite_M02_AXI_RRESP;
  wire interconnect_axilite_M02_AXI_RVALID;
  wire [31:0]interconnect_axilite_M02_AXI_WDATA;
  wire interconnect_axilite_M02_AXI_WLAST;
  wire interconnect_axilite_M02_AXI_WREADY;
  wire [3:0]interconnect_axilite_M02_AXI_WSTRB;
  wire interconnect_axilite_M02_AXI_WVALID;
  wire [31:0]interconnect_axilite_M03_AXI_ARADDR;
  wire [1:0]interconnect_axilite_M03_AXI_ARBURST;
  wire [3:0]interconnect_axilite_M03_AXI_ARCACHE;
  wire [11:0]interconnect_axilite_M03_AXI_ARID;
  wire [7:0]interconnect_axilite_M03_AXI_ARLEN;
  wire [0:0]interconnect_axilite_M03_AXI_ARLOCK;
  wire [2:0]interconnect_axilite_M03_AXI_ARPROT;
  wire [3:0]interconnect_axilite_M03_AXI_ARQOS;
  wire interconnect_axilite_M03_AXI_ARREADY;
  wire [3:0]interconnect_axilite_M03_AXI_ARREGION;
  wire [2:0]interconnect_axilite_M03_AXI_ARSIZE;
  wire interconnect_axilite_M03_AXI_ARVALID;
  wire [31:0]interconnect_axilite_M03_AXI_RDATA;
  wire [11:0]interconnect_axilite_M03_AXI_RID;
  wire interconnect_axilite_M03_AXI_RLAST;
  wire interconnect_axilite_M03_AXI_RREADY;
  wire [1:0]interconnect_axilite_M03_AXI_RRESP;
  wire interconnect_axilite_M03_AXI_RVALID;
  wire [0:0]irq_const_tieoff_dout;
  wire [0:0]proc_sys_reset_0_interconnect_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [14:0]ps7_DDR_ADDR;
  wire [2:0]ps7_DDR_BA;
  wire ps7_DDR_CAS_N;
  wire ps7_DDR_CKE;
  wire ps7_DDR_CK_N;
  wire ps7_DDR_CK_P;
  wire ps7_DDR_CS_N;
  wire [3:0]ps7_DDR_DM;
  wire [31:0]ps7_DDR_DQ;
  wire [3:0]ps7_DDR_DQS_N;
  wire [3:0]ps7_DDR_DQS_P;
  wire ps7_DDR_ODT;
  wire ps7_DDR_RAS_N;
  wire ps7_DDR_RESET_N;
  wire ps7_DDR_WE_N;
  wire ps7_FIXED_IO_DDR_VRN;
  wire ps7_FIXED_IO_DDR_VRP;
  wire [53:0]ps7_FIXED_IO_MIO;
  wire ps7_FIXED_IO_PS_CLK;
  wire ps7_FIXED_IO_PS_PORB;
  wire ps7_FIXED_IO_PS_SRSTB;
  wire [31:0]ps_7_M_AXI_HPM0_LPD_ARADDR;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_ARBURST;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_ARCACHE;
  wire [11:0]ps_7_M_AXI_HPM0_LPD_ARID;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_ARLEN;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_ARLOCK;
  wire [2:0]ps_7_M_AXI_HPM0_LPD_ARPROT;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_ARQOS;
  wire ps_7_M_AXI_HPM0_LPD_ARREADY;
  wire [2:0]ps_7_M_AXI_HPM0_LPD_ARSIZE;
  wire ps_7_M_AXI_HPM0_LPD_ARVALID;
  wire [31:0]ps_7_M_AXI_HPM0_LPD_AWADDR;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_AWBURST;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_AWCACHE;
  wire [11:0]ps_7_M_AXI_HPM0_LPD_AWID;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_AWLEN;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_AWLOCK;
  wire [2:0]ps_7_M_AXI_HPM0_LPD_AWPROT;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_AWQOS;
  wire ps_7_M_AXI_HPM0_LPD_AWREADY;
  wire [2:0]ps_7_M_AXI_HPM0_LPD_AWSIZE;
  wire ps_7_M_AXI_HPM0_LPD_AWVALID;
  wire [11:0]ps_7_M_AXI_HPM0_LPD_BID;
  wire ps_7_M_AXI_HPM0_LPD_BREADY;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_BRESP;
  wire ps_7_M_AXI_HPM0_LPD_BVALID;
  wire [31:0]ps_7_M_AXI_HPM0_LPD_RDATA;
  wire [11:0]ps_7_M_AXI_HPM0_LPD_RID;
  wire ps_7_M_AXI_HPM0_LPD_RLAST;
  wire ps_7_M_AXI_HPM0_LPD_RREADY;
  wire [1:0]ps_7_M_AXI_HPM0_LPD_RRESP;
  wire ps_7_M_AXI_HPM0_LPD_RVALID;
  wire [31:0]ps_7_M_AXI_HPM0_LPD_WDATA;
  wire [11:0]ps_7_M_AXI_HPM0_LPD_WID;
  wire ps_7_M_AXI_HPM0_LPD_WLAST;
  wire ps_7_M_AXI_HPM0_LPD_WREADY;
  wire [3:0]ps_7_M_AXI_HPM0_LPD_WSTRB;
  wire ps_7_M_AXI_HPM0_LPD_WVALID;
  wire ps_7_pl_clk0;

  System_DPA_imp_6IUFM5 System_DPA
       (.MON_M_AXI_araddr(compute_matrices_1_m_axi_gmem_ARADDR),
        .MON_M_AXI_arburst(compute_matrices_1_m_axi_gmem_ARBURST),
        .MON_M_AXI_arcache(compute_matrices_1_m_axi_gmem_ARCACHE),
        .MON_M_AXI_arlen(compute_matrices_1_m_axi_gmem_ARLEN),
        .MON_M_AXI_arlock(compute_matrices_1_m_axi_gmem_ARLOCK),
        .MON_M_AXI_arprot(compute_matrices_1_m_axi_gmem_ARPROT),
        .MON_M_AXI_arqos(compute_matrices_1_m_axi_gmem_ARQOS),
        .MON_M_AXI_arready(compute_matrices_1_m_axi_gmem_ARREADY),
        .MON_M_AXI_arregion(compute_matrices_1_m_axi_gmem_ARREGION),
        .MON_M_AXI_arsize(compute_matrices_1_m_axi_gmem_ARSIZE),
        .MON_M_AXI_arvalid(compute_matrices_1_m_axi_gmem_ARVALID),
        .MON_M_AXI_awaddr(compute_matrices_1_m_axi_gmem_AWADDR),
        .MON_M_AXI_awburst(compute_matrices_1_m_axi_gmem_AWBURST),
        .MON_M_AXI_awcache(compute_matrices_1_m_axi_gmem_AWCACHE),
        .MON_M_AXI_awlen(compute_matrices_1_m_axi_gmem_AWLEN),
        .MON_M_AXI_awlock(compute_matrices_1_m_axi_gmem_AWLOCK),
        .MON_M_AXI_awprot(compute_matrices_1_m_axi_gmem_AWPROT),
        .MON_M_AXI_awqos(compute_matrices_1_m_axi_gmem_AWQOS),
        .MON_M_AXI_awready(compute_matrices_1_m_axi_gmem_AWREADY),
        .MON_M_AXI_awregion(compute_matrices_1_m_axi_gmem_AWREGION),
        .MON_M_AXI_awsize(compute_matrices_1_m_axi_gmem_AWSIZE),
        .MON_M_AXI_awvalid(compute_matrices_1_m_axi_gmem_AWVALID),
        .MON_M_AXI_bready(compute_matrices_1_m_axi_gmem_BREADY),
        .MON_M_AXI_bresp(compute_matrices_1_m_axi_gmem_BRESP),
        .MON_M_AXI_bvalid(compute_matrices_1_m_axi_gmem_BVALID),
        .MON_M_AXI_rdata(compute_matrices_1_m_axi_gmem_RDATA),
        .MON_M_AXI_rlast(compute_matrices_1_m_axi_gmem_RLAST),
        .MON_M_AXI_rready(compute_matrices_1_m_axi_gmem_RREADY),
        .MON_M_AXI_rresp(compute_matrices_1_m_axi_gmem_RRESP),
        .MON_M_AXI_rvalid(compute_matrices_1_m_axi_gmem_RVALID),
        .MON_M_AXI_wdata(compute_matrices_1_m_axi_gmem_WDATA),
        .MON_M_AXI_wlast(compute_matrices_1_m_axi_gmem_WLAST),
        .MON_M_AXI_wready(compute_matrices_1_m_axi_gmem_WREADY),
        .MON_M_AXI_wstrb(compute_matrices_1_m_axi_gmem_WSTRB),
        .MON_M_AXI_wvalid(compute_matrices_1_m_axi_gmem_WVALID),
        .MON_S_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .MON_S_AXI_arprot(interconnect_axilite_M01_AXI_ARPROT),
        .MON_S_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .MON_S_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .MON_S_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .MON_S_AXI_awprot(interconnect_axilite_M01_AXI_AWPROT),
        .MON_S_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .MON_S_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .MON_S_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .MON_S_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .MON_S_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .MON_S_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .MON_S_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .MON_S_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .MON_S_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .MON_S_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .MON_S_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .MON_S_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .MON_S_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .S00_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .S00_AXI_arburst(interconnect_axilite_M02_AXI_ARBURST),
        .S00_AXI_arcache(interconnect_axilite_M02_AXI_ARCACHE),
        .S00_AXI_arid(interconnect_axilite_M02_AXI_ARID),
        .S00_AXI_arlen(interconnect_axilite_M02_AXI_ARLEN),
        .S00_AXI_arlock(interconnect_axilite_M02_AXI_ARLOCK),
        .S00_AXI_arprot(interconnect_axilite_M02_AXI_ARPROT),
        .S00_AXI_arqos(interconnect_axilite_M02_AXI_ARQOS),
        .S00_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .S00_AXI_arregion(interconnect_axilite_M02_AXI_ARREGION),
        .S00_AXI_arsize(interconnect_axilite_M02_AXI_ARSIZE),
        .S00_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .S00_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .S00_AXI_awburst(interconnect_axilite_M02_AXI_AWBURST),
        .S00_AXI_awcache(interconnect_axilite_M02_AXI_AWCACHE),
        .S00_AXI_awid(interconnect_axilite_M02_AXI_AWID),
        .S00_AXI_awlen(interconnect_axilite_M02_AXI_AWLEN),
        .S00_AXI_awlock(interconnect_axilite_M02_AXI_AWLOCK),
        .S00_AXI_awprot(interconnect_axilite_M02_AXI_AWPROT),
        .S00_AXI_awqos(interconnect_axilite_M02_AXI_AWQOS),
        .S00_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .S00_AXI_awregion(interconnect_axilite_M02_AXI_AWREGION),
        .S00_AXI_awsize(interconnect_axilite_M02_AXI_AWSIZE),
        .S00_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .S00_AXI_bid(interconnect_axilite_M02_AXI_BID),
        .S00_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .S00_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .S00_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .S00_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .S00_AXI_rid(interconnect_axilite_M02_AXI_RID),
        .S00_AXI_rlast(interconnect_axilite_M02_AXI_RLAST),
        .S00_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .S00_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .S00_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .S00_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .S00_AXI_wlast(interconnect_axilite_M02_AXI_WLAST),
        .S00_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .S00_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .S00_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .S_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .S_AXI_arburst(interconnect_axilite_M03_AXI_ARBURST),
        .S_AXI_arcache(interconnect_axilite_M03_AXI_ARCACHE),
        .S_AXI_arid(interconnect_axilite_M03_AXI_ARID),
        .S_AXI_arlen(interconnect_axilite_M03_AXI_ARLEN),
        .S_AXI_arlock(interconnect_axilite_M03_AXI_ARLOCK),
        .S_AXI_arprot(interconnect_axilite_M03_AXI_ARPROT),
        .S_AXI_arqos(interconnect_axilite_M03_AXI_ARQOS),
        .S_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .S_AXI_arregion(interconnect_axilite_M03_AXI_ARREGION),
        .S_AXI_arsize(interconnect_axilite_M03_AXI_ARSIZE),
        .S_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .S_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .S_AXI_rid(interconnect_axilite_M03_AXI_RID),
        .S_AXI_rlast(interconnect_axilite_M03_AXI_RLAST),
        .S_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .S_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .S_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .trace_clk(ACLK_1),
        .trace_rst(proc_sys_reset_0_peripheral_aresetn));
  zedboard_base_axi_intc_0_0 axi_intc_0
       (.intr(axi_intc_0_intr_1_interrupt_concat_dout),
        .irq(axi_intc_0_irq),
        .s_axi_aclk(ACLK_1),
        .s_axi_araddr(axi_interconnect_0_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .s_axi_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .s_axi_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .s_axi_awaddr(axi_interconnect_0_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .s_axi_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .s_axi_bready(axi_interconnect_0_M00_AXI_BREADY),
        .s_axi_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .s_axi_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .s_axi_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .s_axi_rready(axi_interconnect_0_M00_AXI_RREADY),
        .s_axi_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .s_axi_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .s_axi_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .s_axi_wready(axi_interconnect_0_M00_AXI_WREADY),
        .s_axi_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .s_axi_wvalid(axi_interconnect_0_M00_AXI_WVALID));
  zedboard_base_axi_intc_0_intr_1_interrupt_concat_0 axi_intc_0_intr_1_interrupt_concat
       (.In0(irq_const_tieoff_dout),
        .In1(compute_matrices_1_interrupt),
        .In10(irq_const_tieoff_dout),
        .In11(irq_const_tieoff_dout),
        .In12(irq_const_tieoff_dout),
        .In13(irq_const_tieoff_dout),
        .In14(irq_const_tieoff_dout),
        .In15(irq_const_tieoff_dout),
        .In16(irq_const_tieoff_dout),
        .In17(irq_const_tieoff_dout),
        .In18(irq_const_tieoff_dout),
        .In19(irq_const_tieoff_dout),
        .In2(irq_const_tieoff_dout),
        .In20(irq_const_tieoff_dout),
        .In21(irq_const_tieoff_dout),
        .In22(irq_const_tieoff_dout),
        .In23(irq_const_tieoff_dout),
        .In24(irq_const_tieoff_dout),
        .In25(irq_const_tieoff_dout),
        .In26(irq_const_tieoff_dout),
        .In27(irq_const_tieoff_dout),
        .In28(irq_const_tieoff_dout),
        .In29(irq_const_tieoff_dout),
        .In3(irq_const_tieoff_dout),
        .In30(irq_const_tieoff_dout),
        .In31(irq_const_tieoff_dout),
        .In4(irq_const_tieoff_dout),
        .In5(irq_const_tieoff_dout),
        .In6(irq_const_tieoff_dout),
        .In7(irq_const_tieoff_dout),
        .In8(irq_const_tieoff_dout),
        .In9(irq_const_tieoff_dout),
        .dout(axi_intc_0_intr_1_interrupt_concat_dout));
  zedboard_base_axi_interconnect_lpd_0 axi_interconnect_lpd
       (.ACLK(ACLK_1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI1_ARADDR),
        .M00_AXI_arburst(axi_interconnect_0_M00_AXI1_ARBURST),
        .M00_AXI_arcache(axi_interconnect_0_M00_AXI1_ARCACHE),
        .M00_AXI_arid(axi_interconnect_0_M00_AXI1_ARID),
        .M00_AXI_arlen(axi_interconnect_0_M00_AXI1_ARLEN),
        .M00_AXI_arlock(axi_interconnect_0_M00_AXI1_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_0_M00_AXI1_ARPROT),
        .M00_AXI_arqos(axi_interconnect_0_M00_AXI1_ARQOS),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI1_ARREADY),
        .M00_AXI_arsize(axi_interconnect_0_M00_AXI1_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI1_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI1_AWADDR),
        .M00_AXI_awburst(axi_interconnect_0_M00_AXI1_AWBURST),
        .M00_AXI_awcache(axi_interconnect_0_M00_AXI1_AWCACHE),
        .M00_AXI_awid(axi_interconnect_0_M00_AXI1_AWID),
        .M00_AXI_awlen(axi_interconnect_0_M00_AXI1_AWLEN),
        .M00_AXI_awlock(axi_interconnect_0_M00_AXI1_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_0_M00_AXI1_AWPROT),
        .M00_AXI_awqos(axi_interconnect_0_M00_AXI1_AWQOS),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI1_AWREADY),
        .M00_AXI_awsize(axi_interconnect_0_M00_AXI1_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI1_AWVALID),
        .M00_AXI_bid(axi_interconnect_0_M00_AXI1_BID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI1_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI1_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI1_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI1_RDATA),
        .M00_AXI_rid(axi_interconnect_0_M00_AXI1_RID),
        .M00_AXI_rlast(axi_interconnect_0_M00_AXI1_RLAST),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI1_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI1_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI1_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI1_WDATA),
        .M00_AXI_wid(axi_interconnect_0_M00_AXI1_WID),
        .M00_AXI_wlast(axi_interconnect_0_M00_AXI1_WLAST),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI1_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI1_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI1_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_1_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_1_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_1_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_1_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_1_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_1_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_1_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_1_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_1_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_1_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_1_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_1_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_1_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_1_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_1_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_1_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_1_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_1_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_1_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_1_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_1_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_1_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_1_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_1_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_1_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_1_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_1_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_1_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_1_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_1_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_1_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_1_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_1_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_1_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_1_M_AXI_WVALID),
        .S01_ACLK(ACLK_1),
        .S01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S01_AXI_araddr(compute_matrices_1_m_axi_gmem_ARADDR),
        .S01_AXI_arburst(compute_matrices_1_m_axi_gmem_ARBURST),
        .S01_AXI_arcache(compute_matrices_1_m_axi_gmem_ARCACHE),
        .S01_AXI_arlen(compute_matrices_1_m_axi_gmem_ARLEN),
        .S01_AXI_arlock(compute_matrices_1_m_axi_gmem_ARLOCK),
        .S01_AXI_arprot(compute_matrices_1_m_axi_gmem_ARPROT),
        .S01_AXI_arqos(compute_matrices_1_m_axi_gmem_ARQOS),
        .S01_AXI_arready(compute_matrices_1_m_axi_gmem_ARREADY),
        .S01_AXI_arregion(compute_matrices_1_m_axi_gmem_ARREGION),
        .S01_AXI_arsize(compute_matrices_1_m_axi_gmem_ARSIZE),
        .S01_AXI_arvalid(compute_matrices_1_m_axi_gmem_ARVALID),
        .S01_AXI_awaddr(compute_matrices_1_m_axi_gmem_AWADDR),
        .S01_AXI_awburst(compute_matrices_1_m_axi_gmem_AWBURST),
        .S01_AXI_awcache(compute_matrices_1_m_axi_gmem_AWCACHE),
        .S01_AXI_awlen(compute_matrices_1_m_axi_gmem_AWLEN),
        .S01_AXI_awlock(compute_matrices_1_m_axi_gmem_AWLOCK),
        .S01_AXI_awprot(compute_matrices_1_m_axi_gmem_AWPROT),
        .S01_AXI_awqos(compute_matrices_1_m_axi_gmem_AWQOS),
        .S01_AXI_awready(compute_matrices_1_m_axi_gmem_AWREADY),
        .S01_AXI_awregion(compute_matrices_1_m_axi_gmem_AWREGION),
        .S01_AXI_awsize(compute_matrices_1_m_axi_gmem_AWSIZE),
        .S01_AXI_awvalid(compute_matrices_1_m_axi_gmem_AWVALID),
        .S01_AXI_bready(compute_matrices_1_m_axi_gmem_BREADY),
        .S01_AXI_bresp(compute_matrices_1_m_axi_gmem_BRESP),
        .S01_AXI_bvalid(compute_matrices_1_m_axi_gmem_BVALID),
        .S01_AXI_rdata(compute_matrices_1_m_axi_gmem_RDATA),
        .S01_AXI_rlast(compute_matrices_1_m_axi_gmem_RLAST),
        .S01_AXI_rready(compute_matrices_1_m_axi_gmem_RREADY),
        .S01_AXI_rresp(compute_matrices_1_m_axi_gmem_RRESP),
        .S01_AXI_rvalid(compute_matrices_1_m_axi_gmem_RVALID),
        .S01_AXI_wdata(compute_matrices_1_m_axi_gmem_WDATA),
        .S01_AXI_wlast(compute_matrices_1_m_axi_gmem_WLAST),
        .S01_AXI_wready(compute_matrices_1_m_axi_gmem_WREADY),
        .S01_AXI_wstrb(compute_matrices_1_m_axi_gmem_WSTRB),
        .S01_AXI_wvalid(compute_matrices_1_m_axi_gmem_WVALID));
  zedboard_base_axi_vip_0_0 axi_vip_0
       (.aclk(ACLK_1),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(axi_vip_0_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_0_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_0_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_0_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_0_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_0_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_0_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_0_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_0_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_0_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_0_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_0_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_0_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_0_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_0_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_0_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_0_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_0_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_0_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_0_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_0_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_0_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_0_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_0_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_0_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_0_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_0_M_AXI_RLAST),
        .m_axi_rready(axi_vip_0_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_0_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_0_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_0_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_0_M_AXI_WLAST),
        .m_axi_wready(axi_vip_0_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_0_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_0_M_AXI_WVALID));
  zedboard_base_axi_vip_1_0 axi_vip_1
       (.aclk(ACLK_1),
        .aresetn(proc_sys_reset_0_interconnect_aresetn),
        .m_axi_araddr(axi_vip_1_M_AXI_ARADDR),
        .m_axi_arburst(axi_vip_1_M_AXI_ARBURST),
        .m_axi_arcache(axi_vip_1_M_AXI_ARCACHE),
        .m_axi_arlen(axi_vip_1_M_AXI_ARLEN),
        .m_axi_arlock(axi_vip_1_M_AXI_ARLOCK),
        .m_axi_arprot(axi_vip_1_M_AXI_ARPROT),
        .m_axi_arqos(axi_vip_1_M_AXI_ARQOS),
        .m_axi_arready(axi_vip_1_M_AXI_ARREADY),
        .m_axi_arregion(axi_vip_1_M_AXI_ARREGION),
        .m_axi_arsize(axi_vip_1_M_AXI_ARSIZE),
        .m_axi_arvalid(axi_vip_1_M_AXI_ARVALID),
        .m_axi_awaddr(axi_vip_1_M_AXI_AWADDR),
        .m_axi_awburst(axi_vip_1_M_AXI_AWBURST),
        .m_axi_awcache(axi_vip_1_M_AXI_AWCACHE),
        .m_axi_awlen(axi_vip_1_M_AXI_AWLEN),
        .m_axi_awlock(axi_vip_1_M_AXI_AWLOCK),
        .m_axi_awprot(axi_vip_1_M_AXI_AWPROT),
        .m_axi_awqos(axi_vip_1_M_AXI_AWQOS),
        .m_axi_awready(axi_vip_1_M_AXI_AWREADY),
        .m_axi_awregion(axi_vip_1_M_AXI_AWREGION),
        .m_axi_awsize(axi_vip_1_M_AXI_AWSIZE),
        .m_axi_awvalid(axi_vip_1_M_AXI_AWVALID),
        .m_axi_bready(axi_vip_1_M_AXI_BREADY),
        .m_axi_bresp(axi_vip_1_M_AXI_BRESP),
        .m_axi_bvalid(axi_vip_1_M_AXI_BVALID),
        .m_axi_rdata(axi_vip_1_M_AXI_RDATA),
        .m_axi_rlast(axi_vip_1_M_AXI_RLAST),
        .m_axi_rready(axi_vip_1_M_AXI_RREADY),
        .m_axi_rresp(axi_vip_1_M_AXI_RRESP),
        .m_axi_rvalid(axi_vip_1_M_AXI_RVALID),
        .m_axi_wdata(axi_vip_1_M_AXI_WDATA),
        .m_axi_wlast(axi_vip_1_M_AXI_WLAST),
        .m_axi_wready(axi_vip_1_M_AXI_WREADY),
        .m_axi_wstrb(axi_vip_1_M_AXI_WSTRB),
        .m_axi_wvalid(axi_vip_1_M_AXI_WVALID));
  zedboard_base_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(ps_7_pl_clk0),
        .clk_out1(ACLK_1),
        .clk_out2(clk_wiz_0_clk_out2),
        .locked(clk_wiz_0_locked),
        .resetn(Net));
  (* DPA_MONITOR = "true" *) 
  zedboard_base_compute_matrices_1_0 compute_matrices_1
       (.ap_clk(ACLK_1),
        .ap_rst_n(proc_sys_reset_0_peripheral_aresetn),
        .interrupt(compute_matrices_1_interrupt),
        .m_axi_gmem_ARADDR(compute_matrices_1_m_axi_gmem_ARADDR),
        .m_axi_gmem_ARBURST(compute_matrices_1_m_axi_gmem_ARBURST),
        .m_axi_gmem_ARCACHE(compute_matrices_1_m_axi_gmem_ARCACHE),
        .m_axi_gmem_ARLEN(compute_matrices_1_m_axi_gmem_ARLEN),
        .m_axi_gmem_ARLOCK(compute_matrices_1_m_axi_gmem_ARLOCK),
        .m_axi_gmem_ARPROT(compute_matrices_1_m_axi_gmem_ARPROT),
        .m_axi_gmem_ARQOS(compute_matrices_1_m_axi_gmem_ARQOS),
        .m_axi_gmem_ARREADY(compute_matrices_1_m_axi_gmem_ARREADY),
        .m_axi_gmem_ARREGION(compute_matrices_1_m_axi_gmem_ARREGION),
        .m_axi_gmem_ARSIZE(compute_matrices_1_m_axi_gmem_ARSIZE),
        .m_axi_gmem_ARVALID(compute_matrices_1_m_axi_gmem_ARVALID),
        .m_axi_gmem_AWADDR(compute_matrices_1_m_axi_gmem_AWADDR),
        .m_axi_gmem_AWBURST(compute_matrices_1_m_axi_gmem_AWBURST),
        .m_axi_gmem_AWCACHE(compute_matrices_1_m_axi_gmem_AWCACHE),
        .m_axi_gmem_AWLEN(compute_matrices_1_m_axi_gmem_AWLEN),
        .m_axi_gmem_AWLOCK(compute_matrices_1_m_axi_gmem_AWLOCK),
        .m_axi_gmem_AWPROT(compute_matrices_1_m_axi_gmem_AWPROT),
        .m_axi_gmem_AWQOS(compute_matrices_1_m_axi_gmem_AWQOS),
        .m_axi_gmem_AWREADY(compute_matrices_1_m_axi_gmem_AWREADY),
        .m_axi_gmem_AWREGION(compute_matrices_1_m_axi_gmem_AWREGION),
        .m_axi_gmem_AWSIZE(compute_matrices_1_m_axi_gmem_AWSIZE),
        .m_axi_gmem_AWVALID(compute_matrices_1_m_axi_gmem_AWVALID),
        .m_axi_gmem_BREADY(compute_matrices_1_m_axi_gmem_BREADY),
        .m_axi_gmem_BRESP(compute_matrices_1_m_axi_gmem_BRESP),
        .m_axi_gmem_BVALID(compute_matrices_1_m_axi_gmem_BVALID),
        .m_axi_gmem_RDATA(compute_matrices_1_m_axi_gmem_RDATA),
        .m_axi_gmem_RLAST(compute_matrices_1_m_axi_gmem_RLAST),
        .m_axi_gmem_RREADY(compute_matrices_1_m_axi_gmem_RREADY),
        .m_axi_gmem_RRESP(compute_matrices_1_m_axi_gmem_RRESP),
        .m_axi_gmem_RVALID(compute_matrices_1_m_axi_gmem_RVALID),
        .m_axi_gmem_WDATA(compute_matrices_1_m_axi_gmem_WDATA),
        .m_axi_gmem_WLAST(compute_matrices_1_m_axi_gmem_WLAST),
        .m_axi_gmem_WREADY(compute_matrices_1_m_axi_gmem_WREADY),
        .m_axi_gmem_WSTRB(compute_matrices_1_m_axi_gmem_WSTRB),
        .m_axi_gmem_WVALID(compute_matrices_1_m_axi_gmem_WVALID),
        .s_axi_control_ARADDR(interconnect_axilite_M01_AXI_ARADDR),
        .s_axi_control_ARREADY(interconnect_axilite_M01_AXI_ARREADY),
        .s_axi_control_ARVALID(interconnect_axilite_M01_AXI_ARVALID),
        .s_axi_control_AWADDR(interconnect_axilite_M01_AXI_AWADDR),
        .s_axi_control_AWREADY(interconnect_axilite_M01_AXI_AWREADY),
        .s_axi_control_AWVALID(interconnect_axilite_M01_AXI_AWVALID),
        .s_axi_control_BREADY(interconnect_axilite_M01_AXI_BREADY),
        .s_axi_control_BRESP(interconnect_axilite_M01_AXI_BRESP),
        .s_axi_control_BVALID(interconnect_axilite_M01_AXI_BVALID),
        .s_axi_control_RDATA(interconnect_axilite_M01_AXI_RDATA),
        .s_axi_control_RREADY(interconnect_axilite_M01_AXI_RREADY),
        .s_axi_control_RRESP(interconnect_axilite_M01_AXI_RRESP),
        .s_axi_control_RVALID(interconnect_axilite_M01_AXI_RVALID),
        .s_axi_control_WDATA(interconnect_axilite_M01_AXI_WDATA),
        .s_axi_control_WREADY(interconnect_axilite_M01_AXI_WREADY),
        .s_axi_control_WSTRB(interconnect_axilite_M01_AXI_WSTRB),
        .s_axi_control_WVALID(interconnect_axilite_M01_AXI_WVALID));
  (* DPA_TRACE_SLAVE = "true" *) 
  zedboard_base_interconnect_axifull_0 interconnect_axifull
       (.ACLK(ACLK_1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_1_M00_AXI_ARADDR),
        .M00_AXI_arburst(axi_interconnect_1_M00_AXI_ARBURST),
        .M00_AXI_arcache(axi_interconnect_1_M00_AXI_ARCACHE),
        .M00_AXI_arlen(axi_interconnect_1_M00_AXI_ARLEN),
        .M00_AXI_arlock(axi_interconnect_1_M00_AXI_ARLOCK),
        .M00_AXI_arprot(axi_interconnect_1_M00_AXI_ARPROT),
        .M00_AXI_arqos(axi_interconnect_1_M00_AXI_ARQOS),
        .M00_AXI_arready(axi_interconnect_1_M00_AXI_ARREADY),
        .M00_AXI_arsize(axi_interconnect_1_M00_AXI_ARSIZE),
        .M00_AXI_arvalid(axi_interconnect_1_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_1_M00_AXI_AWADDR),
        .M00_AXI_awburst(axi_interconnect_1_M00_AXI_AWBURST),
        .M00_AXI_awcache(axi_interconnect_1_M00_AXI_AWCACHE),
        .M00_AXI_awlen(axi_interconnect_1_M00_AXI_AWLEN),
        .M00_AXI_awlock(axi_interconnect_1_M00_AXI_AWLOCK),
        .M00_AXI_awprot(axi_interconnect_1_M00_AXI_AWPROT),
        .M00_AXI_awqos(axi_interconnect_1_M00_AXI_AWQOS),
        .M00_AXI_awready(axi_interconnect_1_M00_AXI_AWREADY),
        .M00_AXI_awsize(axi_interconnect_1_M00_AXI_AWSIZE),
        .M00_AXI_awvalid(axi_interconnect_1_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_1_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_1_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_1_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_1_M00_AXI_RDATA),
        .M00_AXI_rlast(axi_interconnect_1_M00_AXI_RLAST),
        .M00_AXI_rready(axi_interconnect_1_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_1_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_1_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_1_M00_AXI_WDATA),
        .M00_AXI_wlast(axi_interconnect_1_M00_AXI_WLAST),
        .M00_AXI_wready(axi_interconnect_1_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_1_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_1_M00_AXI_WVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(axi_vip_0_M_AXI_ARADDR),
        .S00_AXI_arburst(axi_vip_0_M_AXI_ARBURST),
        .S00_AXI_arcache(axi_vip_0_M_AXI_ARCACHE),
        .S00_AXI_arlen(axi_vip_0_M_AXI_ARLEN),
        .S00_AXI_arlock(axi_vip_0_M_AXI_ARLOCK),
        .S00_AXI_arprot(axi_vip_0_M_AXI_ARPROT),
        .S00_AXI_arqos(axi_vip_0_M_AXI_ARQOS),
        .S00_AXI_arready(axi_vip_0_M_AXI_ARREADY),
        .S00_AXI_arregion(axi_vip_0_M_AXI_ARREGION),
        .S00_AXI_arsize(axi_vip_0_M_AXI_ARSIZE),
        .S00_AXI_arvalid(axi_vip_0_M_AXI_ARVALID),
        .S00_AXI_awaddr(axi_vip_0_M_AXI_AWADDR),
        .S00_AXI_awburst(axi_vip_0_M_AXI_AWBURST),
        .S00_AXI_awcache(axi_vip_0_M_AXI_AWCACHE),
        .S00_AXI_awlen(axi_vip_0_M_AXI_AWLEN),
        .S00_AXI_awlock(axi_vip_0_M_AXI_AWLOCK),
        .S00_AXI_awprot(axi_vip_0_M_AXI_AWPROT),
        .S00_AXI_awqos(axi_vip_0_M_AXI_AWQOS),
        .S00_AXI_awready(axi_vip_0_M_AXI_AWREADY),
        .S00_AXI_awregion(axi_vip_0_M_AXI_AWREGION),
        .S00_AXI_awsize(axi_vip_0_M_AXI_AWSIZE),
        .S00_AXI_awvalid(axi_vip_0_M_AXI_AWVALID),
        .S00_AXI_bready(axi_vip_0_M_AXI_BREADY),
        .S00_AXI_bresp(axi_vip_0_M_AXI_BRESP),
        .S00_AXI_bvalid(axi_vip_0_M_AXI_BVALID),
        .S00_AXI_rdata(axi_vip_0_M_AXI_RDATA),
        .S00_AXI_rlast(axi_vip_0_M_AXI_RLAST),
        .S00_AXI_rready(axi_vip_0_M_AXI_RREADY),
        .S00_AXI_rresp(axi_vip_0_M_AXI_RRESP),
        .S00_AXI_rvalid(axi_vip_0_M_AXI_RVALID),
        .S00_AXI_wdata(axi_vip_0_M_AXI_WDATA),
        .S00_AXI_wlast(axi_vip_0_M_AXI_WLAST),
        .S00_AXI_wready(axi_vip_0_M_AXI_WREADY),
        .S00_AXI_wstrb(axi_vip_0_M_AXI_WSTRB),
        .S00_AXI_wvalid(axi_vip_0_M_AXI_WVALID));
  (* DPA_AXILITE_MASTER = "fallback" *) 
  zedboard_base_interconnect_axilite_0 interconnect_axilite
       (.ACLK(ACLK_1),
        .ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_ACLK(ACLK_1),
        .M00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M00_AXI_araddr(axi_interconnect_0_M00_AXI_ARADDR),
        .M00_AXI_arready(axi_interconnect_0_M00_AXI_ARREADY),
        .M00_AXI_arvalid(axi_interconnect_0_M00_AXI_ARVALID),
        .M00_AXI_awaddr(axi_interconnect_0_M00_AXI_AWADDR),
        .M00_AXI_awready(axi_interconnect_0_M00_AXI_AWREADY),
        .M00_AXI_awvalid(axi_interconnect_0_M00_AXI_AWVALID),
        .M00_AXI_bready(axi_interconnect_0_M00_AXI_BREADY),
        .M00_AXI_bresp(axi_interconnect_0_M00_AXI_BRESP),
        .M00_AXI_bvalid(axi_interconnect_0_M00_AXI_BVALID),
        .M00_AXI_rdata(axi_interconnect_0_M00_AXI_RDATA),
        .M00_AXI_rready(axi_interconnect_0_M00_AXI_RREADY),
        .M00_AXI_rresp(axi_interconnect_0_M00_AXI_RRESP),
        .M00_AXI_rvalid(axi_interconnect_0_M00_AXI_RVALID),
        .M00_AXI_wdata(axi_interconnect_0_M00_AXI_WDATA),
        .M00_AXI_wready(axi_interconnect_0_M00_AXI_WREADY),
        .M00_AXI_wstrb(axi_interconnect_0_M00_AXI_WSTRB),
        .M00_AXI_wvalid(axi_interconnect_0_M00_AXI_WVALID),
        .M01_ACLK(ACLK_1),
        .M01_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .M01_AXI_araddr(interconnect_axilite_M01_AXI_ARADDR),
        .M01_AXI_arprot(interconnect_axilite_M01_AXI_ARPROT),
        .M01_AXI_arready(interconnect_axilite_M01_AXI_ARREADY),
        .M01_AXI_arvalid(interconnect_axilite_M01_AXI_ARVALID),
        .M01_AXI_awaddr(interconnect_axilite_M01_AXI_AWADDR),
        .M01_AXI_awprot(interconnect_axilite_M01_AXI_AWPROT),
        .M01_AXI_awready(interconnect_axilite_M01_AXI_AWREADY),
        .M01_AXI_awvalid(interconnect_axilite_M01_AXI_AWVALID),
        .M01_AXI_bready(interconnect_axilite_M01_AXI_BREADY),
        .M01_AXI_bresp(interconnect_axilite_M01_AXI_BRESP),
        .M01_AXI_bvalid(interconnect_axilite_M01_AXI_BVALID),
        .M01_AXI_rdata(interconnect_axilite_M01_AXI_RDATA),
        .M01_AXI_rready(interconnect_axilite_M01_AXI_RREADY),
        .M01_AXI_rresp(interconnect_axilite_M01_AXI_RRESP),
        .M01_AXI_rvalid(interconnect_axilite_M01_AXI_RVALID),
        .M01_AXI_wdata(interconnect_axilite_M01_AXI_WDATA),
        .M01_AXI_wready(interconnect_axilite_M01_AXI_WREADY),
        .M01_AXI_wstrb(interconnect_axilite_M01_AXI_WSTRB),
        .M01_AXI_wvalid(interconnect_axilite_M01_AXI_WVALID),
        .M02_ACLK(ACLK_1),
        .M02_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M02_AXI_araddr(interconnect_axilite_M02_AXI_ARADDR),
        .M02_AXI_arburst(interconnect_axilite_M02_AXI_ARBURST),
        .M02_AXI_arcache(interconnect_axilite_M02_AXI_ARCACHE),
        .M02_AXI_arid(interconnect_axilite_M02_AXI_ARID),
        .M02_AXI_arlen(interconnect_axilite_M02_AXI_ARLEN),
        .M02_AXI_arlock(interconnect_axilite_M02_AXI_ARLOCK),
        .M02_AXI_arprot(interconnect_axilite_M02_AXI_ARPROT),
        .M02_AXI_arqos(interconnect_axilite_M02_AXI_ARQOS),
        .M02_AXI_arready(interconnect_axilite_M02_AXI_ARREADY),
        .M02_AXI_arregion(interconnect_axilite_M02_AXI_ARREGION),
        .M02_AXI_arsize(interconnect_axilite_M02_AXI_ARSIZE),
        .M02_AXI_arvalid(interconnect_axilite_M02_AXI_ARVALID),
        .M02_AXI_awaddr(interconnect_axilite_M02_AXI_AWADDR),
        .M02_AXI_awburst(interconnect_axilite_M02_AXI_AWBURST),
        .M02_AXI_awcache(interconnect_axilite_M02_AXI_AWCACHE),
        .M02_AXI_awid(interconnect_axilite_M02_AXI_AWID),
        .M02_AXI_awlen(interconnect_axilite_M02_AXI_AWLEN),
        .M02_AXI_awlock(interconnect_axilite_M02_AXI_AWLOCK),
        .M02_AXI_awprot(interconnect_axilite_M02_AXI_AWPROT),
        .M02_AXI_awqos(interconnect_axilite_M02_AXI_AWQOS),
        .M02_AXI_awready(interconnect_axilite_M02_AXI_AWREADY),
        .M02_AXI_awregion(interconnect_axilite_M02_AXI_AWREGION),
        .M02_AXI_awsize(interconnect_axilite_M02_AXI_AWSIZE),
        .M02_AXI_awvalid(interconnect_axilite_M02_AXI_AWVALID),
        .M02_AXI_bid(interconnect_axilite_M02_AXI_BID),
        .M02_AXI_bready(interconnect_axilite_M02_AXI_BREADY),
        .M02_AXI_bresp(interconnect_axilite_M02_AXI_BRESP),
        .M02_AXI_bvalid(interconnect_axilite_M02_AXI_BVALID),
        .M02_AXI_rdata(interconnect_axilite_M02_AXI_RDATA),
        .M02_AXI_rid(interconnect_axilite_M02_AXI_RID),
        .M02_AXI_rlast(interconnect_axilite_M02_AXI_RLAST),
        .M02_AXI_rready(interconnect_axilite_M02_AXI_RREADY),
        .M02_AXI_rresp(interconnect_axilite_M02_AXI_RRESP),
        .M02_AXI_rvalid(interconnect_axilite_M02_AXI_RVALID),
        .M02_AXI_wdata(interconnect_axilite_M02_AXI_WDATA),
        .M02_AXI_wlast(interconnect_axilite_M02_AXI_WLAST),
        .M02_AXI_wready(interconnect_axilite_M02_AXI_WREADY),
        .M02_AXI_wstrb(interconnect_axilite_M02_AXI_WSTRB),
        .M02_AXI_wvalid(interconnect_axilite_M02_AXI_WVALID),
        .M03_ACLK(ACLK_1),
        .M03_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M03_AXI_araddr(interconnect_axilite_M03_AXI_ARADDR),
        .M03_AXI_arburst(interconnect_axilite_M03_AXI_ARBURST),
        .M03_AXI_arcache(interconnect_axilite_M03_AXI_ARCACHE),
        .M03_AXI_arid(interconnect_axilite_M03_AXI_ARID),
        .M03_AXI_arlen(interconnect_axilite_M03_AXI_ARLEN),
        .M03_AXI_arlock(interconnect_axilite_M03_AXI_ARLOCK),
        .M03_AXI_arprot(interconnect_axilite_M03_AXI_ARPROT),
        .M03_AXI_arqos(interconnect_axilite_M03_AXI_ARQOS),
        .M03_AXI_arready(interconnect_axilite_M03_AXI_ARREADY),
        .M03_AXI_arregion(interconnect_axilite_M03_AXI_ARREGION),
        .M03_AXI_arsize(interconnect_axilite_M03_AXI_ARSIZE),
        .M03_AXI_arvalid(interconnect_axilite_M03_AXI_ARVALID),
        .M03_AXI_rdata(interconnect_axilite_M03_AXI_RDATA),
        .M03_AXI_rid(interconnect_axilite_M03_AXI_RID),
        .M03_AXI_rlast(interconnect_axilite_M03_AXI_RLAST),
        .M03_AXI_rready(interconnect_axilite_M03_AXI_RREADY),
        .M03_AXI_rresp(interconnect_axilite_M03_AXI_RRESP),
        .M03_AXI_rvalid(interconnect_axilite_M03_AXI_RVALID),
        .S00_ACLK(ACLK_1),
        .S00_ARESETN(proc_sys_reset_0_interconnect_aresetn),
        .S00_AXI_araddr(ps_7_M_AXI_HPM0_LPD_ARADDR),
        .S00_AXI_arburst(ps_7_M_AXI_HPM0_LPD_ARBURST),
        .S00_AXI_arcache(ps_7_M_AXI_HPM0_LPD_ARCACHE),
        .S00_AXI_arid(ps_7_M_AXI_HPM0_LPD_ARID),
        .S00_AXI_arlen(ps_7_M_AXI_HPM0_LPD_ARLEN),
        .S00_AXI_arlock(ps_7_M_AXI_HPM0_LPD_ARLOCK),
        .S00_AXI_arprot(ps_7_M_AXI_HPM0_LPD_ARPROT),
        .S00_AXI_arqos(ps_7_M_AXI_HPM0_LPD_ARQOS),
        .S00_AXI_arready(ps_7_M_AXI_HPM0_LPD_ARREADY),
        .S00_AXI_arsize(ps_7_M_AXI_HPM0_LPD_ARSIZE),
        .S00_AXI_arvalid(ps_7_M_AXI_HPM0_LPD_ARVALID),
        .S00_AXI_awaddr(ps_7_M_AXI_HPM0_LPD_AWADDR),
        .S00_AXI_awburst(ps_7_M_AXI_HPM0_LPD_AWBURST),
        .S00_AXI_awcache(ps_7_M_AXI_HPM0_LPD_AWCACHE),
        .S00_AXI_awid(ps_7_M_AXI_HPM0_LPD_AWID),
        .S00_AXI_awlen(ps_7_M_AXI_HPM0_LPD_AWLEN),
        .S00_AXI_awlock(ps_7_M_AXI_HPM0_LPD_AWLOCK),
        .S00_AXI_awprot(ps_7_M_AXI_HPM0_LPD_AWPROT),
        .S00_AXI_awqos(ps_7_M_AXI_HPM0_LPD_AWQOS),
        .S00_AXI_awready(ps_7_M_AXI_HPM0_LPD_AWREADY),
        .S00_AXI_awsize(ps_7_M_AXI_HPM0_LPD_AWSIZE),
        .S00_AXI_awvalid(ps_7_M_AXI_HPM0_LPD_AWVALID),
        .S00_AXI_bid(ps_7_M_AXI_HPM0_LPD_BID),
        .S00_AXI_bready(ps_7_M_AXI_HPM0_LPD_BREADY),
        .S00_AXI_bresp(ps_7_M_AXI_HPM0_LPD_BRESP),
        .S00_AXI_bvalid(ps_7_M_AXI_HPM0_LPD_BVALID),
        .S00_AXI_rdata(ps_7_M_AXI_HPM0_LPD_RDATA),
        .S00_AXI_rid(ps_7_M_AXI_HPM0_LPD_RID),
        .S00_AXI_rlast(ps_7_M_AXI_HPM0_LPD_RLAST),
        .S00_AXI_rready(ps_7_M_AXI_HPM0_LPD_RREADY),
        .S00_AXI_rresp(ps_7_M_AXI_HPM0_LPD_RRESP),
        .S00_AXI_rvalid(ps_7_M_AXI_HPM0_LPD_RVALID),
        .S00_AXI_wdata(ps_7_M_AXI_HPM0_LPD_WDATA),
        .S00_AXI_wid(ps_7_M_AXI_HPM0_LPD_WID),
        .S00_AXI_wlast(ps_7_M_AXI_HPM0_LPD_WLAST),
        .S00_AXI_wready(ps_7_M_AXI_HPM0_LPD_WREADY),
        .S00_AXI_wstrb(ps_7_M_AXI_HPM0_LPD_WSTRB),
        .S00_AXI_wvalid(ps_7_M_AXI_HPM0_LPD_WVALID));
  zedboard_base_irq_const_tieoff_0 irq_const_tieoff
       (.dout(irq_const_tieoff_dout));
  zedboard_base_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .interconnect_aresetn(proc_sys_reset_0_interconnect_aresetn),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(ACLK_1));
  zedboard_base_proc_sys_reset_1_0 proc_sys_reset_1
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(Net),
        .mb_debug_sys_rst(1'b0),
        .slowest_sync_clk(clk_wiz_0_clk_out2));
  zedboard_base_ps7_0 ps7
       (.DDR_Addr(DDR_addr[14:0]),
        .DDR_BankAddr(DDR_ba[2:0]),
        .DDR_CAS_n(DDR_cas_n),
        .DDR_CKE(DDR_cke),
        .DDR_CS_n(DDR_cs_n),
        .DDR_Clk(DDR_ck_p),
        .DDR_Clk_n(DDR_ck_n),
        .DDR_DM(DDR_dm[3:0]),
        .DDR_DQ(DDR_dq[31:0]),
        .DDR_DQS(DDR_dqs_p[3:0]),
        .DDR_DQS_n(DDR_dqs_n[3:0]),
        .DDR_DRSTB(DDR_reset_n),
        .DDR_ODT(DDR_odt),
        .DDR_RAS_n(DDR_ras_n),
        .DDR_VRN(FIXED_IO_ddr_vrn),
        .DDR_VRP(FIXED_IO_ddr_vrp),
        .DDR_WEB(DDR_we_n),
        .FCLK_CLK0(ps_7_pl_clk0),
        .FCLK_RESET0_N(Net),
        .IRQ_F2P(axi_intc_0_irq),
        .MIO(FIXED_IO_mio[53:0]),
        .M_AXI_GP0_ACLK(ACLK_1),
        .M_AXI_GP0_ARADDR(ps_7_M_AXI_HPM0_LPD_ARADDR),
        .M_AXI_GP0_ARBURST(ps_7_M_AXI_HPM0_LPD_ARBURST),
        .M_AXI_GP0_ARCACHE(ps_7_M_AXI_HPM0_LPD_ARCACHE),
        .M_AXI_GP0_ARID(ps_7_M_AXI_HPM0_LPD_ARID),
        .M_AXI_GP0_ARLEN(ps_7_M_AXI_HPM0_LPD_ARLEN),
        .M_AXI_GP0_ARLOCK(ps_7_M_AXI_HPM0_LPD_ARLOCK),
        .M_AXI_GP0_ARPROT(ps_7_M_AXI_HPM0_LPD_ARPROT),
        .M_AXI_GP0_ARQOS(ps_7_M_AXI_HPM0_LPD_ARQOS),
        .M_AXI_GP0_ARREADY(ps_7_M_AXI_HPM0_LPD_ARREADY),
        .M_AXI_GP0_ARSIZE(ps_7_M_AXI_HPM0_LPD_ARSIZE),
        .M_AXI_GP0_ARVALID(ps_7_M_AXI_HPM0_LPD_ARVALID),
        .M_AXI_GP0_AWADDR(ps_7_M_AXI_HPM0_LPD_AWADDR),
        .M_AXI_GP0_AWBURST(ps_7_M_AXI_HPM0_LPD_AWBURST),
        .M_AXI_GP0_AWCACHE(ps_7_M_AXI_HPM0_LPD_AWCACHE),
        .M_AXI_GP0_AWID(ps_7_M_AXI_HPM0_LPD_AWID),
        .M_AXI_GP0_AWLEN(ps_7_M_AXI_HPM0_LPD_AWLEN),
        .M_AXI_GP0_AWLOCK(ps_7_M_AXI_HPM0_LPD_AWLOCK),
        .M_AXI_GP0_AWPROT(ps_7_M_AXI_HPM0_LPD_AWPROT),
        .M_AXI_GP0_AWQOS(ps_7_M_AXI_HPM0_LPD_AWQOS),
        .M_AXI_GP0_AWREADY(ps_7_M_AXI_HPM0_LPD_AWREADY),
        .M_AXI_GP0_AWSIZE(ps_7_M_AXI_HPM0_LPD_AWSIZE),
        .M_AXI_GP0_AWVALID(ps_7_M_AXI_HPM0_LPD_AWVALID),
        .M_AXI_GP0_BID(ps_7_M_AXI_HPM0_LPD_BID),
        .M_AXI_GP0_BREADY(ps_7_M_AXI_HPM0_LPD_BREADY),
        .M_AXI_GP0_BRESP(ps_7_M_AXI_HPM0_LPD_BRESP),
        .M_AXI_GP0_BVALID(ps_7_M_AXI_HPM0_LPD_BVALID),
        .M_AXI_GP0_RDATA(ps_7_M_AXI_HPM0_LPD_RDATA),
        .M_AXI_GP0_RID(ps_7_M_AXI_HPM0_LPD_RID),
        .M_AXI_GP0_RLAST(ps_7_M_AXI_HPM0_LPD_RLAST),
        .M_AXI_GP0_RREADY(ps_7_M_AXI_HPM0_LPD_RREADY),
        .M_AXI_GP0_RRESP(ps_7_M_AXI_HPM0_LPD_RRESP),
        .M_AXI_GP0_RVALID(ps_7_M_AXI_HPM0_LPD_RVALID),
        .M_AXI_GP0_WDATA(ps_7_M_AXI_HPM0_LPD_WDATA),
        .M_AXI_GP0_WID(ps_7_M_AXI_HPM0_LPD_WID),
        .M_AXI_GP0_WLAST(ps_7_M_AXI_HPM0_LPD_WLAST),
        .M_AXI_GP0_WREADY(ps_7_M_AXI_HPM0_LPD_WREADY),
        .M_AXI_GP0_WSTRB(ps_7_M_AXI_HPM0_LPD_WSTRB),
        .M_AXI_GP0_WVALID(ps_7_M_AXI_HPM0_LPD_WVALID),
        .PS_CLK(FIXED_IO_ps_clk),
        .PS_PORB(FIXED_IO_ps_porb),
        .PS_SRSTB(FIXED_IO_ps_srstb),
        .S_AXI_HP0_ACLK(ACLK_1),
        .S_AXI_HP0_ARADDR(axi_interconnect_0_M00_AXI1_ARADDR),
        .S_AXI_HP0_ARBURST(axi_interconnect_0_M00_AXI1_ARBURST),
        .S_AXI_HP0_ARCACHE(axi_interconnect_0_M00_AXI1_ARCACHE),
        .S_AXI_HP0_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_ARID}),
        .S_AXI_HP0_ARLEN(axi_interconnect_0_M00_AXI1_ARLEN),
        .S_AXI_HP0_ARLOCK(axi_interconnect_0_M00_AXI1_ARLOCK),
        .S_AXI_HP0_ARPROT(axi_interconnect_0_M00_AXI1_ARPROT),
        .S_AXI_HP0_ARQOS(axi_interconnect_0_M00_AXI1_ARQOS),
        .S_AXI_HP0_ARREADY(axi_interconnect_0_M00_AXI1_ARREADY),
        .S_AXI_HP0_ARSIZE(axi_interconnect_0_M00_AXI1_ARSIZE),
        .S_AXI_HP0_ARVALID(axi_interconnect_0_M00_AXI1_ARVALID),
        .S_AXI_HP0_AWADDR(axi_interconnect_0_M00_AXI1_AWADDR),
        .S_AXI_HP0_AWBURST(axi_interconnect_0_M00_AXI1_AWBURST),
        .S_AXI_HP0_AWCACHE(axi_interconnect_0_M00_AXI1_AWCACHE),
        .S_AXI_HP0_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_AWID}),
        .S_AXI_HP0_AWLEN(axi_interconnect_0_M00_AXI1_AWLEN),
        .S_AXI_HP0_AWLOCK(axi_interconnect_0_M00_AXI1_AWLOCK),
        .S_AXI_HP0_AWPROT(axi_interconnect_0_M00_AXI1_AWPROT),
        .S_AXI_HP0_AWQOS(axi_interconnect_0_M00_AXI1_AWQOS),
        .S_AXI_HP0_AWREADY(axi_interconnect_0_M00_AXI1_AWREADY),
        .S_AXI_HP0_AWSIZE(axi_interconnect_0_M00_AXI1_AWSIZE),
        .S_AXI_HP0_AWVALID(axi_interconnect_0_M00_AXI1_AWVALID),
        .S_AXI_HP0_BID(axi_interconnect_0_M00_AXI1_BID),
        .S_AXI_HP0_BREADY(axi_interconnect_0_M00_AXI1_BREADY),
        .S_AXI_HP0_BRESP(axi_interconnect_0_M00_AXI1_BRESP),
        .S_AXI_HP0_BVALID(axi_interconnect_0_M00_AXI1_BVALID),
        .S_AXI_HP0_RDATA(axi_interconnect_0_M00_AXI1_RDATA),
        .S_AXI_HP0_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP0_RID(axi_interconnect_0_M00_AXI1_RID),
        .S_AXI_HP0_RLAST(axi_interconnect_0_M00_AXI1_RLAST),
        .S_AXI_HP0_RREADY(axi_interconnect_0_M00_AXI1_RREADY),
        .S_AXI_HP0_RRESP(axi_interconnect_0_M00_AXI1_RRESP),
        .S_AXI_HP0_RVALID(axi_interconnect_0_M00_AXI1_RVALID),
        .S_AXI_HP0_WDATA(axi_interconnect_0_M00_AXI1_WDATA),
        .S_AXI_HP0_WID({1'b0,1'b0,1'b0,1'b0,1'b0,axi_interconnect_0_M00_AXI1_WID}),
        .S_AXI_HP0_WLAST(axi_interconnect_0_M00_AXI1_WLAST),
        .S_AXI_HP0_WREADY(axi_interconnect_0_M00_AXI1_WREADY),
        .S_AXI_HP0_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP0_WSTRB(axi_interconnect_0_M00_AXI1_WSTRB),
        .S_AXI_HP0_WVALID(axi_interconnect_0_M00_AXI1_WVALID),
        .S_AXI_HP1_ACLK(ACLK_1),
        .S_AXI_HP1_ARADDR(axi_interconnect_1_M00_AXI_ARADDR),
        .S_AXI_HP1_ARBURST(axi_interconnect_1_M00_AXI_ARBURST),
        .S_AXI_HP1_ARCACHE(axi_interconnect_1_M00_AXI_ARCACHE),
        .S_AXI_HP1_ARID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_ARLEN(axi_interconnect_1_M00_AXI_ARLEN),
        .S_AXI_HP1_ARLOCK(axi_interconnect_1_M00_AXI_ARLOCK),
        .S_AXI_HP1_ARPROT(axi_interconnect_1_M00_AXI_ARPROT),
        .S_AXI_HP1_ARQOS(axi_interconnect_1_M00_AXI_ARQOS),
        .S_AXI_HP1_ARREADY(axi_interconnect_1_M00_AXI_ARREADY),
        .S_AXI_HP1_ARSIZE(axi_interconnect_1_M00_AXI_ARSIZE),
        .S_AXI_HP1_ARVALID(axi_interconnect_1_M00_AXI_ARVALID),
        .S_AXI_HP1_AWADDR(axi_interconnect_1_M00_AXI_AWADDR),
        .S_AXI_HP1_AWBURST(axi_interconnect_1_M00_AXI_AWBURST),
        .S_AXI_HP1_AWCACHE(axi_interconnect_1_M00_AXI_AWCACHE),
        .S_AXI_HP1_AWID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_AWLEN(axi_interconnect_1_M00_AXI_AWLEN),
        .S_AXI_HP1_AWLOCK(axi_interconnect_1_M00_AXI_AWLOCK),
        .S_AXI_HP1_AWPROT(axi_interconnect_1_M00_AXI_AWPROT),
        .S_AXI_HP1_AWQOS(axi_interconnect_1_M00_AXI_AWQOS),
        .S_AXI_HP1_AWREADY(axi_interconnect_1_M00_AXI_AWREADY),
        .S_AXI_HP1_AWSIZE(axi_interconnect_1_M00_AXI_AWSIZE),
        .S_AXI_HP1_AWVALID(axi_interconnect_1_M00_AXI_AWVALID),
        .S_AXI_HP1_BREADY(axi_interconnect_1_M00_AXI_BREADY),
        .S_AXI_HP1_BRESP(axi_interconnect_1_M00_AXI_BRESP),
        .S_AXI_HP1_BVALID(axi_interconnect_1_M00_AXI_BVALID),
        .S_AXI_HP1_RDATA(axi_interconnect_1_M00_AXI_RDATA),
        .S_AXI_HP1_RDISSUECAP1_EN(1'b0),
        .S_AXI_HP1_RLAST(axi_interconnect_1_M00_AXI_RLAST),
        .S_AXI_HP1_RREADY(axi_interconnect_1_M00_AXI_RREADY),
        .S_AXI_HP1_RRESP(axi_interconnect_1_M00_AXI_RRESP),
        .S_AXI_HP1_RVALID(axi_interconnect_1_M00_AXI_RVALID),
        .S_AXI_HP1_WDATA(axi_interconnect_1_M00_AXI_WDATA),
        .S_AXI_HP1_WID({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .S_AXI_HP1_WLAST(axi_interconnect_1_M00_AXI_WLAST),
        .S_AXI_HP1_WREADY(axi_interconnect_1_M00_AXI_WREADY),
        .S_AXI_HP1_WRISSUECAP1_EN(1'b0),
        .S_AXI_HP1_WSTRB(axi_interconnect_1_M00_AXI_WSTRB),
        .S_AXI_HP1_WVALID(axi_interconnect_1_M00_AXI_WVALID),
        .USB0_VBUS_PWRFAULT(1'b0));
endmodule

module zedboard_base_axi_interconnect_lpd_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arid,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awid,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rid,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wid,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arregion,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awregion,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [0:0]M00_AXI_arid;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [0:0]M00_AXI_awid;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  input [5:0]M00_AXI_bid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input [5:0]M00_AXI_rid;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output [0:0]M00_AXI_wid;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [7:0]S01_AXI_arlen;
  input [1:0]S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [3:0]S01_AXI_arregion;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [7:0]S01_AXI_awlen;
  input [1:0]S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [3:0]S01_AXI_awregion;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

  wire axi_interconnect_lpd_ACLK_net;
  wire axi_interconnect_lpd_ARESETN_net;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_ARADDR;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_ARBURST;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_ARCACHE;
  wire [7:0]axi_interconnect_lpd_to_s00_couplers_ARLEN;
  wire [0:0]axi_interconnect_lpd_to_s00_couplers_ARLOCK;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_ARPROT;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_ARQOS;
  wire axi_interconnect_lpd_to_s00_couplers_ARREADY;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_ARREGION;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_ARSIZE;
  wire axi_interconnect_lpd_to_s00_couplers_ARVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_AWADDR;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_AWBURST;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_AWCACHE;
  wire [7:0]axi_interconnect_lpd_to_s00_couplers_AWLEN;
  wire [0:0]axi_interconnect_lpd_to_s00_couplers_AWLOCK;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_AWPROT;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_AWQOS;
  wire axi_interconnect_lpd_to_s00_couplers_AWREADY;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_AWREGION;
  wire [2:0]axi_interconnect_lpd_to_s00_couplers_AWSIZE;
  wire axi_interconnect_lpd_to_s00_couplers_AWVALID;
  wire axi_interconnect_lpd_to_s00_couplers_BREADY;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_BRESP;
  wire axi_interconnect_lpd_to_s00_couplers_BVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_RDATA;
  wire axi_interconnect_lpd_to_s00_couplers_RLAST;
  wire axi_interconnect_lpd_to_s00_couplers_RREADY;
  wire [1:0]axi_interconnect_lpd_to_s00_couplers_RRESP;
  wire axi_interconnect_lpd_to_s00_couplers_RVALID;
  wire [31:0]axi_interconnect_lpd_to_s00_couplers_WDATA;
  wire axi_interconnect_lpd_to_s00_couplers_WLAST;
  wire axi_interconnect_lpd_to_s00_couplers_WREADY;
  wire [3:0]axi_interconnect_lpd_to_s00_couplers_WSTRB;
  wire axi_interconnect_lpd_to_s00_couplers_WVALID;
  wire [31:0]axi_interconnect_lpd_to_s01_couplers_ARADDR;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_ARBURST;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_ARCACHE;
  wire [7:0]axi_interconnect_lpd_to_s01_couplers_ARLEN;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_ARLOCK;
  wire [2:0]axi_interconnect_lpd_to_s01_couplers_ARPROT;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_ARQOS;
  wire axi_interconnect_lpd_to_s01_couplers_ARREADY;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_ARREGION;
  wire [2:0]axi_interconnect_lpd_to_s01_couplers_ARSIZE;
  wire axi_interconnect_lpd_to_s01_couplers_ARVALID;
  wire [31:0]axi_interconnect_lpd_to_s01_couplers_AWADDR;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_AWBURST;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_AWCACHE;
  wire [7:0]axi_interconnect_lpd_to_s01_couplers_AWLEN;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_AWLOCK;
  wire [2:0]axi_interconnect_lpd_to_s01_couplers_AWPROT;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_AWQOS;
  wire axi_interconnect_lpd_to_s01_couplers_AWREADY;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_AWREGION;
  wire [2:0]axi_interconnect_lpd_to_s01_couplers_AWSIZE;
  wire axi_interconnect_lpd_to_s01_couplers_AWVALID;
  wire axi_interconnect_lpd_to_s01_couplers_BREADY;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_BRESP;
  wire axi_interconnect_lpd_to_s01_couplers_BVALID;
  wire [31:0]axi_interconnect_lpd_to_s01_couplers_RDATA;
  wire axi_interconnect_lpd_to_s01_couplers_RLAST;
  wire axi_interconnect_lpd_to_s01_couplers_RREADY;
  wire [1:0]axi_interconnect_lpd_to_s01_couplers_RRESP;
  wire axi_interconnect_lpd_to_s01_couplers_RVALID;
  wire [31:0]axi_interconnect_lpd_to_s01_couplers_WDATA;
  wire axi_interconnect_lpd_to_s01_couplers_WLAST;
  wire axi_interconnect_lpd_to_s01_couplers_WREADY;
  wire [3:0]axi_interconnect_lpd_to_s01_couplers_WSTRB;
  wire axi_interconnect_lpd_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_lpd_ARADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_ARBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_ARCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_lpd_ARID;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_ARLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_ARLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_lpd_ARPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_ARQOS;
  wire m00_couplers_to_axi_interconnect_lpd_ARREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_lpd_ARSIZE;
  wire m00_couplers_to_axi_interconnect_lpd_ARVALID;
  wire [31:0]m00_couplers_to_axi_interconnect_lpd_AWADDR;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_AWBURST;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_AWCACHE;
  wire [0:0]m00_couplers_to_axi_interconnect_lpd_AWID;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_AWLEN;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_AWLOCK;
  wire [2:0]m00_couplers_to_axi_interconnect_lpd_AWPROT;
  wire [3:0]m00_couplers_to_axi_interconnect_lpd_AWQOS;
  wire m00_couplers_to_axi_interconnect_lpd_AWREADY;
  wire [2:0]m00_couplers_to_axi_interconnect_lpd_AWSIZE;
  wire m00_couplers_to_axi_interconnect_lpd_AWVALID;
  wire [5:0]m00_couplers_to_axi_interconnect_lpd_BID;
  wire m00_couplers_to_axi_interconnect_lpd_BREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_BRESP;
  wire m00_couplers_to_axi_interconnect_lpd_BVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_lpd_RDATA;
  wire [5:0]m00_couplers_to_axi_interconnect_lpd_RID;
  wire m00_couplers_to_axi_interconnect_lpd_RLAST;
  wire m00_couplers_to_axi_interconnect_lpd_RREADY;
  wire [1:0]m00_couplers_to_axi_interconnect_lpd_RRESP;
  wire m00_couplers_to_axi_interconnect_lpd_RVALID;
  wire [63:0]m00_couplers_to_axi_interconnect_lpd_WDATA;
  wire [0:0]m00_couplers_to_axi_interconnect_lpd_WID;
  wire m00_couplers_to_axi_interconnect_lpd_WLAST;
  wire m00_couplers_to_axi_interconnect_lpd_WREADY;
  wire [7:0]m00_couplers_to_axi_interconnect_lpd_WSTRB;
  wire m00_couplers_to_axi_interconnect_lpd_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [63:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [63:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [7:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [1:0]s01_couplers_to_xbar_ARBURST;
  wire [3:0]s01_couplers_to_xbar_ARCACHE;
  wire [7:0]s01_couplers_to_xbar_ARLEN;
  wire [0:0]s01_couplers_to_xbar_ARLOCK;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [3:0]s01_couplers_to_xbar_ARQOS;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire [2:0]s01_couplers_to_xbar_ARSIZE;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [1:0]s01_couplers_to_xbar_AWBURST;
  wire [3:0]s01_couplers_to_xbar_AWCACHE;
  wire [7:0]s01_couplers_to_xbar_AWLEN;
  wire [0:0]s01_couplers_to_xbar_AWLOCK;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [3:0]s01_couplers_to_xbar_AWQOS;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire [2:0]s01_couplers_to_xbar_AWSIZE;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [127:64]s01_couplers_to_xbar_RDATA;
  wire [1:1]s01_couplers_to_xbar_RLAST;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [63:0]s01_couplers_to_xbar_WDATA;
  wire s01_couplers_to_xbar_WLAST;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [7:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [0:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [0:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [63:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [63:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [7:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_axi_interconnect_lpd_ARADDR;
  assign M00_AXI_arburst[1:0] = m00_couplers_to_axi_interconnect_lpd_ARBURST;
  assign M00_AXI_arcache[3:0] = m00_couplers_to_axi_interconnect_lpd_ARCACHE;
  assign M00_AXI_arid[0] = m00_couplers_to_axi_interconnect_lpd_ARID;
  assign M00_AXI_arlen[3:0] = m00_couplers_to_axi_interconnect_lpd_ARLEN;
  assign M00_AXI_arlock[1:0] = m00_couplers_to_axi_interconnect_lpd_ARLOCK;
  assign M00_AXI_arprot[2:0] = m00_couplers_to_axi_interconnect_lpd_ARPROT;
  assign M00_AXI_arqos[3:0] = m00_couplers_to_axi_interconnect_lpd_ARQOS;
  assign M00_AXI_arsize[2:0] = m00_couplers_to_axi_interconnect_lpd_ARSIZE;
  assign M00_AXI_arvalid = m00_couplers_to_axi_interconnect_lpd_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_axi_interconnect_lpd_AWADDR;
  assign M00_AXI_awburst[1:0] = m00_couplers_to_axi_interconnect_lpd_AWBURST;
  assign M00_AXI_awcache[3:0] = m00_couplers_to_axi_interconnect_lpd_AWCACHE;
  assign M00_AXI_awid[0] = m00_couplers_to_axi_interconnect_lpd_AWID;
  assign M00_AXI_awlen[3:0] = m00_couplers_to_axi_interconnect_lpd_AWLEN;
  assign M00_AXI_awlock[1:0] = m00_couplers_to_axi_interconnect_lpd_AWLOCK;
  assign M00_AXI_awprot[2:0] = m00_couplers_to_axi_interconnect_lpd_AWPROT;
  assign M00_AXI_awqos[3:0] = m00_couplers_to_axi_interconnect_lpd_AWQOS;
  assign M00_AXI_awsize[2:0] = m00_couplers_to_axi_interconnect_lpd_AWSIZE;
  assign M00_AXI_awvalid = m00_couplers_to_axi_interconnect_lpd_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_axi_interconnect_lpd_BREADY;
  assign M00_AXI_rready = m00_couplers_to_axi_interconnect_lpd_RREADY;
  assign M00_AXI_wdata[63:0] = m00_couplers_to_axi_interconnect_lpd_WDATA;
  assign M00_AXI_wid[0] = m00_couplers_to_axi_interconnect_lpd_WID;
  assign M00_AXI_wlast = m00_couplers_to_axi_interconnect_lpd_WLAST;
  assign M00_AXI_wstrb[7:0] = m00_couplers_to_axi_interconnect_lpd_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_axi_interconnect_lpd_WVALID;
  assign S00_AXI_arready = axi_interconnect_lpd_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = axi_interconnect_lpd_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = axi_interconnect_lpd_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = axi_interconnect_lpd_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = axi_interconnect_lpd_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = axi_interconnect_lpd_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = axi_interconnect_lpd_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = axi_interconnect_lpd_to_s00_couplers_RVALID;
  assign S00_AXI_wready = axi_interconnect_lpd_to_s00_couplers_WREADY;
  assign S01_AXI_arready = axi_interconnect_lpd_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = axi_interconnect_lpd_to_s01_couplers_AWREADY;
  assign S01_AXI_bresp[1:0] = axi_interconnect_lpd_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = axi_interconnect_lpd_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = axi_interconnect_lpd_to_s01_couplers_RDATA;
  assign S01_AXI_rlast = axi_interconnect_lpd_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = axi_interconnect_lpd_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = axi_interconnect_lpd_to_s01_couplers_RVALID;
  assign S01_AXI_wready = axi_interconnect_lpd_to_s01_couplers_WREADY;
  assign axi_interconnect_lpd_ACLK_net = ACLK;
  assign axi_interconnect_lpd_ARESETN_net = ARESETN;
  assign axi_interconnect_lpd_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign axi_interconnect_lpd_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign axi_interconnect_lpd_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign axi_interconnect_lpd_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign axi_interconnect_lpd_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign axi_interconnect_lpd_to_s00_couplers_BREADY = S00_AXI_bready;
  assign axi_interconnect_lpd_to_s00_couplers_RREADY = S00_AXI_rready;
  assign axi_interconnect_lpd_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign axi_interconnect_lpd_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign axi_interconnect_lpd_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign axi_interconnect_lpd_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign axi_interconnect_lpd_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARLOCK = S01_AXI_arlock[1:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARREGION = S01_AXI_arregion[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign axi_interconnect_lpd_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign axi_interconnect_lpd_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWLOCK = S01_AXI_awlock[1:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWREGION = S01_AXI_awregion[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign axi_interconnect_lpd_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign axi_interconnect_lpd_to_s01_couplers_BREADY = S01_AXI_bready;
  assign axi_interconnect_lpd_to_s01_couplers_RREADY = S01_AXI_rready;
  assign axi_interconnect_lpd_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign axi_interconnect_lpd_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign axi_interconnect_lpd_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign axi_interconnect_lpd_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_axi_interconnect_lpd_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_axi_interconnect_lpd_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_axi_interconnect_lpd_BID = M00_AXI_bid[5:0];
  assign m00_couplers_to_axi_interconnect_lpd_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_axi_interconnect_lpd_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_axi_interconnect_lpd_RDATA = M00_AXI_rdata[63:0];
  assign m00_couplers_to_axi_interconnect_lpd_RID = M00_AXI_rid[5:0];
  assign m00_couplers_to_axi_interconnect_lpd_RLAST = M00_AXI_rlast;
  assign m00_couplers_to_axi_interconnect_lpd_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_axi_interconnect_lpd_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_axi_interconnect_lpd_WREADY = M00_AXI_wready;
  m00_couplers_imp_1MAGE1E m00_couplers
       (.M_ACLK(axi_interconnect_lpd_ACLK_net),
        .M_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_axi_interconnect_lpd_ARADDR),
        .M_AXI_arburst(m00_couplers_to_axi_interconnect_lpd_ARBURST),
        .M_AXI_arcache(m00_couplers_to_axi_interconnect_lpd_ARCACHE),
        .M_AXI_arid(m00_couplers_to_axi_interconnect_lpd_ARID),
        .M_AXI_arlen(m00_couplers_to_axi_interconnect_lpd_ARLEN),
        .M_AXI_arlock(m00_couplers_to_axi_interconnect_lpd_ARLOCK),
        .M_AXI_arprot(m00_couplers_to_axi_interconnect_lpd_ARPROT),
        .M_AXI_arqos(m00_couplers_to_axi_interconnect_lpd_ARQOS),
        .M_AXI_arready(m00_couplers_to_axi_interconnect_lpd_ARREADY),
        .M_AXI_arsize(m00_couplers_to_axi_interconnect_lpd_ARSIZE),
        .M_AXI_arvalid(m00_couplers_to_axi_interconnect_lpd_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_axi_interconnect_lpd_AWADDR),
        .M_AXI_awburst(m00_couplers_to_axi_interconnect_lpd_AWBURST),
        .M_AXI_awcache(m00_couplers_to_axi_interconnect_lpd_AWCACHE),
        .M_AXI_awid(m00_couplers_to_axi_interconnect_lpd_AWID),
        .M_AXI_awlen(m00_couplers_to_axi_interconnect_lpd_AWLEN),
        .M_AXI_awlock(m00_couplers_to_axi_interconnect_lpd_AWLOCK),
        .M_AXI_awprot(m00_couplers_to_axi_interconnect_lpd_AWPROT),
        .M_AXI_awqos(m00_couplers_to_axi_interconnect_lpd_AWQOS),
        .M_AXI_awready(m00_couplers_to_axi_interconnect_lpd_AWREADY),
        .M_AXI_awsize(m00_couplers_to_axi_interconnect_lpd_AWSIZE),
        .M_AXI_awvalid(m00_couplers_to_axi_interconnect_lpd_AWVALID),
        .M_AXI_bid(m00_couplers_to_axi_interconnect_lpd_BID),
        .M_AXI_bready(m00_couplers_to_axi_interconnect_lpd_BREADY),
        .M_AXI_bresp(m00_couplers_to_axi_interconnect_lpd_BRESP),
        .M_AXI_bvalid(m00_couplers_to_axi_interconnect_lpd_BVALID),
        .M_AXI_rdata(m00_couplers_to_axi_interconnect_lpd_RDATA),
        .M_AXI_rid(m00_couplers_to_axi_interconnect_lpd_RID),
        .M_AXI_rlast(m00_couplers_to_axi_interconnect_lpd_RLAST),
        .M_AXI_rready(m00_couplers_to_axi_interconnect_lpd_RREADY),
        .M_AXI_rresp(m00_couplers_to_axi_interconnect_lpd_RRESP),
        .M_AXI_rvalid(m00_couplers_to_axi_interconnect_lpd_RVALID),
        .M_AXI_wdata(m00_couplers_to_axi_interconnect_lpd_WDATA),
        .M_AXI_wid(m00_couplers_to_axi_interconnect_lpd_WID),
        .M_AXI_wlast(m00_couplers_to_axi_interconnect_lpd_WLAST),
        .M_AXI_wready(m00_couplers_to_axi_interconnect_lpd_WREADY),
        .M_AXI_wstrb(m00_couplers_to_axi_interconnect_lpd_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_axi_interconnect_lpd_WVALID),
        .S_ACLK(axi_interconnect_lpd_ACLK_net),
        .S_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_1L3WTPP s00_couplers
       (.M_ACLK(axi_interconnect_lpd_ACLK_net),
        .M_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_lpd_ACLK_net),
        .S_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_lpd_to_s00_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_lpd_to_s00_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_lpd_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_lpd_to_s00_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_lpd_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_lpd_to_s00_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_lpd_to_s00_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_lpd_to_s00_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_lpd_to_s00_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_lpd_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_lpd_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_lpd_to_s00_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_lpd_to_s00_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_lpd_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_lpd_to_s00_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_lpd_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_lpd_to_s00_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_lpd_to_s00_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_lpd_to_s00_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_lpd_to_s00_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_lpd_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_lpd_to_s00_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_lpd_to_s00_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_lpd_to_s00_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_lpd_to_s00_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_lpd_to_s00_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_lpd_to_s00_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_lpd_to_s00_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_lpd_to_s00_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_lpd_to_s00_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_lpd_to_s00_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_lpd_to_s00_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_lpd_to_s00_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_lpd_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_lpd_to_s00_couplers_WVALID));
  s01_couplers_imp_O1BHRT s01_couplers
       (.M_ACLK(axi_interconnect_lpd_ACLK_net),
        .M_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s01_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s01_couplers_to_xbar_ARCACHE),
        .M_AXI_arlen(s01_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s01_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s01_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s01_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s01_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s01_couplers_to_xbar_AWCACHE),
        .M_AXI_awlen(s01_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s01_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s01_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s01_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rlast(s01_couplers_to_xbar_RLAST),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s01_couplers_to_xbar_WLAST),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(axi_interconnect_lpd_ACLK_net),
        .S_ARESETN(axi_interconnect_lpd_ARESETN_net),
        .S_AXI_araddr(axi_interconnect_lpd_to_s01_couplers_ARADDR),
        .S_AXI_arburst(axi_interconnect_lpd_to_s01_couplers_ARBURST),
        .S_AXI_arcache(axi_interconnect_lpd_to_s01_couplers_ARCACHE),
        .S_AXI_arlen(axi_interconnect_lpd_to_s01_couplers_ARLEN),
        .S_AXI_arlock(axi_interconnect_lpd_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(axi_interconnect_lpd_to_s01_couplers_ARPROT),
        .S_AXI_arqos(axi_interconnect_lpd_to_s01_couplers_ARQOS),
        .S_AXI_arready(axi_interconnect_lpd_to_s01_couplers_ARREADY),
        .S_AXI_arregion(axi_interconnect_lpd_to_s01_couplers_ARREGION),
        .S_AXI_arsize(axi_interconnect_lpd_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(axi_interconnect_lpd_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(axi_interconnect_lpd_to_s01_couplers_AWADDR),
        .S_AXI_awburst(axi_interconnect_lpd_to_s01_couplers_AWBURST),
        .S_AXI_awcache(axi_interconnect_lpd_to_s01_couplers_AWCACHE),
        .S_AXI_awlen(axi_interconnect_lpd_to_s01_couplers_AWLEN),
        .S_AXI_awlock(axi_interconnect_lpd_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(axi_interconnect_lpd_to_s01_couplers_AWPROT),
        .S_AXI_awqos(axi_interconnect_lpd_to_s01_couplers_AWQOS),
        .S_AXI_awready(axi_interconnect_lpd_to_s01_couplers_AWREADY),
        .S_AXI_awregion(axi_interconnect_lpd_to_s01_couplers_AWREGION),
        .S_AXI_awsize(axi_interconnect_lpd_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(axi_interconnect_lpd_to_s01_couplers_AWVALID),
        .S_AXI_bready(axi_interconnect_lpd_to_s01_couplers_BREADY),
        .S_AXI_bresp(axi_interconnect_lpd_to_s01_couplers_BRESP),
        .S_AXI_bvalid(axi_interconnect_lpd_to_s01_couplers_BVALID),
        .S_AXI_rdata(axi_interconnect_lpd_to_s01_couplers_RDATA),
        .S_AXI_rlast(axi_interconnect_lpd_to_s01_couplers_RLAST),
        .S_AXI_rready(axi_interconnect_lpd_to_s01_couplers_RREADY),
        .S_AXI_rresp(axi_interconnect_lpd_to_s01_couplers_RRESP),
        .S_AXI_rvalid(axi_interconnect_lpd_to_s01_couplers_RVALID),
        .S_AXI_wdata(axi_interconnect_lpd_to_s01_couplers_WDATA),
        .S_AXI_wlast(axi_interconnect_lpd_to_s01_couplers_WLAST),
        .S_AXI_wready(axi_interconnect_lpd_to_s01_couplers_WREADY),
        .S_AXI_wstrb(axi_interconnect_lpd_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(axi_interconnect_lpd_to_s01_couplers_WVALID));
  zedboard_base_xbar_0 xbar
       (.aclk(axi_interconnect_lpd_ACLK_net),
        .aresetn(axi_interconnect_lpd_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arburst(xbar_to_m00_couplers_ARBURST),
        .m_axi_arcache(xbar_to_m00_couplers_ARCACHE),
        .m_axi_arid(xbar_to_m00_couplers_ARID),
        .m_axi_arlen(xbar_to_m00_couplers_ARLEN),
        .m_axi_arlock(xbar_to_m00_couplers_ARLOCK),
        .m_axi_arprot(xbar_to_m00_couplers_ARPROT),
        .m_axi_arqos(xbar_to_m00_couplers_ARQOS),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arregion(xbar_to_m00_couplers_ARREGION),
        .m_axi_arsize(xbar_to_m00_couplers_ARSIZE),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awburst(xbar_to_m00_couplers_AWBURST),
        .m_axi_awcache(xbar_to_m00_couplers_AWCACHE),
        .m_axi_awid(xbar_to_m00_couplers_AWID),
        .m_axi_awlen(xbar_to_m00_couplers_AWLEN),
        .m_axi_awlock(xbar_to_m00_couplers_AWLOCK),
        .m_axi_awprot(xbar_to_m00_couplers_AWPROT),
        .m_axi_awqos(xbar_to_m00_couplers_AWQOS),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awregion(xbar_to_m00_couplers_AWREGION),
        .m_axi_awsize(xbar_to_m00_couplers_AWSIZE),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bid(xbar_to_m00_couplers_BID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rid(xbar_to_m00_couplers_RID),
        .m_axi_rlast(xbar_to_m00_couplers_RLAST),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wlast(xbar_to_m00_couplers_WLAST),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wstrb(xbar_to_m00_couplers_WSTRB),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arburst({s01_couplers_to_xbar_ARBURST,s00_couplers_to_xbar_ARBURST}),
        .s_axi_arcache({s01_couplers_to_xbar_ARCACHE,s00_couplers_to_xbar_ARCACHE}),
        .s_axi_arid({1'b0,1'b0}),
        .s_axi_arlen({s01_couplers_to_xbar_ARLEN,s00_couplers_to_xbar_ARLEN}),
        .s_axi_arlock({s01_couplers_to_xbar_ARLOCK,s00_couplers_to_xbar_ARLOCK}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,s00_couplers_to_xbar_ARPROT}),
        .s_axi_arqos({s01_couplers_to_xbar_ARQOS,s00_couplers_to_xbar_ARQOS}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arsize({s01_couplers_to_xbar_ARSIZE,s00_couplers_to_xbar_ARSIZE}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awburst({s01_couplers_to_xbar_AWBURST,s00_couplers_to_xbar_AWBURST}),
        .s_axi_awcache({s01_couplers_to_xbar_AWCACHE,s00_couplers_to_xbar_AWCACHE}),
        .s_axi_awid({1'b0,1'b0}),
        .s_axi_awlen({s01_couplers_to_xbar_AWLEN,s00_couplers_to_xbar_AWLEN}),
        .s_axi_awlock({s01_couplers_to_xbar_AWLOCK,s00_couplers_to_xbar_AWLOCK}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,s00_couplers_to_xbar_AWPROT}),
        .s_axi_awqos({s01_couplers_to_xbar_AWQOS,s00_couplers_to_xbar_AWQOS}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awsize({s01_couplers_to_xbar_AWSIZE,s00_couplers_to_xbar_AWSIZE}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rlast({s01_couplers_to_xbar_RLAST,s00_couplers_to_xbar_RLAST}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wlast({s01_couplers_to_xbar_WLAST,s00_couplers_to_xbar_WLAST}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,s00_couplers_to_xbar_WSTRB}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module zedboard_base_dpa_ctrl_interconnect_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arprot,
    M02_AXI_arready,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awprot,
    M02_AXI_awready,
    M02_AXI_awvalid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arprot,
    M03_AXI_arready,
    M03_AXI_arvalid,
    M03_AXI_awaddr,
    M03_AXI_awprot,
    M03_AXI_awready,
    M03_AXI_awvalid,
    M03_AXI_bready,
    M03_AXI_bresp,
    M03_AXI_bvalid,
    M03_AXI_rdata,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    M03_AXI_wdata,
    M03_AXI_wready,
    M03_AXI_wstrb,
    M03_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [3:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [3:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [2:0]M02_AXI_arprot;
  input M02_AXI_arready;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [2:0]M02_AXI_awprot;
  input M02_AXI_awready;
  output M02_AXI_awvalid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [7:0]M03_AXI_araddr;
  output [2:0]M03_AXI_arprot;
  input M03_AXI_arready;
  output M03_AXI_arvalid;
  output [7:0]M03_AXI_awaddr;
  output [2:0]M03_AXI_awprot;
  input M03_AXI_awready;
  output M03_AXI_awvalid;
  output M03_AXI_bready;
  input [1:0]M03_AXI_bresp;
  input M03_AXI_bvalid;
  input [31:0]M03_AXI_rdata;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  output [31:0]M03_AXI_wdata;
  input M03_AXI_wready;
  output [3:0]M03_AXI_wstrb;
  output M03_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire dpa_ctrl_interconnect_ACLK_net;
  wire dpa_ctrl_interconnect_ARESETN_net;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_ARADDR;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_ARBURST;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_ARCACHE;
  wire [11:0]dpa_ctrl_interconnect_to_s00_couplers_ARID;
  wire [7:0]dpa_ctrl_interconnect_to_s00_couplers_ARLEN;
  wire [0:0]dpa_ctrl_interconnect_to_s00_couplers_ARLOCK;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_ARPROT;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_ARQOS;
  wire dpa_ctrl_interconnect_to_s00_couplers_ARREADY;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_ARREGION;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_ARSIZE;
  wire dpa_ctrl_interconnect_to_s00_couplers_ARVALID;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_AWADDR;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_AWBURST;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_AWCACHE;
  wire [11:0]dpa_ctrl_interconnect_to_s00_couplers_AWID;
  wire [7:0]dpa_ctrl_interconnect_to_s00_couplers_AWLEN;
  wire [0:0]dpa_ctrl_interconnect_to_s00_couplers_AWLOCK;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_AWPROT;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_AWQOS;
  wire dpa_ctrl_interconnect_to_s00_couplers_AWREADY;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_AWREGION;
  wire [2:0]dpa_ctrl_interconnect_to_s00_couplers_AWSIZE;
  wire dpa_ctrl_interconnect_to_s00_couplers_AWVALID;
  wire [11:0]dpa_ctrl_interconnect_to_s00_couplers_BID;
  wire dpa_ctrl_interconnect_to_s00_couplers_BREADY;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_BRESP;
  wire dpa_ctrl_interconnect_to_s00_couplers_BVALID;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_RDATA;
  wire [11:0]dpa_ctrl_interconnect_to_s00_couplers_RID;
  wire dpa_ctrl_interconnect_to_s00_couplers_RLAST;
  wire dpa_ctrl_interconnect_to_s00_couplers_RREADY;
  wire [1:0]dpa_ctrl_interconnect_to_s00_couplers_RRESP;
  wire dpa_ctrl_interconnect_to_s00_couplers_RVALID;
  wire [31:0]dpa_ctrl_interconnect_to_s00_couplers_WDATA;
  wire dpa_ctrl_interconnect_to_s00_couplers_WLAST;
  wire dpa_ctrl_interconnect_to_s00_couplers_WREADY;
  wire [3:0]dpa_ctrl_interconnect_to_s00_couplers_WSTRB;
  wire dpa_ctrl_interconnect_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire m00_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m00_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire m00_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m00_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m00_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m00_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m00_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m00_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m00_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m00_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m00_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m00_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m00_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m00_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [3:0]m01_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire [2:0]m01_couplers_to_dpa_ctrl_interconnect_ARPROT;
  wire m01_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m01_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [3:0]m01_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire [2:0]m01_couplers_to_dpa_ctrl_interconnect_AWPROT;
  wire m01_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m01_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m01_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m01_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m01_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m01_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m01_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m01_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m01_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m01_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m01_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m01_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m01_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [31:0]m02_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire [2:0]m02_couplers_to_dpa_ctrl_interconnect_ARPROT;
  wire m02_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m02_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [31:0]m02_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire [2:0]m02_couplers_to_dpa_ctrl_interconnect_AWPROT;
  wire m02_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m02_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m02_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m02_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m02_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m02_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m02_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m02_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m02_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m02_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m02_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m02_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m02_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [7:0]m03_couplers_to_dpa_ctrl_interconnect_ARADDR;
  wire [2:0]m03_couplers_to_dpa_ctrl_interconnect_ARPROT;
  wire m03_couplers_to_dpa_ctrl_interconnect_ARREADY;
  wire m03_couplers_to_dpa_ctrl_interconnect_ARVALID;
  wire [7:0]m03_couplers_to_dpa_ctrl_interconnect_AWADDR;
  wire [2:0]m03_couplers_to_dpa_ctrl_interconnect_AWPROT;
  wire m03_couplers_to_dpa_ctrl_interconnect_AWREADY;
  wire m03_couplers_to_dpa_ctrl_interconnect_AWVALID;
  wire m03_couplers_to_dpa_ctrl_interconnect_BREADY;
  wire [1:0]m03_couplers_to_dpa_ctrl_interconnect_BRESP;
  wire m03_couplers_to_dpa_ctrl_interconnect_BVALID;
  wire [31:0]m03_couplers_to_dpa_ctrl_interconnect_RDATA;
  wire m03_couplers_to_dpa_ctrl_interconnect_RREADY;
  wire [1:0]m03_couplers_to_dpa_ctrl_interconnect_RRESP;
  wire m03_couplers_to_dpa_ctrl_interconnect_RVALID;
  wire [31:0]m03_couplers_to_dpa_ctrl_interconnect_WDATA;
  wire m03_couplers_to_dpa_ctrl_interconnect_WREADY;
  wire [3:0]m03_couplers_to_dpa_ctrl_interconnect_WSTRB;
  wire m03_couplers_to_dpa_ctrl_interconnect_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire xbar_to_m02_couplers_ARREADY;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire xbar_to_m02_couplers_AWREADY;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire xbar_to_m03_couplers_ARREADY;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [127:96]xbar_to_m03_couplers_AWADDR;
  wire [11:9]xbar_to_m03_couplers_AWPROT;
  wire xbar_to_m03_couplers_AWREADY;
  wire [3:3]xbar_to_m03_couplers_AWVALID;
  wire [3:3]xbar_to_m03_couplers_BREADY;
  wire [1:0]xbar_to_m03_couplers_BRESP;
  wire xbar_to_m03_couplers_BVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;
  wire [127:96]xbar_to_m03_couplers_WDATA;
  wire xbar_to_m03_couplers_WREADY;
  wire [15:12]xbar_to_m03_couplers_WSTRB;
  wire [3:3]xbar_to_m03_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M00_AXI_rready = m00_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign M01_AXI_araddr[3:0] = m01_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_dpa_ctrl_interconnect_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M01_AXI_awaddr[3:0] = m01_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_dpa_ctrl_interconnect_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M01_AXI_rready = m01_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_dpa_ctrl_interconnect_ARPROT;
  assign M02_AXI_arvalid = m02_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_dpa_ctrl_interconnect_AWPROT;
  assign M02_AXI_awvalid = m02_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M02_AXI_rready = m02_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign M03_AXI_araddr[7:0] = m03_couplers_to_dpa_ctrl_interconnect_ARADDR;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_dpa_ctrl_interconnect_ARPROT;
  assign M03_AXI_arvalid = m03_couplers_to_dpa_ctrl_interconnect_ARVALID;
  assign M03_AXI_awaddr[7:0] = m03_couplers_to_dpa_ctrl_interconnect_AWADDR;
  assign M03_AXI_awprot[2:0] = m03_couplers_to_dpa_ctrl_interconnect_AWPROT;
  assign M03_AXI_awvalid = m03_couplers_to_dpa_ctrl_interconnect_AWVALID;
  assign M03_AXI_bready = m03_couplers_to_dpa_ctrl_interconnect_BREADY;
  assign M03_AXI_rready = m03_couplers_to_dpa_ctrl_interconnect_RREADY;
  assign M03_AXI_wdata[31:0] = m03_couplers_to_dpa_ctrl_interconnect_WDATA;
  assign M03_AXI_wstrb[3:0] = m03_couplers_to_dpa_ctrl_interconnect_WSTRB;
  assign M03_AXI_wvalid = m03_couplers_to_dpa_ctrl_interconnect_WVALID;
  assign S00_AXI_arready = dpa_ctrl_interconnect_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = dpa_ctrl_interconnect_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = dpa_ctrl_interconnect_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = dpa_ctrl_interconnect_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = dpa_ctrl_interconnect_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = dpa_ctrl_interconnect_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = dpa_ctrl_interconnect_to_s00_couplers_RID;
  assign S00_AXI_rlast = dpa_ctrl_interconnect_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = dpa_ctrl_interconnect_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = dpa_ctrl_interconnect_to_s00_couplers_RVALID;
  assign S00_AXI_wready = dpa_ctrl_interconnect_to_s00_couplers_WREADY;
  assign dpa_ctrl_interconnect_ACLK_net = ACLK;
  assign dpa_ctrl_interconnect_ARESETN_net = ARESETN;
  assign dpa_ctrl_interconnect_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign dpa_ctrl_interconnect_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign dpa_ctrl_interconnect_to_s00_couplers_BREADY = S00_AXI_bready;
  assign dpa_ctrl_interconnect_to_s00_couplers_RREADY = S00_AXI_rready;
  assign dpa_ctrl_interconnect_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign dpa_ctrl_interconnect_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign dpa_ctrl_interconnect_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_dpa_ctrl_interconnect_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_dpa_ctrl_interconnect_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_dpa_ctrl_interconnect_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_dpa_ctrl_interconnect_WREADY = M00_AXI_wready;
  assign m01_couplers_to_dpa_ctrl_interconnect_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_dpa_ctrl_interconnect_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_dpa_ctrl_interconnect_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_dpa_ctrl_interconnect_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_dpa_ctrl_interconnect_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_dpa_ctrl_interconnect_WREADY = M01_AXI_wready;
  assign m02_couplers_to_dpa_ctrl_interconnect_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_dpa_ctrl_interconnect_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_dpa_ctrl_interconnect_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_dpa_ctrl_interconnect_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_dpa_ctrl_interconnect_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_dpa_ctrl_interconnect_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_dpa_ctrl_interconnect_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_dpa_ctrl_interconnect_WREADY = M02_AXI_wready;
  assign m03_couplers_to_dpa_ctrl_interconnect_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_dpa_ctrl_interconnect_AWREADY = M03_AXI_awready;
  assign m03_couplers_to_dpa_ctrl_interconnect_BRESP = M03_AXI_bresp[1:0];
  assign m03_couplers_to_dpa_ctrl_interconnect_BVALID = M03_AXI_bvalid;
  assign m03_couplers_to_dpa_ctrl_interconnect_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_dpa_ctrl_interconnect_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_dpa_ctrl_interconnect_RVALID = M03_AXI_rvalid;
  assign m03_couplers_to_dpa_ctrl_interconnect_WREADY = M03_AXI_wready;
  m00_couplers_imp_1J4XQYC m00_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arready(m00_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awready(m00_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m00_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m00_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m00_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m00_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m00_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m00_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m00_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m00_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m00_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m00_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_Q0LSO0 m01_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arprot(m01_couplers_to_dpa_ctrl_interconnect_ARPROT),
        .M_AXI_arready(m01_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awprot(m01_couplers_to_dpa_ctrl_interconnect_AWPROT),
        .M_AXI_awready(m01_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m01_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m01_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m01_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m01_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m01_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m01_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m01_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m01_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m01_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m01_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_BYT0F1 m02_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(m02_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arprot(m02_couplers_to_dpa_ctrl_interconnect_ARPROT),
        .M_AXI_arready(m02_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m02_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awprot(m02_couplers_to_dpa_ctrl_interconnect_AWPROT),
        .M_AXI_awready(m02_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m02_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m02_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m02_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m02_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m02_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m02_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m02_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m02_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m02_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m02_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m02_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1CX94EH m03_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(m03_couplers_to_dpa_ctrl_interconnect_ARADDR),
        .M_AXI_arprot(m03_couplers_to_dpa_ctrl_interconnect_ARPROT),
        .M_AXI_arready(m03_couplers_to_dpa_ctrl_interconnect_ARREADY),
        .M_AXI_arvalid(m03_couplers_to_dpa_ctrl_interconnect_ARVALID),
        .M_AXI_awaddr(m03_couplers_to_dpa_ctrl_interconnect_AWADDR),
        .M_AXI_awprot(m03_couplers_to_dpa_ctrl_interconnect_AWPROT),
        .M_AXI_awready(m03_couplers_to_dpa_ctrl_interconnect_AWREADY),
        .M_AXI_awvalid(m03_couplers_to_dpa_ctrl_interconnect_AWVALID),
        .M_AXI_bready(m03_couplers_to_dpa_ctrl_interconnect_BREADY),
        .M_AXI_bresp(m03_couplers_to_dpa_ctrl_interconnect_BRESP),
        .M_AXI_bvalid(m03_couplers_to_dpa_ctrl_interconnect_BVALID),
        .M_AXI_rdata(m03_couplers_to_dpa_ctrl_interconnect_RDATA),
        .M_AXI_rready(m03_couplers_to_dpa_ctrl_interconnect_RREADY),
        .M_AXI_rresp(m03_couplers_to_dpa_ctrl_interconnect_RRESP),
        .M_AXI_rvalid(m03_couplers_to_dpa_ctrl_interconnect_RVALID),
        .M_AXI_wdata(m03_couplers_to_dpa_ctrl_interconnect_WDATA),
        .M_AXI_wready(m03_couplers_to_dpa_ctrl_interconnect_WREADY),
        .M_AXI_wstrb(m03_couplers_to_dpa_ctrl_interconnect_WSTRB),
        .M_AXI_wvalid(m03_couplers_to_dpa_ctrl_interconnect_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m03_couplers_AWADDR),
        .S_AXI_awprot(xbar_to_m03_couplers_AWPROT),
        .S_AXI_awready(xbar_to_m03_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m03_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m03_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m03_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m03_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m03_couplers_WDATA),
        .S_AXI_wready(xbar_to_m03_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m03_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m03_couplers_WVALID));
  s00_couplers_imp_1OBXDQJ s00_couplers
       (.M_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .M_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(dpa_ctrl_interconnect_ACLK_net),
        .S_ARESETN(dpa_ctrl_interconnect_ARESETN_net),
        .S_AXI_araddr(dpa_ctrl_interconnect_to_s00_couplers_ARADDR),
        .S_AXI_arburst(dpa_ctrl_interconnect_to_s00_couplers_ARBURST),
        .S_AXI_arcache(dpa_ctrl_interconnect_to_s00_couplers_ARCACHE),
        .S_AXI_arid(dpa_ctrl_interconnect_to_s00_couplers_ARID),
        .S_AXI_arlen(dpa_ctrl_interconnect_to_s00_couplers_ARLEN),
        .S_AXI_arlock(dpa_ctrl_interconnect_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(dpa_ctrl_interconnect_to_s00_couplers_ARPROT),
        .S_AXI_arqos(dpa_ctrl_interconnect_to_s00_couplers_ARQOS),
        .S_AXI_arready(dpa_ctrl_interconnect_to_s00_couplers_ARREADY),
        .S_AXI_arregion(dpa_ctrl_interconnect_to_s00_couplers_ARREGION),
        .S_AXI_arsize(dpa_ctrl_interconnect_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(dpa_ctrl_interconnect_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(dpa_ctrl_interconnect_to_s00_couplers_AWADDR),
        .S_AXI_awburst(dpa_ctrl_interconnect_to_s00_couplers_AWBURST),
        .S_AXI_awcache(dpa_ctrl_interconnect_to_s00_couplers_AWCACHE),
        .S_AXI_awid(dpa_ctrl_interconnect_to_s00_couplers_AWID),
        .S_AXI_awlen(dpa_ctrl_interconnect_to_s00_couplers_AWLEN),
        .S_AXI_awlock(dpa_ctrl_interconnect_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(dpa_ctrl_interconnect_to_s00_couplers_AWPROT),
        .S_AXI_awqos(dpa_ctrl_interconnect_to_s00_couplers_AWQOS),
        .S_AXI_awready(dpa_ctrl_interconnect_to_s00_couplers_AWREADY),
        .S_AXI_awregion(dpa_ctrl_interconnect_to_s00_couplers_AWREGION),
        .S_AXI_awsize(dpa_ctrl_interconnect_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(dpa_ctrl_interconnect_to_s00_couplers_AWVALID),
        .S_AXI_bid(dpa_ctrl_interconnect_to_s00_couplers_BID),
        .S_AXI_bready(dpa_ctrl_interconnect_to_s00_couplers_BREADY),
        .S_AXI_bresp(dpa_ctrl_interconnect_to_s00_couplers_BRESP),
        .S_AXI_bvalid(dpa_ctrl_interconnect_to_s00_couplers_BVALID),
        .S_AXI_rdata(dpa_ctrl_interconnect_to_s00_couplers_RDATA),
        .S_AXI_rid(dpa_ctrl_interconnect_to_s00_couplers_RID),
        .S_AXI_rlast(dpa_ctrl_interconnect_to_s00_couplers_RLAST),
        .S_AXI_rready(dpa_ctrl_interconnect_to_s00_couplers_RREADY),
        .S_AXI_rresp(dpa_ctrl_interconnect_to_s00_couplers_RRESP),
        .S_AXI_rvalid(dpa_ctrl_interconnect_to_s00_couplers_RVALID),
        .S_AXI_wdata(dpa_ctrl_interconnect_to_s00_couplers_WDATA),
        .S_AXI_wlast(dpa_ctrl_interconnect_to_s00_couplers_WLAST),
        .S_AXI_wready(dpa_ctrl_interconnect_to_s00_couplers_WREADY),
        .S_AXI_wstrb(dpa_ctrl_interconnect_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(dpa_ctrl_interconnect_to_s00_couplers_WVALID));
  zedboard_base_xbar_3 xbar
       (.aclk(dpa_ctrl_interconnect_ACLK_net),
        .aresetn(dpa_ctrl_interconnect_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m03_couplers_AWADDR,xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awprot({xbar_to_m03_couplers_AWPROT,xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awready({xbar_to_m03_couplers_AWREADY,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m03_couplers_AWVALID,xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m03_couplers_BREADY,xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m03_couplers_BRESP,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m03_couplers_BVALID,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m03_couplers_WDATA,xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m03_couplers_WREADY,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m03_couplers_WSTRB,xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m03_couplers_WVALID,xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module zedboard_base_interconnect_axifull_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arburst,
    M00_AXI_arcache,
    M00_AXI_arlen,
    M00_AXI_arlock,
    M00_AXI_arprot,
    M00_AXI_arqos,
    M00_AXI_arready,
    M00_AXI_arsize,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awburst,
    M00_AXI_awcache,
    M00_AXI_awlen,
    M00_AXI_awlock,
    M00_AXI_awprot,
    M00_AXI_awqos,
    M00_AXI_awready,
    M00_AXI_awsize,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rlast,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wlast,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arregion,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awregion,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  output [1:0]M00_AXI_arburst;
  output [3:0]M00_AXI_arcache;
  output [3:0]M00_AXI_arlen;
  output [1:0]M00_AXI_arlock;
  output [2:0]M00_AXI_arprot;
  output [3:0]M00_AXI_arqos;
  input M00_AXI_arready;
  output [2:0]M00_AXI_arsize;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  output [1:0]M00_AXI_awburst;
  output [3:0]M00_AXI_awcache;
  output [3:0]M00_AXI_awlen;
  output [1:0]M00_AXI_awlock;
  output [2:0]M00_AXI_awprot;
  output [3:0]M00_AXI_awqos;
  input M00_AXI_awready;
  output [2:0]M00_AXI_awsize;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [63:0]M00_AXI_rdata;
  input M00_AXI_rlast;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [63:0]M00_AXI_wdata;
  output M00_AXI_wlast;
  input M00_AXI_wready;
  output [7:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [7:0]S00_AXI_arlen;
  input [0:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [3:0]S00_AXI_arregion;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [7:0]S00_AXI_awlen;
  input [0:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [3:0]S00_AXI_awregion;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axifull_ACLK_net;
  wire interconnect_axifull_ARESETN_net;
  wire [31:0]interconnect_axifull_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_ARLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARQOS;
  wire interconnect_axifull_to_s00_couplers_ARREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_ARREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_ARSIZE;
  wire interconnect_axifull_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axifull_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWCACHE;
  wire [7:0]interconnect_axifull_to_s00_couplers_AWLEN;
  wire [0:0]interconnect_axifull_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWQOS;
  wire interconnect_axifull_to_s00_couplers_AWREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_AWREGION;
  wire [2:0]interconnect_axifull_to_s00_couplers_AWSIZE;
  wire interconnect_axifull_to_s00_couplers_AWVALID;
  wire interconnect_axifull_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_BRESP;
  wire interconnect_axifull_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_RDATA;
  wire interconnect_axifull_to_s00_couplers_RLAST;
  wire interconnect_axifull_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axifull_to_s00_couplers_RRESP;
  wire interconnect_axifull_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axifull_to_s00_couplers_WDATA;
  wire interconnect_axifull_to_s00_couplers_WLAST;
  wire interconnect_axifull_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axifull_to_s00_couplers_WSTRB;
  wire interconnect_axifull_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_ARADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_ARBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_ARCACHE;
  wire [3:0]s00_couplers_to_interconnect_axifull_ARLEN;
  wire [1:0]s00_couplers_to_interconnect_axifull_ARLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_ARPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_ARQOS;
  wire s00_couplers_to_interconnect_axifull_ARREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_ARSIZE;
  wire s00_couplers_to_interconnect_axifull_ARVALID;
  wire [31:0]s00_couplers_to_interconnect_axifull_AWADDR;
  wire [1:0]s00_couplers_to_interconnect_axifull_AWBURST;
  wire [3:0]s00_couplers_to_interconnect_axifull_AWCACHE;
  wire [3:0]s00_couplers_to_interconnect_axifull_AWLEN;
  wire [1:0]s00_couplers_to_interconnect_axifull_AWLOCK;
  wire [2:0]s00_couplers_to_interconnect_axifull_AWPROT;
  wire [3:0]s00_couplers_to_interconnect_axifull_AWQOS;
  wire s00_couplers_to_interconnect_axifull_AWREADY;
  wire [2:0]s00_couplers_to_interconnect_axifull_AWSIZE;
  wire s00_couplers_to_interconnect_axifull_AWVALID;
  wire s00_couplers_to_interconnect_axifull_BREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_BRESP;
  wire s00_couplers_to_interconnect_axifull_BVALID;
  wire [63:0]s00_couplers_to_interconnect_axifull_RDATA;
  wire s00_couplers_to_interconnect_axifull_RLAST;
  wire s00_couplers_to_interconnect_axifull_RREADY;
  wire [1:0]s00_couplers_to_interconnect_axifull_RRESP;
  wire s00_couplers_to_interconnect_axifull_RVALID;
  wire [63:0]s00_couplers_to_interconnect_axifull_WDATA;
  wire s00_couplers_to_interconnect_axifull_WLAST;
  wire s00_couplers_to_interconnect_axifull_WREADY;
  wire [7:0]s00_couplers_to_interconnect_axifull_WSTRB;
  wire s00_couplers_to_interconnect_axifull_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_interconnect_axifull_ARADDR;
  assign M00_AXI_arburst[1:0] = s00_couplers_to_interconnect_axifull_ARBURST;
  assign M00_AXI_arcache[3:0] = s00_couplers_to_interconnect_axifull_ARCACHE;
  assign M00_AXI_arlen[3:0] = s00_couplers_to_interconnect_axifull_ARLEN;
  assign M00_AXI_arlock[1:0] = s00_couplers_to_interconnect_axifull_ARLOCK;
  assign M00_AXI_arprot[2:0] = s00_couplers_to_interconnect_axifull_ARPROT;
  assign M00_AXI_arqos[3:0] = s00_couplers_to_interconnect_axifull_ARQOS;
  assign M00_AXI_arsize[2:0] = s00_couplers_to_interconnect_axifull_ARSIZE;
  assign M00_AXI_arvalid = s00_couplers_to_interconnect_axifull_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_interconnect_axifull_AWADDR;
  assign M00_AXI_awburst[1:0] = s00_couplers_to_interconnect_axifull_AWBURST;
  assign M00_AXI_awcache[3:0] = s00_couplers_to_interconnect_axifull_AWCACHE;
  assign M00_AXI_awlen[3:0] = s00_couplers_to_interconnect_axifull_AWLEN;
  assign M00_AXI_awlock[1:0] = s00_couplers_to_interconnect_axifull_AWLOCK;
  assign M00_AXI_awprot[2:0] = s00_couplers_to_interconnect_axifull_AWPROT;
  assign M00_AXI_awqos[3:0] = s00_couplers_to_interconnect_axifull_AWQOS;
  assign M00_AXI_awsize[2:0] = s00_couplers_to_interconnect_axifull_AWSIZE;
  assign M00_AXI_awvalid = s00_couplers_to_interconnect_axifull_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_interconnect_axifull_BREADY;
  assign M00_AXI_rready = s00_couplers_to_interconnect_axifull_RREADY;
  assign M00_AXI_wdata[63:0] = s00_couplers_to_interconnect_axifull_WDATA;
  assign M00_AXI_wlast = s00_couplers_to_interconnect_axifull_WLAST;
  assign M00_AXI_wstrb[7:0] = s00_couplers_to_interconnect_axifull_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_interconnect_axifull_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axifull_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axifull_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = interconnect_axifull_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axifull_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axifull_to_s00_couplers_RDATA;
  assign S00_AXI_rlast = interconnect_axifull_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axifull_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axifull_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axifull_to_s00_couplers_WREADY;
  assign interconnect_axifull_ACLK_net = M00_ACLK;
  assign interconnect_axifull_ARESETN_net = M00_ARESETN;
  assign interconnect_axifull_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axifull_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axifull_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axifull_to_s00_couplers_ARLEN = S00_AXI_arlen[7:0];
  assign interconnect_axifull_to_s00_couplers_ARLOCK = S00_AXI_arlock[0];
  assign interconnect_axifull_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axifull_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axifull_to_s00_couplers_ARREGION = S00_AXI_arregion[3:0];
  assign interconnect_axifull_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axifull_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axifull_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axifull_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axifull_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axifull_to_s00_couplers_AWLEN = S00_AXI_awlen[7:0];
  assign interconnect_axifull_to_s00_couplers_AWLOCK = S00_AXI_awlock[0];
  assign interconnect_axifull_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axifull_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axifull_to_s00_couplers_AWREGION = S00_AXI_awregion[3:0];
  assign interconnect_axifull_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axifull_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axifull_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axifull_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axifull_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axifull_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axifull_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axifull_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_interconnect_axifull_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_interconnect_axifull_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_interconnect_axifull_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_interconnect_axifull_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_interconnect_axifull_RDATA = M00_AXI_rdata[63:0];
  assign s00_couplers_to_interconnect_axifull_RLAST = M00_AXI_rlast;
  assign s00_couplers_to_interconnect_axifull_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_interconnect_axifull_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_interconnect_axifull_WREADY = M00_AXI_wready;
  s00_couplers_imp_1Z1BNT s00_couplers
       (.M_ACLK(interconnect_axifull_ACLK_net),
        .M_ARESETN(interconnect_axifull_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_interconnect_axifull_ARADDR),
        .M_AXI_arburst(s00_couplers_to_interconnect_axifull_ARBURST),
        .M_AXI_arcache(s00_couplers_to_interconnect_axifull_ARCACHE),
        .M_AXI_arlen(s00_couplers_to_interconnect_axifull_ARLEN),
        .M_AXI_arlock(s00_couplers_to_interconnect_axifull_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_interconnect_axifull_ARPROT),
        .M_AXI_arqos(s00_couplers_to_interconnect_axifull_ARQOS),
        .M_AXI_arready(s00_couplers_to_interconnect_axifull_ARREADY),
        .M_AXI_arsize(s00_couplers_to_interconnect_axifull_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_interconnect_axifull_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_interconnect_axifull_AWADDR),
        .M_AXI_awburst(s00_couplers_to_interconnect_axifull_AWBURST),
        .M_AXI_awcache(s00_couplers_to_interconnect_axifull_AWCACHE),
        .M_AXI_awlen(s00_couplers_to_interconnect_axifull_AWLEN),
        .M_AXI_awlock(s00_couplers_to_interconnect_axifull_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_interconnect_axifull_AWPROT),
        .M_AXI_awqos(s00_couplers_to_interconnect_axifull_AWQOS),
        .M_AXI_awready(s00_couplers_to_interconnect_axifull_AWREADY),
        .M_AXI_awsize(s00_couplers_to_interconnect_axifull_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_interconnect_axifull_AWVALID),
        .M_AXI_bready(s00_couplers_to_interconnect_axifull_BREADY),
        .M_AXI_bresp(s00_couplers_to_interconnect_axifull_BRESP),
        .M_AXI_bvalid(s00_couplers_to_interconnect_axifull_BVALID),
        .M_AXI_rdata(s00_couplers_to_interconnect_axifull_RDATA),
        .M_AXI_rlast(s00_couplers_to_interconnect_axifull_RLAST),
        .M_AXI_rready(s00_couplers_to_interconnect_axifull_RREADY),
        .M_AXI_rresp(s00_couplers_to_interconnect_axifull_RRESP),
        .M_AXI_rvalid(s00_couplers_to_interconnect_axifull_RVALID),
        .M_AXI_wdata(s00_couplers_to_interconnect_axifull_WDATA),
        .M_AXI_wlast(s00_couplers_to_interconnect_axifull_WLAST),
        .M_AXI_wready(s00_couplers_to_interconnect_axifull_WREADY),
        .M_AXI_wstrb(s00_couplers_to_interconnect_axifull_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_interconnect_axifull_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axifull_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axifull_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axifull_to_s00_couplers_ARCACHE),
        .S_AXI_arlen(interconnect_axifull_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axifull_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axifull_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axifull_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axifull_to_s00_couplers_ARREADY),
        .S_AXI_arregion(interconnect_axifull_to_s00_couplers_ARREGION),
        .S_AXI_arsize(interconnect_axifull_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axifull_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axifull_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axifull_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axifull_to_s00_couplers_AWCACHE),
        .S_AXI_awlen(interconnect_axifull_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axifull_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axifull_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axifull_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axifull_to_s00_couplers_AWREADY),
        .S_AXI_awregion(interconnect_axifull_to_s00_couplers_AWREGION),
        .S_AXI_awsize(interconnect_axifull_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axifull_to_s00_couplers_AWVALID),
        .S_AXI_bready(interconnect_axifull_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axifull_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axifull_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axifull_to_s00_couplers_RDATA),
        .S_AXI_rlast(interconnect_axifull_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axifull_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axifull_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axifull_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axifull_to_s00_couplers_WDATA),
        .S_AXI_wlast(interconnect_axifull_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axifull_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axifull_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axifull_to_s00_couplers_WVALID));
endmodule

module zedboard_base_interconnect_axilite_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arprot,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awprot,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    M02_ACLK,
    M02_ARESETN,
    M02_AXI_araddr,
    M02_AXI_arburst,
    M02_AXI_arcache,
    M02_AXI_arid,
    M02_AXI_arlen,
    M02_AXI_arlock,
    M02_AXI_arprot,
    M02_AXI_arqos,
    M02_AXI_arready,
    M02_AXI_arregion,
    M02_AXI_arsize,
    M02_AXI_arvalid,
    M02_AXI_awaddr,
    M02_AXI_awburst,
    M02_AXI_awcache,
    M02_AXI_awid,
    M02_AXI_awlen,
    M02_AXI_awlock,
    M02_AXI_awprot,
    M02_AXI_awqos,
    M02_AXI_awready,
    M02_AXI_awregion,
    M02_AXI_awsize,
    M02_AXI_awvalid,
    M02_AXI_bid,
    M02_AXI_bready,
    M02_AXI_bresp,
    M02_AXI_bvalid,
    M02_AXI_rdata,
    M02_AXI_rid,
    M02_AXI_rlast,
    M02_AXI_rready,
    M02_AXI_rresp,
    M02_AXI_rvalid,
    M02_AXI_wdata,
    M02_AXI_wlast,
    M02_AXI_wready,
    M02_AXI_wstrb,
    M02_AXI_wvalid,
    M03_ACLK,
    M03_ARESETN,
    M03_AXI_araddr,
    M03_AXI_arburst,
    M03_AXI_arcache,
    M03_AXI_arid,
    M03_AXI_arlen,
    M03_AXI_arlock,
    M03_AXI_arprot,
    M03_AXI_arqos,
    M03_AXI_arready,
    M03_AXI_arregion,
    M03_AXI_arsize,
    M03_AXI_arvalid,
    M03_AXI_rdata,
    M03_AXI_rid,
    M03_AXI_rlast,
    M03_AXI_rready,
    M03_AXI_rresp,
    M03_AXI_rvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arburst,
    S00_AXI_arcache,
    S00_AXI_arid,
    S00_AXI_arlen,
    S00_AXI_arlock,
    S00_AXI_arprot,
    S00_AXI_arqos,
    S00_AXI_arready,
    S00_AXI_arsize,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awburst,
    S00_AXI_awcache,
    S00_AXI_awid,
    S00_AXI_awlen,
    S00_AXI_awlock,
    S00_AXI_awprot,
    S00_AXI_awqos,
    S00_AXI_awready,
    S00_AXI_awsize,
    S00_AXI_awvalid,
    S00_AXI_bid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rid,
    S00_AXI_rlast,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wid,
    S00_AXI_wlast,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [6:0]M01_AXI_araddr;
  output [2:0]M01_AXI_arprot;
  input M01_AXI_arready;
  output M01_AXI_arvalid;
  output [6:0]M01_AXI_awaddr;
  output [2:0]M01_AXI_awprot;
  input M01_AXI_awready;
  output M01_AXI_awvalid;
  output M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output M01_AXI_wvalid;
  input M02_ACLK;
  input M02_ARESETN;
  output [31:0]M02_AXI_araddr;
  output [1:0]M02_AXI_arburst;
  output [3:0]M02_AXI_arcache;
  output [11:0]M02_AXI_arid;
  output [7:0]M02_AXI_arlen;
  output [0:0]M02_AXI_arlock;
  output [2:0]M02_AXI_arprot;
  output [3:0]M02_AXI_arqos;
  input M02_AXI_arready;
  output [3:0]M02_AXI_arregion;
  output [2:0]M02_AXI_arsize;
  output M02_AXI_arvalid;
  output [31:0]M02_AXI_awaddr;
  output [1:0]M02_AXI_awburst;
  output [3:0]M02_AXI_awcache;
  output [11:0]M02_AXI_awid;
  output [7:0]M02_AXI_awlen;
  output [0:0]M02_AXI_awlock;
  output [2:0]M02_AXI_awprot;
  output [3:0]M02_AXI_awqos;
  input M02_AXI_awready;
  output [3:0]M02_AXI_awregion;
  output [2:0]M02_AXI_awsize;
  output M02_AXI_awvalid;
  input [11:0]M02_AXI_bid;
  output M02_AXI_bready;
  input [1:0]M02_AXI_bresp;
  input M02_AXI_bvalid;
  input [31:0]M02_AXI_rdata;
  input [11:0]M02_AXI_rid;
  input M02_AXI_rlast;
  output M02_AXI_rready;
  input [1:0]M02_AXI_rresp;
  input M02_AXI_rvalid;
  output [31:0]M02_AXI_wdata;
  output M02_AXI_wlast;
  input M02_AXI_wready;
  output [3:0]M02_AXI_wstrb;
  output M02_AXI_wvalid;
  input M03_ACLK;
  input M03_ARESETN;
  output [31:0]M03_AXI_araddr;
  output [1:0]M03_AXI_arburst;
  output [3:0]M03_AXI_arcache;
  output [11:0]M03_AXI_arid;
  output [7:0]M03_AXI_arlen;
  output [0:0]M03_AXI_arlock;
  output [2:0]M03_AXI_arprot;
  output [3:0]M03_AXI_arqos;
  input M03_AXI_arready;
  output [3:0]M03_AXI_arregion;
  output [2:0]M03_AXI_arsize;
  output M03_AXI_arvalid;
  input [31:0]M03_AXI_rdata;
  input [11:0]M03_AXI_rid;
  input M03_AXI_rlast;
  output M03_AXI_rready;
  input [1:0]M03_AXI_rresp;
  input M03_AXI_rvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [1:0]S00_AXI_arburst;
  input [3:0]S00_AXI_arcache;
  input [11:0]S00_AXI_arid;
  input [3:0]S00_AXI_arlen;
  input [1:0]S00_AXI_arlock;
  input [2:0]S00_AXI_arprot;
  input [3:0]S00_AXI_arqos;
  output S00_AXI_arready;
  input [2:0]S00_AXI_arsize;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [1:0]S00_AXI_awburst;
  input [3:0]S00_AXI_awcache;
  input [11:0]S00_AXI_awid;
  input [3:0]S00_AXI_awlen;
  input [1:0]S00_AXI_awlock;
  input [2:0]S00_AXI_awprot;
  input [3:0]S00_AXI_awqos;
  output S00_AXI_awready;
  input [2:0]S00_AXI_awsize;
  input S00_AXI_awvalid;
  output [11:0]S00_AXI_bid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  output [11:0]S00_AXI_rid;
  output S00_AXI_rlast;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  input [11:0]S00_AXI_wid;
  input S00_AXI_wlast;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire M00_ACLK_1;
  wire M00_ARESETN_1;
  wire M01_ACLK_1;
  wire M01_ARESETN_1;
  wire M02_ACLK_1;
  wire M02_ARESETN_1;
  wire M03_ACLK_1;
  wire M03_ARESETN_1;
  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire interconnect_axilite_ACLK_net;
  wire interconnect_axilite_ARESETN_net;
  wire [31:0]interconnect_axilite_to_s00_couplers_ARADDR;
  wire [1:0]interconnect_axilite_to_s00_couplers_ARBURST;
  wire [3:0]interconnect_axilite_to_s00_couplers_ARCACHE;
  wire [11:0]interconnect_axilite_to_s00_couplers_ARID;
  wire [3:0]interconnect_axilite_to_s00_couplers_ARLEN;
  wire [1:0]interconnect_axilite_to_s00_couplers_ARLOCK;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARPROT;
  wire [3:0]interconnect_axilite_to_s00_couplers_ARQOS;
  wire interconnect_axilite_to_s00_couplers_ARREADY;
  wire [2:0]interconnect_axilite_to_s00_couplers_ARSIZE;
  wire interconnect_axilite_to_s00_couplers_ARVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_AWADDR;
  wire [1:0]interconnect_axilite_to_s00_couplers_AWBURST;
  wire [3:0]interconnect_axilite_to_s00_couplers_AWCACHE;
  wire [11:0]interconnect_axilite_to_s00_couplers_AWID;
  wire [3:0]interconnect_axilite_to_s00_couplers_AWLEN;
  wire [1:0]interconnect_axilite_to_s00_couplers_AWLOCK;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWPROT;
  wire [3:0]interconnect_axilite_to_s00_couplers_AWQOS;
  wire interconnect_axilite_to_s00_couplers_AWREADY;
  wire [2:0]interconnect_axilite_to_s00_couplers_AWSIZE;
  wire interconnect_axilite_to_s00_couplers_AWVALID;
  wire [11:0]interconnect_axilite_to_s00_couplers_BID;
  wire interconnect_axilite_to_s00_couplers_BREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_BRESP;
  wire interconnect_axilite_to_s00_couplers_BVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_RDATA;
  wire [11:0]interconnect_axilite_to_s00_couplers_RID;
  wire interconnect_axilite_to_s00_couplers_RLAST;
  wire interconnect_axilite_to_s00_couplers_RREADY;
  wire [1:0]interconnect_axilite_to_s00_couplers_RRESP;
  wire interconnect_axilite_to_s00_couplers_RVALID;
  wire [31:0]interconnect_axilite_to_s00_couplers_WDATA;
  wire [11:0]interconnect_axilite_to_s00_couplers_WID;
  wire interconnect_axilite_to_s00_couplers_WLAST;
  wire interconnect_axilite_to_s00_couplers_WREADY;
  wire [3:0]interconnect_axilite_to_s00_couplers_WSTRB;
  wire interconnect_axilite_to_s00_couplers_WVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_ARADDR;
  wire m00_couplers_to_interconnect_axilite_ARREADY;
  wire m00_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_AWADDR;
  wire m00_couplers_to_interconnect_axilite_AWREADY;
  wire m00_couplers_to_interconnect_axilite_AWVALID;
  wire m00_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_BRESP;
  wire m00_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_RDATA;
  wire m00_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m00_couplers_to_interconnect_axilite_RRESP;
  wire m00_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m00_couplers_to_interconnect_axilite_WDATA;
  wire m00_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m00_couplers_to_interconnect_axilite_WSTRB;
  wire m00_couplers_to_interconnect_axilite_WVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_ARADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_ARPROT;
  wire m01_couplers_to_interconnect_axilite_ARREADY;
  wire m01_couplers_to_interconnect_axilite_ARVALID;
  wire [6:0]m01_couplers_to_interconnect_axilite_AWADDR;
  wire [2:0]m01_couplers_to_interconnect_axilite_AWPROT;
  wire m01_couplers_to_interconnect_axilite_AWREADY;
  wire m01_couplers_to_interconnect_axilite_AWVALID;
  wire m01_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_BRESP;
  wire m01_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_RDATA;
  wire m01_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m01_couplers_to_interconnect_axilite_RRESP;
  wire m01_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m01_couplers_to_interconnect_axilite_WDATA;
  wire m01_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m01_couplers_to_interconnect_axilite_WSTRB;
  wire m01_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_ARADDR;
  wire [1:0]m02_couplers_to_interconnect_axilite_ARBURST;
  wire [3:0]m02_couplers_to_interconnect_axilite_ARCACHE;
  wire [11:0]m02_couplers_to_interconnect_axilite_ARID;
  wire [7:0]m02_couplers_to_interconnect_axilite_ARLEN;
  wire [0:0]m02_couplers_to_interconnect_axilite_ARLOCK;
  wire [2:0]m02_couplers_to_interconnect_axilite_ARPROT;
  wire [3:0]m02_couplers_to_interconnect_axilite_ARQOS;
  wire m02_couplers_to_interconnect_axilite_ARREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_ARREGION;
  wire [2:0]m02_couplers_to_interconnect_axilite_ARSIZE;
  wire m02_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_AWADDR;
  wire [1:0]m02_couplers_to_interconnect_axilite_AWBURST;
  wire [3:0]m02_couplers_to_interconnect_axilite_AWCACHE;
  wire [11:0]m02_couplers_to_interconnect_axilite_AWID;
  wire [7:0]m02_couplers_to_interconnect_axilite_AWLEN;
  wire [0:0]m02_couplers_to_interconnect_axilite_AWLOCK;
  wire [2:0]m02_couplers_to_interconnect_axilite_AWPROT;
  wire [3:0]m02_couplers_to_interconnect_axilite_AWQOS;
  wire m02_couplers_to_interconnect_axilite_AWREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_AWREGION;
  wire [2:0]m02_couplers_to_interconnect_axilite_AWSIZE;
  wire m02_couplers_to_interconnect_axilite_AWVALID;
  wire [11:0]m02_couplers_to_interconnect_axilite_BID;
  wire m02_couplers_to_interconnect_axilite_BREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_BRESP;
  wire m02_couplers_to_interconnect_axilite_BVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_RDATA;
  wire [11:0]m02_couplers_to_interconnect_axilite_RID;
  wire m02_couplers_to_interconnect_axilite_RLAST;
  wire m02_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m02_couplers_to_interconnect_axilite_RRESP;
  wire m02_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]m02_couplers_to_interconnect_axilite_WDATA;
  wire m02_couplers_to_interconnect_axilite_WLAST;
  wire m02_couplers_to_interconnect_axilite_WREADY;
  wire [3:0]m02_couplers_to_interconnect_axilite_WSTRB;
  wire m02_couplers_to_interconnect_axilite_WVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_ARADDR;
  wire [1:0]m03_couplers_to_interconnect_axilite_ARBURST;
  wire [3:0]m03_couplers_to_interconnect_axilite_ARCACHE;
  wire [11:0]m03_couplers_to_interconnect_axilite_ARID;
  wire [7:0]m03_couplers_to_interconnect_axilite_ARLEN;
  wire [0:0]m03_couplers_to_interconnect_axilite_ARLOCK;
  wire [2:0]m03_couplers_to_interconnect_axilite_ARPROT;
  wire [3:0]m03_couplers_to_interconnect_axilite_ARQOS;
  wire m03_couplers_to_interconnect_axilite_ARREADY;
  wire [3:0]m03_couplers_to_interconnect_axilite_ARREGION;
  wire [2:0]m03_couplers_to_interconnect_axilite_ARSIZE;
  wire m03_couplers_to_interconnect_axilite_ARVALID;
  wire [31:0]m03_couplers_to_interconnect_axilite_RDATA;
  wire [11:0]m03_couplers_to_interconnect_axilite_RID;
  wire m03_couplers_to_interconnect_axilite_RLAST;
  wire m03_couplers_to_interconnect_axilite_RREADY;
  wire [1:0]m03_couplers_to_interconnect_axilite_RRESP;
  wire m03_couplers_to_interconnect_axilite_RVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [1:0]s00_couplers_to_xbar_ARBURST;
  wire [3:0]s00_couplers_to_xbar_ARCACHE;
  wire [11:0]s00_couplers_to_xbar_ARID;
  wire [7:0]s00_couplers_to_xbar_ARLEN;
  wire [0:0]s00_couplers_to_xbar_ARLOCK;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [3:0]s00_couplers_to_xbar_ARQOS;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [2:0]s00_couplers_to_xbar_ARSIZE;
  wire s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [1:0]s00_couplers_to_xbar_AWBURST;
  wire [3:0]s00_couplers_to_xbar_AWCACHE;
  wire [11:0]s00_couplers_to_xbar_AWID;
  wire [7:0]s00_couplers_to_xbar_AWLEN;
  wire [0:0]s00_couplers_to_xbar_AWLOCK;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [3:0]s00_couplers_to_xbar_AWQOS;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [2:0]s00_couplers_to_xbar_AWSIZE;
  wire s00_couplers_to_xbar_AWVALID;
  wire [11:0]s00_couplers_to_xbar_BID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [11:0]s00_couplers_to_xbar_RID;
  wire [0:0]s00_couplers_to_xbar_RLAST;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire s00_couplers_to_xbar_WLAST;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [1:0]xbar_to_m00_couplers_ARBURST;
  wire [3:0]xbar_to_m00_couplers_ARCACHE;
  wire [11:0]xbar_to_m00_couplers_ARID;
  wire [7:0]xbar_to_m00_couplers_ARLEN;
  wire [0:0]xbar_to_m00_couplers_ARLOCK;
  wire [2:0]xbar_to_m00_couplers_ARPROT;
  wire [3:0]xbar_to_m00_couplers_ARQOS;
  wire xbar_to_m00_couplers_ARREADY;
  wire [3:0]xbar_to_m00_couplers_ARREGION;
  wire [2:0]xbar_to_m00_couplers_ARSIZE;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [1:0]xbar_to_m00_couplers_AWBURST;
  wire [3:0]xbar_to_m00_couplers_AWCACHE;
  wire [11:0]xbar_to_m00_couplers_AWID;
  wire [7:0]xbar_to_m00_couplers_AWLEN;
  wire [0:0]xbar_to_m00_couplers_AWLOCK;
  wire [2:0]xbar_to_m00_couplers_AWPROT;
  wire [3:0]xbar_to_m00_couplers_AWQOS;
  wire xbar_to_m00_couplers_AWREADY;
  wire [3:0]xbar_to_m00_couplers_AWREGION;
  wire [2:0]xbar_to_m00_couplers_AWSIZE;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [11:0]xbar_to_m00_couplers_BID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [11:0]xbar_to_m00_couplers_RID;
  wire xbar_to_m00_couplers_RLAST;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WLAST;
  wire xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [3:2]xbar_to_m01_couplers_ARBURST;
  wire [7:4]xbar_to_m01_couplers_ARCACHE;
  wire [23:12]xbar_to_m01_couplers_ARID;
  wire [15:8]xbar_to_m01_couplers_ARLEN;
  wire [1:1]xbar_to_m01_couplers_ARLOCK;
  wire [5:3]xbar_to_m01_couplers_ARPROT;
  wire [7:4]xbar_to_m01_couplers_ARQOS;
  wire xbar_to_m01_couplers_ARREADY;
  wire [7:4]xbar_to_m01_couplers_ARREGION;
  wire [5:3]xbar_to_m01_couplers_ARSIZE;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [3:2]xbar_to_m01_couplers_AWBURST;
  wire [7:4]xbar_to_m01_couplers_AWCACHE;
  wire [23:12]xbar_to_m01_couplers_AWID;
  wire [15:8]xbar_to_m01_couplers_AWLEN;
  wire [1:1]xbar_to_m01_couplers_AWLOCK;
  wire [5:3]xbar_to_m01_couplers_AWPROT;
  wire [7:4]xbar_to_m01_couplers_AWQOS;
  wire xbar_to_m01_couplers_AWREADY;
  wire [7:4]xbar_to_m01_couplers_AWREGION;
  wire [5:3]xbar_to_m01_couplers_AWSIZE;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [11:0]xbar_to_m01_couplers_BID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [11:0]xbar_to_m01_couplers_RID;
  wire xbar_to_m01_couplers_RLAST;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [1:1]xbar_to_m01_couplers_WLAST;
  wire xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;
  wire [95:64]xbar_to_m02_couplers_ARADDR;
  wire [5:4]xbar_to_m02_couplers_ARBURST;
  wire [11:8]xbar_to_m02_couplers_ARCACHE;
  wire [35:24]xbar_to_m02_couplers_ARID;
  wire [23:16]xbar_to_m02_couplers_ARLEN;
  wire [2:2]xbar_to_m02_couplers_ARLOCK;
  wire [8:6]xbar_to_m02_couplers_ARPROT;
  wire [11:8]xbar_to_m02_couplers_ARQOS;
  wire xbar_to_m02_couplers_ARREADY;
  wire [11:8]xbar_to_m02_couplers_ARREGION;
  wire [8:6]xbar_to_m02_couplers_ARSIZE;
  wire [2:2]xbar_to_m02_couplers_ARVALID;
  wire [95:64]xbar_to_m02_couplers_AWADDR;
  wire [5:4]xbar_to_m02_couplers_AWBURST;
  wire [11:8]xbar_to_m02_couplers_AWCACHE;
  wire [35:24]xbar_to_m02_couplers_AWID;
  wire [23:16]xbar_to_m02_couplers_AWLEN;
  wire [2:2]xbar_to_m02_couplers_AWLOCK;
  wire [8:6]xbar_to_m02_couplers_AWPROT;
  wire [11:8]xbar_to_m02_couplers_AWQOS;
  wire xbar_to_m02_couplers_AWREADY;
  wire [11:8]xbar_to_m02_couplers_AWREGION;
  wire [8:6]xbar_to_m02_couplers_AWSIZE;
  wire [2:2]xbar_to_m02_couplers_AWVALID;
  wire [11:0]xbar_to_m02_couplers_BID;
  wire [2:2]xbar_to_m02_couplers_BREADY;
  wire [1:0]xbar_to_m02_couplers_BRESP;
  wire xbar_to_m02_couplers_BVALID;
  wire [31:0]xbar_to_m02_couplers_RDATA;
  wire [11:0]xbar_to_m02_couplers_RID;
  wire xbar_to_m02_couplers_RLAST;
  wire [2:2]xbar_to_m02_couplers_RREADY;
  wire [1:0]xbar_to_m02_couplers_RRESP;
  wire xbar_to_m02_couplers_RVALID;
  wire [95:64]xbar_to_m02_couplers_WDATA;
  wire [2:2]xbar_to_m02_couplers_WLAST;
  wire xbar_to_m02_couplers_WREADY;
  wire [11:8]xbar_to_m02_couplers_WSTRB;
  wire [2:2]xbar_to_m02_couplers_WVALID;
  wire [127:96]xbar_to_m03_couplers_ARADDR;
  wire [7:6]xbar_to_m03_couplers_ARBURST;
  wire [15:12]xbar_to_m03_couplers_ARCACHE;
  wire [47:36]xbar_to_m03_couplers_ARID;
  wire [31:24]xbar_to_m03_couplers_ARLEN;
  wire [3:3]xbar_to_m03_couplers_ARLOCK;
  wire [11:9]xbar_to_m03_couplers_ARPROT;
  wire [15:12]xbar_to_m03_couplers_ARQOS;
  wire xbar_to_m03_couplers_ARREADY;
  wire [15:12]xbar_to_m03_couplers_ARREGION;
  wire [11:9]xbar_to_m03_couplers_ARSIZE;
  wire [3:3]xbar_to_m03_couplers_ARVALID;
  wire [31:0]xbar_to_m03_couplers_RDATA;
  wire [11:0]xbar_to_m03_couplers_RID;
  wire xbar_to_m03_couplers_RLAST;
  wire [3:3]xbar_to_m03_couplers_RREADY;
  wire [1:0]xbar_to_m03_couplers_RRESP;
  wire xbar_to_m03_couplers_RVALID;

  assign M00_ACLK_1 = M00_ACLK;
  assign M00_ARESETN_1 = M00_ARESETN;
  assign M00_AXI_araddr[31:0] = m00_couplers_to_interconnect_axilite_ARADDR;
  assign M00_AXI_arvalid = m00_couplers_to_interconnect_axilite_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_interconnect_axilite_AWADDR;
  assign M00_AXI_awvalid = m00_couplers_to_interconnect_axilite_AWVALID;
  assign M00_AXI_bready = m00_couplers_to_interconnect_axilite_BREADY;
  assign M00_AXI_rready = m00_couplers_to_interconnect_axilite_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_interconnect_axilite_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_interconnect_axilite_WSTRB;
  assign M00_AXI_wvalid = m00_couplers_to_interconnect_axilite_WVALID;
  assign M01_ACLK_1 = M01_ACLK;
  assign M01_ARESETN_1 = M01_ARESETN;
  assign M01_AXI_araddr[6:0] = m01_couplers_to_interconnect_axilite_ARADDR;
  assign M01_AXI_arprot[2:0] = m01_couplers_to_interconnect_axilite_ARPROT;
  assign M01_AXI_arvalid = m01_couplers_to_interconnect_axilite_ARVALID;
  assign M01_AXI_awaddr[6:0] = m01_couplers_to_interconnect_axilite_AWADDR;
  assign M01_AXI_awprot[2:0] = m01_couplers_to_interconnect_axilite_AWPROT;
  assign M01_AXI_awvalid = m01_couplers_to_interconnect_axilite_AWVALID;
  assign M01_AXI_bready = m01_couplers_to_interconnect_axilite_BREADY;
  assign M01_AXI_rready = m01_couplers_to_interconnect_axilite_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_interconnect_axilite_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_interconnect_axilite_WSTRB;
  assign M01_AXI_wvalid = m01_couplers_to_interconnect_axilite_WVALID;
  assign M02_ACLK_1 = M02_ACLK;
  assign M02_ARESETN_1 = M02_ARESETN;
  assign M02_AXI_araddr[31:0] = m02_couplers_to_interconnect_axilite_ARADDR;
  assign M02_AXI_arburst[1:0] = m02_couplers_to_interconnect_axilite_ARBURST;
  assign M02_AXI_arcache[3:0] = m02_couplers_to_interconnect_axilite_ARCACHE;
  assign M02_AXI_arid[11:0] = m02_couplers_to_interconnect_axilite_ARID;
  assign M02_AXI_arlen[7:0] = m02_couplers_to_interconnect_axilite_ARLEN;
  assign M02_AXI_arlock[0] = m02_couplers_to_interconnect_axilite_ARLOCK;
  assign M02_AXI_arprot[2:0] = m02_couplers_to_interconnect_axilite_ARPROT;
  assign M02_AXI_arqos[3:0] = m02_couplers_to_interconnect_axilite_ARQOS;
  assign M02_AXI_arregion[3:0] = m02_couplers_to_interconnect_axilite_ARREGION;
  assign M02_AXI_arsize[2:0] = m02_couplers_to_interconnect_axilite_ARSIZE;
  assign M02_AXI_arvalid = m02_couplers_to_interconnect_axilite_ARVALID;
  assign M02_AXI_awaddr[31:0] = m02_couplers_to_interconnect_axilite_AWADDR;
  assign M02_AXI_awburst[1:0] = m02_couplers_to_interconnect_axilite_AWBURST;
  assign M02_AXI_awcache[3:0] = m02_couplers_to_interconnect_axilite_AWCACHE;
  assign M02_AXI_awid[11:0] = m02_couplers_to_interconnect_axilite_AWID;
  assign M02_AXI_awlen[7:0] = m02_couplers_to_interconnect_axilite_AWLEN;
  assign M02_AXI_awlock[0] = m02_couplers_to_interconnect_axilite_AWLOCK;
  assign M02_AXI_awprot[2:0] = m02_couplers_to_interconnect_axilite_AWPROT;
  assign M02_AXI_awqos[3:0] = m02_couplers_to_interconnect_axilite_AWQOS;
  assign M02_AXI_awregion[3:0] = m02_couplers_to_interconnect_axilite_AWREGION;
  assign M02_AXI_awsize[2:0] = m02_couplers_to_interconnect_axilite_AWSIZE;
  assign M02_AXI_awvalid = m02_couplers_to_interconnect_axilite_AWVALID;
  assign M02_AXI_bready = m02_couplers_to_interconnect_axilite_BREADY;
  assign M02_AXI_rready = m02_couplers_to_interconnect_axilite_RREADY;
  assign M02_AXI_wdata[31:0] = m02_couplers_to_interconnect_axilite_WDATA;
  assign M02_AXI_wlast = m02_couplers_to_interconnect_axilite_WLAST;
  assign M02_AXI_wstrb[3:0] = m02_couplers_to_interconnect_axilite_WSTRB;
  assign M02_AXI_wvalid = m02_couplers_to_interconnect_axilite_WVALID;
  assign M03_ACLK_1 = M03_ACLK;
  assign M03_ARESETN_1 = M03_ARESETN;
  assign M03_AXI_araddr[31:0] = m03_couplers_to_interconnect_axilite_ARADDR;
  assign M03_AXI_arburst[1:0] = m03_couplers_to_interconnect_axilite_ARBURST;
  assign M03_AXI_arcache[3:0] = m03_couplers_to_interconnect_axilite_ARCACHE;
  assign M03_AXI_arid[11:0] = m03_couplers_to_interconnect_axilite_ARID;
  assign M03_AXI_arlen[7:0] = m03_couplers_to_interconnect_axilite_ARLEN;
  assign M03_AXI_arlock[0] = m03_couplers_to_interconnect_axilite_ARLOCK;
  assign M03_AXI_arprot[2:0] = m03_couplers_to_interconnect_axilite_ARPROT;
  assign M03_AXI_arqos[3:0] = m03_couplers_to_interconnect_axilite_ARQOS;
  assign M03_AXI_arregion[3:0] = m03_couplers_to_interconnect_axilite_ARREGION;
  assign M03_AXI_arsize[2:0] = m03_couplers_to_interconnect_axilite_ARSIZE;
  assign M03_AXI_arvalid = m03_couplers_to_interconnect_axilite_ARVALID;
  assign M03_AXI_rready = m03_couplers_to_interconnect_axilite_RREADY;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = interconnect_axilite_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = interconnect_axilite_to_s00_couplers_AWREADY;
  assign S00_AXI_bid[11:0] = interconnect_axilite_to_s00_couplers_BID;
  assign S00_AXI_bresp[1:0] = interconnect_axilite_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = interconnect_axilite_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = interconnect_axilite_to_s00_couplers_RDATA;
  assign S00_AXI_rid[11:0] = interconnect_axilite_to_s00_couplers_RID;
  assign S00_AXI_rlast = interconnect_axilite_to_s00_couplers_RLAST;
  assign S00_AXI_rresp[1:0] = interconnect_axilite_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = interconnect_axilite_to_s00_couplers_RVALID;
  assign S00_AXI_wready = interconnect_axilite_to_s00_couplers_WREADY;
  assign interconnect_axilite_ACLK_net = ACLK;
  assign interconnect_axilite_ARESETN_net = ARESETN;
  assign interconnect_axilite_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign interconnect_axilite_to_s00_couplers_ARBURST = S00_AXI_arburst[1:0];
  assign interconnect_axilite_to_s00_couplers_ARCACHE = S00_AXI_arcache[3:0];
  assign interconnect_axilite_to_s00_couplers_ARID = S00_AXI_arid[11:0];
  assign interconnect_axilite_to_s00_couplers_ARLEN = S00_AXI_arlen[3:0];
  assign interconnect_axilite_to_s00_couplers_ARLOCK = S00_AXI_arlock[1:0];
  assign interconnect_axilite_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign interconnect_axilite_to_s00_couplers_ARQOS = S00_AXI_arqos[3:0];
  assign interconnect_axilite_to_s00_couplers_ARSIZE = S00_AXI_arsize[2:0];
  assign interconnect_axilite_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign interconnect_axilite_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign interconnect_axilite_to_s00_couplers_AWBURST = S00_AXI_awburst[1:0];
  assign interconnect_axilite_to_s00_couplers_AWCACHE = S00_AXI_awcache[3:0];
  assign interconnect_axilite_to_s00_couplers_AWID = S00_AXI_awid[11:0];
  assign interconnect_axilite_to_s00_couplers_AWLEN = S00_AXI_awlen[3:0];
  assign interconnect_axilite_to_s00_couplers_AWLOCK = S00_AXI_awlock[1:0];
  assign interconnect_axilite_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign interconnect_axilite_to_s00_couplers_AWQOS = S00_AXI_awqos[3:0];
  assign interconnect_axilite_to_s00_couplers_AWSIZE = S00_AXI_awsize[2:0];
  assign interconnect_axilite_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign interconnect_axilite_to_s00_couplers_BREADY = S00_AXI_bready;
  assign interconnect_axilite_to_s00_couplers_RREADY = S00_AXI_rready;
  assign interconnect_axilite_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign interconnect_axilite_to_s00_couplers_WID = S00_AXI_wid[11:0];
  assign interconnect_axilite_to_s00_couplers_WLAST = S00_AXI_wlast;
  assign interconnect_axilite_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign interconnect_axilite_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign m00_couplers_to_interconnect_axilite_ARREADY = M00_AXI_arready;
  assign m00_couplers_to_interconnect_axilite_AWREADY = M00_AXI_awready;
  assign m00_couplers_to_interconnect_axilite_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_interconnect_axilite_BVALID = M00_AXI_bvalid;
  assign m00_couplers_to_interconnect_axilite_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_interconnect_axilite_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_interconnect_axilite_RVALID = M00_AXI_rvalid;
  assign m00_couplers_to_interconnect_axilite_WREADY = M00_AXI_wready;
  assign m01_couplers_to_interconnect_axilite_ARREADY = M01_AXI_arready;
  assign m01_couplers_to_interconnect_axilite_AWREADY = M01_AXI_awready;
  assign m01_couplers_to_interconnect_axilite_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_interconnect_axilite_BVALID = M01_AXI_bvalid;
  assign m01_couplers_to_interconnect_axilite_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_interconnect_axilite_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_interconnect_axilite_RVALID = M01_AXI_rvalid;
  assign m01_couplers_to_interconnect_axilite_WREADY = M01_AXI_wready;
  assign m02_couplers_to_interconnect_axilite_ARREADY = M02_AXI_arready;
  assign m02_couplers_to_interconnect_axilite_AWREADY = M02_AXI_awready;
  assign m02_couplers_to_interconnect_axilite_BID = M02_AXI_bid[11:0];
  assign m02_couplers_to_interconnect_axilite_BRESP = M02_AXI_bresp[1:0];
  assign m02_couplers_to_interconnect_axilite_BVALID = M02_AXI_bvalid;
  assign m02_couplers_to_interconnect_axilite_RDATA = M02_AXI_rdata[31:0];
  assign m02_couplers_to_interconnect_axilite_RID = M02_AXI_rid[11:0];
  assign m02_couplers_to_interconnect_axilite_RLAST = M02_AXI_rlast;
  assign m02_couplers_to_interconnect_axilite_RRESP = M02_AXI_rresp[1:0];
  assign m02_couplers_to_interconnect_axilite_RVALID = M02_AXI_rvalid;
  assign m02_couplers_to_interconnect_axilite_WREADY = M02_AXI_wready;
  assign m03_couplers_to_interconnect_axilite_ARREADY = M03_AXI_arready;
  assign m03_couplers_to_interconnect_axilite_RDATA = M03_AXI_rdata[31:0];
  assign m03_couplers_to_interconnect_axilite_RID = M03_AXI_rid[11:0];
  assign m03_couplers_to_interconnect_axilite_RLAST = M03_AXI_rlast;
  assign m03_couplers_to_interconnect_axilite_RRESP = M03_AXI_rresp[1:0];
  assign m03_couplers_to_interconnect_axilite_RVALID = M03_AXI_rvalid;
  m00_couplers_imp_17TAISI m00_couplers
       (.M_ACLK(M00_ACLK_1),
        .M_ARESETN(M00_ARESETN_1),
        .M_AXI_araddr(m00_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arready(m00_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awready(m00_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m00_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m00_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m00_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m00_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m00_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m00_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m00_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m00_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m00_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m00_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m00_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m00_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m00_couplers_ARID),
        .S_AXI_arlen(xbar_to_m00_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m00_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m00_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m00_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m00_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m00_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m00_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m00_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m00_couplers_AWID),
        .S_AXI_awlen(xbar_to_m00_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m00_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m00_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m00_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m00_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m00_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m00_couplers_BID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rid(xbar_to_m00_couplers_RID),
        .S_AXI_rlast(xbar_to_m00_couplers_RLAST),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m00_couplers_WLAST),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_1U08DY m01_couplers
       (.M_ACLK(M01_ACLK_1),
        .M_ARESETN(M01_ARESETN_1),
        .M_AXI_araddr(m01_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arprot(m01_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arready(m01_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awprot(m01_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awready(m01_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bready(m01_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m01_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m01_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m01_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rready(m01_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m01_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m01_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m01_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wready(m01_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m01_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m01_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m01_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m01_couplers_ARID),
        .S_AXI_arlen(xbar_to_m01_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m01_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m01_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m01_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m01_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m01_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m01_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m01_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m01_couplers_AWID),
        .S_AXI_awlen(xbar_to_m01_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m01_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m01_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m01_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m01_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m01_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m01_couplers_BID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rid(xbar_to_m01_couplers_RID),
        .S_AXI_rlast(xbar_to_m01_couplers_RLAST),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m01_couplers_WLAST),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  m02_couplers_imp_V7OBWR m02_couplers
       (.M_ACLK(M02_ACLK_1),
        .M_ARESETN(M02_ARESETN_1),
        .M_AXI_araddr(m02_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arburst(m02_couplers_to_interconnect_axilite_ARBURST),
        .M_AXI_arcache(m02_couplers_to_interconnect_axilite_ARCACHE),
        .M_AXI_arid(m02_couplers_to_interconnect_axilite_ARID),
        .M_AXI_arlen(m02_couplers_to_interconnect_axilite_ARLEN),
        .M_AXI_arlock(m02_couplers_to_interconnect_axilite_ARLOCK),
        .M_AXI_arprot(m02_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arqos(m02_couplers_to_interconnect_axilite_ARQOS),
        .M_AXI_arready(m02_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arregion(m02_couplers_to_interconnect_axilite_ARREGION),
        .M_AXI_arsize(m02_couplers_to_interconnect_axilite_ARSIZE),
        .M_AXI_arvalid(m02_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_awaddr(m02_couplers_to_interconnect_axilite_AWADDR),
        .M_AXI_awburst(m02_couplers_to_interconnect_axilite_AWBURST),
        .M_AXI_awcache(m02_couplers_to_interconnect_axilite_AWCACHE),
        .M_AXI_awid(m02_couplers_to_interconnect_axilite_AWID),
        .M_AXI_awlen(m02_couplers_to_interconnect_axilite_AWLEN),
        .M_AXI_awlock(m02_couplers_to_interconnect_axilite_AWLOCK),
        .M_AXI_awprot(m02_couplers_to_interconnect_axilite_AWPROT),
        .M_AXI_awqos(m02_couplers_to_interconnect_axilite_AWQOS),
        .M_AXI_awready(m02_couplers_to_interconnect_axilite_AWREADY),
        .M_AXI_awregion(m02_couplers_to_interconnect_axilite_AWREGION),
        .M_AXI_awsize(m02_couplers_to_interconnect_axilite_AWSIZE),
        .M_AXI_awvalid(m02_couplers_to_interconnect_axilite_AWVALID),
        .M_AXI_bid(m02_couplers_to_interconnect_axilite_BID),
        .M_AXI_bready(m02_couplers_to_interconnect_axilite_BREADY),
        .M_AXI_bresp(m02_couplers_to_interconnect_axilite_BRESP),
        .M_AXI_bvalid(m02_couplers_to_interconnect_axilite_BVALID),
        .M_AXI_rdata(m02_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rid(m02_couplers_to_interconnect_axilite_RID),
        .M_AXI_rlast(m02_couplers_to_interconnect_axilite_RLAST),
        .M_AXI_rready(m02_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m02_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m02_couplers_to_interconnect_axilite_RVALID),
        .M_AXI_wdata(m02_couplers_to_interconnect_axilite_WDATA),
        .M_AXI_wlast(m02_couplers_to_interconnect_axilite_WLAST),
        .M_AXI_wready(m02_couplers_to_interconnect_axilite_WREADY),
        .M_AXI_wstrb(m02_couplers_to_interconnect_axilite_WSTRB),
        .M_AXI_wvalid(m02_couplers_to_interconnect_axilite_WVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m02_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m02_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m02_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m02_couplers_ARID),
        .S_AXI_arlen(xbar_to_m02_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m02_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m02_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m02_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m02_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m02_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m02_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m02_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m02_couplers_AWADDR),
        .S_AXI_awburst(xbar_to_m02_couplers_AWBURST),
        .S_AXI_awcache(xbar_to_m02_couplers_AWCACHE),
        .S_AXI_awid(xbar_to_m02_couplers_AWID),
        .S_AXI_awlen(xbar_to_m02_couplers_AWLEN),
        .S_AXI_awlock(xbar_to_m02_couplers_AWLOCK),
        .S_AXI_awprot(xbar_to_m02_couplers_AWPROT),
        .S_AXI_awqos(xbar_to_m02_couplers_AWQOS),
        .S_AXI_awready(xbar_to_m02_couplers_AWREADY),
        .S_AXI_awregion(xbar_to_m02_couplers_AWREGION),
        .S_AXI_awsize(xbar_to_m02_couplers_AWSIZE),
        .S_AXI_awvalid(xbar_to_m02_couplers_AWVALID),
        .S_AXI_bid(xbar_to_m02_couplers_BID),
        .S_AXI_bready(xbar_to_m02_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m02_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m02_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m02_couplers_RDATA),
        .S_AXI_rid(xbar_to_m02_couplers_RID),
        .S_AXI_rlast(xbar_to_m02_couplers_RLAST),
        .S_AXI_rready(xbar_to_m02_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m02_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m02_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m02_couplers_WDATA),
        .S_AXI_wlast(xbar_to_m02_couplers_WLAST),
        .S_AXI_wready(xbar_to_m02_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m02_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m02_couplers_WVALID));
  m03_couplers_imp_1T7VJJ3 m03_couplers
       (.M_ACLK(M03_ACLK_1),
        .M_ARESETN(M03_ARESETN_1),
        .M_AXI_araddr(m03_couplers_to_interconnect_axilite_ARADDR),
        .M_AXI_arburst(m03_couplers_to_interconnect_axilite_ARBURST),
        .M_AXI_arcache(m03_couplers_to_interconnect_axilite_ARCACHE),
        .M_AXI_arid(m03_couplers_to_interconnect_axilite_ARID),
        .M_AXI_arlen(m03_couplers_to_interconnect_axilite_ARLEN),
        .M_AXI_arlock(m03_couplers_to_interconnect_axilite_ARLOCK),
        .M_AXI_arprot(m03_couplers_to_interconnect_axilite_ARPROT),
        .M_AXI_arqos(m03_couplers_to_interconnect_axilite_ARQOS),
        .M_AXI_arready(m03_couplers_to_interconnect_axilite_ARREADY),
        .M_AXI_arregion(m03_couplers_to_interconnect_axilite_ARREGION),
        .M_AXI_arsize(m03_couplers_to_interconnect_axilite_ARSIZE),
        .M_AXI_arvalid(m03_couplers_to_interconnect_axilite_ARVALID),
        .M_AXI_rdata(m03_couplers_to_interconnect_axilite_RDATA),
        .M_AXI_rid(m03_couplers_to_interconnect_axilite_RID),
        .M_AXI_rlast(m03_couplers_to_interconnect_axilite_RLAST),
        .M_AXI_rready(m03_couplers_to_interconnect_axilite_RREADY),
        .M_AXI_rresp(m03_couplers_to_interconnect_axilite_RRESP),
        .M_AXI_rvalid(m03_couplers_to_interconnect_axilite_RVALID),
        .S_ACLK(interconnect_axilite_ACLK_net),
        .S_ARESETN(interconnect_axilite_ARESETN_net),
        .S_AXI_araddr(xbar_to_m03_couplers_ARADDR),
        .S_AXI_arburst(xbar_to_m03_couplers_ARBURST),
        .S_AXI_arcache(xbar_to_m03_couplers_ARCACHE),
        .S_AXI_arid(xbar_to_m03_couplers_ARID),
        .S_AXI_arlen(xbar_to_m03_couplers_ARLEN),
        .S_AXI_arlock(xbar_to_m03_couplers_ARLOCK),
        .S_AXI_arprot(xbar_to_m03_couplers_ARPROT),
        .S_AXI_arqos(xbar_to_m03_couplers_ARQOS),
        .S_AXI_arready(xbar_to_m03_couplers_ARREADY),
        .S_AXI_arregion(xbar_to_m03_couplers_ARREGION),
        .S_AXI_arsize(xbar_to_m03_couplers_ARSIZE),
        .S_AXI_arvalid(xbar_to_m03_couplers_ARVALID),
        .S_AXI_rdata(xbar_to_m03_couplers_RDATA),
        .S_AXI_rid(xbar_to_m03_couplers_RID),
        .S_AXI_rlast(xbar_to_m03_couplers_RLAST),
        .S_AXI_rready(xbar_to_m03_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m03_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m03_couplers_RVALID));
  s00_couplers_imp_104E3TP s00_couplers
       (.M_ACLK(interconnect_axilite_ACLK_net),
        .M_ARESETN(interconnect_axilite_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arburst(s00_couplers_to_xbar_ARBURST),
        .M_AXI_arcache(s00_couplers_to_xbar_ARCACHE),
        .M_AXI_arid(s00_couplers_to_xbar_ARID),
        .M_AXI_arlen(s00_couplers_to_xbar_ARLEN),
        .M_AXI_arlock(s00_couplers_to_xbar_ARLOCK),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arqos(s00_couplers_to_xbar_ARQOS),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arsize(s00_couplers_to_xbar_ARSIZE),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awburst(s00_couplers_to_xbar_AWBURST),
        .M_AXI_awcache(s00_couplers_to_xbar_AWCACHE),
        .M_AXI_awid(s00_couplers_to_xbar_AWID),
        .M_AXI_awlen(s00_couplers_to_xbar_AWLEN),
        .M_AXI_awlock(s00_couplers_to_xbar_AWLOCK),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awqos(s00_couplers_to_xbar_AWQOS),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awsize(s00_couplers_to_xbar_AWSIZE),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bid(s00_couplers_to_xbar_BID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rid(s00_couplers_to_xbar_RID),
        .M_AXI_rlast(s00_couplers_to_xbar_RLAST),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wlast(s00_couplers_to_xbar_WLAST),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(interconnect_axilite_to_s00_couplers_ARADDR),
        .S_AXI_arburst(interconnect_axilite_to_s00_couplers_ARBURST),
        .S_AXI_arcache(interconnect_axilite_to_s00_couplers_ARCACHE),
        .S_AXI_arid(interconnect_axilite_to_s00_couplers_ARID),
        .S_AXI_arlen(interconnect_axilite_to_s00_couplers_ARLEN),
        .S_AXI_arlock(interconnect_axilite_to_s00_couplers_ARLOCK),
        .S_AXI_arprot(interconnect_axilite_to_s00_couplers_ARPROT),
        .S_AXI_arqos(interconnect_axilite_to_s00_couplers_ARQOS),
        .S_AXI_arready(interconnect_axilite_to_s00_couplers_ARREADY),
        .S_AXI_arsize(interconnect_axilite_to_s00_couplers_ARSIZE),
        .S_AXI_arvalid(interconnect_axilite_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(interconnect_axilite_to_s00_couplers_AWADDR),
        .S_AXI_awburst(interconnect_axilite_to_s00_couplers_AWBURST),
        .S_AXI_awcache(interconnect_axilite_to_s00_couplers_AWCACHE),
        .S_AXI_awid(interconnect_axilite_to_s00_couplers_AWID),
        .S_AXI_awlen(interconnect_axilite_to_s00_couplers_AWLEN),
        .S_AXI_awlock(interconnect_axilite_to_s00_couplers_AWLOCK),
        .S_AXI_awprot(interconnect_axilite_to_s00_couplers_AWPROT),
        .S_AXI_awqos(interconnect_axilite_to_s00_couplers_AWQOS),
        .S_AXI_awready(interconnect_axilite_to_s00_couplers_AWREADY),
        .S_AXI_awsize(interconnect_axilite_to_s00_couplers_AWSIZE),
        .S_AXI_awvalid(interconnect_axilite_to_s00_couplers_AWVALID),
        .S_AXI_bid(interconnect_axilite_to_s00_couplers_BID),
        .S_AXI_bready(interconnect_axilite_to_s00_couplers_BREADY),
        .S_AXI_bresp(interconnect_axilite_to_s00_couplers_BRESP),
        .S_AXI_bvalid(interconnect_axilite_to_s00_couplers_BVALID),
        .S_AXI_rdata(interconnect_axilite_to_s00_couplers_RDATA),
        .S_AXI_rid(interconnect_axilite_to_s00_couplers_RID),
        .S_AXI_rlast(interconnect_axilite_to_s00_couplers_RLAST),
        .S_AXI_rready(interconnect_axilite_to_s00_couplers_RREADY),
        .S_AXI_rresp(interconnect_axilite_to_s00_couplers_RRESP),
        .S_AXI_rvalid(interconnect_axilite_to_s00_couplers_RVALID),
        .S_AXI_wdata(interconnect_axilite_to_s00_couplers_WDATA),
        .S_AXI_wid(interconnect_axilite_to_s00_couplers_WID),
        .S_AXI_wlast(interconnect_axilite_to_s00_couplers_WLAST),
        .S_AXI_wready(interconnect_axilite_to_s00_couplers_WREADY),
        .S_AXI_wstrb(interconnect_axilite_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(interconnect_axilite_to_s00_couplers_WVALID));
  zedboard_base_xbar_1 xbar
       (.aclk(interconnect_axilite_ACLK_net),
        .aresetn(interconnect_axilite_ARESETN_net),
        .m_axi_araddr({xbar_to_m03_couplers_ARADDR,xbar_to_m02_couplers_ARADDR,xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arburst({xbar_to_m03_couplers_ARBURST,xbar_to_m02_couplers_ARBURST,xbar_to_m01_couplers_ARBURST,xbar_to_m00_couplers_ARBURST}),
        .m_axi_arcache({xbar_to_m03_couplers_ARCACHE,xbar_to_m02_couplers_ARCACHE,xbar_to_m01_couplers_ARCACHE,xbar_to_m00_couplers_ARCACHE}),
        .m_axi_arid({xbar_to_m03_couplers_ARID,xbar_to_m02_couplers_ARID,xbar_to_m01_couplers_ARID,xbar_to_m00_couplers_ARID}),
        .m_axi_arlen({xbar_to_m03_couplers_ARLEN,xbar_to_m02_couplers_ARLEN,xbar_to_m01_couplers_ARLEN,xbar_to_m00_couplers_ARLEN}),
        .m_axi_arlock({xbar_to_m03_couplers_ARLOCK,xbar_to_m02_couplers_ARLOCK,xbar_to_m01_couplers_ARLOCK,xbar_to_m00_couplers_ARLOCK}),
        .m_axi_arprot({xbar_to_m03_couplers_ARPROT,xbar_to_m02_couplers_ARPROT,xbar_to_m01_couplers_ARPROT,xbar_to_m00_couplers_ARPROT}),
        .m_axi_arqos({xbar_to_m03_couplers_ARQOS,xbar_to_m02_couplers_ARQOS,xbar_to_m01_couplers_ARQOS,xbar_to_m00_couplers_ARQOS}),
        .m_axi_arready({xbar_to_m03_couplers_ARREADY,xbar_to_m02_couplers_ARREADY,xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arregion({xbar_to_m03_couplers_ARREGION,xbar_to_m02_couplers_ARREGION,xbar_to_m01_couplers_ARREGION,xbar_to_m00_couplers_ARREGION}),
        .m_axi_arsize({xbar_to_m03_couplers_ARSIZE,xbar_to_m02_couplers_ARSIZE,xbar_to_m01_couplers_ARSIZE,xbar_to_m00_couplers_ARSIZE}),
        .m_axi_arvalid({xbar_to_m03_couplers_ARVALID,xbar_to_m02_couplers_ARVALID,xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m02_couplers_AWADDR,xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awburst({xbar_to_m02_couplers_AWBURST,xbar_to_m01_couplers_AWBURST,xbar_to_m00_couplers_AWBURST}),
        .m_axi_awcache({xbar_to_m02_couplers_AWCACHE,xbar_to_m01_couplers_AWCACHE,xbar_to_m00_couplers_AWCACHE}),
        .m_axi_awid({xbar_to_m02_couplers_AWID,xbar_to_m01_couplers_AWID,xbar_to_m00_couplers_AWID}),
        .m_axi_awlen({xbar_to_m02_couplers_AWLEN,xbar_to_m01_couplers_AWLEN,xbar_to_m00_couplers_AWLEN}),
        .m_axi_awlock({xbar_to_m02_couplers_AWLOCK,xbar_to_m01_couplers_AWLOCK,xbar_to_m00_couplers_AWLOCK}),
        .m_axi_awprot({xbar_to_m02_couplers_AWPROT,xbar_to_m01_couplers_AWPROT,xbar_to_m00_couplers_AWPROT}),
        .m_axi_awqos({xbar_to_m02_couplers_AWQOS,xbar_to_m01_couplers_AWQOS,xbar_to_m00_couplers_AWQOS}),
        .m_axi_awready({1'b0,xbar_to_m02_couplers_AWREADY,xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awregion({xbar_to_m02_couplers_AWREGION,xbar_to_m01_couplers_AWREGION,xbar_to_m00_couplers_AWREGION}),
        .m_axi_awsize({xbar_to_m02_couplers_AWSIZE,xbar_to_m01_couplers_AWSIZE,xbar_to_m00_couplers_AWSIZE}),
        .m_axi_awvalid({xbar_to_m02_couplers_AWVALID,xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bid({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,xbar_to_m02_couplers_BID,xbar_to_m01_couplers_BID,xbar_to_m00_couplers_BID}),
        .m_axi_bready({xbar_to_m02_couplers_BREADY,xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({1'b0,1'b0,xbar_to_m02_couplers_BRESP,xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({1'b0,xbar_to_m02_couplers_BVALID,xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m03_couplers_RDATA,xbar_to_m02_couplers_RDATA,xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rid({xbar_to_m03_couplers_RID,xbar_to_m02_couplers_RID,xbar_to_m01_couplers_RID,xbar_to_m00_couplers_RID}),
        .m_axi_rlast({xbar_to_m03_couplers_RLAST,xbar_to_m02_couplers_RLAST,xbar_to_m01_couplers_RLAST,xbar_to_m00_couplers_RLAST}),
        .m_axi_rready({xbar_to_m03_couplers_RREADY,xbar_to_m02_couplers_RREADY,xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m03_couplers_RRESP,xbar_to_m02_couplers_RRESP,xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m03_couplers_RVALID,xbar_to_m02_couplers_RVALID,xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m02_couplers_WDATA,xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wlast({xbar_to_m02_couplers_WLAST,xbar_to_m01_couplers_WLAST,xbar_to_m00_couplers_WLAST}),
        .m_axi_wready({1'b0,xbar_to_m02_couplers_WREADY,xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m02_couplers_WSTRB,xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m02_couplers_WVALID,xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arburst(s00_couplers_to_xbar_ARBURST),
        .s_axi_arcache(s00_couplers_to_xbar_ARCACHE),
        .s_axi_arid(s00_couplers_to_xbar_ARID),
        .s_axi_arlen(s00_couplers_to_xbar_ARLEN),
        .s_axi_arlock(s00_couplers_to_xbar_ARLOCK),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arqos(s00_couplers_to_xbar_ARQOS),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arsize(s00_couplers_to_xbar_ARSIZE),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awburst(s00_couplers_to_xbar_AWBURST),
        .s_axi_awcache(s00_couplers_to_xbar_AWCACHE),
        .s_axi_awid(s00_couplers_to_xbar_AWID),
        .s_axi_awlen(s00_couplers_to_xbar_AWLEN),
        .s_axi_awlock(s00_couplers_to_xbar_AWLOCK),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awqos(s00_couplers_to_xbar_AWQOS),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awsize(s00_couplers_to_xbar_AWSIZE),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bid(s00_couplers_to_xbar_BID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rid(s00_couplers_to_xbar_RID),
        .s_axi_rlast(s00_couplers_to_xbar_RLAST),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wlast(s00_couplers_to_xbar_WLAST),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule
