// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Apr 18 10:19:09 2024
// Host        : localhost.localdomain running 64-bit openSUSE Leap 15.4
// Command     : write_verilog -force -mode funcsim
//               /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/fpadd_arm/fpadd_arm.gen/sources_1/bd/Cortex_A9/ip/Cortex_A9_fpadd_ip_0_0/Cortex_A9_fpadd_ip_0_0_sim_netlist.v
// Design      : Cortex_A9_fpadd_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Cortex_A9_fpadd_ip_0_0,fpadd_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "fpadd_ip_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module Cortex_A9_fpadd_ip_0_0
   (leds,
    an0,
    a0,
    b0,
    c0,
    d0,
    e0,
    f0,
    g0,
    an1,
    a1,
    b1,
    c1,
    d1,
    e1,
    f1,
    g1,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  output [7:0]leds;
  output an0;
  output a0;
  output b0;
  output c0;
  output d0;
  output e0;
  output f0;
  output g0;
  output an1;
  output a1;
  output b1;
  output c1;
  output d1;
  output e1;
  output f1;
  output g1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S00_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_CLK, ASSOCIATED_BUSIF S00_AXI, ASSOCIATED_RESET s00_axi_aresetn:rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN Cortex_A9_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S00_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S00_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S00_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN Cortex_A9_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;

  wire \<const0> ;
  wire a0;
  wire a1;
  wire an0;
  wire an1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0 inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .digit_sel_reg(an0),
        .digit_sel_reg_0(an1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "DataMemory" *) 
module Cortex_A9_fpadd_ip_0_0_DataMemory
   (\pointer_reg[0]_0 ,
    \pointer_reg[2]_0 ,
    \pointer_reg[3]_0 ,
    D,
    \pointer_reg[3]_1 ,
    numB,
    numA,
    \pointer_reg[2]_1 ,
    current_state,
    s00_axi_aresetn,
    s00_axi_aclk,
    AS);
  output \pointer_reg[0]_0 ;
  output \pointer_reg[2]_0 ;
  output \pointer_reg[3]_0 ;
  output [17:0]D;
  output \pointer_reg[3]_1 ;
  output [13:0]numB;
  output [2:0]numA;
  output \pointer_reg[2]_1 ;
  input [1:0]current_state;
  input s00_axi_aresetn;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [17:0]D;
  wire [1:0]current_state;
  wire [2:0]numA;
  wire [13:0]numB;
  wire [3:1]p_0_in__0;
  wire \pointer[0]_i_1_n_0 ;
  wire \pointer[3]_i_1_n_0 ;
  wire [3:0]pointer_reg;
  wire \pointer_reg[0]_0 ;
  wire \pointer_reg[2]_0 ;
  wire \pointer_reg[2]_1 ;
  wire \pointer_reg[3]_0 ;
  wire \pointer_reg[3]_1 ;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h1020)) 
    \A[0]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hACA0)) 
    \A[11]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[1]),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0108)) 
    \A[12]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[0]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h1220)) 
    \A[13]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h00E0)) 
    \A[14]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[0]),
        .I2(pointer_reg[2]),
        .I3(pointer_reg[3]),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hDC32)) 
    \A[15]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0400)) 
    \A[16]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(numA[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \A[17]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[0]),
        .O(\pointer_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h070C)) 
    \A[18]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(numA[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h0E00)) 
    \A[21]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[1]),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h32)) 
    \A[22]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[2]),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h0133)) 
    \A[23]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[1]),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1321)) 
    \A[24]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h13)) 
    \A[25]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[2]),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4451)) 
    \A[26]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[1]),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hF705)) 
    \A[27]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[0]),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hCC0D)) 
    \A[28]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[0]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[3]),
        .O(D[15]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \A[30]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[3]),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \A[31]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3002)) 
    \A[4]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0A08)) 
    \A[5]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \A[8]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[3]),
        .O(numA[0]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h2230)) 
    \B[10]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(numB[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hEE30)) 
    \B[11]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(numB[2]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h090C)) 
    \B[12]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(numB[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h0440)) 
    \B[13]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[1]),
        .O(numB[4]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \B[14]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .O(numB[5]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'hB5E0)) 
    \B[15]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[2]),
        .O(numB[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00100000)) 
    \B[16]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .I4(s00_axi_aresetn),
        .O(\pointer_reg[2]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \B[19]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(numB[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \B[21]_i_1 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[2]),
        .O(numB[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3222)) 
    \B[22]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[1]),
        .O(\pointer_reg[2]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hB4)) 
    \B[24]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[0]),
        .O(numB[9]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h0D0A)) 
    \B[26]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[1]),
        .O(numB[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hA2AE)) 
    \B[27]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[2]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[1]),
        .O(numB[11]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \B[28]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[0]),
        .O(numB[12]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0B08)) 
    \B[2]_i_1 
       (.I0(pointer_reg[0]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[3]),
        .I3(pointer_reg[2]),
        .O(\pointer_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \B[30]_i_1 
       (.I0(pointer_reg[3]),
        .I1(pointer_reg[1]),
        .I2(pointer_reg[0]),
        .O(\pointer_reg[3]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hEC00)) 
    \B[31]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(numB[13]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h1022)) 
    \B[4]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[0]),
        .I3(pointer_reg[1]),
        .O(numB[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \pointer[0]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(\pointer[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \pointer[1]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[3]),
        .I2(pointer_reg[1]),
        .I3(pointer_reg[0]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \pointer[2]_i_1 
       (.I0(pointer_reg[2]),
        .I1(pointer_reg[0]),
        .I2(pointer_reg[1]),
        .O(p_0_in__0[2]));
  LUT6 #(
    .INIT(64'h444444444F444444)) 
    \pointer[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(pointer_reg[2]),
        .I3(pointer_reg[3]),
        .I4(pointer_reg[1]),
        .I5(pointer_reg[0]),
        .O(\pointer[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7D80)) 
    \pointer[3]_i_2 
       (.I0(pointer_reg[1]),
        .I1(pointer_reg[0]),
        .I2(pointer_reg[2]),
        .I3(pointer_reg[3]),
        .O(p_0_in__0[3]));
  FDCE \pointer_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\pointer[3]_i_1_n_0 ),
        .CLR(AS),
        .D(\pointer[0]_i_1_n_0 ),
        .Q(pointer_reg[0]));
  FDCE \pointer_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\pointer[3]_i_1_n_0 ),
        .CLR(AS),
        .D(p_0_in__0[1]),
        .Q(pointer_reg[1]));
  FDCE \pointer_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\pointer[3]_i_1_n_0 ),
        .CLR(AS),
        .D(p_0_in__0[2]),
        .Q(pointer_reg[2]));
  FDCE \pointer_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\pointer[3]_i_1_n_0 ),
        .CLR(AS),
        .D(p_0_in__0[3]),
        .Q(pointer_reg[3]));
endmodule

(* ORIG_REF_NAME = "SSD_clock_module" *) 
module Cortex_A9_fpadd_ip_0_0_SSD_clock_module
   (\counter_reg[4]_0 ,
    digit_sel_reg,
    s00_axi_aclk,
    AS);
  output \counter_reg[4]_0 ;
  input digit_sel_reg;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [4:0]counter0__0;
  wire \counter[1]_i_1__0_n_0 ;
  wire [4:0]counter_reg;
  wire \counter_reg[4]_0 ;
  wire digit_sel_reg;
  wire s00_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1__0 
       (.I0(counter_reg[0]),
        .O(counter0__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[1]_i_1__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \counter[2]_i_1__0 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(counter0__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter[3]_i_1__0 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(counter0__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \counter[4]_i_1__0 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(counter0__0[4]));
  FDPE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0__0[0]),
        .PRE(AS),
        .Q(counter_reg[0]));
  FDPE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1__0_n_0 ),
        .PRE(AS),
        .Q(counter_reg[1]));
  FDPE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0__0[2]),
        .PRE(AS),
        .Q(counter_reg[2]));
  FDPE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0__0[3]),
        .PRE(AS),
        .Q(counter_reg[3]));
  FDPE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0__0[4]),
        .PRE(AS),
        .Q(counter_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    digit_sel_i_1__0
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .I5(digit_sel_reg),
        .O(\counter_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "SSD_clock_module" *) 
module Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1
   (\counter_reg[4]_0 ,
    digit_sel_reg,
    s00_axi_aclk,
    AS);
  output \counter_reg[4]_0 ;
  input digit_sel_reg;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire [4:0]counter0;
  wire \counter[1]_i_1_n_0 ;
  wire [4:0]counter_reg;
  wire \counter_reg[4]_0 ;
  wire digit_sel_reg;
  wire s00_axi_aclk;

  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg[0]),
        .O(counter0[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \counter[1]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(\counter[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \counter[2]_i_1 
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .I2(counter_reg[2]),
        .O(counter0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'hAAA9)) 
    \counter[3]_i_1 
       (.I0(counter_reg[3]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .O(counter0[3]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'hAAAAAAA9)) 
    \counter[4]_i_1 
       (.I0(counter_reg[4]),
        .I1(counter_reg[3]),
        .I2(counter_reg[2]),
        .I3(counter_reg[1]),
        .I4(counter_reg[0]),
        .O(counter0[4]));
  FDPE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0[0]),
        .PRE(AS),
        .Q(counter_reg[0]));
  FDPE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\counter[1]_i_1_n_0 ),
        .PRE(AS),
        .Q(counter_reg[1]));
  FDPE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0[2]),
        .PRE(AS),
        .Q(counter_reg[2]));
  FDPE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0[3]),
        .PRE(AS),
        .Q(counter_reg[3]));
  FDPE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(counter0[4]),
        .PRE(AS),
        .Q(counter_reg[4]));
  LUT6 #(
    .INIT(64'hFFFFFFFE00000001)) 
    digit_sel_i_1
       (.I0(counter_reg[4]),
        .I1(counter_reg[0]),
        .I2(counter_reg[1]),
        .I3(counter_reg[2]),
        .I4(counter_reg[3]),
        .I5(digit_sel_reg),
        .O(\counter_reg[4]_0 ));
endmodule

(* ORIG_REF_NAME = "SSDisplays_module" *) 
module Cortex_A9_fpadd_ip_0_0_SSDisplays_module
   (digit_sel_reg_0,
    s00_axi_aclk,
    AS);
  output digit_sel_reg_0;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire SSD_clock_inst_n_0;
  wire digit_sel_reg_0;
  wire s00_axi_aclk;

  Cortex_A9_fpadd_ip_0_0_SSD_clock_module_1 SSD_clock_inst
       (.AS(AS),
        .\counter_reg[4]_0 (SSD_clock_inst_n_0),
        .digit_sel_reg(digit_sel_reg_0),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE digit_sel_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(SSD_clock_inst_n_0),
        .Q(digit_sel_reg_0));
endmodule

(* ORIG_REF_NAME = "SSDisplays_module" *) 
module Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0
   (digit_sel_reg_0,
    s00_axi_aclk,
    AS);
  output digit_sel_reg_0;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire SSD_clock_inst_n_0;
  wire digit_sel_reg_0;
  wire s00_axi_aclk;

  Cortex_A9_fpadd_ip_0_0_SSD_clock_module SSD_clock_inst
       (.AS(AS),
        .\counter_reg[4]_0 (SSD_clock_inst_n_0),
        .digit_sel_reg(digit_sel_reg_0),
        .s00_axi_aclk(s00_axi_aclk));
  FDCE digit_sel_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(SSD_clock_inst_n_0),
        .Q(digit_sel_reg_0));
endmodule

(* ORIG_REF_NAME = "compare_shift_module" *) 
module Cortex_A9_fpadd_ip_0_0_compare_shift_module
   (CO,
    D,
    \B_reg[24] ,
    DI,
    S,
    Q,
    \pipe_Mantissa_shift_B_reg[21] ,
    EXP_B,
    \pipe_Mantissa_shift_A_reg[21] ,
    \pipe_Mantissa_shift_B_reg[23] ,
    \pipe_Mantissa_shift_B_reg[22] ,
    p_0_in,
    p_0_in1_in,
    \pipe_Mantissa_shift_A_reg[22] );
  output [0:0]CO;
  output [23:0]D;
  output [23:0]\B_reg[24] ;
  input [3:0]DI;
  input [3:0]S;
  input [15:0]Q;
  input [3:0]\pipe_Mantissa_shift_B_reg[21] ;
  input [3:0]EXP_B;
  input [3:0]\pipe_Mantissa_shift_A_reg[21] ;
  input \pipe_Mantissa_shift_B_reg[23] ;
  input \pipe_Mantissa_shift_B_reg[22] ;
  input [5:0]p_0_in;
  input [12:0]p_0_in1_in;
  input \pipe_Mantissa_shift_A_reg[22] ;

  wire [23:0]\B_reg[24] ;
  wire [0:0]CO;
  wire [23:0]D;
  wire [3:0]DI;
  wire [3:0]EXP_B;
  wire [7:0]Mantissa_shift_A11_out;
  wire Mantissa_shift_A1_carry_n_1;
  wire Mantissa_shift_A1_carry_n_2;
  wire Mantissa_shift_A1_carry_n_3;
  wire \Mantissa_shift_A1_inferred__1/i__carry__0_n_1 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry__0_n_2 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry__0_n_3 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry_n_0 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry_n_1 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry_n_2 ;
  wire \Mantissa_shift_A1_inferred__1/i__carry_n_3 ;
  wire [7:0]Mantissa_shift_B10_out;
  wire Mantissa_shift_B1_carry__0_n_1;
  wire Mantissa_shift_B1_carry__0_n_2;
  wire Mantissa_shift_B1_carry__0_n_3;
  wire Mantissa_shift_B1_carry_i_1_n_0;
  wire Mantissa_shift_B1_carry_i_2_n_0;
  wire Mantissa_shift_B1_carry_i_3_n_0;
  wire Mantissa_shift_B1_carry_i_4_n_0;
  wire Mantissa_shift_B1_carry_n_0;
  wire Mantissa_shift_B1_carry_n_1;
  wire Mantissa_shift_B1_carry_n_2;
  wire Mantissa_shift_B1_carry_n_3;
  wire [15:0]Q;
  wire [3:0]S;
  wire i__carry_i_1__0_n_0;
  wire i__carry_i_2__0_n_0;
  wire i__carry_i_3__0_n_0;
  wire i__carry_i_4_n_0;
  wire [5:0]p_0_in;
  wire [12:0]p_0_in1_in;
  wire \pipe_Mantissa_shift_A[0]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[0]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[0]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[10]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[10]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[11]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[11]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[12]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[12]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[13]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[13]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[14]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[14]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[15]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[15]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[16]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[16]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[17]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[17]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[17]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[18]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[18]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[19]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[19]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[19]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[1]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[1]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[1]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[20]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[21]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[21]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[23]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[23]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[2]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[2]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[2]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[3]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[3]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[3]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[4]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[4]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[5]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[5]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[6]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[6]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[6]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[7]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[7]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[7]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[8]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[8]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[8]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_A[9]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_A[9]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_A[9]_i_4_n_0 ;
  wire [3:0]\pipe_Mantissa_shift_A_reg[21] ;
  wire \pipe_Mantissa_shift_A_reg[22] ;
  wire \pipe_Mantissa_shift_B[0]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[0]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[0]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[10]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[10]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[10]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[11]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[11]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[12]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[12]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[13]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[13]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[14]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[14]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[15]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[15]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[16]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[16]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[17]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[17]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[18]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[18]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[19]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[1]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[1]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[1]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[20]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[20]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[20]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[21]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_6_n_0 ;
  wire \pipe_Mantissa_shift_B[2]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[2]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[2]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[3]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[3]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[3]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[4]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[4]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[5]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[5]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[6]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[6]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[6]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[7]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[7]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[7]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[8]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[8]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[8]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[9]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[9]_i_3_n_0 ;
  wire \pipe_Mantissa_shift_B[9]_i_4_n_0 ;
  wire [3:0]\pipe_Mantissa_shift_B_reg[21] ;
  wire \pipe_Mantissa_shift_B_reg[22] ;
  wire \pipe_Mantissa_shift_B_reg[23] ;
  wire [3:0]NLW_Mantissa_shift_A1_carry_O_UNCONNECTED;
  wire [3:3]\NLW_Mantissa_shift_A1_inferred__1/i__carry__0_CO_UNCONNECTED ;
  wire [3:3]NLW_Mantissa_shift_B1_carry__0_CO_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 Mantissa_shift_A1_carry
       (.CI(1'b0),
        .CO({CO,Mantissa_shift_A1_carry_n_1,Mantissa_shift_A1_carry_n_2,Mantissa_shift_A1_carry_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_Mantissa_shift_A1_carry_O_UNCONNECTED[3:0]),
        .S(S));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Mantissa_shift_A1_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\Mantissa_shift_A1_inferred__1/i__carry_n_0 ,\Mantissa_shift_A1_inferred__1/i__carry_n_1 ,\Mantissa_shift_A1_inferred__1/i__carry_n_2 ,\Mantissa_shift_A1_inferred__1/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({EXP_B[1],EXP_B[2],EXP_B[0],EXP_B[2]}),
        .O(Mantissa_shift_A11_out[3:0]),
        .S({i__carry_i_1__0_n_0,i__carry_i_2__0_n_0,i__carry_i_3__0_n_0,i__carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \Mantissa_shift_A1_inferred__1/i__carry__0 
       (.CI(\Mantissa_shift_A1_inferred__1/i__carry_n_0 ),
        .CO({\NLW_Mantissa_shift_A1_inferred__1/i__carry__0_CO_UNCONNECTED [3],\Mantissa_shift_A1_inferred__1/i__carry__0_n_1 ,\Mantissa_shift_A1_inferred__1/i__carry__0_n_2 ,\Mantissa_shift_A1_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,EXP_B[2],EXP_B[3:2]}),
        .O(Mantissa_shift_A11_out[7:4]),
        .S(\pipe_Mantissa_shift_A_reg[21] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Mantissa_shift_B1_carry
       (.CI(1'b0),
        .CO({Mantissa_shift_B1_carry_n_0,Mantissa_shift_B1_carry_n_1,Mantissa_shift_B1_carry_n_2,Mantissa_shift_B1_carry_n_3}),
        .CYINIT(1'b1),
        .DI(Q[13:10]),
        .O(Mantissa_shift_B10_out[3:0]),
        .S({Mantissa_shift_B1_carry_i_1_n_0,Mantissa_shift_B1_carry_i_2_n_0,Mantissa_shift_B1_carry_i_3_n_0,Mantissa_shift_B1_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 Mantissa_shift_B1_carry__0
       (.CI(Mantissa_shift_B1_carry_n_0),
        .CO({NLW_Mantissa_shift_B1_carry__0_CO_UNCONNECTED[3],Mantissa_shift_B1_carry__0_n_1,Mantissa_shift_B1_carry__0_n_2,Mantissa_shift_B1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,Q[14],Q[15:14]}),
        .O(Mantissa_shift_B10_out[7:4]),
        .S(\pipe_Mantissa_shift_B_reg[21] ));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry_i_1
       (.I0(EXP_B[1]),
        .I1(Q[13]),
        .O(Mantissa_shift_B1_carry_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry_i_2
       (.I0(EXP_B[2]),
        .I1(Q[12]),
        .O(Mantissa_shift_B1_carry_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry_i_3
       (.I0(EXP_B[0]),
        .I1(Q[11]),
        .O(Mantissa_shift_B1_carry_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry_i_4
       (.I0(EXP_B[2]),
        .I1(Q[10]),
        .O(Mantissa_shift_B1_carry_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_1__0
       (.I0(EXP_B[1]),
        .I1(Q[13]),
        .O(i__carry_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_2__0
       (.I0(EXP_B[2]),
        .I1(Q[12]),
        .O(i__carry_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_3__0
       (.I0(EXP_B[0]),
        .I1(Q[11]),
        .O(i__carry_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_4
       (.I0(EXP_B[2]),
        .I1(Q[10]),
        .O(i__carry_i_4_n_0));
  LUT6 #(
    .INIT(64'h444F4444444F444F)) 
    \pipe_Mantissa_shift_A[0]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[0]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[0]_i_2_n_0 ),
        .I4(\pipe_Mantissa_shift_A[1]_i_2_n_0 ),
        .I5(Mantissa_shift_A11_out[0]),
        .O(\B_reg[24] [0]));
  LUT6 #(
    .INIT(64'h0000015155550151)) 
    \pipe_Mantissa_shift_A[0]_i_2 
       (.I0(Mantissa_shift_A11_out[0]),
        .I1(\pipe_Mantissa_shift_A[0]_i_3_n_0 ),
        .I2(Mantissa_shift_A11_out[2]),
        .I3(\pipe_Mantissa_shift_A[0]_i_4_n_0 ),
        .I4(Mantissa_shift_A11_out[1]),
        .I5(\pipe_Mantissa_shift_A[2]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[0]_i_3 
       (.I0(p_0_in[0]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[1]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Q[0]),
        .O(\pipe_Mantissa_shift_A[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[0]_i_4 
       (.I0(Q[4]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[5]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Q[1]),
        .O(\pipe_Mantissa_shift_A[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[10]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[6]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[11]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[10]_i_2_n_0 ),
        .O(\B_reg[24] [10]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[10]_i_2 
       (.I0(\pipe_Mantissa_shift_A[12]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[10]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000B8FFB800)) 
    \pipe_Mantissa_shift_A[10]_i_3 
       (.I0(Q[9]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[3]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Q[6]),
        .I5(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[10]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[11]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[3]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[12]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[11]_i_2_n_0 ),
        .O(\B_reg[24] [11]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[11]_i_2 
       (.I0(\pipe_Mantissa_shift_A[13]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[11]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCBBFC88)) 
    \pipe_Mantissa_shift_A[11]_i_3 
       (.I0(Q[7]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[4]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Q[3]),
        .I5(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[12]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[4]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[13]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[12]_i_2_n_0 ),
        .O(\B_reg[24] [12]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[12]_i_2 
       (.I0(\pipe_Mantissa_shift_A[14]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[12]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_A[12]_i_3 
       (.I0(p_0_in[1]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[5]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Q[4]),
        .I5(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[13]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[5]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[14]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[13]_i_2_n_0 ),
        .O(\B_reg[24] [13]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[13]_i_2 
       (.I0(\pipe_Mantissa_shift_A[15]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[13]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_A[13]_i_3 
       (.I0(p_0_in[2]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(Q[8]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Q[5]),
        .I5(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[14]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[6]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[15]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[14]_i_2_n_0 ),
        .O(\B_reg[24] [14]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[14]_i_2 
       (.I0(\pipe_Mantissa_shift_A[16]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[14]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_A[14]_i_3 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(Q[9]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Q[6]),
        .I5(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4444444F44)) 
    \pipe_Mantissa_shift_A[15]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[7]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[15]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[16]_i_2_n_0 ),
        .O(\B_reg[24] [15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[15]_i_2 
       (.I0(\pipe_Mantissa_shift_A[17]_i_4_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[15]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h003B0038)) 
    \pipe_Mantissa_shift_A[15]_i_3 
       (.I0(p_0_in[4]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(Mantissa_shift_A11_out[3]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Q[7]),
        .O(\pipe_Mantissa_shift_A[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4444444F44)) 
    \pipe_Mantissa_shift_A[16]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in[1]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[16]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[17]_i_3_n_0 ),
        .O(\B_reg[24] [16]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[16]_i_2 
       (.I0(\pipe_Mantissa_shift_A[18]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[16]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \pipe_Mantissa_shift_A[16]_i_3 
       (.I0(p_0_in[5]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[1]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4F4F4444444F44)) 
    \pipe_Mantissa_shift_A[17]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in[2]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[17]_i_3_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[18]_i_2_n_0 ),
        .O(\B_reg[24] [17]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \pipe_Mantissa_shift_A[17]_i_2 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Mantissa_shift_A11_out[5]),
        .I2(Mantissa_shift_A11_out[6]),
        .I3(Mantissa_shift_A11_out[7]),
        .O(\pipe_Mantissa_shift_A[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1110FFFF11100000)) 
    \pipe_Mantissa_shift_A[17]_i_3 
       (.I0(Mantissa_shift_A11_out[3]),
        .I1(Mantissa_shift_A11_out[4]),
        .I2(Mantissa_shift_A11_out[2]),
        .I3(p_0_in[4]),
        .I4(Mantissa_shift_A11_out[1]),
        .I5(\pipe_Mantissa_shift_A[17]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[17]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \pipe_Mantissa_shift_A[17]_i_4 
       (.I0(Q[8]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[2]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[17]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hF4F4FF4444444444)) 
    \pipe_Mantissa_shift_A[18]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in[3]),
        .I2(\pipe_Mantissa_shift_A[19]_i_3_n_0 ),
        .I3(\pipe_Mantissa_shift_A[18]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[19]_i_4_n_0 ),
        .O(\B_reg[24] [18]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \pipe_Mantissa_shift_A[18]_i_2 
       (.I0(Mantissa_shift_A11_out[3]),
        .I1(p_0_in[5]),
        .I2(Mantissa_shift_A11_out[4]),
        .I3(Mantissa_shift_A11_out[2]),
        .I4(Mantissa_shift_A11_out[1]),
        .I5(\pipe_Mantissa_shift_A[18]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \pipe_Mantissa_shift_A[18]_i_3 
       (.I0(Q[9]),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(p_0_in[3]),
        .I3(Mantissa_shift_A11_out[3]),
        .I4(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F4FFF4444444444)) 
    \pipe_Mantissa_shift_A[19]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in[4]),
        .I2(\pipe_Mantissa_shift_A[19]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[19]_i_3_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[19]_i_4_n_0 ),
        .O(\B_reg[24] [19]));
  LUT6 #(
    .INIT(64'hFEFEFEFFFFFFFEFF)) 
    \pipe_Mantissa_shift_A[19]_i_2 
       (.I0(Mantissa_shift_A11_out[4]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Mantissa_shift_A11_out[2]),
        .I3(p_0_in[5]),
        .I4(Mantissa_shift_A11_out[1]),
        .I5(Q[9]),
        .O(\pipe_Mantissa_shift_A[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003000B00030008)) 
    \pipe_Mantissa_shift_A[19]_i_3 
       (.I0(Q[8]),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(Mantissa_shift_A11_out[3]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(p_0_in[4]),
        .O(\pipe_Mantissa_shift_A[19]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \pipe_Mantissa_shift_A[19]_i_4 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Mantissa_shift_A11_out[5]),
        .I2(Mantissa_shift_A11_out[6]),
        .I3(Mantissa_shift_A11_out[7]),
        .O(\pipe_Mantissa_shift_A[19]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[1]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[6]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[2]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[1]_i_2_n_0 ),
        .O(\B_reg[24] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pipe_Mantissa_shift_A[1]_i_2 
       (.I0(\pipe_Mantissa_shift_A[3]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[1]_i_3_n_0 ),
        .I3(Mantissa_shift_A11_out[2]),
        .I4(\pipe_Mantissa_shift_A[1]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[1]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[1]_i_3 
       (.I0(Q[5]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[8]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Q[2]),
        .O(\pipe_Mantissa_shift_A[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[1]_i_4 
       (.I0(p_0_in1_in[12]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[2]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Q[6]),
        .O(\pipe_Mantissa_shift_A[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A3A)) 
    \pipe_Mantissa_shift_A[20]_i_1 
       (.I0(p_0_in[5]),
        .I1(\pipe_Mantissa_shift_A[20]_i_2_n_0 ),
        .I2(\pipe_Mantissa_shift_A_reg[22] ),
        .I3(Mantissa_shift_A11_out[5]),
        .I4(Mantissa_shift_A11_out[6]),
        .I5(Mantissa_shift_A11_out[7]),
        .O(\B_reg[24] [20]));
  LUT6 #(
    .INIT(64'h0F0F4F7F3F3F4F7F)) 
    \pipe_Mantissa_shift_A[20]_i_2 
       (.I0(Q[8]),
        .I1(Mantissa_shift_A11_out[0]),
        .I2(\pipe_Mantissa_shift_A[23]_i_3_n_0 ),
        .I3(p_0_in[5]),
        .I4(Mantissa_shift_A11_out[1]),
        .I5(Q[9]),
        .O(\pipe_Mantissa_shift_A[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0A0A0A0A0A0A0A3A)) 
    \pipe_Mantissa_shift_A[21]_i_1 
       (.I0(Q[8]),
        .I1(\pipe_Mantissa_shift_A[21]_i_2_n_0 ),
        .I2(\pipe_Mantissa_shift_A_reg[22] ),
        .I3(Mantissa_shift_A11_out[5]),
        .I4(Mantissa_shift_A11_out[6]),
        .I5(Mantissa_shift_A11_out[7]),
        .O(\B_reg[24] [21]));
  LUT6 #(
    .INIT(64'hFFFFFFC4FFFFFFC7)) 
    \pipe_Mantissa_shift_A[21]_i_2 
       (.I0(Q[9]),
        .I1(Mantissa_shift_A11_out[0]),
        .I2(Mantissa_shift_A11_out[1]),
        .I3(Mantissa_shift_A11_out[2]),
        .I4(\pipe_Mantissa_shift_A[21]_i_3_n_0 ),
        .I5(Q[8]),
        .O(\pipe_Mantissa_shift_A[21]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pipe_Mantissa_shift_A[21]_i_3 
       (.I0(Mantissa_shift_A11_out[4]),
        .I1(Mantissa_shift_A11_out[3]),
        .O(\pipe_Mantissa_shift_A[21]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000E0CCCCCCCC)) 
    \pipe_Mantissa_shift_A[22]_i_1 
       (.I0(Mantissa_shift_A11_out[0]),
        .I1(Q[9]),
        .I2(\pipe_Mantissa_shift_A[23]_i_3_n_0 ),
        .I3(Mantissa_shift_A11_out[1]),
        .I4(\pipe_Mantissa_shift_A[23]_i_2_n_0 ),
        .I5(\pipe_Mantissa_shift_A_reg[22] ),
        .O(\B_reg[24] [22]));
  LUT6 #(
    .INIT(64'h5555555500000100)) 
    \pipe_Mantissa_shift_A[23]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[23] ),
        .I1(\pipe_Mantissa_shift_A[23]_i_2_n_0 ),
        .I2(Mantissa_shift_A11_out[1]),
        .I3(\pipe_Mantissa_shift_A[23]_i_3_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(CO),
        .O(\B_reg[24] [23]));
  LUT3 #(
    .INIT(8'hFE)) 
    \pipe_Mantissa_shift_A[23]_i_2 
       (.I0(Mantissa_shift_A11_out[7]),
        .I1(Mantissa_shift_A11_out[6]),
        .I2(Mantissa_shift_A11_out[5]),
        .O(\pipe_Mantissa_shift_A[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \pipe_Mantissa_shift_A[23]_i_3 
       (.I0(Mantissa_shift_A11_out[2]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[23]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[2]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in1_in[1]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[3]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[2]_i_2_n_0 ),
        .O(\B_reg[24] [2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[2]_i_2 
       (.I0(\pipe_Mantissa_shift_A[4]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[2]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[2]_i_3 
       (.I0(\pipe_Mantissa_shift_A[6]_i_4_n_0 ),
        .I1(Mantissa_shift_A11_out[2]),
        .I2(\pipe_Mantissa_shift_A[2]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[2]_i_4 
       (.I0(Q[6]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[3]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(p_0_in1_in[1]),
        .O(\pipe_Mantissa_shift_A[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[3]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in1_in[11]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[4]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[3]_i_2_n_0 ),
        .O(\B_reg[24] [3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[3]_i_2 
       (.I0(\pipe_Mantissa_shift_A[5]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[3]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h33B8FFFF33B80000)) 
    \pipe_Mantissa_shift_A[3]_i_3 
       (.I0(Q[7]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in1_in[11]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[3]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[3]_i_4 
       (.I0(Q[3]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[4]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(p_0_in1_in[11]),
        .O(\pipe_Mantissa_shift_A[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[4]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[1]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[5]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[4]_i_2_n_0 ),
        .O(\B_reg[24] [4]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[4]_i_2 
       (.I0(\pipe_Mantissa_shift_A[6]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[4]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[4]_i_3 
       (.I0(p_0_in[1]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[0]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[0]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[5]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(Q[2]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[6]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[5]_i_2_n_0 ),
        .O(\B_reg[24] [5]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[5]_i_2 
       (.I0(\pipe_Mantissa_shift_A[7]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[5]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[5]_i_3 
       (.I0(p_0_in[2]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in1_in[12]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[1]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[6]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in1_in[9]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[7]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[6]_i_2_n_0 ),
        .O(\B_reg[24] [6]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[6]_i_2 
       (.I0(\pipe_Mantissa_shift_A[8]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[6]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[6]_i_3 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[6]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[6]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_A[6]_i_4 
       (.I0(Q[6]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[9]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(p_0_in1_in[9]),
        .O(\pipe_Mantissa_shift_A[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[7]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in1_in[11]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[8]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[7]_i_2_n_0 ),
        .O(\B_reg[24] [7]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[7]_i_2 
       (.I0(\pipe_Mantissa_shift_A[9]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[7]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[7]_i_3 
       (.I0(p_0_in[4]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[3]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[7]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[7]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h33B8)) 
    \pipe_Mantissa_shift_A[7]_i_4 
       (.I0(Q[7]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in1_in[11]),
        .I3(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[8]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in[0]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[9]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[8]_i_2_n_0 ),
        .O(\B_reg[24] [8]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[8]_i_2 
       (.I0(\pipe_Mantissa_shift_A[10]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[8]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[8]_i_3 
       (.I0(p_0_in[5]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[4]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[8]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \pipe_Mantissa_shift_A[8]_i_4 
       (.I0(p_0_in[1]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in[0]),
        .I3(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4F444F4F4F444444)) 
    \pipe_Mantissa_shift_A[9]_i_1 
       (.I0(\pipe_Mantissa_shift_A_reg[22] ),
        .I1(p_0_in1_in[12]),
        .I2(\pipe_Mantissa_shift_A[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_A[10]_i_2_n_0 ),
        .I4(Mantissa_shift_A11_out[0]),
        .I5(\pipe_Mantissa_shift_A[9]_i_2_n_0 ),
        .O(\B_reg[24] [9]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_A[9]_i_2 
       (.I0(\pipe_Mantissa_shift_A[11]_i_3_n_0 ),
        .I1(Mantissa_shift_A11_out[1]),
        .I2(\pipe_Mantissa_shift_A[9]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_A[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_A[9]_i_3 
       (.I0(Q[8]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(Q[5]),
        .I3(Mantissa_shift_A11_out[4]),
        .I4(Mantissa_shift_A11_out[2]),
        .I5(\pipe_Mantissa_shift_A[9]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_A[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \pipe_Mantissa_shift_A[9]_i_4 
       (.I0(p_0_in[2]),
        .I1(Mantissa_shift_A11_out[3]),
        .I2(p_0_in1_in[12]),
        .I3(Mantissa_shift_A11_out[4]),
        .O(\pipe_Mantissa_shift_A[9]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F88888888)) 
    \pipe_Mantissa_shift_B[0]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[10]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[1]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[0]_i_2_n_0 ),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hEFEFEFEAEAEAEFEA)) 
    \pipe_Mantissa_shift_B[0]_i_2 
       (.I0(Mantissa_shift_B10_out[0]),
        .I1(\pipe_Mantissa_shift_B[2]_i_3_n_0 ),
        .I2(Mantissa_shift_B10_out[1]),
        .I3(\pipe_Mantissa_shift_B[0]_i_3_n_0 ),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[0]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[0]_i_3 
       (.I0(p_0_in[0]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[8]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in1_in[10]),
        .O(\pipe_Mantissa_shift_B[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[0]_i_4 
       (.I0(p_0_in1_in[4]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in[5]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in1_in[1]),
        .O(\pipe_Mantissa_shift_B[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888F88)) 
    \pipe_Mantissa_shift_B[10]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[2]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[10]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[11]_i_2_n_0 ),
        .O(D[10]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[10]_i_2 
       (.I0(\pipe_Mantissa_shift_B[12]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[10]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[10]_i_3 
       (.I0(p_0_in1_in[12]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[6]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[10]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[10]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \pipe_Mantissa_shift_B[10]_i_4 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[2]),
        .I3(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[10]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[11]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[3]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[12]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[11]_i_2_n_0 ),
        .O(D[11]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[11]_i_2 
       (.I0(\pipe_Mantissa_shift_B[13]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[11]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCBBFC88)) 
    \pipe_Mantissa_shift_B[11]_i_3 
       (.I0(p_0_in1_in[7]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[10]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(p_0_in1_in[3]),
        .I5(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[12]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[4]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[13]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[12]_i_2_n_0 ),
        .O(D[12]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[12]_i_2 
       (.I0(\pipe_Mantissa_shift_B[14]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[12]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_B[12]_i_3 
       (.I0(p_0_in1_in[8]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in[5]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(p_0_in1_in[4]),
        .I5(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[12]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[13]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[5]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[14]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[13]_i_2_n_0 ),
        .O(D[13]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[13]_i_2 
       (.I0(\pipe_Mantissa_shift_B[15]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[13]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[13]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_B[13]_i_3 
       (.I0(p_0_in1_in[9]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[11]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(p_0_in1_in[5]),
        .I5(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[13]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[14]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[6]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[15]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[14]_i_2_n_0 ),
        .O(D[14]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[14]_i_2 
       (.I0(\pipe_Mantissa_shift_B[16]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[14]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[14]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000030BB3088)) 
    \pipe_Mantissa_shift_B[14]_i_3 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[12]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(p_0_in1_in[6]),
        .I5(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[14]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888F88)) 
    \pipe_Mantissa_shift_B[15]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[7]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[15]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[16]_i_2_n_0 ),
        .O(D[15]));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[15]_i_2 
       (.I0(p_0_in1_in[11]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[9]),
        .I3(\pipe_Mantissa_shift_B[23]_i_6_n_0 ),
        .I4(Mantissa_shift_B10_out[1]),
        .I5(\pipe_Mantissa_shift_B[15]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[15]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000033B8)) 
    \pipe_Mantissa_shift_B[15]_i_3 
       (.I0(p_0_in1_in[10]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[7]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[16]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[8]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[17]_i_3_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[16]_i_2_n_0 ),
        .O(D[16]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[16]_i_2 
       (.I0(\pipe_Mantissa_shift_B[18]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[16]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h000000B8)) 
    \pipe_Mantissa_shift_B[16]_i_3 
       (.I0(p_0_in[5]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[8]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[17]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[9]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[18]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[17]_i_3_n_0 ),
        .O(D[17]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \pipe_Mantissa_shift_B[17]_i_2 
       (.I0(Mantissa_shift_B10_out[5]),
        .I1(Mantissa_shift_B10_out[6]),
        .I2(Mantissa_shift_B10_out[7]),
        .I3(\pipe_Mantissa_shift_B_reg[22] ),
        .O(\pipe_Mantissa_shift_B[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FCBBFC88)) 
    \pipe_Mantissa_shift_B[17]_i_3 
       (.I0(p_0_in1_in[10]),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(p_0_in1_in[11]),
        .I3(Mantissa_shift_B10_out[2]),
        .I4(p_0_in1_in[9]),
        .I5(\pipe_Mantissa_shift_B[23]_i_6_n_0 ),
        .O(\pipe_Mantissa_shift_B[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F8FFF8888888888)) 
    \pipe_Mantissa_shift_B[18]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in[3]),
        .I2(\pipe_Mantissa_shift_B[19]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[18]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[20]_i_4_n_0 ),
        .O(D[18]));
  LUT6 #(
    .INIT(64'h0004FFFF00040000)) 
    \pipe_Mantissa_shift_B[18]_i_2 
       (.I0(Mantissa_shift_B10_out[3]),
        .I1(p_0_in[5]),
        .I2(Mantissa_shift_B10_out[4]),
        .I3(Mantissa_shift_B10_out[2]),
        .I4(Mantissa_shift_B10_out[1]),
        .I5(\pipe_Mantissa_shift_B[18]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[18]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h000000B8)) 
    \pipe_Mantissa_shift_B[18]_i_3 
       (.I0(p_0_in1_in[12]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in[3]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[18]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \pipe_Mantissa_shift_B[19]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[10]),
        .I2(\pipe_Mantissa_shift_B[20]_i_3_n_0 ),
        .I3(Mantissa_shift_B10_out[0]),
        .I4(\pipe_Mantissa_shift_B[19]_i_2_n_0 ),
        .I5(\pipe_Mantissa_shift_B[20]_i_4_n_0 ),
        .O(D[19]));
  LUT6 #(
    .INIT(64'hFFFFFFF5FFFFFF03)) 
    \pipe_Mantissa_shift_B[19]_i_2 
       (.I0(p_0_in1_in[11]),
        .I1(p_0_in1_in[10]),
        .I2(Mantissa_shift_B10_out[2]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[3]),
        .I5(Mantissa_shift_B10_out[1]),
        .O(\pipe_Mantissa_shift_B[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[1]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in[1]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[2]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[1]_i_2_n_0 ),
        .O(D[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \pipe_Mantissa_shift_B[1]_i_2 
       (.I0(\pipe_Mantissa_shift_B[3]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[1]_i_3_n_0 ),
        .I3(Mantissa_shift_B10_out[2]),
        .I4(\pipe_Mantissa_shift_B[1]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h3808)) 
    \pipe_Mantissa_shift_B[1]_i_3 
       (.I0(p_0_in1_in[5]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(Mantissa_shift_B10_out[4]),
        .I3(p_0_in1_in[11]),
        .O(\pipe_Mantissa_shift_B[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[1]_i_4 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[9]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in[1]),
        .O(\pipe_Mantissa_shift_B[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888FFF88888888)) 
    \pipe_Mantissa_shift_B[20]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in[5]),
        .I2(\pipe_Mantissa_shift_B[20]_i_2_n_0 ),
        .I3(Mantissa_shift_B10_out[0]),
        .I4(\pipe_Mantissa_shift_B[20]_i_3_n_0 ),
        .I5(\pipe_Mantissa_shift_B[20]_i_4_n_0 ),
        .O(D[20]));
  LUT5 #(
    .INIT(32'hFFFFFFCD)) 
    \pipe_Mantissa_shift_B[20]_i_2 
       (.I0(Mantissa_shift_B10_out[1]),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(p_0_in1_in[11]),
        .I3(Mantissa_shift_B10_out[3]),
        .I4(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEFFFFFFFEFF)) 
    \pipe_Mantissa_shift_B[20]_i_3 
       (.I0(Mantissa_shift_B10_out[4]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(Mantissa_shift_B10_out[2]),
        .I3(p_0_in[5]),
        .I4(Mantissa_shift_B10_out[1]),
        .I5(p_0_in1_in[12]),
        .O(\pipe_Mantissa_shift_B[20]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \pipe_Mantissa_shift_B[20]_i_4 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(Mantissa_shift_B10_out[5]),
        .I2(Mantissa_shift_B10_out[6]),
        .I3(Mantissa_shift_B10_out[7]),
        .O(\pipe_Mantissa_shift_B[20]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h888888888888888D)) 
    \pipe_Mantissa_shift_B[21]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[11]),
        .I2(\pipe_Mantissa_shift_B[21]_i_2_n_0 ),
        .I3(Mantissa_shift_B10_out[5]),
        .I4(Mantissa_shift_B10_out[6]),
        .I5(Mantissa_shift_B10_out[7]),
        .O(D[21]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFC4FFC7)) 
    \pipe_Mantissa_shift_B[21]_i_2 
       (.I0(p_0_in1_in[12]),
        .I1(Mantissa_shift_B10_out[0]),
        .I2(Mantissa_shift_B10_out[1]),
        .I3(Mantissa_shift_B10_out[2]),
        .I4(p_0_in1_in[11]),
        .I5(\pipe_Mantissa_shift_B[23]_i_6_n_0 ),
        .O(\pipe_Mantissa_shift_B[21]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hC0CE)) 
    \pipe_Mantissa_shift_B[22]_i_1 
       (.I0(Mantissa_shift_B10_out[0]),
        .I1(p_0_in1_in[12]),
        .I2(\pipe_Mantissa_shift_B_reg[22] ),
        .I3(\pipe_Mantissa_shift_B[23]_i_3_n_0 ),
        .O(D[22]));
  LUT4 #(
    .INIT(16'h0155)) 
    \pipe_Mantissa_shift_B[23]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[23] ),
        .I1(Mantissa_shift_B10_out[0]),
        .I2(\pipe_Mantissa_shift_B[23]_i_3_n_0 ),
        .I3(CO),
        .O(D[23]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \pipe_Mantissa_shift_B[23]_i_3 
       (.I0(Mantissa_shift_B10_out[2]),
        .I1(\pipe_Mantissa_shift_B[23]_i_6_n_0 ),
        .I2(Mantissa_shift_B10_out[1]),
        .I3(Mantissa_shift_B10_out[5]),
        .I4(Mantissa_shift_B10_out[6]),
        .I5(Mantissa_shift_B10_out[7]),
        .O(\pipe_Mantissa_shift_B[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \pipe_Mantissa_shift_B[23]_i_6 
       (.I0(Mantissa_shift_B10_out[4]),
        .I1(Mantissa_shift_B10_out[3]),
        .O(\pipe_Mantissa_shift_B[23]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[2]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[0]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[3]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[2]_i_2_n_0 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[2]_i_2 
       (.I0(\pipe_Mantissa_shift_B[4]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[2]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[2]_i_3 
       (.I0(\pipe_Mantissa_shift_B[6]_i_4_n_0 ),
        .I1(Mantissa_shift_B10_out[2]),
        .I2(\pipe_Mantissa_shift_B[2]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[2]_i_4 
       (.I0(p_0_in1_in[2]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in[3]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in1_in[0]),
        .O(\pipe_Mantissa_shift_B[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888F88)) 
    \pipe_Mantissa_shift_B[3]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[11]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[3]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[4]_i_2_n_0 ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[3]_i_2 
       (.I0(\pipe_Mantissa_shift_B[5]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[3]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3B38FFFF3B380000)) 
    \pipe_Mantissa_shift_B[3]_i_3 
       (.I0(p_0_in1_in[7]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(Mantissa_shift_B10_out[4]),
        .I3(p_0_in1_in[11]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[3]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[3]_i_4 
       (.I0(p_0_in1_in[3]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[10]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in1_in[11]),
        .O(\pipe_Mantissa_shift_B[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[4]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[1]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[5]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[4]_i_2_n_0 ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[4]_i_2 
       (.I0(\pipe_Mantissa_shift_B[6]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[4]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[4]_i_3 
       (.I0(p_0_in1_in[8]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in[0]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[0]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[4]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h00B8)) 
    \pipe_Mantissa_shift_B[5]_i_1 
       (.I0(\pipe_Mantissa_shift_B[6]_i_2_n_0 ),
        .I1(Mantissa_shift_B10_out[0]),
        .I2(\pipe_Mantissa_shift_B[5]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[5]_i_2 
       (.I0(\pipe_Mantissa_shift_B[7]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[5]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h3202FFFF32020000)) 
    \pipe_Mantissa_shift_B[5]_i_3 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[4]),
        .I2(Mantissa_shift_B10_out[3]),
        .I3(p_0_in1_in[9]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[1]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[6]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[10]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[7]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[6]_i_2_n_0 ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[6]_i_2 
       (.I0(\pipe_Mantissa_shift_B[8]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[6]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[6]_i_3 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[2]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[6]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \pipe_Mantissa_shift_B[6]_i_4 
       (.I0(p_0_in1_in[6]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[12]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(p_0_in1_in[10]),
        .O(\pipe_Mantissa_shift_B[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F888F8F8F888888)) 
    \pipe_Mantissa_shift_B[7]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in1_in[11]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[8]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[7]_i_2_n_0 ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[7]_i_2 
       (.I0(\pipe_Mantissa_shift_B[9]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[7]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[7]_i_3 
       (.I0(p_0_in1_in[10]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[3]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[7]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT4 #(
    .INIT(16'h3B38)) 
    \pipe_Mantissa_shift_B[7]_i_4 
       (.I0(p_0_in1_in[7]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(Mantissa_shift_B10_out[4]),
        .I3(p_0_in1_in[11]),
        .O(\pipe_Mantissa_shift_B[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888F88)) 
    \pipe_Mantissa_shift_B[8]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in[0]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[8]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[9]_i_2_n_0 ),
        .O(D[8]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[8]_i_2 
       (.I0(\pipe_Mantissa_shift_B[10]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[8]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[8]_i_3 
       (.I0(p_0_in[5]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[4]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[8]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[8]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h00B8)) 
    \pipe_Mantissa_shift_B[8]_i_4 
       (.I0(p_0_in1_in[8]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in[0]),
        .I3(Mantissa_shift_B10_out[4]),
        .O(\pipe_Mantissa_shift_B[8]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8F8F8F8888888F88)) 
    \pipe_Mantissa_shift_B[9]_i_1 
       (.I0(\pipe_Mantissa_shift_B_reg[22] ),
        .I1(p_0_in[3]),
        .I2(\pipe_Mantissa_shift_B[17]_i_2_n_0 ),
        .I3(\pipe_Mantissa_shift_B[9]_i_2_n_0 ),
        .I4(Mantissa_shift_B10_out[0]),
        .I5(\pipe_Mantissa_shift_B[10]_i_2_n_0 ),
        .O(D[9]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_Mantissa_shift_B[9]_i_2 
       (.I0(\pipe_Mantissa_shift_B[11]_i_3_n_0 ),
        .I1(Mantissa_shift_B10_out[1]),
        .I2(\pipe_Mantissa_shift_B[9]_i_3_n_0 ),
        .O(\pipe_Mantissa_shift_B[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00B8FFFF00B80000)) 
    \pipe_Mantissa_shift_B[9]_i_3 
       (.I0(p_0_in1_in[11]),
        .I1(Mantissa_shift_B10_out[3]),
        .I2(p_0_in1_in[5]),
        .I3(Mantissa_shift_B10_out[4]),
        .I4(Mantissa_shift_B10_out[2]),
        .I5(\pipe_Mantissa_shift_B[9]_i_4_n_0 ),
        .O(\pipe_Mantissa_shift_B[9]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h3202)) 
    \pipe_Mantissa_shift_B[9]_i_4 
       (.I0(p_0_in[3]),
        .I1(Mantissa_shift_B10_out[4]),
        .I2(Mantissa_shift_B10_out[3]),
        .I3(p_0_in1_in[9]),
        .O(\pipe_Mantissa_shift_B[9]_i_4_n_0 ));
endmodule

(* ORIG_REF_NAME = "debounce_module" *) 
module Cortex_A9_fpadd_ip_0_0_debounce_module
   (current_state,
    Q,
    s00_axi_aclk,
    AS);
  output [1:0]current_state;
  input [0:0]Q;
  input s00_axi_aclk;
  input [0:0]AS;

  wire [0:0]AS;
  wire \FSM_sequential_current_state[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[0]_i_5_n_0 ;
  wire \FSM_sequential_current_state[0]_i_6_n_0 ;
  wire \FSM_sequential_current_state[0]_i_7_n_0 ;
  wire \FSM_sequential_current_state[1]_i_1_n_0 ;
  wire [0:0]Q;
  wire [23:0]counter;
  wire [23:1]counter0;
  wire counter0_carry__0_i_1_n_0;
  wire counter0_carry__0_i_2_n_0;
  wire counter0_carry__0_i_3_n_0;
  wire counter0_carry__0_i_4_n_0;
  wire counter0_carry__0_n_0;
  wire counter0_carry__0_n_1;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry__1_i_1_n_0;
  wire counter0_carry__1_i_2_n_0;
  wire counter0_carry__1_i_3_n_0;
  wire counter0_carry__1_i_4_n_0;
  wire counter0_carry__1_n_0;
  wire counter0_carry__1_n_1;
  wire counter0_carry__1_n_2;
  wire counter0_carry__1_n_3;
  wire counter0_carry__2_i_1_n_0;
  wire counter0_carry__2_i_2_n_0;
  wire counter0_carry__2_i_3_n_0;
  wire counter0_carry__2_i_4_n_0;
  wire counter0_carry__2_n_0;
  wire counter0_carry__2_n_1;
  wire counter0_carry__2_n_2;
  wire counter0_carry__2_n_3;
  wire counter0_carry__3_i_1_n_0;
  wire counter0_carry__3_i_2_n_0;
  wire counter0_carry__3_i_3_n_0;
  wire counter0_carry__3_i_4_n_0;
  wire counter0_carry__3_n_0;
  wire counter0_carry__3_n_1;
  wire counter0_carry__3_n_2;
  wire counter0_carry__3_n_3;
  wire counter0_carry__4_i_1_n_0;
  wire counter0_carry__4_i_2_n_0;
  wire counter0_carry__4_i_3_n_0;
  wire counter0_carry__4_n_2;
  wire counter0_carry__4_n_3;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [1:0]current_state;
  wire [23:0]p_0_in;
  wire s00_axi_aclk;
  wire [3:2]NLW_counter0_carry__4_CO_UNCONNECTED;
  wire [3:3]NLW_counter0_carry__4_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .I1(counter[4]),
        .I2(counter[11]),
        .I3(counter[18]),
        .I4(counter[21]),
        .I5(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(counter[17]),
        .I1(counter[19]),
        .I2(counter[3]),
        .I3(counter[8]),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(\FSM_sequential_current_state[0]_i_5_n_0 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(counter[20]),
        .I5(\FSM_sequential_current_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(counter[5]),
        .I1(counter[16]),
        .I2(counter[7]),
        .I3(counter[12]),
        .O(\FSM_sequential_current_state[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \FSM_sequential_current_state[0]_i_6 
       (.I0(counter[15]),
        .I1(counter[6]),
        .I2(counter[14]),
        .I3(counter[13]),
        .I4(\FSM_sequential_current_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_sequential_current_state[0]_i_7 
       (.I0(counter[22]),
        .I1(counter[23]),
        .I2(counter[9]),
        .I3(counter[10]),
        .O(\FSM_sequential_current_state[0]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(Q),
        .I1(current_state[0]),
        .I2(current_state[1]),
        .O(\FSM_sequential_current_state[1]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "button_pressed:10,button_detected:01,button_unpressed:00,iSTATE:11" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_sequential_current_state[0]_i_1_n_0 ),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "button_pressed:10,button_detected:01,button_unpressed:00,iSTATE:11" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(\FSM_sequential_current_state[1]_i_1_n_0 ),
        .Q(current_state[1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(counter[0]),
        .DI(counter[4:1]),
        .O(counter0[4:1]),
        .S({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({counter0_carry__0_n_0,counter0_carry__0_n_1,counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(counter[8:5]),
        .O(counter0[8:5]),
        .S({counter0_carry__0_i_1_n_0,counter0_carry__0_i_2_n_0,counter0_carry__0_i_3_n_0,counter0_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_1
       (.I0(counter[8]),
        .O(counter0_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_2
       (.I0(counter[7]),
        .O(counter0_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_3
       (.I0(counter[6]),
        .O(counter0_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__0_i_4
       (.I0(counter[5]),
        .O(counter0_carry__0_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__1
       (.CI(counter0_carry__0_n_0),
        .CO({counter0_carry__1_n_0,counter0_carry__1_n_1,counter0_carry__1_n_2,counter0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(counter[12:9]),
        .O(counter0[12:9]),
        .S({counter0_carry__1_i_1_n_0,counter0_carry__1_i_2_n_0,counter0_carry__1_i_3_n_0,counter0_carry__1_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_1
       (.I0(counter[12]),
        .O(counter0_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_2
       (.I0(counter[11]),
        .O(counter0_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_3
       (.I0(counter[10]),
        .O(counter0_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__1_i_4
       (.I0(counter[9]),
        .O(counter0_carry__1_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__2
       (.CI(counter0_carry__1_n_0),
        .CO({counter0_carry__2_n_0,counter0_carry__2_n_1,counter0_carry__2_n_2,counter0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI(counter[16:13]),
        .O(counter0[16:13]),
        .S({counter0_carry__2_i_1_n_0,counter0_carry__2_i_2_n_0,counter0_carry__2_i_3_n_0,counter0_carry__2_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_1
       (.I0(counter[16]),
        .O(counter0_carry__2_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_2
       (.I0(counter[15]),
        .O(counter0_carry__2_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_3
       (.I0(counter[14]),
        .O(counter0_carry__2_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__2_i_4
       (.I0(counter[13]),
        .O(counter0_carry__2_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__3
       (.CI(counter0_carry__2_n_0),
        .CO({counter0_carry__3_n_0,counter0_carry__3_n_1,counter0_carry__3_n_2,counter0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI(counter[20:17]),
        .O(counter0[20:17]),
        .S({counter0_carry__3_i_1_n_0,counter0_carry__3_i_2_n_0,counter0_carry__3_i_3_n_0,counter0_carry__3_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_1
       (.I0(counter[20]),
        .O(counter0_carry__3_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_2
       (.I0(counter[19]),
        .O(counter0_carry__3_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_3
       (.I0(counter[18]),
        .O(counter0_carry__3_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__3_i_4
       (.I0(counter[17]),
        .O(counter0_carry__3_i_4_n_0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 counter0_carry__4
       (.CI(counter0_carry__3_n_0),
        .CO({NLW_counter0_carry__4_CO_UNCONNECTED[3:2],counter0_carry__4_n_2,counter0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter[22:21]}),
        .O({NLW_counter0_carry__4_O_UNCONNECTED[3],counter0[23:21]}),
        .S({1'b0,counter0_carry__4_i_1_n_0,counter0_carry__4_i_2_n_0,counter0_carry__4_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_1
       (.I0(counter[23]),
        .O(counter0_carry__4_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_2
       (.I0(counter[22]),
        .O(counter0_carry__4_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry__4_i_3
       (.I0(counter[21]),
        .O(counter0_carry__4_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_1
       (.I0(counter[4]),
        .O(counter0_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_2
       (.I0(counter[3]),
        .O(counter0_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_3
       (.I0(counter[2]),
        .O(counter0_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter0_carry_i_4
       (.I0(counter[1]),
        .O(counter0_carry_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \counter[0]_i_1__1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[10]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[10]),
        .O(p_0_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[11]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[11]),
        .O(p_0_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[12]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[12]),
        .O(p_0_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[13]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[13]),
        .O(p_0_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[14]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[14]),
        .O(p_0_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[15]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[15]),
        .O(p_0_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[16]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[16]),
        .O(p_0_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[17]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[17]),
        .O(p_0_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[18]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[18]),
        .O(p_0_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[19]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[19]),
        .O(p_0_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[1]_i_1__1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[20]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[20]),
        .O(p_0_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[21]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[21]),
        .O(p_0_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[22]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[22]),
        .O(p_0_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[23]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[23]),
        .O(p_0_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[2]_i_1__1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[2]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[3]_i_1__1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[4]_i_1__1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[5]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[5]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[6]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[6]),
        .O(p_0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[7]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[7]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[8]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[8]),
        .O(p_0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \counter[9]_i_1 
       (.I0(Q),
        .I1(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I2(counter0[9]),
        .O(p_0_in[9]));
  FDCE \counter_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[0]),
        .Q(counter[0]));
  FDPE \counter_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[10]),
        .PRE(AS),
        .Q(counter[10]));
  FDCE \counter_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[11]),
        .Q(counter[11]));
  FDPE \counter_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[12]),
        .PRE(AS),
        .Q(counter[12]));
  FDCE \counter_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[13]),
        .Q(counter[13]));
  FDCE \counter_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[14]),
        .Q(counter[14]));
  FDPE \counter_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[15]),
        .PRE(AS),
        .Q(counter[15]));
  FDCE \counter_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[16]),
        .Q(counter[16]));
  FDCE \counter_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[17]),
        .Q(counter[17]));
  FDCE \counter_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[18]),
        .Q(counter[18]));
  FDPE \counter_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[19]),
        .PRE(AS),
        .Q(counter[19]));
  FDCE \counter_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[1]),
        .Q(counter[1]));
  FDPE \counter_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[20]),
        .PRE(AS),
        .Q(counter[20]));
  FDCE \counter_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[21]),
        .Q(counter[21]));
  FDCE \counter_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[22]),
        .Q(counter[22]));
  FDPE \counter_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[23]),
        .PRE(AS),
        .Q(counter[23]));
  FDCE \counter_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[2]),
        .Q(counter[2]));
  FDCE \counter_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[3]),
        .Q(counter[3]));
  FDCE \counter_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[4]),
        .Q(counter[4]));
  FDCE \counter_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[5]),
        .Q(counter[5]));
  FDCE \counter_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[6]),
        .Q(counter[6]));
  FDPE \counter_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[7]),
        .PRE(AS),
        .Q(counter[7]));
  FDCE \counter_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(p_0_in[8]),
        .Q(counter[8]));
  FDPE \counter_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(p_0_in[9]),
        .PRE(AS),
        .Q(counter[9]));
endmodule

(* ORIG_REF_NAME = "fpadd_ip_v1_0" *) 
module Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0
   (leds,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    e0,
    digit_sel_reg,
    c0,
    d0,
    g0,
    f0,
    b0,
    a0,
    e1,
    digit_sel_reg_0,
    c1,
    d1,
    g1,
    f1,
    b1,
    a1,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]leds;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output e0;
  output digit_sel_reg;
  output c0;
  output d0;
  output g0;
  output f0;
  output b0;
  output a0;
  output e1;
  output digit_sel_reg_0;
  output c1;
  output d1;
  output g1;
  output f1;
  output b1;
  output a1;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire a0;
  wire a1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire digit_sel_reg;
  wire digit_sel_reg_0;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;

  Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI fpadd_ip_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_WREADY(S_AXI_WREADY),
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .digit_sel_reg(digit_sel_reg),
        .digit_sel_reg_0(digit_sel_reg_0),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "fpadd_ip_v1_0_S00_AXI" *) 
module Cortex_A9_fpadd_ip_0_0_fpadd_ip_v1_0_S00_AXI
   (leds,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    e0,
    digit_sel_reg,
    c0,
    d0,
    g0,
    f0,
    b0,
    a0,
    e1,
    digit_sel_reg_0,
    c1,
    d1,
    g1,
    f1,
    b1,
    a1,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_wvalid,
    s00_axi_awvalid,
    s00_axi_wdata,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_wstrb,
    s00_axi_bready,
    s00_axi_rready);
  output [7:0]leds;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output e0;
  output digit_sel_reg;
  output c0;
  output d0;
  output g0;
  output f0;
  output b0;
  output a0;
  output e1;
  output digit_sel_reg_0;
  output c1;
  output d1;
  output g1;
  output f1;
  output b1;
  output a1;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [1:0]s00_axi_awaddr;
  input s00_axi_wvalid;
  input s00_axi_awvalid;
  input [31:0]s00_axi_wdata;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [3:0]s00_axi_wstrb;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire a0;
  wire a1;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire d0;
  wire d1;
  wire digit_sel_reg;
  wire digit_sel_reg_0;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire pls_work_n_1;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [0:0]slv_reg0;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire \slv_reg0_reg_n_0_[8] ;
  wire \slv_reg0_reg_n_0_[9] ;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  LUT6 #(
    .INIT(64'hF7FFC4CCC4CCC4CC)) 
    aw_en_i_1
       (.I0(s00_axi_awvalid),
        .I1(aw_en_reg_n_0),
        .I2(S_AXI_AWREADY),
        .I3(s00_axi_wvalid),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(pls_work_n_1));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(pls_work_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(pls_work_n_1));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(pls_work_n_1));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFF08000000)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s00_axi_awvalid),
        .I5(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(pls_work_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(pls_work_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready_i_1
       (.I0(s00_axi_wvalid),
        .I1(S_AXI_AWREADY),
        .I2(aw_en_reg_n_0),
        .I3(s00_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(pls_work_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(pls_work_n_1));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg0),
        .I1(slv_reg1[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[10]_i_1 
       (.I0(\slv_reg0_reg_n_0_[10] ),
        .I1(slv_reg1[10]),
        .I2(slv_reg2[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[11]_i_1 
       (.I0(\slv_reg0_reg_n_0_[11] ),
        .I1(slv_reg1[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[12]_i_1 
       (.I0(\slv_reg0_reg_n_0_[12] ),
        .I1(slv_reg1[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[13]_i_1 
       (.I0(\slv_reg0_reg_n_0_[13] ),
        .I1(slv_reg1[13]),
        .I2(slv_reg2[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[14]_i_1 
       (.I0(\slv_reg0_reg_n_0_[14] ),
        .I1(slv_reg1[14]),
        .I2(slv_reg2[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(slv_reg3[15]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(slv_reg2[16]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[17]_i_1 
       (.I0(\slv_reg0_reg_n_0_[17] ),
        .I1(slv_reg1[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[18]_i_1 
       (.I0(\slv_reg0_reg_n_0_[18] ),
        .I1(slv_reg1[18]),
        .I2(slv_reg2[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[19]_i_1 
       (.I0(\slv_reg0_reg_n_0_[19] ),
        .I1(slv_reg1[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[1]_i_1 
       (.I0(\slv_reg0_reg_n_0_[1] ),
        .I1(slv_reg1[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(slv_reg1[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(slv_reg1[21]),
        .I2(slv_reg2[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(slv_reg1[22]),
        .I2(slv_reg2[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(slv_reg3[23]),
        .I2(\slv_reg0_reg_n_0_[23] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(slv_reg2[24]),
        .I2(\slv_reg0_reg_n_0_[24] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(slv_reg1[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(slv_reg1[26]),
        .I2(slv_reg2[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(slv_reg1[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(slv_reg1[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(slv_reg1[29]),
        .I2(slv_reg2[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[2]_i_1 
       (.I0(\slv_reg0_reg_n_0_[2] ),
        .I1(slv_reg1[2]),
        .I2(slv_reg2[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(slv_reg1[30]),
        .I2(slv_reg2[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(slv_reg2[31]),
        .I2(\slv_reg0_reg_n_0_[31] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[3]_i_1 
       (.I0(\slv_reg0_reg_n_0_[3] ),
        .I1(slv_reg1[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[4]_i_1 
       (.I0(\slv_reg0_reg_n_0_[4] ),
        .I1(slv_reg1[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[5]_i_1 
       (.I0(\slv_reg0_reg_n_0_[5] ),
        .I1(slv_reg1[5]),
        .I2(slv_reg2[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hFFCCF0AA00CCF0AA)) 
    \axi_rdata[6]_i_1 
       (.I0(\slv_reg0_reg_n_0_[6] ),
        .I1(slv_reg1[6]),
        .I2(slv_reg2[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg3[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(slv_reg3[7]),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hFFCCAAF000CCAAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(slv_reg2[8]),
        .I2(\slv_reg0_reg_n_0_[8] ),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg3[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0FFCCAAF000CCAA)) 
    \axi_rdata[9]_i_1 
       (.I0(\slv_reg0_reg_n_0_[9] ),
        .I1(slv_reg1[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[2]),
        .I4(axi_araddr[3]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(pls_work_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(pls_work_n_1));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rvalid),
        .I3(s00_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(pls_work_n_1));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .I3(aw_en_reg_n_0),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(pls_work_n_1));
  Cortex_A9_fpadd_ip_0_0_fpadd_system pls_work
       (.Q(slv_reg0),
        .SR(pls_work_n_1),
        .a0(a0),
        .a1(a1),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .digit_sel_reg(digit_sel_reg),
        .digit_sel_reg_0(digit_sel_reg_0),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(p_0_in[0]),
        .I3(s00_axi_wstrb[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg0),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(\slv_reg0_reg_n_0_[8] ),
        .R(pls_work_n_1));
  FDRE \slv_reg0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(\slv_reg0_reg_n_0_[9] ),
        .R(pls_work_n_1));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(pls_work_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(pls_work_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(pls_work_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(pls_work_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(pls_work_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(pls_work_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "fpadd_pipelined" *) 
module Cortex_A9_fpadd_ip_0_0_fpadd_pipelined
   (AS,
    leds,
    e0,
    c0,
    d0,
    g0,
    f0,
    b0,
    a0,
    e1,
    c1,
    d1,
    g1,
    f1,
    b1,
    a1,
    s00_axi_aresetn,
    numB,
    s00_axi_aclk,
    \B_reg[30]_0 ,
    \B_reg[2]_0 ,
    \B_reg[16]_0 ,
    numA,
    \A_reg[17]_0 ,
    \B_reg[22]_0 ,
    D,
    a0_0,
    a1_0);
  output [0:0]AS;
  output [7:0]leds;
  output e0;
  output c0;
  output d0;
  output g0;
  output f0;
  output b0;
  output a0;
  output e1;
  output c1;
  output d1;
  output g1;
  output f1;
  output b1;
  output a1;
  input s00_axi_aresetn;
  input [13:0]numB;
  input s00_axi_aclk;
  input \B_reg[30]_0 ;
  input \B_reg[2]_0 ;
  input \B_reg[16]_0 ;
  input [19:0]numA;
  input \A_reg[17]_0 ;
  input \B_reg[22]_0 ;
  input [0:0]D;
  input a0_0;
  input a1_0;

  wire [0:0]AS;
  wire \A_reg[17]_0 ;
  wire \B_reg[16]_0 ;
  wire \B_reg[22]_0 ;
  wire \B_reg[2]_0 ;
  wire \B_reg[30]_0 ;
  wire [0:0]D;
  wire [7:0]EXP_A;
  wire [7:1]EXP_B;
  wire [7:0]EXP_normal_result;
  wire [7:0]EXP_result;
  wire [22:0]Mantissa_normal_result;
  wire [22:0]Mantissa_shift_A;
  wire Mantissa_shift_A1_carry_i_1_n_0;
  wire Mantissa_shift_A1_carry_i_2_n_0;
  wire Mantissa_shift_A1_carry_i_3_n_0;
  wire Mantissa_shift_A1_carry_i_4_n_0;
  wire Mantissa_shift_A1_carry_i_5_n_0;
  wire Mantissa_shift_A1_carry_i_6_n_0;
  wire Mantissa_shift_A1_carry_i_7_n_0;
  wire Mantissa_shift_A1_carry_i_8_n_0;
  wire [22:0]Mantissa_shift_B;
  wire Mantissa_shift_B1_carry__0_i_1_n_0;
  wire Mantissa_shift_B1_carry__0_i_2_n_0;
  wire Mantissa_shift_B1_carry__0_i_3_n_0;
  wire Mantissa_shift_B1_carry__0_i_4_n_0;
  wire [3:0]\SSDisplays_inst0/digit_value__3 ;
  wire [3:0]\SSDisplays_inst1/digit_value__3 ;
  wire S_A;
  wire S_B;
  wire S_result1_carry__1_i_1_n_0;
  wire S_result1_carry__1_i_2_n_0;
  wire S_result1_carry__1_i_3_n_0;
  wire S_result1_carry__1_i_4_n_0;
  wire S_result1_carry__1_i_5_n_0;
  wire S_result1_carry__1_i_6_n_0;
  wire S_result1_carry__1_i_7_n_0;
  wire S_result1_carry__1_i_8_n_0;
  wire a0;
  wire a0_0;
  wire a1;
  wire a1_0;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire compare_shift_inst_n_0;
  wire compare_shift_inst_n_1;
  wire compare_shift_inst_n_25;
  wire d0;
  wire d1;
  wire [22:0]data0;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire [31:16]fp_out;
  wire g0;
  wire g1;
  wire i__carry__0_i_1__0_n_0;
  wire i__carry__0_i_2__0_n_0;
  wire i__carry__0_i_3__0_n_0;
  wire i__carry__0_i_4__0_n_0;
  wire [7:0]leds;
  wire mantissas_addition_inst_n_24;
  wire mantissas_addition_inst_n_25;
  wire [19:0]numA;
  wire [13:0]numB;
  wire \out[16]_i_2_n_0 ;
  wire \out[16]_i_3_n_0 ;
  wire \out[17]_i_2_n_0 ;
  wire \out[17]_i_3_n_0 ;
  wire \out[18]_i_2_n_0 ;
  wire \out[18]_i_4_n_0 ;
  wire \out[19]_i_2_n_0 ;
  wire \out[19]_i_3_n_0 ;
  wire \out[1]_i_2_n_0 ;
  wire \out[1]_i_3_n_0 ;
  wire \out[20]_i_2_n_0 ;
  wire \out[20]_i_3_n_0 ;
  wire \out[21]_i_2_n_0 ;
  wire \out[21]_i_4_n_0 ;
  wire \out[21]_i_5_n_0 ;
  wire \out[22]_i_10_n_0 ;
  wire \out[22]_i_11_n_0 ;
  wire \out[22]_i_12_n_0 ;
  wire \out[22]_i_13_n_0 ;
  wire \out[22]_i_14_n_0 ;
  wire \out[22]_i_2_n_0 ;
  wire \out[22]_i_3_n_0 ;
  wire \out[22]_i_4_n_0 ;
  wire \out[22]_i_5_n_0 ;
  wire \out[22]_i_6_n_0 ;
  wire \out[22]_i_7_n_0 ;
  wire \out[22]_i_8_n_0 ;
  wire \out[22]_i_9_n_0 ;
  wire \out[2]_i_3_n_0 ;
  wire \out[2]_i_4_n_0 ;
  wire \out[31]_i_15_n_0 ;
  wire \out[31]_i_16_n_0 ;
  wire \out[31]_i_2_n_0 ;
  wire \out[31]_i_3_n_0 ;
  wire \out[31]_i_6_n_0 ;
  wire \out[3]_i_2_n_0 ;
  wire \out[4]_i_2_n_0 ;
  wire \out[5]_i_2_n_0 ;
  wire \out[6]_i_13_n_0 ;
  wire \out[6]_i_2_n_0 ;
  wire \out[7]_i_10_n_0 ;
  wire \out[7]_i_11_n_0 ;
  wire \out[7]_i_12_n_0 ;
  wire \out[7]_i_14_n_0 ;
  wire \out[7]_i_15_n_0 ;
  wire \out[7]_i_3_n_0 ;
  wire \out[7]_i_4_n_0 ;
  wire \out[7]_i_5_n_0 ;
  wire \out[7]_i_6_n_0 ;
  wire \out[7]_i_8_n_0 ;
  wire \out[7]_i_9_n_0 ;
  wire [22:0]p_0_in;
  wire [22:2]p_0_in1_in;
  wire [7:0]pipe_EXP_result;
  wire [23:0]pipe_Mantissa_shift_A;
  wire \pipe_Mantissa_shift_A[22]_i_2_n_0 ;
  wire [23:0]pipe_Mantissa_shift_B;
  wire \pipe_Mantissa_shift_B[22]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_2_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_4_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_5_n_0 ;
  wire \pipe_Mantissa_shift_B[23]_i_7_n_0 ;
  wire pipe_S_A;
  wire pipe_S_B;
  wire post_normalization_inst_n_0;
  wire post_normalization_inst_n_1;
  wire post_normalization_inst_n_10;
  wire post_normalization_inst_n_11;
  wire post_normalization_inst_n_12;
  wire post_normalization_inst_n_13;
  wire post_normalization_inst_n_14;
  wire post_normalization_inst_n_15;
  wire post_normalization_inst_n_16;
  wire post_normalization_inst_n_17;
  wire post_normalization_inst_n_2;
  wire post_normalization_inst_n_26;
  wire post_normalization_inst_n_3;
  wire post_normalization_inst_n_4;
  wire post_normalization_inst_n_5;
  wire post_normalization_inst_n_6;
  wire post_normalization_inst_n_7;
  wire post_normalization_inst_n_8;
  wire post_normalization_inst_n_9;
  wire [31:31]result;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  FDRE \A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[0]),
        .Q(p_0_in[0]),
        .R(1'b0));
  FDRE \A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[4]),
        .Q(p_0_in[11]),
        .R(1'b0));
  FDRE \A_reg[12] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[5]),
        .Q(p_0_in[12]),
        .R(1'b0));
  FDRE \A_reg[13] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[6]),
        .Q(p_0_in[13]),
        .R(1'b0));
  FDRE \A_reg[14] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(D),
        .Q(p_0_in[14]),
        .R(1'b0));
  FDRE \A_reg[15] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[7]),
        .Q(p_0_in[15]),
        .R(1'b0));
  FDRE \A_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[8]),
        .Q(p_0_in[16]),
        .R(1'b0));
  FDSE \A_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(\A_reg[17]_0 ),
        .Q(p_0_in[17]),
        .S(\B_reg[16]_0 ));
  FDRE \A_reg[18] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[9]),
        .Q(p_0_in[18]),
        .R(1'b0));
  FDSE \A_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[7]),
        .Q(p_0_in[19]),
        .S(\B_reg[16]_0 ));
  FDSE \A_reg[20] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[13]),
        .Q(p_0_in[20]),
        .S(\B_reg[16]_0 ));
  FDRE \A_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[10]),
        .Q(p_0_in[21]),
        .R(1'b0));
  FDRE \A_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[11]),
        .Q(p_0_in[22]),
        .R(1'b0));
  FDRE \A_reg[23] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[12]),
        .Q(EXP_A[0]),
        .R(1'b0));
  FDRE \A_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[13]),
        .Q(EXP_A[1]),
        .R(1'b0));
  FDRE \A_reg[25] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[14]),
        .Q(EXP_A[2]),
        .R(1'b0));
  FDRE \A_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[15]),
        .Q(EXP_A[3]),
        .R(1'b0));
  FDRE \A_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[16]),
        .Q(EXP_A[4]),
        .R(1'b0));
  FDRE \A_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[17]),
        .Q(EXP_A[5]),
        .R(1'b0));
  FDRE \A_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[18]),
        .Q(EXP_A[7]),
        .R(1'b0));
  FDRE \A_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[19]),
        .Q(S_A),
        .R(1'b0));
  FDRE \A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[1]),
        .Q(p_0_in[4]),
        .R(1'b0));
  FDRE \A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[2]),
        .Q(p_0_in[5]),
        .R(1'b0));
  FDRE \A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numA[3]),
        .Q(p_0_in[8]),
        .R(1'b0));
  FDRE \B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[1]),
        .Q(p_0_in1_in[10]),
        .R(1'b0));
  FDRE \B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[2]),
        .Q(p_0_in1_in[11]),
        .R(1'b0));
  FDRE \B_reg[12] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[3]),
        .Q(p_0_in1_in[12]),
        .R(1'b0));
  FDRE \B_reg[13] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[4]),
        .Q(p_0_in1_in[13]),
        .R(1'b0));
  FDRE \B_reg[14] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[5]),
        .Q(p_0_in1_in[14]),
        .R(1'b0));
  FDRE \B_reg[15] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[6]),
        .Q(p_0_in1_in[15]),
        .R(1'b0));
  FDSE \B_reg[16] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[4]),
        .Q(p_0_in1_in[16]),
        .S(\B_reg[16]_0 ));
  FDRE \B_reg[17] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(\A_reg[17]_0 ),
        .Q(p_0_in1_in[17]),
        .R(1'b0));
  FDRE \B_reg[19] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[7]),
        .Q(p_0_in1_in[19]),
        .R(1'b0));
  FDRE \B_reg[21] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[8]),
        .Q(p_0_in1_in[21]),
        .R(1'b0));
  FDRE \B_reg[22] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(\B_reg[22]_0 ),
        .Q(p_0_in1_in[22]),
        .R(1'b0));
  FDRE \B_reg[24] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[9]),
        .Q(EXP_B[1]),
        .R(1'b0));
  FDRE \B_reg[26] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[10]),
        .Q(EXP_B[3]),
        .R(1'b0));
  FDRE \B_reg[27] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[11]),
        .Q(EXP_B[4]),
        .R(1'b0));
  FDRE \B_reg[28] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[12]),
        .Q(EXP_B[5]),
        .R(1'b0));
  FDRE \B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(\B_reg[2]_0 ),
        .Q(p_0_in1_in[2]),
        .R(1'b0));
  FDRE \B_reg[30] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(\B_reg[30]_0 ),
        .Q(EXP_B[7]),
        .R(1'b0));
  FDRE \B_reg[31] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[13]),
        .Q(S_B),
        .R(1'b0));
  FDRE \B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(s00_axi_aresetn),
        .D(numB[0]),
        .Q(p_0_in1_in[4]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Mantissa_shift_A1_carry_i_1
       (.I0(EXP_A[7]),
        .I1(EXP_B[7]),
        .I2(EXP_A[4]),
        .I3(EXP_B[4]),
        .O(Mantissa_shift_A1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h20F2)) 
    Mantissa_shift_A1_carry_i_2
       (.I0(EXP_A[4]),
        .I1(EXP_B[4]),
        .I2(EXP_A[5]),
        .I3(EXP_B[5]),
        .O(Mantissa_shift_A1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Mantissa_shift_A1_carry_i_3
       (.I0(EXP_A[3]),
        .I1(EXP_B[3]),
        .I2(EXP_A[2]),
        .I3(EXP_B[4]),
        .O(Mantissa_shift_A1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    Mantissa_shift_A1_carry_i_4
       (.I0(EXP_A[1]),
        .I1(EXP_B[1]),
        .I2(EXP_A[0]),
        .I3(EXP_B[4]),
        .O(Mantissa_shift_A1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Mantissa_shift_A1_carry_i_5
       (.I0(EXP_A[4]),
        .I1(EXP_B[4]),
        .I2(EXP_A[7]),
        .I3(EXP_B[7]),
        .O(Mantissa_shift_A1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Mantissa_shift_A1_carry_i_6
       (.I0(EXP_A[5]),
        .I1(EXP_B[5]),
        .I2(EXP_B[4]),
        .I3(EXP_A[4]),
        .O(Mantissa_shift_A1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Mantissa_shift_A1_carry_i_7
       (.I0(EXP_A[2]),
        .I1(EXP_B[4]),
        .I2(EXP_A[3]),
        .I3(EXP_B[3]),
        .O(Mantissa_shift_A1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    Mantissa_shift_A1_carry_i_8
       (.I0(EXP_B[1]),
        .I1(EXP_A[1]),
        .I2(EXP_B[4]),
        .I3(EXP_A[0]),
        .O(Mantissa_shift_A1_carry_i_8_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry__0_i_1
       (.I0(EXP_B[7]),
        .I1(EXP_A[7]),
        .O(Mantissa_shift_B1_carry__0_i_1_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry__0_i_2
       (.I0(EXP_B[4]),
        .I1(EXP_A[4]),
        .O(Mantissa_shift_B1_carry__0_i_2_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry__0_i_3
       (.I0(EXP_A[5]),
        .I1(EXP_B[5]),
        .O(Mantissa_shift_B1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    Mantissa_shift_B1_carry__0_i_4
       (.I0(EXP_B[4]),
        .I1(EXP_A[4]),
        .O(Mantissa_shift_B1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__1_i_1
       (.I0(pipe_Mantissa_shift_A[23]),
        .I1(pipe_Mantissa_shift_B[23]),
        .I2(pipe_Mantissa_shift_A[22]),
        .I3(pipe_Mantissa_shift_B[22]),
        .O(S_result1_carry__1_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__1_i_2
       (.I0(pipe_Mantissa_shift_A[21]),
        .I1(pipe_Mantissa_shift_B[21]),
        .I2(pipe_Mantissa_shift_A[20]),
        .I3(pipe_Mantissa_shift_B[20]),
        .O(S_result1_carry__1_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__1_i_3
       (.I0(pipe_Mantissa_shift_A[19]),
        .I1(pipe_Mantissa_shift_B[19]),
        .I2(pipe_Mantissa_shift_A[18]),
        .I3(pipe_Mantissa_shift_B[18]),
        .O(S_result1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__1_i_4
       (.I0(pipe_Mantissa_shift_A[17]),
        .I1(pipe_Mantissa_shift_B[17]),
        .I2(pipe_Mantissa_shift_A[16]),
        .I3(pipe_Mantissa_shift_B[16]),
        .O(S_result1_carry__1_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__1_i_5
       (.I0(pipe_Mantissa_shift_B[23]),
        .I1(pipe_Mantissa_shift_A[23]),
        .I2(pipe_Mantissa_shift_B[22]),
        .I3(pipe_Mantissa_shift_A[22]),
        .O(S_result1_carry__1_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__1_i_6
       (.I0(pipe_Mantissa_shift_B[21]),
        .I1(pipe_Mantissa_shift_A[21]),
        .I2(pipe_Mantissa_shift_B[20]),
        .I3(pipe_Mantissa_shift_A[20]),
        .O(S_result1_carry__1_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__1_i_7
       (.I0(pipe_Mantissa_shift_B[19]),
        .I1(pipe_Mantissa_shift_A[19]),
        .I2(pipe_Mantissa_shift_B[18]),
        .I3(pipe_Mantissa_shift_A[18]),
        .O(S_result1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__1_i_8
       (.I0(pipe_Mantissa_shift_B[17]),
        .I1(pipe_Mantissa_shift_A[17]),
        .I2(pipe_Mantissa_shift_B[16]),
        .I3(pipe_Mantissa_shift_A[16]),
        .O(S_result1_carry__1_i_8_n_0));
  LUT6 #(
    .INIT(64'hDDD666D6FFFBBBFB)) 
    a0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(\SSDisplays_inst0/digit_value__3 [2]),
        .I2(fp_out[25]),
        .I3(a0_0),
        .I4(fp_out[29]),
        .I5(\SSDisplays_inst0/digit_value__3 [0]),
        .O(a0));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_1
       (.I0(fp_out[31]),
        .I1(a0_0),
        .I2(fp_out[27]),
        .O(\SSDisplays_inst0/digit_value__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_2
       (.I0(fp_out[30]),
        .I1(a0_0),
        .I2(fp_out[26]),
        .O(\SSDisplays_inst0/digit_value__3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a0_INST_0_i_3
       (.I0(fp_out[28]),
        .I1(a0_0),
        .I2(fp_out[24]),
        .O(\SSDisplays_inst0/digit_value__3 [0]));
  LUT6 #(
    .INIT(64'hDDD666D6FFFBBBFB)) 
    a1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(\SSDisplays_inst1/digit_value__3 [2]),
        .I2(fp_out[17]),
        .I3(a1_0),
        .I4(fp_out[21]),
        .I5(\SSDisplays_inst1/digit_value__3 [0]),
        .O(a1));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_1
       (.I0(fp_out[23]),
        .I1(a1_0),
        .I2(fp_out[19]),
        .O(\SSDisplays_inst1/digit_value__3 [3]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_2
       (.I0(fp_out[22]),
        .I1(a1_0),
        .I2(fp_out[18]),
        .O(\SSDisplays_inst1/digit_value__3 [2]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    a1_INST_0_i_3
       (.I0(fp_out[20]),
        .I1(a1_0),
        .I2(fp_out[16]),
        .O(\SSDisplays_inst1/digit_value__3 [0]));
  LUT6 #(
    .INIT(64'h494449997F777FFF)) 
    b0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(\SSDisplays_inst0/digit_value__3 [0]),
        .I2(fp_out[29]),
        .I3(a0_0),
        .I4(fp_out[25]),
        .I5(\SSDisplays_inst0/digit_value__3 [2]),
        .O(b0));
  LUT6 #(
    .INIT(64'h494449997F777FFF)) 
    b1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(\SSDisplays_inst1/digit_value__3 [0]),
        .I2(fp_out[21]),
        .I3(a1_0),
        .I4(fp_out[17]),
        .I5(\SSDisplays_inst1/digit_value__3 [2]),
        .O(b1));
  LUT6 #(
    .INIT(64'h7F677F7F7F676767)) 
    c0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(\SSDisplays_inst0/digit_value__3 [2]),
        .I2(\SSDisplays_inst0/digit_value__3 [1]),
        .I3(fp_out[28]),
        .I4(a0_0),
        .I5(fp_out[24]),
        .O(c0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    c0_INST_0_i_1
       (.I0(fp_out[29]),
        .I1(a0_0),
        .I2(fp_out[25]),
        .O(\SSDisplays_inst0/digit_value__3 [1]));
  LUT6 #(
    .INIT(64'h7F677F7F7F676767)) 
    c1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(\SSDisplays_inst1/digit_value__3 [2]),
        .I2(\SSDisplays_inst1/digit_value__3 [1]),
        .I3(fp_out[20]),
        .I4(a1_0),
        .I5(fp_out[16]),
        .O(c1));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    c1_INST_0_i_1
       (.I0(fp_out[21]),
        .I1(a1_0),
        .I2(fp_out[17]),
        .O(\SSDisplays_inst1/digit_value__3 [1]));
  Cortex_A9_fpadd_ip_0_0_compare_shift_module compare_shift_inst
       (.\B_reg[24] ({compare_shift_inst_n_25,Mantissa_shift_A}),
        .CO(compare_shift_inst_n_0),
        .D({compare_shift_inst_n_1,Mantissa_shift_B}),
        .DI({Mantissa_shift_A1_carry_i_1_n_0,Mantissa_shift_A1_carry_i_2_n_0,Mantissa_shift_A1_carry_i_3_n_0,Mantissa_shift_A1_carry_i_4_n_0}),
        .EXP_B({EXP_B[5:3],EXP_B[1]}),
        .Q({EXP_A[5:0],p_0_in[22:21],p_0_in[15:11],p_0_in[5:4],p_0_in[0]}),
        .S({Mantissa_shift_A1_carry_i_5_n_0,Mantissa_shift_A1_carry_i_6_n_0,Mantissa_shift_A1_carry_i_7_n_0,Mantissa_shift_A1_carry_i_8_n_0}),
        .p_0_in({p_0_in[20:16],p_0_in[8]}),
        .p_0_in1_in({p_0_in1_in[22:21],p_0_in1_in[19],p_0_in1_in[17:10],p_0_in1_in[4],p_0_in1_in[2]}),
        .\pipe_Mantissa_shift_A_reg[21] ({i__carry__0_i_1__0_n_0,i__carry__0_i_2__0_n_0,i__carry__0_i_3__0_n_0,i__carry__0_i_4__0_n_0}),
        .\pipe_Mantissa_shift_A_reg[22] (\pipe_Mantissa_shift_A[22]_i_2_n_0 ),
        .\pipe_Mantissa_shift_B_reg[21] ({Mantissa_shift_B1_carry__0_i_1_n_0,Mantissa_shift_B1_carry__0_i_2_n_0,Mantissa_shift_B1_carry__0_i_3_n_0,Mantissa_shift_B1_carry__0_i_4_n_0}),
        .\pipe_Mantissa_shift_B_reg[22] (\pipe_Mantissa_shift_B[22]_i_2_n_0 ),
        .\pipe_Mantissa_shift_B_reg[23] (\pipe_Mantissa_shift_B[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h333EEE3EDDDBBBDB)) 
    d0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(\SSDisplays_inst0/digit_value__3 [2]),
        .I2(fp_out[25]),
        .I3(a0_0),
        .I4(fp_out[29]),
        .I5(\SSDisplays_inst0/digit_value__3 [0]),
        .O(d0));
  LUT6 #(
    .INIT(64'h333EEE3EDDDBBBDB)) 
    d1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(\SSDisplays_inst1/digit_value__3 [2]),
        .I2(fp_out[17]),
        .I3(a1_0),
        .I4(fp_out[21]),
        .I5(\SSDisplays_inst1/digit_value__3 [0]),
        .O(d1));
  LUT6 #(
    .INIT(64'hAAAA8A80EFEAFFFF)) 
    e0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(fp_out[29]),
        .I2(a0_0),
        .I3(fp_out[25]),
        .I4(\SSDisplays_inst0/digit_value__3 [2]),
        .I5(\SSDisplays_inst0/digit_value__3 [0]),
        .O(e0));
  LUT6 #(
    .INIT(64'hAAAA8A80EFEAFFFF)) 
    e1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(fp_out[21]),
        .I2(a1_0),
        .I3(fp_out[17]),
        .I4(\SSDisplays_inst1/digit_value__3 [2]),
        .I5(\SSDisplays_inst1/digit_value__3 [0]),
        .O(e1));
  LUT6 #(
    .INIT(64'hAE6FAEAEAE6F6F6F)) 
    f0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(\SSDisplays_inst0/digit_value__3 [2]),
        .I2(\SSDisplays_inst0/digit_value__3 [0]),
        .I3(fp_out[29]),
        .I4(a0_0),
        .I5(fp_out[25]),
        .O(f0));
  LUT6 #(
    .INIT(64'hAE6FAEAEAE6F6F6F)) 
    f1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(\SSDisplays_inst1/digit_value__3 [2]),
        .I2(\SSDisplays_inst1/digit_value__3 [0]),
        .I3(fp_out[21]),
        .I4(a1_0),
        .I5(fp_out[17]),
        .O(f1));
  LUT6 #(
    .INIT(64'hABFBFFFFFD5DAAAA)) 
    g0_INST_0
       (.I0(\SSDisplays_inst0/digit_value__3 [3]),
        .I1(fp_out[24]),
        .I2(a0_0),
        .I3(fp_out[28]),
        .I4(\SSDisplays_inst0/digit_value__3 [2]),
        .I5(\SSDisplays_inst0/digit_value__3 [1]),
        .O(g0));
  LUT6 #(
    .INIT(64'hABFBFFFFFD5DAAAA)) 
    g1_INST_0
       (.I0(\SSDisplays_inst1/digit_value__3 [3]),
        .I1(fp_out[16]),
        .I2(a1_0),
        .I3(fp_out[20]),
        .I4(\SSDisplays_inst1/digit_value__3 [2]),
        .I5(\SSDisplays_inst1/digit_value__3 [1]),
        .O(g1));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_1__0
       (.I0(EXP_B[7]),
        .I1(EXP_A[7]),
        .O(i__carry__0_i_1__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_2__0
       (.I0(EXP_B[4]),
        .I1(EXP_A[4]),
        .O(i__carry__0_i_2__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_3__0
       (.I0(EXP_B[5]),
        .I1(EXP_A[5]),
        .O(i__carry__0_i_3__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4__0
       (.I0(EXP_B[4]),
        .I1(EXP_A[4]),
        .O(i__carry__0_i_4__0_n_0));
  Cortex_A9_fpadd_ip_0_0_mantissas_addition_module mantissas_addition_inst
       (.D(result),
        .DI({S_result1_carry__1_i_1_n_0,S_result1_carry__1_i_2_n_0,S_result1_carry__1_i_3_n_0,S_result1_carry__1_i_4_n_0}),
        .O(mantissas_addition_inst_n_24),
        .Q(pipe_Mantissa_shift_B),
        .S({S_result1_carry__1_i_5_n_0,S_result1_carry__1_i_6_n_0,S_result1_carry__1_i_7_n_0,S_result1_carry__1_i_8_n_0}),
        .data0(data0),
        .\out_reg[0] (\out[6]_i_13_n_0 ),
        .\out_reg[21]_i_3_0 (pipe_Mantissa_shift_A),
        .\out_reg[2] (\out[2]_i_4_n_0 ),
        .\out_reg[31] (\out[31]_i_2_n_0 ),
        .pipe_S_A(pipe_S_A),
        .pipe_S_A_reg(mantissas_addition_inst_n_25),
        .pipe_S_B(pipe_S_B));
  LUT5 #(
    .INIT(32'hFF202020)) 
    \out[0]_i_1 
       (.I0(post_normalization_inst_n_1),
        .I1(\out[1]_i_2_n_0 ),
        .I2(\out[7]_i_3_n_0 ),
        .I3(mantissas_addition_inst_n_25),
        .I4(data0[0]),
        .O(Mantissa_normal_result[0]));
  LUT5 #(
    .INIT(32'h888BBB8B)) 
    \out[16]_i_1 
       (.I0(data0[16]),
        .I1(mantissas_addition_inst_n_25),
        .I2(\out[16]_i_2_n_0 ),
        .I3(\out[7]_i_3_n_0 ),
        .I4(\out[17]_i_2_n_0 ),
        .O(Mantissa_normal_result[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \out[16]_i_2 
       (.I0(\out[22]_i_12_n_0 ),
        .I1(\out[18]_i_4_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[20]_i_3_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[16]_i_3_n_0 ),
        .O(\out[16]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDFFFDCFCDFFFD)) 
    \out[16]_i_3 
       (.I0(data0[0]),
        .I1(mantissas_addition_inst_n_25),
        .I2(post_normalization_inst_n_6),
        .I3(post_normalization_inst_n_3),
        .I4(data0[8]),
        .I5(\out[22]_i_14_n_0 ),
        .O(\out[16]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDD0DDD0D0000DD0D)) 
    \out[17]_i_1 
       (.I0(\out[17]_i_2_n_0 ),
        .I1(post_normalization_inst_n_2),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[18]_i_2_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[17]),
        .O(Mantissa_normal_result[17]));
  LUT6 #(
    .INIT(64'hA0A0CFC0AFAFCFC0)) 
    \out[17]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[19]_i_3_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[17]_i_3_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[21]_i_5_n_0 ),
        .O(\out[17]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF5F7F5F0F5F7F5FF)) 
    \out[17]_i_3 
       (.I0(data0[9]),
        .I1(\out[22]_i_14_n_0 ),
        .I2(mantissas_addition_inst_n_25),
        .I3(post_normalization_inst_n_6),
        .I4(post_normalization_inst_n_3),
        .I5(data0[1]),
        .O(\out[17]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hDDD0DDD00000DDD0)) 
    \out[18]_i_1 
       (.I0(\out[7]_i_3_n_0 ),
        .I1(\out[19]_i_2_n_0 ),
        .I2(post_normalization_inst_n_2),
        .I3(\out[18]_i_2_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[18]),
        .O(Mantissa_normal_result[18]));
  LUT6 #(
    .INIT(64'hC0CF5050C0CF5F5F)) 
    \out[18]_i_2 
       (.I0(\out[20]_i_3_n_0 ),
        .I1(\out[22]_i_10_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[22]_i_12_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[18]_i_4_n_0 ),
        .O(\out[18]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDFFFDCFCDFFFD)) 
    \out[18]_i_4 
       (.I0(data0[2]),
        .I1(mantissas_addition_inst_n_25),
        .I2(post_normalization_inst_n_6),
        .I3(post_normalization_inst_n_3),
        .I4(data0[10]),
        .I5(\out[22]_i_14_n_0 ),
        .O(\out[18]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \out[19]_i_1 
       (.I0(\out[19]_i_2_n_0 ),
        .I1(post_normalization_inst_n_2),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[20]_i_2_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[19]),
        .O(Mantissa_normal_result[19]));
  LUT6 #(
    .INIT(64'hAACCAACC0F000FFF)) 
    \out[19]_i_2 
       (.I0(\out[21]_i_4_n_0 ),
        .I1(\out[21]_i_5_n_0 ),
        .I2(\out[22]_i_7_n_0 ),
        .I3(post_normalization_inst_n_0),
        .I4(\out[19]_i_3_n_0 ),
        .I5(post_normalization_inst_n_1),
        .O(\out[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF5F7F5F0F5F7F5FF)) 
    \out[19]_i_3 
       (.I0(data0[11]),
        .I1(\out[22]_i_14_n_0 ),
        .I2(mantissas_addition_inst_n_25),
        .I3(post_normalization_inst_n_6),
        .I4(post_normalization_inst_n_3),
        .I5(data0[3]),
        .O(\out[19]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF04C404C404C4)) 
    \out[1]_i_1 
       (.I0(\out[1]_i_2_n_0 ),
        .I1(post_normalization_inst_n_1),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[1]_i_3_n_0 ),
        .I4(data0[1]),
        .I5(mantissas_addition_inst_n_25),
        .O(Mantissa_normal_result[1]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \out[1]_i_2 
       (.I0(post_normalization_inst_n_0),
        .I1(mantissas_addition_inst_n_24),
        .I2(\out[7]_i_9_n_0 ),
        .O(\out[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \out[1]_i_3 
       (.I0(post_normalization_inst_n_0),
        .I1(data0[0]),
        .I2(\out[7]_i_9_n_0 ),
        .O(\out[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \out[20]_i_1 
       (.I0(\out[20]_i_2_n_0 ),
        .I1(post_normalization_inst_n_2),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[21]_i_2_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[20]),
        .O(Mantissa_normal_result[20]));
  LUT6 #(
    .INIT(64'hAFAF303FA0A0303F)) 
    \out[20]_i_2 
       (.I0(\out[22]_i_11_n_0 ),
        .I1(\out[22]_i_12_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[20]_i_3_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[22]_i_10_n_0 ),
        .O(\out[20]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDFFFDCFCDFFFD)) 
    \out[20]_i_3 
       (.I0(data0[4]),
        .I1(mantissas_addition_inst_n_25),
        .I2(post_normalization_inst_n_6),
        .I3(post_normalization_inst_n_3),
        .I4(data0[12]),
        .I5(\out[22]_i_14_n_0 ),
        .O(\out[20]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEE0EEE0E0000EE0E)) 
    \out[21]_i_1 
       (.I0(\out[21]_i_2_n_0 ),
        .I1(post_normalization_inst_n_2),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[22]_i_5_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[21]),
        .O(Mantissa_normal_result[21]));
  LUT6 #(
    .INIT(64'hCFC05F5FCFC05050)) 
    \out[21]_i_2 
       (.I0(\out[22]_i_7_n_0 ),
        .I1(\out[22]_i_8_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[21]_i_4_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[21]_i_5_n_0 ),
        .O(\out[21]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h333333B8000000B8)) 
    \out[21]_i_4 
       (.I0(data0[9]),
        .I1(post_normalization_inst_n_13),
        .I2(data0[17]),
        .I3(\out[7]_i_15_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[1]),
        .O(\out[21]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3332000230320002)) 
    \out[21]_i_5 
       (.I0(data0[5]),
        .I1(mantissas_addition_inst_n_25),
        .I2(post_normalization_inst_n_6),
        .I3(post_normalization_inst_n_3),
        .I4(data0[13]),
        .I5(\out[22]_i_14_n_0 ),
        .O(\out[21]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FEFEFE00)) 
    \out[22]_i_1 
       (.I0(\out[22]_i_2_n_0 ),
        .I1(\out[22]_i_3_n_0 ),
        .I2(\out[22]_i_4_n_0 ),
        .I3(\out[22]_i_5_n_0 ),
        .I4(post_normalization_inst_n_2),
        .I5(\out[22]_i_6_n_0 ),
        .O(Mantissa_normal_result[22]));
  LUT6 #(
    .INIT(64'h303030BB30303088)) 
    \out[22]_i_10 
       (.I0(data0[8]),
        .I1(post_normalization_inst_n_13),
        .I2(data0[0]),
        .I3(mantissas_addition_inst_n_25),
        .I4(\out[7]_i_15_n_0 ),
        .I5(data0[16]),
        .O(\out[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h333333B8000000B8)) 
    \out[22]_i_11 
       (.I0(data0[10]),
        .I1(post_normalization_inst_n_13),
        .I2(data0[18]),
        .I3(\out[7]_i_15_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[2]),
        .O(\out[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hCCCDFFFDCFCDFFFD)) 
    \out[22]_i_12 
       (.I0(data0[6]),
        .I1(mantissas_addition_inst_n_25),
        .I2(post_normalization_inst_n_6),
        .I3(post_normalization_inst_n_3),
        .I4(data0[14]),
        .I5(\out[22]_i_14_n_0 ),
        .O(\out[22]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000000B)) 
    \out[22]_i_13 
       (.I0(post_normalization_inst_n_9),
        .I1(post_normalization_inst_n_26),
        .I2(post_normalization_inst_n_8),
        .I3(data0[21]),
        .I4(data0[22]),
        .I5(post_normalization_inst_n_12),
        .O(\out[22]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \out[22]_i_14 
       (.I0(data0[0]),
        .I1(mantissas_addition_inst_n_24),
        .I2(data0[2]),
        .I3(data0[1]),
        .I4(post_normalization_inst_n_5),
        .O(\out[22]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h5101FFFF)) 
    \out[22]_i_2 
       (.I0(post_normalization_inst_n_1),
        .I1(\out[22]_i_7_n_0 ),
        .I2(post_normalization_inst_n_0),
        .I3(\out[22]_i_8_n_0 ),
        .I4(\out[7]_i_3_n_0 ),
        .O(\out[22]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h33B800B8)) 
    \out[22]_i_3 
       (.I0(data0[13]),
        .I1(post_normalization_inst_n_13),
        .I2(data0[21]),
        .I3(\out[7]_i_11_n_0 ),
        .I4(data0[5]),
        .O(\out[22]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \out[22]_i_4 
       (.I0(data0[1]),
        .I1(\out[7]_i_11_n_0 ),
        .I2(data0[17]),
        .I3(post_normalization_inst_n_13),
        .I4(data0[9]),
        .I5(post_normalization_inst_n_0),
        .O(\out[22]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0C0C0AFA0CFCF)) 
    \out[22]_i_5 
       (.I0(\out[22]_i_9_n_0 ),
        .I1(\out[22]_i_10_n_0 ),
        .I2(post_normalization_inst_n_1),
        .I3(\out[22]_i_11_n_0 ),
        .I4(post_normalization_inst_n_0),
        .I5(\out[22]_i_12_n_0 ),
        .O(\out[22]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[22]_i_6 
       (.I0(mantissas_addition_inst_n_25),
        .I1(data0[22]),
        .O(\out[22]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF00FF1DFFFFFF1D)) 
    \out[22]_i_7 
       (.I0(data0[15]),
        .I1(\out[7]_i_15_n_0 ),
        .I2(mantissas_addition_inst_n_24),
        .I3(mantissas_addition_inst_n_25),
        .I4(\out[22]_i_13_n_0 ),
        .I5(data0[7]),
        .O(\out[22]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h333333B8000000B8)) 
    \out[22]_i_8 
       (.I0(data0[11]),
        .I1(post_normalization_inst_n_13),
        .I2(data0[19]),
        .I3(\out[7]_i_15_n_0 ),
        .I4(mantissas_addition_inst_n_25),
        .I5(data0[3]),
        .O(\out[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA0C0F0C00)) 
    \out[22]_i_9 
       (.I0(data0[12]),
        .I1(data0[4]),
        .I2(mantissas_addition_inst_n_25),
        .I3(\out[7]_i_15_n_0 ),
        .I4(data0[20]),
        .I5(\out[22]_i_13_n_0 ),
        .O(\out[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \out[2]_i_1 
       (.I0(\out[3]_i_2_n_0 ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(mantissas_addition_inst_n_25),
        .I3(data0[2]),
        .I4(\out[2]_i_3_n_0 ),
        .I5(post_normalization_inst_n_2),
        .O(Mantissa_normal_result[2]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \out[2]_i_3 
       (.I0(post_normalization_inst_n_1),
        .I1(\out[7]_i_9_n_0 ),
        .I2(data0[0]),
        .I3(post_normalization_inst_n_0),
        .O(\out[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \out[2]_i_4 
       (.I0(pipe_S_A),
        .I1(pipe_S_B),
        .O(\out[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[31]_i_15 
       (.I0(data0[13]),
        .I1(data0[15]),
        .I2(data0[6]),
        .I3(data0[5]),
        .I4(data0[20]),
        .I5(data0[19]),
        .O(\out[31]_i_15_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \out[31]_i_16 
       (.I0(data0[1]),
        .I1(data0[0]),
        .I2(data0[2]),
        .I3(data0[4]),
        .O(\out[31]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \out[31]_i_2 
       (.I0(\out[31]_i_3_n_0 ),
        .I1(data0[12]),
        .I2(mantissas_addition_inst_n_24),
        .I3(data0[3]),
        .I4(post_normalization_inst_n_26),
        .I5(\out[31]_i_6_n_0 ),
        .O(\out[31]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[31]_i_3 
       (.I0(data0[21]),
        .I1(data0[22]),
        .I2(data0[17]),
        .I3(data0[18]),
        .O(\out[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \out[31]_i_6 
       (.I0(\out[31]_i_15_n_0 ),
        .I1(\out[31]_i_16_n_0 ),
        .I2(data0[11]),
        .I3(data0[14]),
        .I4(data0[16]),
        .I5(mantissas_addition_inst_n_25),
        .O(\out[31]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF11F111F111F1)) 
    \out[3]_i_1 
       (.I0(post_normalization_inst_n_2),
        .I1(\out[3]_i_2_n_0 ),
        .I2(\out[7]_i_3_n_0 ),
        .I3(\out[4]_i_2_n_0 ),
        .I4(data0[3]),
        .I5(mantissas_addition_inst_n_25),
        .O(Mantissa_normal_result[3]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hFFFF4F7F)) 
    \out[3]_i_2 
       (.I0(data0[1]),
        .I1(post_normalization_inst_n_1),
        .I2(post_normalization_inst_n_0),
        .I3(mantissas_addition_inst_n_24),
        .I4(\out[7]_i_9_n_0 ),
        .O(\out[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444F444FFFF)) 
    \out[4]_i_1 
       (.I0(\out[5]_i_2_n_0 ),
        .I1(\out[7]_i_3_n_0 ),
        .I2(data0[4]),
        .I3(mantissas_addition_inst_n_25),
        .I4(post_normalization_inst_n_2),
        .I5(\out[4]_i_2_n_0 ),
        .O(Mantissa_normal_result[4]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT5 #(
    .INIT(32'hFFFF4F7F)) 
    \out[4]_i_2 
       (.I0(data0[2]),
        .I1(post_normalization_inst_n_1),
        .I2(post_normalization_inst_n_0),
        .I3(data0[0]),
        .I4(\out[7]_i_9_n_0 ),
        .O(\out[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hD5C0D5FF)) 
    \out[5]_i_1 
       (.I0(\out[6]_i_2_n_0 ),
        .I1(mantissas_addition_inst_n_25),
        .I2(data0[5]),
        .I3(\out[7]_i_3_n_0 ),
        .I4(\out[5]_i_2_n_0 ),
        .O(Mantissa_normal_result[5]));
  LUT6 #(
    .INIT(64'hFFFFFFFF503F5F3F)) 
    \out[5]_i_2 
       (.I0(data0[3]),
        .I1(mantissas_addition_inst_n_24),
        .I2(post_normalization_inst_n_1),
        .I3(post_normalization_inst_n_0),
        .I4(data0[1]),
        .I5(\out[7]_i_9_n_0 ),
        .O(\out[5]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFF1B1B1B)) 
    \out[6]_i_1 
       (.I0(\out[7]_i_3_n_0 ),
        .I1(\out[6]_i_2_n_0 ),
        .I2(\out[7]_i_6_n_0 ),
        .I3(data0[6]),
        .I4(mantissas_addition_inst_n_25),
        .O(Mantissa_normal_result[6]));
  LUT2 #(
    .INIT(4'h6)) 
    \out[6]_i_13 
       (.I0(pipe_S_A),
        .I1(pipe_S_B),
        .O(\out[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF503FFFFF5F3F)) 
    \out[6]_i_2 
       (.I0(data0[4]),
        .I1(data0[0]),
        .I2(post_normalization_inst_n_1),
        .I3(post_normalization_inst_n_0),
        .I4(\out[7]_i_9_n_0 ),
        .I5(data0[2]),
        .O(\out[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h000000005D5D005D)) 
    \out[7]_i_1 
       (.I0(\out[7]_i_3_n_0 ),
        .I1(\out[7]_i_4_n_0 ),
        .I2(\out[7]_i_5_n_0 ),
        .I3(\out[7]_i_6_n_0 ),
        .I4(post_normalization_inst_n_2),
        .I5(\out[7]_i_8_n_0 ),
        .O(Mantissa_normal_result[7]));
  LUT6 #(
    .INIT(64'h00000000FFFFFFFE)) 
    \out[7]_i_10 
       (.I0(data0[19]),
        .I1(data0[20]),
        .I2(data0[15]),
        .I3(data0[16]),
        .I4(post_normalization_inst_n_11),
        .I5(post_normalization_inst_n_10),
        .O(\out[7]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hBABBAAAA)) 
    \out[7]_i_11 
       (.I0(mantissas_addition_inst_n_25),
        .I1(post_normalization_inst_n_6),
        .I2(post_normalization_inst_n_5),
        .I3(post_normalization_inst_n_4),
        .I4(post_normalization_inst_n_3),
        .O(\out[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFCDFFFFFFFD)) 
    \out[7]_i_12 
       (.I0(data0[3]),
        .I1(mantissas_addition_inst_n_25),
        .I2(\out[7]_i_14_n_0 ),
        .I3(post_normalization_inst_n_13),
        .I4(\out[7]_i_15_n_0 ),
        .I5(mantissas_addition_inst_n_24),
        .O(\out[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFF001F)) 
    \out[7]_i_14 
       (.I0(post_normalization_inst_n_4),
        .I1(post_normalization_inst_n_5),
        .I2(post_normalization_inst_n_26),
        .I3(post_normalization_inst_n_9),
        .I4(post_normalization_inst_n_8),
        .I5(post_normalization_inst_n_7),
        .O(\out[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004404)) 
    \out[7]_i_15 
       (.I0(post_normalization_inst_n_9),
        .I1(post_normalization_inst_n_26),
        .I2(post_normalization_inst_n_4),
        .I3(post_normalization_inst_n_5),
        .I4(post_normalization_inst_n_7),
        .I5(post_normalization_inst_n_8),
        .O(\out[7]_i_15_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \out[7]_i_2 
       (.I0(s00_axi_aresetn),
        .O(AS));
  LUT6 #(
    .INIT(64'h4544454445454544)) 
    \out[7]_i_3 
       (.I0(mantissas_addition_inst_n_25),
        .I1(data0[22]),
        .I2(post_normalization_inst_n_17),
        .I3(post_normalization_inst_n_16),
        .I4(post_normalization_inst_n_15),
        .I5(post_normalization_inst_n_14),
        .O(\out[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT5 #(
    .INIT(32'hAAFEAABA)) 
    \out[7]_i_4 
       (.I0(post_normalization_inst_n_1),
        .I1(post_normalization_inst_n_0),
        .I2(data0[0]),
        .I3(\out[7]_i_9_n_0 ),
        .I4(data0[4]),
        .O(\out[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h5454545555555455)) 
    \out[7]_i_5 
       (.I0(\out[7]_i_10_n_0 ),
        .I1(\out[7]_i_11_n_0 ),
        .I2(post_normalization_inst_n_13),
        .I3(data0[2]),
        .I4(post_normalization_inst_n_0),
        .I5(data0[6]),
        .O(\out[7]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hF1FDFFFFF1FD0000)) 
    \out[7]_i_6 
       (.I0(data0[1]),
        .I1(post_normalization_inst_n_0),
        .I2(\out[7]_i_9_n_0 ),
        .I3(data0[5]),
        .I4(post_normalization_inst_n_1),
        .I5(\out[7]_i_12_n_0 ),
        .O(\out[7]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \out[7]_i_8 
       (.I0(mantissas_addition_inst_n_25),
        .I1(data0[7]),
        .O(\out[7]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hFFFF00DF)) 
    \out[7]_i_9 
       (.I0(post_normalization_inst_n_4),
        .I1(post_normalization_inst_n_5),
        .I2(post_normalization_inst_n_3),
        .I3(post_normalization_inst_n_6),
        .I4(mantissas_addition_inst_n_25),
        .O(\out[7]_i_9_n_0 ));
  FDCE \out_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[0]),
        .Q(leds[0]));
  FDCE \out_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[16]),
        .Q(fp_out[16]));
  FDCE \out_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[17]),
        .Q(fp_out[17]));
  FDCE \out_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[18]),
        .Q(fp_out[18]));
  FDCE \out_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[19]),
        .Q(fp_out[19]));
  FDCE \out_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[1]),
        .Q(leds[1]));
  FDCE \out_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[20]),
        .Q(fp_out[20]));
  FDCE \out_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[21]),
        .Q(fp_out[21]));
  FDCE \out_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[22]),
        .Q(fp_out[22]));
  FDCE \out_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[0]),
        .Q(fp_out[23]));
  FDCE \out_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[1]),
        .Q(fp_out[24]));
  FDCE \out_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[2]),
        .Q(fp_out[25]));
  FDCE \out_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[3]),
        .Q(fp_out[26]));
  FDCE \out_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[4]),
        .Q(fp_out[27]));
  FDCE \out_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[5]),
        .Q(fp_out[28]));
  FDCE \out_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[6]),
        .Q(fp_out[29]));
  FDCE \out_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[2]),
        .Q(leds[2]));
  FDCE \out_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_normal_result[7]),
        .Q(fp_out[30]));
  FDCE \out_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(result),
        .Q(fp_out[31]));
  FDCE \out_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[3]),
        .Q(leds[3]));
  FDCE \out_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[4]),
        .Q(leds[4]));
  FDCE \out_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[5]),
        .Q(leds[5]));
  FDCE \out_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[6]),
        .Q(leds[6]));
  FDCE \out_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_normal_result[7]),
        .Q(leds[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[0]_i_1 
       (.I0(EXP_A[0]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[4]),
        .O(EXP_result[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[1]_i_1 
       (.I0(EXP_A[1]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[1]),
        .O(EXP_result[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[2]_i_1 
       (.I0(EXP_A[2]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[4]),
        .O(EXP_result[2]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[3]_i_1 
       (.I0(EXP_A[3]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[3]),
        .O(EXP_result[3]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[4]_i_1 
       (.I0(EXP_A[4]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[4]),
        .O(EXP_result[4]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[5]_i_1 
       (.I0(EXP_A[5]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[5]),
        .O(EXP_result[5]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \pipe_EXP_result[7]_i_1 
       (.I0(EXP_A[7]),
        .I1(compare_shift_inst_n_0),
        .I2(EXP_B[7]),
        .O(EXP_result[7]));
  FDCE \pipe_EXP_result_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[0]),
        .Q(pipe_EXP_result[0]));
  FDCE \pipe_EXP_result_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[1]),
        .Q(pipe_EXP_result[1]));
  FDCE \pipe_EXP_result_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[2]),
        .Q(pipe_EXP_result[2]));
  FDCE \pipe_EXP_result_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[3]),
        .Q(pipe_EXP_result[3]));
  FDCE \pipe_EXP_result_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[4]),
        .Q(pipe_EXP_result[4]));
  FDCE \pipe_EXP_result_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[5]),
        .Q(pipe_EXP_result[5]));
  FDCE \pipe_EXP_result_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(EXP_result[7]),
        .Q(pipe_EXP_result[7]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \pipe_Mantissa_shift_A[22]_i_2 
       (.I0(compare_shift_inst_n_0),
        .I1(\pipe_Mantissa_shift_B[23]_i_2_n_0 ),
        .O(\pipe_Mantissa_shift_A[22]_i_2_n_0 ));
  FDCE \pipe_Mantissa_shift_A_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[0]),
        .Q(pipe_Mantissa_shift_A[0]));
  FDCE \pipe_Mantissa_shift_A_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[10]),
        .Q(pipe_Mantissa_shift_A[10]));
  FDCE \pipe_Mantissa_shift_A_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[11]),
        .Q(pipe_Mantissa_shift_A[11]));
  FDCE \pipe_Mantissa_shift_A_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[12]),
        .Q(pipe_Mantissa_shift_A[12]));
  FDCE \pipe_Mantissa_shift_A_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[13]),
        .Q(pipe_Mantissa_shift_A[13]));
  FDCE \pipe_Mantissa_shift_A_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[14]),
        .Q(pipe_Mantissa_shift_A[14]));
  FDCE \pipe_Mantissa_shift_A_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[15]),
        .Q(pipe_Mantissa_shift_A[15]));
  FDCE \pipe_Mantissa_shift_A_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[16]),
        .Q(pipe_Mantissa_shift_A[16]));
  FDCE \pipe_Mantissa_shift_A_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[17]),
        .Q(pipe_Mantissa_shift_A[17]));
  FDCE \pipe_Mantissa_shift_A_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[18]),
        .Q(pipe_Mantissa_shift_A[18]));
  FDCE \pipe_Mantissa_shift_A_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[19]),
        .Q(pipe_Mantissa_shift_A[19]));
  FDCE \pipe_Mantissa_shift_A_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[1]),
        .Q(pipe_Mantissa_shift_A[1]));
  FDCE \pipe_Mantissa_shift_A_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[20]),
        .Q(pipe_Mantissa_shift_A[20]));
  FDCE \pipe_Mantissa_shift_A_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[21]),
        .Q(pipe_Mantissa_shift_A[21]));
  FDCE \pipe_Mantissa_shift_A_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[22]),
        .Q(pipe_Mantissa_shift_A[22]));
  FDCE \pipe_Mantissa_shift_A_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(compare_shift_inst_n_25),
        .Q(pipe_Mantissa_shift_A[23]));
  FDCE \pipe_Mantissa_shift_A_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[2]),
        .Q(pipe_Mantissa_shift_A[2]));
  FDCE \pipe_Mantissa_shift_A_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[3]),
        .Q(pipe_Mantissa_shift_A[3]));
  FDCE \pipe_Mantissa_shift_A_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[4]),
        .Q(pipe_Mantissa_shift_A[4]));
  FDCE \pipe_Mantissa_shift_A_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[5]),
        .Q(pipe_Mantissa_shift_A[5]));
  FDCE \pipe_Mantissa_shift_A_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[6]),
        .Q(pipe_Mantissa_shift_A[6]));
  FDCE \pipe_Mantissa_shift_A_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[7]),
        .Q(pipe_Mantissa_shift_A[7]));
  FDCE \pipe_Mantissa_shift_A_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[8]),
        .Q(pipe_Mantissa_shift_A[8]));
  FDCE \pipe_Mantissa_shift_A_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_A[9]),
        .Q(pipe_Mantissa_shift_A[9]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \pipe_Mantissa_shift_B[22]_i_2 
       (.I0(\pipe_Mantissa_shift_B[23]_i_2_n_0 ),
        .I1(compare_shift_inst_n_0),
        .O(\pipe_Mantissa_shift_B[22]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000041000041)) 
    \pipe_Mantissa_shift_B[23]_i_2 
       (.I0(\pipe_Mantissa_shift_B[23]_i_4_n_0 ),
        .I1(EXP_B[1]),
        .I2(EXP_A[1]),
        .I3(EXP_B[4]),
        .I4(EXP_A[0]),
        .I5(\pipe_Mantissa_shift_B[23]_i_5_n_0 ),
        .O(\pipe_Mantissa_shift_B[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'h6FF6)) 
    \pipe_Mantissa_shift_B[23]_i_4 
       (.I0(EXP_B[7]),
        .I1(EXP_A[7]),
        .I2(EXP_B[4]),
        .I3(EXP_A[4]),
        .O(\pipe_Mantissa_shift_B[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hDFFDFFFFDFFDEFFE)) 
    \pipe_Mantissa_shift_B[23]_i_5 
       (.I0(EXP_A[2]),
        .I1(\pipe_Mantissa_shift_B[23]_i_7_n_0 ),
        .I2(EXP_B[5]),
        .I3(EXP_A[5]),
        .I4(EXP_B[4]),
        .I5(EXP_A[4]),
        .O(\pipe_Mantissa_shift_B[23]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \pipe_Mantissa_shift_B[23]_i_7 
       (.I0(EXP_A[3]),
        .I1(EXP_B[3]),
        .O(\pipe_Mantissa_shift_B[23]_i_7_n_0 ));
  FDCE \pipe_Mantissa_shift_B_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[0]),
        .Q(pipe_Mantissa_shift_B[0]));
  FDCE \pipe_Mantissa_shift_B_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[10]),
        .Q(pipe_Mantissa_shift_B[10]));
  FDCE \pipe_Mantissa_shift_B_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[11]),
        .Q(pipe_Mantissa_shift_B[11]));
  FDCE \pipe_Mantissa_shift_B_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[12]),
        .Q(pipe_Mantissa_shift_B[12]));
  FDCE \pipe_Mantissa_shift_B_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[13]),
        .Q(pipe_Mantissa_shift_B[13]));
  FDCE \pipe_Mantissa_shift_B_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[14]),
        .Q(pipe_Mantissa_shift_B[14]));
  FDCE \pipe_Mantissa_shift_B_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[15]),
        .Q(pipe_Mantissa_shift_B[15]));
  FDCE \pipe_Mantissa_shift_B_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[16]),
        .Q(pipe_Mantissa_shift_B[16]));
  FDCE \pipe_Mantissa_shift_B_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[17]),
        .Q(pipe_Mantissa_shift_B[17]));
  FDCE \pipe_Mantissa_shift_B_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[18]),
        .Q(pipe_Mantissa_shift_B[18]));
  FDCE \pipe_Mantissa_shift_B_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[19]),
        .Q(pipe_Mantissa_shift_B[19]));
  FDCE \pipe_Mantissa_shift_B_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[1]),
        .Q(pipe_Mantissa_shift_B[1]));
  FDCE \pipe_Mantissa_shift_B_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[20]),
        .Q(pipe_Mantissa_shift_B[20]));
  FDCE \pipe_Mantissa_shift_B_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[21]),
        .Q(pipe_Mantissa_shift_B[21]));
  FDCE \pipe_Mantissa_shift_B_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[22]),
        .Q(pipe_Mantissa_shift_B[22]));
  FDCE \pipe_Mantissa_shift_B_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(compare_shift_inst_n_1),
        .Q(pipe_Mantissa_shift_B[23]));
  FDCE \pipe_Mantissa_shift_B_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[2]),
        .Q(pipe_Mantissa_shift_B[2]));
  FDCE \pipe_Mantissa_shift_B_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[3]),
        .Q(pipe_Mantissa_shift_B[3]));
  FDCE \pipe_Mantissa_shift_B_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[4]),
        .Q(pipe_Mantissa_shift_B[4]));
  FDCE \pipe_Mantissa_shift_B_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[5]),
        .Q(pipe_Mantissa_shift_B[5]));
  FDCE \pipe_Mantissa_shift_B_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[6]),
        .Q(pipe_Mantissa_shift_B[6]));
  FDCE \pipe_Mantissa_shift_B_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[7]),
        .Q(pipe_Mantissa_shift_B[7]));
  FDCE \pipe_Mantissa_shift_B_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[8]),
        .Q(pipe_Mantissa_shift_B[8]));
  FDCE \pipe_Mantissa_shift_B_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(Mantissa_shift_B[9]),
        .Q(pipe_Mantissa_shift_B[9]));
  FDCE pipe_S_A_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(S_A),
        .Q(pipe_S_A));
  FDCE pipe_S_B_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .CLR(AS),
        .D(S_B),
        .Q(pipe_S_B));
  Cortex_A9_fpadd_ip_0_0_post_normalization_module post_normalization_inst
       (.D(EXP_normal_result),
        .O(mantissas_addition_inst_n_24),
        .Q({pipe_EXP_result[7],pipe_EXP_result[5:0]}),
        .data0(data0),
        .i__carry_i_11_0(post_normalization_inst_n_6),
        .i__carry_i_12_0(post_normalization_inst_n_13),
        .i__carry_i_13_0(post_normalization_inst_n_0),
        .i__carry_i_16_0(post_normalization_inst_n_1),
        .\out_reg[0] (mantissas_addition_inst_n_25),
        .\out_reg[18]_i_3 (post_normalization_inst_n_8),
        .\out_reg[18]_i_3_0 (post_normalization_inst_n_10),
        .\out_reg[18]_i_3_1 (post_normalization_inst_n_16),
        .\out_reg[21]_i_3 (post_normalization_inst_n_7),
        .\out_reg[21]_i_3_0 (post_normalization_inst_n_12),
        .\out_reg[21]_i_3_1 (post_normalization_inst_n_17),
        .\out_reg[23] (\out[31]_i_2_n_0 ),
        .\out_reg[2]_i_2 (post_normalization_inst_n_4),
        .\out_reg[31]_i_4 (post_normalization_inst_n_3),
        .\out_reg[31]_i_4_0 (post_normalization_inst_n_9),
        .\out_reg[31]_i_4_1 (post_normalization_inst_n_11),
        .\out_reg[6]_i_3 (post_normalization_inst_n_5),
        .\out_reg[6]_i_3_0 (post_normalization_inst_n_15),
        .\out_reg[6]_i_4 (post_normalization_inst_n_2),
        .\out_reg[7]_i_13 (post_normalization_inst_n_14),
        .\out_reg[7]_i_13_0 (post_normalization_inst_n_26));
endmodule

(* ORIG_REF_NAME = "fpadd_system" *) 
module Cortex_A9_fpadd_ip_0_0_fpadd_system
   (digit_sel_reg,
    SR,
    digit_sel_reg_0,
    e0,
    c0,
    d0,
    g0,
    f0,
    b0,
    a0,
    e1,
    c1,
    d1,
    g1,
    f1,
    b1,
    a1,
    leds,
    s00_axi_aclk,
    Q,
    s00_axi_aresetn);
  output digit_sel_reg;
  output [0:0]SR;
  output digit_sel_reg_0;
  output e0;
  output c0;
  output d0;
  output g0;
  output f0;
  output b0;
  output a0;
  output e1;
  output c1;
  output d1;
  output g1;
  output f1;
  output b1;
  output a1;
  output [7:0]leds;
  input s00_axi_aclk;
  input [0:0]Q;
  input s00_axi_aresetn;

  wire DataMemory_inst_n_0;
  wire DataMemory_inst_n_1;
  wire DataMemory_inst_n_14;
  wire DataMemory_inst_n_2;
  wire DataMemory_inst_n_21;
  wire DataMemory_inst_n_39;
  wire [0:0]Q;
  wire [0:0]SR;
  wire a0;
  wire a1;
  wire b0;
  wire b1;
  wire c0;
  wire c1;
  wire [1:0]current_state;
  wire d0;
  wire d1;
  wire digit_sel_reg;
  wire digit_sel_reg_0;
  wire e0;
  wire e1;
  wire f0;
  wire f1;
  wire g0;
  wire g1;
  wire [7:0]leds;
  wire [31:0]numA;
  wire [31:4]numB;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;

  Cortex_A9_fpadd_ip_0_0_DataMemory DataMemory_inst
       (.AS(SR),
        .D({numA[31:30],numA[28:21],numA[15],DataMemory_inst_n_14,numA[13:11],numA[5:4],numA[0]}),
        .current_state(current_state),
        .numA({numA[18],numA[16],numA[8]}),
        .numB({numB[31],numB[28:26],numB[24],numB[21],numB[19],numB[15:10],numB[4]}),
        .\pointer_reg[0]_0 (DataMemory_inst_n_0),
        .\pointer_reg[2]_0 (DataMemory_inst_n_1),
        .\pointer_reg[2]_1 (DataMemory_inst_n_39),
        .\pointer_reg[3]_0 (DataMemory_inst_n_2),
        .\pointer_reg[3]_1 (DataMemory_inst_n_21),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  Cortex_A9_fpadd_ip_0_0_SSDisplays_module SSDisplays_inst0
       (.AS(SR),
        .digit_sel_reg_0(digit_sel_reg),
        .s00_axi_aclk(s00_axi_aclk));
  Cortex_A9_fpadd_ip_0_0_SSDisplays_module_0 SSDisplays_inst1
       (.AS(SR),
        .digit_sel_reg_0(digit_sel_reg_0),
        .s00_axi_aclk(s00_axi_aclk));
  Cortex_A9_fpadd_ip_0_0_debounce_module debounce_inst
       (.AS(SR),
        .Q(Q),
        .current_state(current_state),
        .s00_axi_aclk(s00_axi_aclk));
  Cortex_A9_fpadd_ip_0_0_fpadd_pipelined fpadd_pipelined_inst
       (.AS(SR),
        .\A_reg[17]_0 (DataMemory_inst_n_2),
        .\B_reg[16]_0 (DataMemory_inst_n_39),
        .\B_reg[22]_0 (DataMemory_inst_n_1),
        .\B_reg[2]_0 (DataMemory_inst_n_0),
        .\B_reg[30]_0 (DataMemory_inst_n_21),
        .D(DataMemory_inst_n_14),
        .a0(a0),
        .a0_0(digit_sel_reg),
        .a1(a1),
        .a1_0(digit_sel_reg_0),
        .b0(b0),
        .b1(b1),
        .c0(c0),
        .c1(c1),
        .d0(d0),
        .d1(d1),
        .e0(e0),
        .e1(e1),
        .f0(f0),
        .f1(f1),
        .g0(g0),
        .g1(g1),
        .leds(leds),
        .numA({numA[31:30],numA[28:21],numA[18],numA[16:15],numA[13:11],numA[8],numA[5:4],numA[0]}),
        .numB({numB[31],numB[28:26],numB[24],numB[21],numB[19],numB[15:10],numB[4]}),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
endmodule

(* ORIG_REF_NAME = "mantissas_addition_module" *) 
module Cortex_A9_fpadd_ip_0_0_mantissas_addition_module
   (D,
    data0,
    O,
    pipe_S_A_reg,
    DI,
    S,
    pipe_S_B,
    pipe_S_A,
    \out_reg[31] ,
    Q,
    \out_reg[21]_i_3_0 ,
    \out_reg[2] ,
    \out_reg[0] );
  output [0:0]D;
  output [22:0]data0;
  output [0:0]O;
  output [0:0]pipe_S_A_reg;
  input [3:0]DI;
  input [3:0]S;
  input pipe_S_B;
  input pipe_S_A;
  input \out_reg[31] ;
  input [23:0]Q;
  input [23:0]\out_reg[21]_i_3_0 ;
  input \out_reg[2] ;
  input [0:0]\out_reg[0] ;

  wire [0:0]D;
  wire [3:0]DI;
  wire [0:0]O;
  wire [23:0]Q;
  wire [3:0]S;
  wire S_result1_carry__0_i_1_n_0;
  wire S_result1_carry__0_i_2_n_0;
  wire S_result1_carry__0_i_3_n_0;
  wire S_result1_carry__0_i_4_n_0;
  wire S_result1_carry__0_i_5_n_0;
  wire S_result1_carry__0_i_6_n_0;
  wire S_result1_carry__0_i_7_n_0;
  wire S_result1_carry__0_i_8_n_0;
  wire S_result1_carry__0_n_0;
  wire S_result1_carry__0_n_1;
  wire S_result1_carry__0_n_2;
  wire S_result1_carry__0_n_3;
  wire S_result1_carry__1_n_0;
  wire S_result1_carry__1_n_1;
  wire S_result1_carry__1_n_2;
  wire S_result1_carry__1_n_3;
  wire S_result1_carry_i_1_n_0;
  wire S_result1_carry_i_2_n_0;
  wire S_result1_carry_i_3_n_0;
  wire S_result1_carry_i_4_n_0;
  wire S_result1_carry_i_5_n_0;
  wire S_result1_carry_i_6_n_0;
  wire S_result1_carry_i_7_n_0;
  wire S_result1_carry_i_8_n_0;
  wire S_result1_carry_n_0;
  wire S_result1_carry_n_1;
  wire S_result1_carry_n_2;
  wire S_result1_carry_n_3;
  wire [22:0]data0;
  wire \out[18]_i_10_n_0 ;
  wire \out[18]_i_11_n_0 ;
  wire \out[18]_i_12_n_0 ;
  wire \out[18]_i_9_n_0 ;
  wire \out[21]_i_10_n_0 ;
  wire \out[21]_i_11_n_0 ;
  wire \out[21]_i_12_n_0 ;
  wire \out[21]_i_13_n_0 ;
  wire \out[2]_i_10_n_0 ;
  wire \out[2]_i_11_n_0 ;
  wire \out[2]_i_12_n_0 ;
  wire \out[2]_i_9_n_0 ;
  wire \out[31]_i_11_n_0 ;
  wire \out[31]_i_12_n_0 ;
  wire \out[31]_i_13_n_0 ;
  wire \out[31]_i_14_n_0 ;
  wire \out[6]_i_10_n_0 ;
  wire \out[6]_i_11_n_0 ;
  wire \out[6]_i_12_n_0 ;
  wire \out[6]_i_9_n_0 ;
  wire \out[7]_i_20_n_0 ;
  wire \out[7]_i_21_n_0 ;
  wire \out[7]_i_22_n_0 ;
  wire \out[7]_i_23_n_0 ;
  wire [0:0]\out_reg[0] ;
  wire \out_reg[18]_i_3_n_0 ;
  wire \out_reg[18]_i_3_n_1 ;
  wire \out_reg[18]_i_3_n_2 ;
  wire \out_reg[18]_i_3_n_3 ;
  wire [23:0]\out_reg[21]_i_3_0 ;
  wire \out_reg[21]_i_3_n_0 ;
  wire \out_reg[21]_i_3_n_1 ;
  wire \out_reg[21]_i_3_n_2 ;
  wire \out_reg[21]_i_3_n_3 ;
  wire \out_reg[2] ;
  wire \out_reg[2]_i_2_n_0 ;
  wire \out_reg[2]_i_2_n_1 ;
  wire \out_reg[2]_i_2_n_2 ;
  wire \out_reg[2]_i_2_n_3 ;
  wire \out_reg[31] ;
  wire \out_reg[31]_i_4_n_0 ;
  wire \out_reg[31]_i_4_n_1 ;
  wire \out_reg[31]_i_4_n_2 ;
  wire \out_reg[31]_i_4_n_3 ;
  wire \out_reg[6]_i_3_n_0 ;
  wire \out_reg[6]_i_3_n_1 ;
  wire \out_reg[6]_i_3_n_2 ;
  wire \out_reg[6]_i_3_n_3 ;
  wire \out_reg[7]_i_13_n_0 ;
  wire \out_reg[7]_i_13_n_1 ;
  wire \out_reg[7]_i_13_n_2 ;
  wire \out_reg[7]_i_13_n_3 ;
  wire [23:0]p_2_in;
  wire pipe_S_A;
  wire [0:0]pipe_S_A_reg;
  wire pipe_S_B;
  wire [3:0]NLW_S_result1_carry_O_UNCONNECTED;
  wire [3:0]NLW_S_result1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_S_result1_carry__1_O_UNCONNECTED;
  wire [3:0]\NLW_out_reg[6]_i_4_CO_UNCONNECTED ;
  wire [3:1]\NLW_out_reg[6]_i_4_O_UNCONNECTED ;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_result1_carry
       (.CI(1'b0),
        .CO({S_result1_carry_n_0,S_result1_carry_n_1,S_result1_carry_n_2,S_result1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({S_result1_carry_i_1_n_0,S_result1_carry_i_2_n_0,S_result1_carry_i_3_n_0,S_result1_carry_i_4_n_0}),
        .O(NLW_S_result1_carry_O_UNCONNECTED[3:0]),
        .S({S_result1_carry_i_5_n_0,S_result1_carry_i_6_n_0,S_result1_carry_i_7_n_0,S_result1_carry_i_8_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_result1_carry__0
       (.CI(S_result1_carry_n_0),
        .CO({S_result1_carry__0_n_0,S_result1_carry__0_n_1,S_result1_carry__0_n_2,S_result1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({S_result1_carry__0_i_1_n_0,S_result1_carry__0_i_2_n_0,S_result1_carry__0_i_3_n_0,S_result1_carry__0_i_4_n_0}),
        .O(NLW_S_result1_carry__0_O_UNCONNECTED[3:0]),
        .S({S_result1_carry__0_i_5_n_0,S_result1_carry__0_i_6_n_0,S_result1_carry__0_i_7_n_0,S_result1_carry__0_i_8_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__0_i_1
       (.I0(\out_reg[21]_i_3_0 [15]),
        .I1(Q[15]),
        .I2(\out_reg[21]_i_3_0 [14]),
        .I3(Q[14]),
        .O(S_result1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__0_i_2
       (.I0(\out_reg[21]_i_3_0 [13]),
        .I1(Q[13]),
        .I2(\out_reg[21]_i_3_0 [12]),
        .I3(Q[12]),
        .O(S_result1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__0_i_3
       (.I0(\out_reg[21]_i_3_0 [11]),
        .I1(Q[11]),
        .I2(\out_reg[21]_i_3_0 [10]),
        .I3(Q[10]),
        .O(S_result1_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry__0_i_4
       (.I0(\out_reg[21]_i_3_0 [9]),
        .I1(Q[9]),
        .I2(\out_reg[21]_i_3_0 [8]),
        .I3(Q[8]),
        .O(S_result1_carry__0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__0_i_5
       (.I0(Q[15]),
        .I1(\out_reg[21]_i_3_0 [15]),
        .I2(Q[14]),
        .I3(\out_reg[21]_i_3_0 [14]),
        .O(S_result1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__0_i_6
       (.I0(Q[13]),
        .I1(\out_reg[21]_i_3_0 [13]),
        .I2(Q[12]),
        .I3(\out_reg[21]_i_3_0 [12]),
        .O(S_result1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__0_i_7
       (.I0(Q[11]),
        .I1(\out_reg[21]_i_3_0 [11]),
        .I2(Q[10]),
        .I3(\out_reg[21]_i_3_0 [10]),
        .O(S_result1_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry__0_i_8
       (.I0(Q[9]),
        .I1(\out_reg[21]_i_3_0 [9]),
        .I2(Q[8]),
        .I3(\out_reg[21]_i_3_0 [8]),
        .O(S_result1_carry__0_i_8_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 S_result1_carry__1
       (.CI(S_result1_carry__0_n_0),
        .CO({S_result1_carry__1_n_0,S_result1_carry__1_n_1,S_result1_carry__1_n_2,S_result1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI(DI),
        .O(NLW_S_result1_carry__1_O_UNCONNECTED[3:0]),
        .S(S));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry_i_1
       (.I0(\out_reg[21]_i_3_0 [7]),
        .I1(Q[7]),
        .I2(\out_reg[21]_i_3_0 [6]),
        .I3(Q[6]),
        .O(S_result1_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry_i_2
       (.I0(\out_reg[21]_i_3_0 [5]),
        .I1(Q[5]),
        .I2(\out_reg[21]_i_3_0 [4]),
        .I3(Q[4]),
        .O(S_result1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry_i_3
       (.I0(\out_reg[21]_i_3_0 [3]),
        .I1(Q[3]),
        .I2(\out_reg[21]_i_3_0 [2]),
        .I3(Q[2]),
        .O(S_result1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    S_result1_carry_i_4
       (.I0(\out_reg[21]_i_3_0 [1]),
        .I1(Q[1]),
        .I2(\out_reg[21]_i_3_0 [0]),
        .I3(Q[0]),
        .O(S_result1_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry_i_5
       (.I0(Q[7]),
        .I1(\out_reg[21]_i_3_0 [7]),
        .I2(Q[6]),
        .I3(\out_reg[21]_i_3_0 [6]),
        .O(S_result1_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry_i_6
       (.I0(Q[5]),
        .I1(\out_reg[21]_i_3_0 [5]),
        .I2(Q[4]),
        .I3(\out_reg[21]_i_3_0 [4]),
        .O(S_result1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry_i_7
       (.I0(Q[3]),
        .I1(\out_reg[21]_i_3_0 [3]),
        .I2(Q[2]),
        .I3(\out_reg[21]_i_3_0 [2]),
        .O(S_result1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    S_result1_carry_i_8
       (.I0(Q[1]),
        .I1(\out_reg[21]_i_3_0 [1]),
        .I2(Q[0]),
        .I3(\out_reg[21]_i_3_0 [0]),
        .O(S_result1_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[18]_i_10 
       (.I0(Q[18]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [18]),
        .O(\out[18]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[18]_i_11 
       (.I0(Q[17]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [17]),
        .O(\out[18]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[18]_i_12 
       (.I0(Q[16]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [16]),
        .O(\out[18]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[18]_i_5 
       (.I0(\out_reg[21]_i_3_0 [19]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[19]),
        .O(p_2_in[19]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[18]_i_6 
       (.I0(\out_reg[21]_i_3_0 [18]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[18]),
        .O(p_2_in[18]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[18]_i_7 
       (.I0(\out_reg[21]_i_3_0 [17]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[17]),
        .O(p_2_in[17]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[18]_i_8 
       (.I0(\out_reg[21]_i_3_0 [16]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[16]),
        .O(p_2_in[16]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[18]_i_9 
       (.I0(Q[19]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [19]),
        .O(\out[18]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[21]_i_10 
       (.I0(Q[23]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [23]),
        .O(\out[21]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[21]_i_11 
       (.I0(Q[22]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [22]),
        .O(\out[21]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[21]_i_12 
       (.I0(Q[21]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [21]),
        .O(\out[21]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[21]_i_13 
       (.I0(Q[20]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [20]),
        .O(\out[21]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[21]_i_6 
       (.I0(\out_reg[21]_i_3_0 [23]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[23]),
        .O(p_2_in[23]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[21]_i_7 
       (.I0(\out_reg[21]_i_3_0 [22]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[22]),
        .O(p_2_in[22]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[21]_i_8 
       (.I0(\out_reg[21]_i_3_0 [21]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[21]),
        .O(p_2_in[21]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[21]_i_9 
       (.I0(\out_reg[21]_i_3_0 [20]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[20]),
        .O(p_2_in[20]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[2]_i_10 
       (.I0(Q[2]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [2]),
        .O(\out[2]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[2]_i_11 
       (.I0(Q[1]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [1]),
        .O(\out[2]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[2]_i_12 
       (.I0(Q[0]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [0]),
        .O(\out[2]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[2]_i_5 
       (.I0(\out_reg[21]_i_3_0 [3]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[3]),
        .O(p_2_in[3]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[2]_i_6 
       (.I0(\out_reg[21]_i_3_0 [2]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[2]),
        .O(p_2_in[2]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[2]_i_7 
       (.I0(\out_reg[21]_i_3_0 [1]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[1]),
        .O(p_2_in[1]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[2]_i_8 
       (.I0(\out_reg[21]_i_3_0 [0]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[0]),
        .O(p_2_in[0]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[2]_i_9 
       (.I0(Q[3]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [3]),
        .O(\out[2]_i_9_n_0 ));
  LUT4 #(
    .INIT(16'h00E2)) 
    \out[31]_i_1 
       (.I0(pipe_S_B),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_A),
        .I3(\out_reg[31] ),
        .O(D));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[31]_i_10 
       (.I0(\out_reg[21]_i_3_0 [12]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[12]),
        .O(p_2_in[12]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[31]_i_11 
       (.I0(Q[15]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [15]),
        .O(\out[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[31]_i_12 
       (.I0(Q[14]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [14]),
        .O(\out[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[31]_i_13 
       (.I0(Q[13]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [13]),
        .O(\out[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[31]_i_14 
       (.I0(Q[12]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [12]),
        .O(\out[31]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[31]_i_7 
       (.I0(\out_reg[21]_i_3_0 [15]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[15]),
        .O(p_2_in[15]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[31]_i_8 
       (.I0(\out_reg[21]_i_3_0 [14]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[14]),
        .O(p_2_in[14]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[31]_i_9 
       (.I0(\out_reg[21]_i_3_0 [13]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[13]),
        .O(p_2_in[13]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_10 
       (.I0(Q[6]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [6]),
        .O(\out[6]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_11 
       (.I0(Q[5]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [5]),
        .O(\out[6]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_12 
       (.I0(Q[4]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [4]),
        .O(\out[6]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_5 
       (.I0(\out_reg[21]_i_3_0 [7]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[7]),
        .O(p_2_in[7]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_6 
       (.I0(\out_reg[21]_i_3_0 [6]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[6]),
        .O(p_2_in[6]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_7 
       (.I0(\out_reg[21]_i_3_0 [5]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[5]),
        .O(p_2_in[5]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[6]_i_8 
       (.I0(\out_reg[21]_i_3_0 [4]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[4]),
        .O(p_2_in[4]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[6]_i_9 
       (.I0(Q[7]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [7]),
        .O(\out[6]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_16 
       (.I0(\out_reg[21]_i_3_0 [11]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[11]),
        .O(p_2_in[11]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_17 
       (.I0(\out_reg[21]_i_3_0 [10]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[10]),
        .O(p_2_in[10]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_18 
       (.I0(\out_reg[21]_i_3_0 [9]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[9]),
        .O(p_2_in[9]));
  LUT5 #(
    .INIT(32'hABBAA88A)) 
    \out[7]_i_19 
       (.I0(\out_reg[21]_i_3_0 [8]),
        .I1(S_result1_carry__1_n_0),
        .I2(pipe_S_B),
        .I3(pipe_S_A),
        .I4(Q[8]),
        .O(p_2_in[8]));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_20 
       (.I0(Q[11]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [11]),
        .O(\out[7]_i_20_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_21 
       (.I0(Q[10]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [10]),
        .O(\out[7]_i_21_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_22 
       (.I0(Q[9]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [9]),
        .O(\out[7]_i_22_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \out[7]_i_23 
       (.I0(Q[8]),
        .I1(pipe_S_B),
        .I2(pipe_S_A),
        .I3(\out_reg[21]_i_3_0 [8]),
        .O(\out[7]_i_23_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[18]_i_3 
       (.CI(\out_reg[31]_i_4_n_0 ),
        .CO({\out_reg[18]_i_3_n_0 ,\out_reg[18]_i_3_n_1 ,\out_reg[18]_i_3_n_2 ,\out_reg[18]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[19:16]),
        .O(data0[18:15]),
        .S({\out[18]_i_9_n_0 ,\out[18]_i_10_n_0 ,\out[18]_i_11_n_0 ,\out[18]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[21]_i_3 
       (.CI(\out_reg[18]_i_3_n_0 ),
        .CO({\out_reg[21]_i_3_n_0 ,\out_reg[21]_i_3_n_1 ,\out_reg[21]_i_3_n_2 ,\out_reg[21]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[23:20]),
        .O(data0[22:19]),
        .S({\out[21]_i_10_n_0 ,\out[21]_i_11_n_0 ,\out[21]_i_12_n_0 ,\out[21]_i_13_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[2]_i_2 
       (.CI(1'b0),
        .CO({\out_reg[2]_i_2_n_0 ,\out_reg[2]_i_2_n_1 ,\out_reg[2]_i_2_n_2 ,\out_reg[2]_i_2_n_3 }),
        .CYINIT(\out_reg[2] ),
        .DI(p_2_in[3:0]),
        .O({data0[2:0],O}),
        .S({\out[2]_i_9_n_0 ,\out[2]_i_10_n_0 ,\out[2]_i_11_n_0 ,\out[2]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[31]_i_4 
       (.CI(\out_reg[7]_i_13_n_0 ),
        .CO({\out_reg[31]_i_4_n_0 ,\out_reg[31]_i_4_n_1 ,\out_reg[31]_i_4_n_2 ,\out_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[15:12]),
        .O(data0[14:11]),
        .S({\out[31]_i_11_n_0 ,\out[31]_i_12_n_0 ,\out[31]_i_13_n_0 ,\out[31]_i_14_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[6]_i_3 
       (.CI(\out_reg[2]_i_2_n_0 ),
        .CO({\out_reg[6]_i_3_n_0 ,\out_reg[6]_i_3_n_1 ,\out_reg[6]_i_3_n_2 ,\out_reg[6]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[7:4]),
        .O(data0[6:3]),
        .S({\out[6]_i_9_n_0 ,\out[6]_i_10_n_0 ,\out[6]_i_11_n_0 ,\out[6]_i_12_n_0 }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[6]_i_4 
       (.CI(\out_reg[21]_i_3_n_0 ),
        .CO(\NLW_out_reg[6]_i_4_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_out_reg[6]_i_4_O_UNCONNECTED [3:1],pipe_S_A_reg}),
        .S({1'b0,1'b0,1'b0,\out_reg[0] }));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \out_reg[7]_i_13 
       (.CI(\out_reg[6]_i_3_n_0 ),
        .CO({\out_reg[7]_i_13_n_0 ,\out_reg[7]_i_13_n_1 ,\out_reg[7]_i_13_n_2 ,\out_reg[7]_i_13_n_3 }),
        .CYINIT(1'b0),
        .DI(p_2_in[11:8]),
        .O(data0[10:7]),
        .S({\out[7]_i_20_n_0 ,\out[7]_i_21_n_0 ,\out[7]_i_22_n_0 ,\out[7]_i_23_n_0 }));
endmodule

(* ORIG_REF_NAME = "post_normalization_module" *) 
module Cortex_A9_fpadd_ip_0_0_post_normalization_module
   (i__carry_i_13_0,
    i__carry_i_16_0,
    \out_reg[6]_i_4 ,
    \out_reg[31]_i_4 ,
    \out_reg[2]_i_2 ,
    \out_reg[6]_i_3 ,
    i__carry_i_11_0,
    \out_reg[21]_i_3 ,
    \out_reg[18]_i_3 ,
    \out_reg[31]_i_4_0 ,
    \out_reg[18]_i_3_0 ,
    \out_reg[31]_i_4_1 ,
    \out_reg[21]_i_3_0 ,
    i__carry_i_12_0,
    \out_reg[7]_i_13 ,
    \out_reg[6]_i_3_0 ,
    \out_reg[18]_i_3_1 ,
    \out_reg[21]_i_3_1 ,
    D,
    \out_reg[7]_i_13_0 ,
    Q,
    \out_reg[0] ,
    data0,
    O,
    \out_reg[23] );
  output i__carry_i_13_0;
  output i__carry_i_16_0;
  output \out_reg[6]_i_4 ;
  output \out_reg[31]_i_4 ;
  output \out_reg[2]_i_2 ;
  output \out_reg[6]_i_3 ;
  output i__carry_i_11_0;
  output \out_reg[21]_i_3 ;
  output \out_reg[18]_i_3 ;
  output \out_reg[31]_i_4_0 ;
  output \out_reg[18]_i_3_0 ;
  output \out_reg[31]_i_4_1 ;
  output \out_reg[21]_i_3_0 ;
  output i__carry_i_12_0;
  output \out_reg[7]_i_13 ;
  output \out_reg[6]_i_3_0 ;
  output \out_reg[18]_i_3_1 ;
  output \out_reg[21]_i_3_1 ;
  output [7:0]D;
  output \out_reg[7]_i_13_0 ;
  input [6:0]Q;
  input [0:0]\out_reg[0] ;
  input [22:0]data0;
  input [0:0]O;
  input \out_reg[23] ;

  wire [7:0]D;
  wire [7:0]EXP_normal_result0;
  wire [0:0]O;
  wire [6:0]Q;
  wire \_inferred__1/i__carry__0_n_1 ;
  wire \_inferred__1/i__carry__0_n_2 ;
  wire \_inferred__1/i__carry__0_n_3 ;
  wire \_inferred__1/i__carry_n_0 ;
  wire \_inferred__1/i__carry_n_1 ;
  wire \_inferred__1/i__carry_n_2 ;
  wire \_inferred__1/i__carry_n_3 ;
  wire [22:0]data0;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_7_n_0;
  wire i__carry_i_11_0;
  wire i__carry_i_12_0;
  wire i__carry_i_13_0;
  wire i__carry_i_13_n_0;
  wire i__carry_i_16_0;
  wire i__carry_i_1_n_0;
  wire i__carry_i_21_n_0;
  wire i__carry_i_22_n_0;
  wire i__carry_i_23_n_0;
  wire i__carry_i_24_n_0;
  wire i__carry_i_25_n_0;
  wire i__carry_i_26_n_0;
  wire i__carry_i_27_n_0;
  wire i__carry_i_28_n_0;
  wire i__carry_i_29_n_0;
  wire i__carry_i_4__0_n_0;
  wire i__carry_i_5_n_0;
  wire i__carry_i_6_n_0;
  wire i__carry_i_7_n_0;
  wire i__carry_i_8_n_0;
  wire [0:0]\out_reg[0] ;
  wire \out_reg[18]_i_3 ;
  wire \out_reg[18]_i_3_0 ;
  wire \out_reg[18]_i_3_1 ;
  wire \out_reg[21]_i_3 ;
  wire \out_reg[21]_i_3_0 ;
  wire \out_reg[21]_i_3_1 ;
  wire \out_reg[23] ;
  wire \out_reg[2]_i_2 ;
  wire \out_reg[31]_i_4 ;
  wire \out_reg[31]_i_4_0 ;
  wire \out_reg[31]_i_4_1 ;
  wire \out_reg[6]_i_3 ;
  wire \out_reg[6]_i_3_0 ;
  wire \out_reg[6]_i_4 ;
  wire \out_reg[7]_i_13 ;
  wire \out_reg[7]_i_13_0 ;
  wire [3:3]\NLW__inferred__1/i__carry__0_CO_UNCONNECTED ;

  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry 
       (.CI(1'b0),
        .CO({\_inferred__1/i__carry_n_0 ,\_inferred__1/i__carry_n_1 ,\_inferred__1/i__carry_n_2 ,\_inferred__1/i__carry_n_3 }),
        .CYINIT(Q[0]),
        .DI({i__carry_i_1_n_0,i__carry_i_13_0,i__carry_i_16_0,i__carry_i_4__0_n_0}),
        .O(EXP_normal_result0[3:0]),
        .S({i__carry_i_5_n_0,i__carry_i_6_n_0,i__carry_i_7_n_0,i__carry_i_8_n_0}));
  (* ADDER_THRESHOLD = "35" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-8 {cell *THIS*}}" *) 
  CARRY4 \_inferred__1/i__carry__0 
       (.CI(\_inferred__1/i__carry_n_0 ),
        .CO({\NLW__inferred__1/i__carry__0_CO_UNCONNECTED [3],\_inferred__1/i__carry__0_n_1 ,\_inferred__1/i__carry__0_n_2 ,\_inferred__1/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0}),
        .O(EXP_normal_result0[7:4]),
        .S({i__carry__0_i_4_n_0,i__carry__0_i_5_n_0,i__carry__0_i_6_n_0,i__carry__0_i_7_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_1
       (.I0(\out_reg[0] ),
        .O(i__carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry__0_i_10
       (.I0(data0[5]),
        .I1(data0[6]),
        .I2(data0[3]),
        .I3(data0[4]),
        .O(\out_reg[6]_i_3 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    i__carry__0_i_11
       (.I0(data0[20]),
        .I1(data0[19]),
        .I2(data0[22]),
        .I3(data0[21]),
        .I4(\out_reg[18]_i_3 ),
        .O(i__carry_i_11_0));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry__0_i_2
       (.I0(\out_reg[0] ),
        .O(i__carry__0_i_2_n_0));
  LUT5 #(
    .INIT(32'h0000FF5D)) 
    i__carry__0_i_3
       (.I0(\out_reg[31]_i_4 ),
        .I1(\out_reg[2]_i_2 ),
        .I2(\out_reg[6]_i_3 ),
        .I3(i__carry_i_11_0),
        .I4(\out_reg[0] ),
        .O(i__carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_4
       (.I0(Q[6]),
        .I1(\out_reg[0] ),
        .O(i__carry__0_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_5
       (.I0(\out_reg[0] ),
        .I1(Q[4]),
        .O(i__carry__0_i_5_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry__0_i_6
       (.I0(\out_reg[0] ),
        .I1(Q[5]),
        .O(i__carry__0_i_6_n_0));
  LUT6 #(
    .INIT(64'hFFFF00A20000FF5D)) 
    i__carry__0_i_7
       (.I0(\out_reg[31]_i_4 ),
        .I1(\out_reg[2]_i_2 ),
        .I2(\out_reg[6]_i_3 ),
        .I3(i__carry_i_11_0),
        .I4(\out_reg[0] ),
        .I5(Q[4]),
        .O(i__carry__0_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    i__carry__0_i_8
       (.I0(\out_reg[7]_i_13_0 ),
        .I1(data0[14]),
        .I2(data0[13]),
        .I3(data0[12]),
        .I4(data0[11]),
        .O(\out_reg[31]_i_4 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry__0_i_9
       (.I0(data0[1]),
        .I1(data0[2]),
        .I2(O),
        .I3(data0[0]),
        .O(\out_reg[2]_i_2 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(i__carry_i_12_0),
        .O(i__carry_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_10
       (.I0(data0[21]),
        .I1(data0[22]),
        .I2(data0[19]),
        .I3(data0[20]),
        .O(\out_reg[21]_i_3 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_11
       (.I0(data0[17]),
        .I1(data0[18]),
        .I2(data0[15]),
        .I3(data0[16]),
        .O(\out_reg[18]_i_3 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    i__carry_i_12
       (.I0(data0[11]),
        .I1(data0[12]),
        .I2(data0[13]),
        .I3(data0[14]),
        .O(\out_reg[31]_i_4_0 ));
  LUT6 #(
    .INIT(64'h7777777777777775)) 
    i__carry_i_13
       (.I0(\out_reg[7]_i_13_0 ),
        .I1(\out_reg[6]_i_3 ),
        .I2(data0[1]),
        .I3(data0[2]),
        .I4(O),
        .I5(data0[0]),
        .O(i__carry_i_13_n_0));
  LUT6 #(
    .INIT(64'hFF55FF55FF55FF04)) 
    i__carry_i_14
       (.I0(\out_reg[21]_i_3_0 ),
        .I1(i__carry_i_21_n_0),
        .I2(i__carry_i_22_n_0),
        .I3(i__carry_i_23_n_0),
        .I4(data0[17]),
        .I5(data0[18]),
        .O(\out_reg[18]_i_3_0 ));
  LUT6 #(
    .INIT(64'h000000000000FFF2)) 
    i__carry_i_15
       (.I0(i__carry_i_24_n_0),
        .I1(i__carry_i_25_n_0),
        .I2(data0[12]),
        .I3(data0[11]),
        .I4(data0[13]),
        .I5(data0[14]),
        .O(\out_reg[31]_i_4_1 ));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_16
       (.I0(data0[20]),
        .I1(data0[19]),
        .O(\out_reg[21]_i_3_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF4)) 
    i__carry_i_17
       (.I0(data0[8]),
        .I1(data0[7]),
        .I2(data0[11]),
        .I3(i__carry_i_26_n_0),
        .I4(data0[9]),
        .I5(data0[10]),
        .O(\out_reg[7]_i_13 ));
  LUT6 #(
    .INIT(64'hEEEFEEEEEEEFEEEF)) 
    i__carry_i_18
       (.I0(i__carry_i_27_n_0),
        .I1(data0[6]),
        .I2(i__carry_i_28_n_0),
        .I3(data0[5]),
        .I4(data0[4]),
        .I5(data0[3]),
        .O(\out_reg[6]_i_3_0 ));
  LUT6 #(
    .INIT(64'hFFF0FFF0FFFFFFF4)) 
    i__carry_i_19
       (.I0(data0[13]),
        .I1(data0[12]),
        .I2(data0[16]),
        .I3(i__carry_i_29_n_0),
        .I4(data0[14]),
        .I5(data0[15]),
        .O(\out_reg[18]_i_3_1 ));
  LUT5 #(
    .INIT(32'h45444545)) 
    i__carry_i_2
       (.I0(\out_reg[0] ),
        .I1(\out_reg[21]_i_3 ),
        .I2(\out_reg[18]_i_3 ),
        .I3(\out_reg[31]_i_4_0 ),
        .I4(i__carry_i_13_n_0),
        .O(i__carry_i_13_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFF00F4)) 
    i__carry_i_20
       (.I0(data0[18]),
        .I1(data0[17]),
        .I2(data0[19]),
        .I3(data0[20]),
        .I4(data0[21]),
        .O(\out_reg[21]_i_3_1 ));
  LUT4 #(
    .INIT(16'h0001)) 
    i__carry_i_21
       (.I0(data0[7]),
        .I1(data0[8]),
        .I2(data0[3]),
        .I3(data0[4]),
        .O(i__carry_i_21_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    i__carry_i_22
       (.I0(O),
        .I1(data0[0]),
        .I2(data0[12]),
        .I3(data0[11]),
        .I4(data0[16]),
        .I5(data0[15]),
        .O(i__carry_i_22_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_23
       (.I0(data0[22]),
        .I1(data0[21]),
        .O(i__carry_i_23_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF1)) 
    i__carry_i_24
       (.I0(data0[1]),
        .I1(data0[2]),
        .I2(data0[4]),
        .I3(data0[3]),
        .I4(data0[8]),
        .I5(data0[7]),
        .O(i__carry_i_24_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFFFE)) 
    i__carry_i_25
       (.I0(data0[9]),
        .I1(data0[10]),
        .I2(data0[6]),
        .I3(data0[5]),
        .I4(data0[8]),
        .I5(data0[7]),
        .O(i__carry_i_25_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_26
       (.I0(data0[15]),
        .I1(data0[13]),
        .O(i__carry_i_26_n_0));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_27
       (.I0(data0[10]),
        .I1(data0[8]),
        .O(i__carry_i_27_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'h11110010)) 
    i__carry_i_28
       (.I0(data0[2]),
        .I1(data0[4]),
        .I2(O),
        .I3(data0[0]),
        .I4(data0[1]),
        .O(i__carry_i_28_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_29
       (.I0(data0[20]),
        .I1(data0[18]),
        .O(i__carry_i_29_n_0));
  LUT6 #(
    .INIT(64'h4444444444444445)) 
    i__carry_i_3
       (.I0(\out_reg[0] ),
        .I1(\out_reg[18]_i_3_0 ),
        .I2(\out_reg[31]_i_4_1 ),
        .I3(data0[16]),
        .I4(data0[15]),
        .I5(\out_reg[21]_i_3_0 ),
        .O(i__carry_i_16_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F4)) 
    i__carry_i_4__0
       (.I0(\out_reg[7]_i_13 ),
        .I1(\out_reg[6]_i_3_0 ),
        .I2(\out_reg[18]_i_3_1 ),
        .I3(\out_reg[21]_i_3_1 ),
        .I4(data0[22]),
        .I5(\out_reg[0] ),
        .O(i__carry_i_4__0_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_5
       (.I0(i__carry_i_12_0),
        .I1(Q[3]),
        .O(i__carry_i_5_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_6
       (.I0(i__carry_i_13_0),
        .I1(Q[2]),
        .O(i__carry_i_6_n_0));
  LUT2 #(
    .INIT(4'h6)) 
    i__carry_i_7
       (.I0(i__carry_i_16_0),
        .I1(Q[1]),
        .O(i__carry_i_7_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    i__carry_i_8
       (.I0(\out_reg[0] ),
        .I1(\out_reg[6]_i_4 ),
        .O(i__carry_i_8_n_0));
  LUT5 #(
    .INIT(32'hABABAAAB)) 
    i__carry_i_9
       (.I0(\out_reg[0] ),
        .I1(\out_reg[21]_i_3 ),
        .I2(\out_reg[18]_i_3 ),
        .I3(\out_reg[7]_i_13_0 ),
        .I4(\out_reg[31]_i_4_0 ),
        .O(i__carry_i_12_0));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[23]_i_1 
       (.I0(EXP_normal_result0[0]),
        .I1(\out_reg[23] ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[24]_i_1 
       (.I0(EXP_normal_result0[1]),
        .I1(\out_reg[23] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[25]_i_1 
       (.I0(EXP_normal_result0[2]),
        .I1(\out_reg[23] ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[26]_i_1 
       (.I0(EXP_normal_result0[3]),
        .I1(\out_reg[23] ),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[27]_i_1 
       (.I0(EXP_normal_result0[4]),
        .I1(\out_reg[23] ),
        .O(D[4]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[28]_i_1 
       (.I0(EXP_normal_result0[5]),
        .I1(\out_reg[23] ),
        .O(D[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[29]_i_1 
       (.I0(EXP_normal_result0[6]),
        .I1(\out_reg[23] ),
        .O(D[6]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \out[30]_i_1 
       (.I0(EXP_normal_result0[7]),
        .I1(\out_reg[23] ),
        .O(D[7]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \out[31]_i_5 
       (.I0(data0[7]),
        .I1(data0[8]),
        .I2(data0[9]),
        .I3(data0[10]),
        .O(\out_reg[7]_i_13_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF00F4)) 
    \out[7]_i_7 
       (.I0(\out_reg[7]_i_13 ),
        .I1(\out_reg[6]_i_3_0 ),
        .I2(\out_reg[18]_i_3_1 ),
        .I3(\out_reg[21]_i_3_1 ),
        .I4(data0[22]),
        .I5(\out_reg[0] ),
        .O(\out_reg[6]_i_4 ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
