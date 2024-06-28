// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1ns/1ps
module compute_matrices_control_s_axi
#(parameter
    C_S_AXI_ADDR_WIDTH = 9,
    C_S_AXI_DATA_WIDTH = 32
)(
    input  wire                          ACLK,
    input  wire                          ARESET,
    input  wire                          ACLK_EN,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] AWADDR,
    input  wire                          AWVALID,
    output wire                          AWREADY,
    input  wire [C_S_AXI_DATA_WIDTH-1:0] WDATA,
    input  wire [C_S_AXI_DATA_WIDTH/8-1:0] WSTRB,
    input  wire                          WVALID,
    output wire                          WREADY,
    output wire [1:0]                    BRESP,
    output wire                          BVALID,
    input  wire                          BREADY,
    input  wire [C_S_AXI_ADDR_WIDTH-1:0] ARADDR,
    input  wire                          ARVALID,
    output wire                          ARREADY,
    output wire [C_S_AXI_DATA_WIDTH-1:0] RDATA,
    output wire [1:0]                    RRESP,
    output wire                          RVALID,
    input  wire                          RREADY,
    output wire                          interrupt,
    output wire [63:0]                   string1_mem,
    output wire [63:0]                   string2_mem,
    output wire [63:0]                   max_index,
    output wire [63:0]                   direction_matrix_0,
    output wire [63:0]                   direction_matrix_1,
    output wire [63:0]                   direction_matrix_2,
    output wire [63:0]                   direction_matrix_3,
    output wire [63:0]                   direction_matrix_4,
    output wire [63:0]                   direction_matrix_5,
    output wire [63:0]                   direction_matrix_6,
    output wire [63:0]                   direction_matrix_7,
    output wire [63:0]                   direction_matrix_8,
    output wire [63:0]                   direction_matrix_9,
    output wire [63:0]                   direction_matrix_10,
    output wire [63:0]                   direction_matrix_11,
    output wire [63:0]                   direction_matrix_12,
    output wire [63:0]                   direction_matrix_13,
    output wire [63:0]                   direction_matrix_14,
    output wire [63:0]                   direction_matrix_15,
    output wire [63:0]                   direction_matrix_16,
    output wire [63:0]                   direction_matrix_17,
    output wire [63:0]                   direction_matrix_18,
    output wire [63:0]                   direction_matrix_19,
    output wire [63:0]                   direction_matrix_20,
    output wire [63:0]                   direction_matrix_21,
    output wire [63:0]                   direction_matrix_22,
    output wire [63:0]                   direction_matrix_23,
    output wire [63:0]                   direction_matrix_24,
    output wire [63:0]                   direction_matrix_25,
    output wire [63:0]                   direction_matrix_26,
    output wire [63:0]                   direction_matrix_27,
    output wire [63:0]                   direction_matrix_28,
    output wire [63:0]                   direction_matrix_29,
    output wire [63:0]                   direction_matrix_30,
    output wire [63:0]                   direction_matrix_31,
    output wire [31:0]                   n,
    output wire [31:0]                   m,
    output wire                          ap_start,
    input  wire                          ap_done,
    input  wire                          ap_ready,
    output wire                          ap_continue,
    input  wire                          ap_idle
);
//------------------------Address Info-------------------
// 0x000 : Control signals
//         bit 0  - ap_start (Read/Write/COH)
//         bit 1  - ap_done (Read)
//         bit 2  - ap_idle (Read)
//         bit 3  - ap_ready (Read)
//         bit 4  - ap_continue (Read/Write/SC)
//         bit 7  - auto_restart (Read/Write)
//         others - reserved
// 0x004 : Global Interrupt Enable Register
//         bit 0  - Global Interrupt Enable (Read/Write)
//         others - reserved
// 0x008 : IP Interrupt Enable Register (Read/Write)
//         bit 0  - enable ap_done interrupt (Read/Write)
//         bit 1  - enable ap_ready interrupt (Read/Write)
//         others - reserved
// 0x00c : IP Interrupt Status Register (Read/TOW)
//         bit 0  - ap_done (COR/TOW)
//         bit 1  - ap_ready (COR/TOW)
//         others - reserved
// 0x010 : Data signal of string1_mem
//         bit 31~0 - string1_mem[31:0] (Read/Write)
// 0x014 : Data signal of string1_mem
//         bit 31~0 - string1_mem[63:32] (Read/Write)
// 0x018 : reserved
// 0x01c : Data signal of string2_mem
//         bit 31~0 - string2_mem[31:0] (Read/Write)
// 0x020 : Data signal of string2_mem
//         bit 31~0 - string2_mem[63:32] (Read/Write)
// 0x024 : reserved
// 0x028 : Data signal of max_index
//         bit 31~0 - max_index[31:0] (Read/Write)
// 0x02c : Data signal of max_index
//         bit 31~0 - max_index[63:32] (Read/Write)
// 0x030 : reserved
// 0x034 : Data signal of direction_matrix_0
//         bit 31~0 - direction_matrix_0[31:0] (Read/Write)
// 0x038 : Data signal of direction_matrix_0
//         bit 31~0 - direction_matrix_0[63:32] (Read/Write)
// 0x03c : reserved
// 0x040 : Data signal of direction_matrix_1
//         bit 31~0 - direction_matrix_1[31:0] (Read/Write)
// 0x044 : Data signal of direction_matrix_1
//         bit 31~0 - direction_matrix_1[63:32] (Read/Write)
// 0x048 : reserved
// 0x04c : Data signal of direction_matrix_2
//         bit 31~0 - direction_matrix_2[31:0] (Read/Write)
// 0x050 : Data signal of direction_matrix_2
//         bit 31~0 - direction_matrix_2[63:32] (Read/Write)
// 0x054 : reserved
// 0x058 : Data signal of direction_matrix_3
//         bit 31~0 - direction_matrix_3[31:0] (Read/Write)
// 0x05c : Data signal of direction_matrix_3
//         bit 31~0 - direction_matrix_3[63:32] (Read/Write)
// 0x060 : reserved
// 0x064 : Data signal of direction_matrix_4
//         bit 31~0 - direction_matrix_4[31:0] (Read/Write)
// 0x068 : Data signal of direction_matrix_4
//         bit 31~0 - direction_matrix_4[63:32] (Read/Write)
// 0x06c : reserved
// 0x070 : Data signal of direction_matrix_5
//         bit 31~0 - direction_matrix_5[31:0] (Read/Write)
// 0x074 : Data signal of direction_matrix_5
//         bit 31~0 - direction_matrix_5[63:32] (Read/Write)
// 0x078 : reserved
// 0x07c : Data signal of direction_matrix_6
//         bit 31~0 - direction_matrix_6[31:0] (Read/Write)
// 0x080 : Data signal of direction_matrix_6
//         bit 31~0 - direction_matrix_6[63:32] (Read/Write)
// 0x084 : reserved
// 0x088 : Data signal of direction_matrix_7
//         bit 31~0 - direction_matrix_7[31:0] (Read/Write)
// 0x08c : Data signal of direction_matrix_7
//         bit 31~0 - direction_matrix_7[63:32] (Read/Write)
// 0x090 : reserved
// 0x094 : Data signal of direction_matrix_8
//         bit 31~0 - direction_matrix_8[31:0] (Read/Write)
// 0x098 : Data signal of direction_matrix_8
//         bit 31~0 - direction_matrix_8[63:32] (Read/Write)
// 0x09c : reserved
// 0x0a0 : Data signal of direction_matrix_9
//         bit 31~0 - direction_matrix_9[31:0] (Read/Write)
// 0x0a4 : Data signal of direction_matrix_9
//         bit 31~0 - direction_matrix_9[63:32] (Read/Write)
// 0x0a8 : reserved
// 0x0ac : Data signal of direction_matrix_10
//         bit 31~0 - direction_matrix_10[31:0] (Read/Write)
// 0x0b0 : Data signal of direction_matrix_10
//         bit 31~0 - direction_matrix_10[63:32] (Read/Write)
// 0x0b4 : reserved
// 0x0b8 : Data signal of direction_matrix_11
//         bit 31~0 - direction_matrix_11[31:0] (Read/Write)
// 0x0bc : Data signal of direction_matrix_11
//         bit 31~0 - direction_matrix_11[63:32] (Read/Write)
// 0x0c0 : reserved
// 0x0c4 : Data signal of direction_matrix_12
//         bit 31~0 - direction_matrix_12[31:0] (Read/Write)
// 0x0c8 : Data signal of direction_matrix_12
//         bit 31~0 - direction_matrix_12[63:32] (Read/Write)
// 0x0cc : reserved
// 0x0d0 : Data signal of direction_matrix_13
//         bit 31~0 - direction_matrix_13[31:0] (Read/Write)
// 0x0d4 : Data signal of direction_matrix_13
//         bit 31~0 - direction_matrix_13[63:32] (Read/Write)
// 0x0d8 : reserved
// 0x0dc : Data signal of direction_matrix_14
//         bit 31~0 - direction_matrix_14[31:0] (Read/Write)
// 0x0e0 : Data signal of direction_matrix_14
//         bit 31~0 - direction_matrix_14[63:32] (Read/Write)
// 0x0e4 : reserved
// 0x0e8 : Data signal of direction_matrix_15
//         bit 31~0 - direction_matrix_15[31:0] (Read/Write)
// 0x0ec : Data signal of direction_matrix_15
//         bit 31~0 - direction_matrix_15[63:32] (Read/Write)
// 0x0f0 : reserved
// 0x0f4 : Data signal of direction_matrix_16
//         bit 31~0 - direction_matrix_16[31:0] (Read/Write)
// 0x0f8 : Data signal of direction_matrix_16
//         bit 31~0 - direction_matrix_16[63:32] (Read/Write)
// 0x0fc : reserved
// 0x100 : Data signal of direction_matrix_17
//         bit 31~0 - direction_matrix_17[31:0] (Read/Write)
// 0x104 : Data signal of direction_matrix_17
//         bit 31~0 - direction_matrix_17[63:32] (Read/Write)
// 0x108 : reserved
// 0x10c : Data signal of direction_matrix_18
//         bit 31~0 - direction_matrix_18[31:0] (Read/Write)
// 0x110 : Data signal of direction_matrix_18
//         bit 31~0 - direction_matrix_18[63:32] (Read/Write)
// 0x114 : reserved
// 0x118 : Data signal of direction_matrix_19
//         bit 31~0 - direction_matrix_19[31:0] (Read/Write)
// 0x11c : Data signal of direction_matrix_19
//         bit 31~0 - direction_matrix_19[63:32] (Read/Write)
// 0x120 : reserved
// 0x124 : Data signal of direction_matrix_20
//         bit 31~0 - direction_matrix_20[31:0] (Read/Write)
// 0x128 : Data signal of direction_matrix_20
//         bit 31~0 - direction_matrix_20[63:32] (Read/Write)
// 0x12c : reserved
// 0x130 : Data signal of direction_matrix_21
//         bit 31~0 - direction_matrix_21[31:0] (Read/Write)
// 0x134 : Data signal of direction_matrix_21
//         bit 31~0 - direction_matrix_21[63:32] (Read/Write)
// 0x138 : reserved
// 0x13c : Data signal of direction_matrix_22
//         bit 31~0 - direction_matrix_22[31:0] (Read/Write)
// 0x140 : Data signal of direction_matrix_22
//         bit 31~0 - direction_matrix_22[63:32] (Read/Write)
// 0x144 : reserved
// 0x148 : Data signal of direction_matrix_23
//         bit 31~0 - direction_matrix_23[31:0] (Read/Write)
// 0x14c : Data signal of direction_matrix_23
//         bit 31~0 - direction_matrix_23[63:32] (Read/Write)
// 0x150 : reserved
// 0x154 : Data signal of direction_matrix_24
//         bit 31~0 - direction_matrix_24[31:0] (Read/Write)
// 0x158 : Data signal of direction_matrix_24
//         bit 31~0 - direction_matrix_24[63:32] (Read/Write)
// 0x15c : reserved
// 0x160 : Data signal of direction_matrix_25
//         bit 31~0 - direction_matrix_25[31:0] (Read/Write)
// 0x164 : Data signal of direction_matrix_25
//         bit 31~0 - direction_matrix_25[63:32] (Read/Write)
// 0x168 : reserved
// 0x16c : Data signal of direction_matrix_26
//         bit 31~0 - direction_matrix_26[31:0] (Read/Write)
// 0x170 : Data signal of direction_matrix_26
//         bit 31~0 - direction_matrix_26[63:32] (Read/Write)
// 0x174 : reserved
// 0x178 : Data signal of direction_matrix_27
//         bit 31~0 - direction_matrix_27[31:0] (Read/Write)
// 0x17c : Data signal of direction_matrix_27
//         bit 31~0 - direction_matrix_27[63:32] (Read/Write)
// 0x180 : reserved
// 0x184 : Data signal of direction_matrix_28
//         bit 31~0 - direction_matrix_28[31:0] (Read/Write)
// 0x188 : Data signal of direction_matrix_28
//         bit 31~0 - direction_matrix_28[63:32] (Read/Write)
// 0x18c : reserved
// 0x190 : Data signal of direction_matrix_29
//         bit 31~0 - direction_matrix_29[31:0] (Read/Write)
// 0x194 : Data signal of direction_matrix_29
//         bit 31~0 - direction_matrix_29[63:32] (Read/Write)
// 0x198 : reserved
// 0x19c : Data signal of direction_matrix_30
//         bit 31~0 - direction_matrix_30[31:0] (Read/Write)
// 0x1a0 : Data signal of direction_matrix_30
//         bit 31~0 - direction_matrix_30[63:32] (Read/Write)
// 0x1a4 : reserved
// 0x1a8 : Data signal of direction_matrix_31
//         bit 31~0 - direction_matrix_31[31:0] (Read/Write)
// 0x1ac : Data signal of direction_matrix_31
//         bit 31~0 - direction_matrix_31[63:32] (Read/Write)
// 0x1b0 : reserved
// 0x1b4 : Data signal of n
//         bit 31~0 - n[31:0] (Read/Write)
// 0x1b8 : reserved
// 0x1bc : Data signal of m
//         bit 31~0 - m[31:0] (Read/Write)
// 0x1c0 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

//------------------------Parameter----------------------
localparam
    ADDR_AP_CTRL                    = 9'h000,
    ADDR_GIE                        = 9'h004,
    ADDR_IER                        = 9'h008,
    ADDR_ISR                        = 9'h00c,
    ADDR_STRING1_MEM_DATA_0         = 9'h010,
    ADDR_STRING1_MEM_DATA_1         = 9'h014,
    ADDR_STRING1_MEM_CTRL           = 9'h018,
    ADDR_STRING2_MEM_DATA_0         = 9'h01c,
    ADDR_STRING2_MEM_DATA_1         = 9'h020,
    ADDR_STRING2_MEM_CTRL           = 9'h024,
    ADDR_MAX_INDEX_DATA_0           = 9'h028,
    ADDR_MAX_INDEX_DATA_1           = 9'h02c,
    ADDR_MAX_INDEX_CTRL             = 9'h030,
    ADDR_DIRECTION_MATRIX_0_DATA_0  = 9'h034,
    ADDR_DIRECTION_MATRIX_0_DATA_1  = 9'h038,
    ADDR_DIRECTION_MATRIX_0_CTRL    = 9'h03c,
    ADDR_DIRECTION_MATRIX_1_DATA_0  = 9'h040,
    ADDR_DIRECTION_MATRIX_1_DATA_1  = 9'h044,
    ADDR_DIRECTION_MATRIX_1_CTRL    = 9'h048,
    ADDR_DIRECTION_MATRIX_2_DATA_0  = 9'h04c,
    ADDR_DIRECTION_MATRIX_2_DATA_1  = 9'h050,
    ADDR_DIRECTION_MATRIX_2_CTRL    = 9'h054,
    ADDR_DIRECTION_MATRIX_3_DATA_0  = 9'h058,
    ADDR_DIRECTION_MATRIX_3_DATA_1  = 9'h05c,
    ADDR_DIRECTION_MATRIX_3_CTRL    = 9'h060,
    ADDR_DIRECTION_MATRIX_4_DATA_0  = 9'h064,
    ADDR_DIRECTION_MATRIX_4_DATA_1  = 9'h068,
    ADDR_DIRECTION_MATRIX_4_CTRL    = 9'h06c,
    ADDR_DIRECTION_MATRIX_5_DATA_0  = 9'h070,
    ADDR_DIRECTION_MATRIX_5_DATA_1  = 9'h074,
    ADDR_DIRECTION_MATRIX_5_CTRL    = 9'h078,
    ADDR_DIRECTION_MATRIX_6_DATA_0  = 9'h07c,
    ADDR_DIRECTION_MATRIX_6_DATA_1  = 9'h080,
    ADDR_DIRECTION_MATRIX_6_CTRL    = 9'h084,
    ADDR_DIRECTION_MATRIX_7_DATA_0  = 9'h088,
    ADDR_DIRECTION_MATRIX_7_DATA_1  = 9'h08c,
    ADDR_DIRECTION_MATRIX_7_CTRL    = 9'h090,
    ADDR_DIRECTION_MATRIX_8_DATA_0  = 9'h094,
    ADDR_DIRECTION_MATRIX_8_DATA_1  = 9'h098,
    ADDR_DIRECTION_MATRIX_8_CTRL    = 9'h09c,
    ADDR_DIRECTION_MATRIX_9_DATA_0  = 9'h0a0,
    ADDR_DIRECTION_MATRIX_9_DATA_1  = 9'h0a4,
    ADDR_DIRECTION_MATRIX_9_CTRL    = 9'h0a8,
    ADDR_DIRECTION_MATRIX_10_DATA_0 = 9'h0ac,
    ADDR_DIRECTION_MATRIX_10_DATA_1 = 9'h0b0,
    ADDR_DIRECTION_MATRIX_10_CTRL   = 9'h0b4,
    ADDR_DIRECTION_MATRIX_11_DATA_0 = 9'h0b8,
    ADDR_DIRECTION_MATRIX_11_DATA_1 = 9'h0bc,
    ADDR_DIRECTION_MATRIX_11_CTRL   = 9'h0c0,
    ADDR_DIRECTION_MATRIX_12_DATA_0 = 9'h0c4,
    ADDR_DIRECTION_MATRIX_12_DATA_1 = 9'h0c8,
    ADDR_DIRECTION_MATRIX_12_CTRL   = 9'h0cc,
    ADDR_DIRECTION_MATRIX_13_DATA_0 = 9'h0d0,
    ADDR_DIRECTION_MATRIX_13_DATA_1 = 9'h0d4,
    ADDR_DIRECTION_MATRIX_13_CTRL   = 9'h0d8,
    ADDR_DIRECTION_MATRIX_14_DATA_0 = 9'h0dc,
    ADDR_DIRECTION_MATRIX_14_DATA_1 = 9'h0e0,
    ADDR_DIRECTION_MATRIX_14_CTRL   = 9'h0e4,
    ADDR_DIRECTION_MATRIX_15_DATA_0 = 9'h0e8,
    ADDR_DIRECTION_MATRIX_15_DATA_1 = 9'h0ec,
    ADDR_DIRECTION_MATRIX_15_CTRL   = 9'h0f0,
    ADDR_DIRECTION_MATRIX_16_DATA_0 = 9'h0f4,
    ADDR_DIRECTION_MATRIX_16_DATA_1 = 9'h0f8,
    ADDR_DIRECTION_MATRIX_16_CTRL   = 9'h0fc,
    ADDR_DIRECTION_MATRIX_17_DATA_0 = 9'h100,
    ADDR_DIRECTION_MATRIX_17_DATA_1 = 9'h104,
    ADDR_DIRECTION_MATRIX_17_CTRL   = 9'h108,
    ADDR_DIRECTION_MATRIX_18_DATA_0 = 9'h10c,
    ADDR_DIRECTION_MATRIX_18_DATA_1 = 9'h110,
    ADDR_DIRECTION_MATRIX_18_CTRL   = 9'h114,
    ADDR_DIRECTION_MATRIX_19_DATA_0 = 9'h118,
    ADDR_DIRECTION_MATRIX_19_DATA_1 = 9'h11c,
    ADDR_DIRECTION_MATRIX_19_CTRL   = 9'h120,
    ADDR_DIRECTION_MATRIX_20_DATA_0 = 9'h124,
    ADDR_DIRECTION_MATRIX_20_DATA_1 = 9'h128,
    ADDR_DIRECTION_MATRIX_20_CTRL   = 9'h12c,
    ADDR_DIRECTION_MATRIX_21_DATA_0 = 9'h130,
    ADDR_DIRECTION_MATRIX_21_DATA_1 = 9'h134,
    ADDR_DIRECTION_MATRIX_21_CTRL   = 9'h138,
    ADDR_DIRECTION_MATRIX_22_DATA_0 = 9'h13c,
    ADDR_DIRECTION_MATRIX_22_DATA_1 = 9'h140,
    ADDR_DIRECTION_MATRIX_22_CTRL   = 9'h144,
    ADDR_DIRECTION_MATRIX_23_DATA_0 = 9'h148,
    ADDR_DIRECTION_MATRIX_23_DATA_1 = 9'h14c,
    ADDR_DIRECTION_MATRIX_23_CTRL   = 9'h150,
    ADDR_DIRECTION_MATRIX_24_DATA_0 = 9'h154,
    ADDR_DIRECTION_MATRIX_24_DATA_1 = 9'h158,
    ADDR_DIRECTION_MATRIX_24_CTRL   = 9'h15c,
    ADDR_DIRECTION_MATRIX_25_DATA_0 = 9'h160,
    ADDR_DIRECTION_MATRIX_25_DATA_1 = 9'h164,
    ADDR_DIRECTION_MATRIX_25_CTRL   = 9'h168,
    ADDR_DIRECTION_MATRIX_26_DATA_0 = 9'h16c,
    ADDR_DIRECTION_MATRIX_26_DATA_1 = 9'h170,
    ADDR_DIRECTION_MATRIX_26_CTRL   = 9'h174,
    ADDR_DIRECTION_MATRIX_27_DATA_0 = 9'h178,
    ADDR_DIRECTION_MATRIX_27_DATA_1 = 9'h17c,
    ADDR_DIRECTION_MATRIX_27_CTRL   = 9'h180,
    ADDR_DIRECTION_MATRIX_28_DATA_0 = 9'h184,
    ADDR_DIRECTION_MATRIX_28_DATA_1 = 9'h188,
    ADDR_DIRECTION_MATRIX_28_CTRL   = 9'h18c,
    ADDR_DIRECTION_MATRIX_29_DATA_0 = 9'h190,
    ADDR_DIRECTION_MATRIX_29_DATA_1 = 9'h194,
    ADDR_DIRECTION_MATRIX_29_CTRL   = 9'h198,
    ADDR_DIRECTION_MATRIX_30_DATA_0 = 9'h19c,
    ADDR_DIRECTION_MATRIX_30_DATA_1 = 9'h1a0,
    ADDR_DIRECTION_MATRIX_30_CTRL   = 9'h1a4,
    ADDR_DIRECTION_MATRIX_31_DATA_0 = 9'h1a8,
    ADDR_DIRECTION_MATRIX_31_DATA_1 = 9'h1ac,
    ADDR_DIRECTION_MATRIX_31_CTRL   = 9'h1b0,
    ADDR_N_DATA_0                   = 9'h1b4,
    ADDR_N_CTRL                     = 9'h1b8,
    ADDR_M_DATA_0                   = 9'h1bc,
    ADDR_M_CTRL                     = 9'h1c0,
    WRIDLE                          = 2'd0,
    WRDATA                          = 2'd1,
    WRRESP                          = 2'd2,
    WRRESET                         = 2'd3,
    RDIDLE                          = 2'd0,
    RDDATA                          = 2'd1,
    RDRESET                         = 2'd2,
    ADDR_BITS                = 9;

//------------------------Local signal-------------------
    reg  [1:0]                    wstate = WRRESET;
    reg  [1:0]                    wnext;
    reg  [ADDR_BITS-1:0]          waddr;
    wire [C_S_AXI_DATA_WIDTH-1:0] wmask;
    wire                          aw_hs;
    wire                          w_hs;
    reg  [1:0]                    rstate = RDRESET;
    reg  [1:0]                    rnext;
    reg  [C_S_AXI_DATA_WIDTH-1:0] rdata;
    wire                          ar_hs;
    wire [ADDR_BITS-1:0]          raddr;
    // internal registers
    reg                           int_ap_idle;
    reg                           int_ap_continue;
    reg                           int_ap_ready;
    wire                          int_ap_done;
    reg                           int_ap_start = 1'b0;
    reg                           int_auto_restart = 1'b0;
    reg                           int_gie = 1'b0;
    reg  [1:0]                    int_ier = 2'b0;
    reg  [1:0]                    int_isr = 2'b0;
    reg  [63:0]                   int_string1_mem = 'b0;
    reg  [63:0]                   int_string2_mem = 'b0;
    reg  [63:0]                   int_max_index = 'b0;
    reg  [63:0]                   int_direction_matrix_0 = 'b0;
    reg  [63:0]                   int_direction_matrix_1 = 'b0;
    reg  [63:0]                   int_direction_matrix_2 = 'b0;
    reg  [63:0]                   int_direction_matrix_3 = 'b0;
    reg  [63:0]                   int_direction_matrix_4 = 'b0;
    reg  [63:0]                   int_direction_matrix_5 = 'b0;
    reg  [63:0]                   int_direction_matrix_6 = 'b0;
    reg  [63:0]                   int_direction_matrix_7 = 'b0;
    reg  [63:0]                   int_direction_matrix_8 = 'b0;
    reg  [63:0]                   int_direction_matrix_9 = 'b0;
    reg  [63:0]                   int_direction_matrix_10 = 'b0;
    reg  [63:0]                   int_direction_matrix_11 = 'b0;
    reg  [63:0]                   int_direction_matrix_12 = 'b0;
    reg  [63:0]                   int_direction_matrix_13 = 'b0;
    reg  [63:0]                   int_direction_matrix_14 = 'b0;
    reg  [63:0]                   int_direction_matrix_15 = 'b0;
    reg  [63:0]                   int_direction_matrix_16 = 'b0;
    reg  [63:0]                   int_direction_matrix_17 = 'b0;
    reg  [63:0]                   int_direction_matrix_18 = 'b0;
    reg  [63:0]                   int_direction_matrix_19 = 'b0;
    reg  [63:0]                   int_direction_matrix_20 = 'b0;
    reg  [63:0]                   int_direction_matrix_21 = 'b0;
    reg  [63:0]                   int_direction_matrix_22 = 'b0;
    reg  [63:0]                   int_direction_matrix_23 = 'b0;
    reg  [63:0]                   int_direction_matrix_24 = 'b0;
    reg  [63:0]                   int_direction_matrix_25 = 'b0;
    reg  [63:0]                   int_direction_matrix_26 = 'b0;
    reg  [63:0]                   int_direction_matrix_27 = 'b0;
    reg  [63:0]                   int_direction_matrix_28 = 'b0;
    reg  [63:0]                   int_direction_matrix_29 = 'b0;
    reg  [63:0]                   int_direction_matrix_30 = 'b0;
    reg  [63:0]                   int_direction_matrix_31 = 'b0;
    reg  [31:0]                   int_n = 'b0;
    reg  [31:0]                   int_m = 'b0;

//------------------------Instantiation------------------


//------------------------AXI write fsm------------------
assign AWREADY = (wstate == WRIDLE);
assign WREADY  = (wstate == WRDATA);
assign BRESP   = 2'b00;  // OKAY
assign BVALID  = (wstate == WRRESP);
assign wmask   = { {8{WSTRB[3]}}, {8{WSTRB[2]}}, {8{WSTRB[1]}}, {8{WSTRB[0]}} };
assign aw_hs   = AWVALID & AWREADY;
assign w_hs    = WVALID & WREADY;

// wstate
always @(posedge ACLK) begin
    if (ARESET)
        wstate <= WRRESET;
    else if (ACLK_EN)
        wstate <= wnext;
end

// wnext
always @(*) begin
    case (wstate)
        WRIDLE:
            if (AWVALID)
                wnext = WRDATA;
            else
                wnext = WRIDLE;
        WRDATA:
            if (WVALID)
                wnext = WRRESP;
            else
                wnext = WRDATA;
        WRRESP:
            if (BREADY)
                wnext = WRIDLE;
            else
                wnext = WRRESP;
        default:
            wnext = WRIDLE;
    endcase
end

// waddr
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (aw_hs)
            waddr <= AWADDR[ADDR_BITS-1:0];
    end
end

//------------------------AXI read fsm-------------------
assign ARREADY = (rstate == RDIDLE);
assign RDATA   = rdata;
assign RRESP   = 2'b00;  // OKAY
assign RVALID  = (rstate == RDDATA);
assign ar_hs   = ARVALID & ARREADY;
assign raddr   = ARADDR[ADDR_BITS-1:0];

// rstate
always @(posedge ACLK) begin
    if (ARESET)
        rstate <= RDRESET;
    else if (ACLK_EN)
        rstate <= rnext;
end

// rnext
always @(*) begin
    case (rstate)
        RDIDLE:
            if (ARVALID)
                rnext = RDDATA;
            else
                rnext = RDIDLE;
        RDDATA:
            if (RREADY & RVALID)
                rnext = RDIDLE;
            else
                rnext = RDDATA;
        default:
            rnext = RDIDLE;
    endcase
end

// rdata
always @(posedge ACLK) begin
    if (ACLK_EN) begin
        if (ar_hs) begin
            rdata <= 'b0;
            case (raddr)
                ADDR_AP_CTRL: begin
                    rdata[0] <= int_ap_start;
                    rdata[1] <= int_ap_done;
                    rdata[2] <= int_ap_idle;
                    rdata[3] <= int_ap_ready;
                    rdata[4] <= int_ap_continue;
                    rdata[7] <= int_auto_restart;
                end
                ADDR_GIE: begin
                    rdata <= int_gie;
                end
                ADDR_IER: begin
                    rdata <= int_ier;
                end
                ADDR_ISR: begin
                    rdata <= int_isr;
                end
                ADDR_STRING1_MEM_DATA_0: begin
                    rdata <= int_string1_mem[31:0];
                end
                ADDR_STRING1_MEM_DATA_1: begin
                    rdata <= int_string1_mem[63:32];
                end
                ADDR_STRING2_MEM_DATA_0: begin
                    rdata <= int_string2_mem[31:0];
                end
                ADDR_STRING2_MEM_DATA_1: begin
                    rdata <= int_string2_mem[63:32];
                end
                ADDR_MAX_INDEX_DATA_0: begin
                    rdata <= int_max_index[31:0];
                end
                ADDR_MAX_INDEX_DATA_1: begin
                    rdata <= int_max_index[63:32];
                end
                ADDR_DIRECTION_MATRIX_0_DATA_0: begin
                    rdata <= int_direction_matrix_0[31:0];
                end
                ADDR_DIRECTION_MATRIX_0_DATA_1: begin
                    rdata <= int_direction_matrix_0[63:32];
                end
                ADDR_DIRECTION_MATRIX_1_DATA_0: begin
                    rdata <= int_direction_matrix_1[31:0];
                end
                ADDR_DIRECTION_MATRIX_1_DATA_1: begin
                    rdata <= int_direction_matrix_1[63:32];
                end
                ADDR_DIRECTION_MATRIX_2_DATA_0: begin
                    rdata <= int_direction_matrix_2[31:0];
                end
                ADDR_DIRECTION_MATRIX_2_DATA_1: begin
                    rdata <= int_direction_matrix_2[63:32];
                end
                ADDR_DIRECTION_MATRIX_3_DATA_0: begin
                    rdata <= int_direction_matrix_3[31:0];
                end
                ADDR_DIRECTION_MATRIX_3_DATA_1: begin
                    rdata <= int_direction_matrix_3[63:32];
                end
                ADDR_DIRECTION_MATRIX_4_DATA_0: begin
                    rdata <= int_direction_matrix_4[31:0];
                end
                ADDR_DIRECTION_MATRIX_4_DATA_1: begin
                    rdata <= int_direction_matrix_4[63:32];
                end
                ADDR_DIRECTION_MATRIX_5_DATA_0: begin
                    rdata <= int_direction_matrix_5[31:0];
                end
                ADDR_DIRECTION_MATRIX_5_DATA_1: begin
                    rdata <= int_direction_matrix_5[63:32];
                end
                ADDR_DIRECTION_MATRIX_6_DATA_0: begin
                    rdata <= int_direction_matrix_6[31:0];
                end
                ADDR_DIRECTION_MATRIX_6_DATA_1: begin
                    rdata <= int_direction_matrix_6[63:32];
                end
                ADDR_DIRECTION_MATRIX_7_DATA_0: begin
                    rdata <= int_direction_matrix_7[31:0];
                end
                ADDR_DIRECTION_MATRIX_7_DATA_1: begin
                    rdata <= int_direction_matrix_7[63:32];
                end
                ADDR_DIRECTION_MATRIX_8_DATA_0: begin
                    rdata <= int_direction_matrix_8[31:0];
                end
                ADDR_DIRECTION_MATRIX_8_DATA_1: begin
                    rdata <= int_direction_matrix_8[63:32];
                end
                ADDR_DIRECTION_MATRIX_9_DATA_0: begin
                    rdata <= int_direction_matrix_9[31:0];
                end
                ADDR_DIRECTION_MATRIX_9_DATA_1: begin
                    rdata <= int_direction_matrix_9[63:32];
                end
                ADDR_DIRECTION_MATRIX_10_DATA_0: begin
                    rdata <= int_direction_matrix_10[31:0];
                end
                ADDR_DIRECTION_MATRIX_10_DATA_1: begin
                    rdata <= int_direction_matrix_10[63:32];
                end
                ADDR_DIRECTION_MATRIX_11_DATA_0: begin
                    rdata <= int_direction_matrix_11[31:0];
                end
                ADDR_DIRECTION_MATRIX_11_DATA_1: begin
                    rdata <= int_direction_matrix_11[63:32];
                end
                ADDR_DIRECTION_MATRIX_12_DATA_0: begin
                    rdata <= int_direction_matrix_12[31:0];
                end
                ADDR_DIRECTION_MATRIX_12_DATA_1: begin
                    rdata <= int_direction_matrix_12[63:32];
                end
                ADDR_DIRECTION_MATRIX_13_DATA_0: begin
                    rdata <= int_direction_matrix_13[31:0];
                end
                ADDR_DIRECTION_MATRIX_13_DATA_1: begin
                    rdata <= int_direction_matrix_13[63:32];
                end
                ADDR_DIRECTION_MATRIX_14_DATA_0: begin
                    rdata <= int_direction_matrix_14[31:0];
                end
                ADDR_DIRECTION_MATRIX_14_DATA_1: begin
                    rdata <= int_direction_matrix_14[63:32];
                end
                ADDR_DIRECTION_MATRIX_15_DATA_0: begin
                    rdata <= int_direction_matrix_15[31:0];
                end
                ADDR_DIRECTION_MATRIX_15_DATA_1: begin
                    rdata <= int_direction_matrix_15[63:32];
                end
                ADDR_DIRECTION_MATRIX_16_DATA_0: begin
                    rdata <= int_direction_matrix_16[31:0];
                end
                ADDR_DIRECTION_MATRIX_16_DATA_1: begin
                    rdata <= int_direction_matrix_16[63:32];
                end
                ADDR_DIRECTION_MATRIX_17_DATA_0: begin
                    rdata <= int_direction_matrix_17[31:0];
                end
                ADDR_DIRECTION_MATRIX_17_DATA_1: begin
                    rdata <= int_direction_matrix_17[63:32];
                end
                ADDR_DIRECTION_MATRIX_18_DATA_0: begin
                    rdata <= int_direction_matrix_18[31:0];
                end
                ADDR_DIRECTION_MATRIX_18_DATA_1: begin
                    rdata <= int_direction_matrix_18[63:32];
                end
                ADDR_DIRECTION_MATRIX_19_DATA_0: begin
                    rdata <= int_direction_matrix_19[31:0];
                end
                ADDR_DIRECTION_MATRIX_19_DATA_1: begin
                    rdata <= int_direction_matrix_19[63:32];
                end
                ADDR_DIRECTION_MATRIX_20_DATA_0: begin
                    rdata <= int_direction_matrix_20[31:0];
                end
                ADDR_DIRECTION_MATRIX_20_DATA_1: begin
                    rdata <= int_direction_matrix_20[63:32];
                end
                ADDR_DIRECTION_MATRIX_21_DATA_0: begin
                    rdata <= int_direction_matrix_21[31:0];
                end
                ADDR_DIRECTION_MATRIX_21_DATA_1: begin
                    rdata <= int_direction_matrix_21[63:32];
                end
                ADDR_DIRECTION_MATRIX_22_DATA_0: begin
                    rdata <= int_direction_matrix_22[31:0];
                end
                ADDR_DIRECTION_MATRIX_22_DATA_1: begin
                    rdata <= int_direction_matrix_22[63:32];
                end
                ADDR_DIRECTION_MATRIX_23_DATA_0: begin
                    rdata <= int_direction_matrix_23[31:0];
                end
                ADDR_DIRECTION_MATRIX_23_DATA_1: begin
                    rdata <= int_direction_matrix_23[63:32];
                end
                ADDR_DIRECTION_MATRIX_24_DATA_0: begin
                    rdata <= int_direction_matrix_24[31:0];
                end
                ADDR_DIRECTION_MATRIX_24_DATA_1: begin
                    rdata <= int_direction_matrix_24[63:32];
                end
                ADDR_DIRECTION_MATRIX_25_DATA_0: begin
                    rdata <= int_direction_matrix_25[31:0];
                end
                ADDR_DIRECTION_MATRIX_25_DATA_1: begin
                    rdata <= int_direction_matrix_25[63:32];
                end
                ADDR_DIRECTION_MATRIX_26_DATA_0: begin
                    rdata <= int_direction_matrix_26[31:0];
                end
                ADDR_DIRECTION_MATRIX_26_DATA_1: begin
                    rdata <= int_direction_matrix_26[63:32];
                end
                ADDR_DIRECTION_MATRIX_27_DATA_0: begin
                    rdata <= int_direction_matrix_27[31:0];
                end
                ADDR_DIRECTION_MATRIX_27_DATA_1: begin
                    rdata <= int_direction_matrix_27[63:32];
                end
                ADDR_DIRECTION_MATRIX_28_DATA_0: begin
                    rdata <= int_direction_matrix_28[31:0];
                end
                ADDR_DIRECTION_MATRIX_28_DATA_1: begin
                    rdata <= int_direction_matrix_28[63:32];
                end
                ADDR_DIRECTION_MATRIX_29_DATA_0: begin
                    rdata <= int_direction_matrix_29[31:0];
                end
                ADDR_DIRECTION_MATRIX_29_DATA_1: begin
                    rdata <= int_direction_matrix_29[63:32];
                end
                ADDR_DIRECTION_MATRIX_30_DATA_0: begin
                    rdata <= int_direction_matrix_30[31:0];
                end
                ADDR_DIRECTION_MATRIX_30_DATA_1: begin
                    rdata <= int_direction_matrix_30[63:32];
                end
                ADDR_DIRECTION_MATRIX_31_DATA_0: begin
                    rdata <= int_direction_matrix_31[31:0];
                end
                ADDR_DIRECTION_MATRIX_31_DATA_1: begin
                    rdata <= int_direction_matrix_31[63:32];
                end
                ADDR_N_DATA_0: begin
                    rdata <= int_n[31:0];
                end
                ADDR_M_DATA_0: begin
                    rdata <= int_m[31:0];
                end
            endcase
        end
    end
end


//------------------------Register logic-----------------
assign interrupt           = int_gie & (|int_isr);
assign ap_start            = int_ap_start;
assign int_ap_done         = ap_done;
assign ap_continue         = int_ap_continue;
assign string1_mem         = int_string1_mem;
assign string2_mem         = int_string2_mem;
assign max_index           = int_max_index;
assign direction_matrix_0  = int_direction_matrix_0;
assign direction_matrix_1  = int_direction_matrix_1;
assign direction_matrix_2  = int_direction_matrix_2;
assign direction_matrix_3  = int_direction_matrix_3;
assign direction_matrix_4  = int_direction_matrix_4;
assign direction_matrix_5  = int_direction_matrix_5;
assign direction_matrix_6  = int_direction_matrix_6;
assign direction_matrix_7  = int_direction_matrix_7;
assign direction_matrix_8  = int_direction_matrix_8;
assign direction_matrix_9  = int_direction_matrix_9;
assign direction_matrix_10 = int_direction_matrix_10;
assign direction_matrix_11 = int_direction_matrix_11;
assign direction_matrix_12 = int_direction_matrix_12;
assign direction_matrix_13 = int_direction_matrix_13;
assign direction_matrix_14 = int_direction_matrix_14;
assign direction_matrix_15 = int_direction_matrix_15;
assign direction_matrix_16 = int_direction_matrix_16;
assign direction_matrix_17 = int_direction_matrix_17;
assign direction_matrix_18 = int_direction_matrix_18;
assign direction_matrix_19 = int_direction_matrix_19;
assign direction_matrix_20 = int_direction_matrix_20;
assign direction_matrix_21 = int_direction_matrix_21;
assign direction_matrix_22 = int_direction_matrix_22;
assign direction_matrix_23 = int_direction_matrix_23;
assign direction_matrix_24 = int_direction_matrix_24;
assign direction_matrix_25 = int_direction_matrix_25;
assign direction_matrix_26 = int_direction_matrix_26;
assign direction_matrix_27 = int_direction_matrix_27;
assign direction_matrix_28 = int_direction_matrix_28;
assign direction_matrix_29 = int_direction_matrix_29;
assign direction_matrix_30 = int_direction_matrix_30;
assign direction_matrix_31 = int_direction_matrix_31;
assign n                   = int_n;
assign m                   = int_m;
// int_ap_start
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_start <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[0])
            int_ap_start <= 1'b1;
        else if (ap_ready)
            int_ap_start <= int_auto_restart; // clear on handshake/auto restart
    end
end

// int_ap_idle
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_idle <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_idle <= ap_idle;
    end
end

// int_ap_ready
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_ready <= 1'b0;
    else if (ACLK_EN) begin
            int_ap_ready <= ap_ready;
    end
end

// int_ap_continue
always @(posedge ACLK) begin
    if (ARESET)
        int_ap_continue <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0] && WDATA[4])
            int_ap_continue <= 1'b1;
        else if (ap_done & ~int_ap_continue & int_auto_restart)
            int_ap_continue <= 1'b1; // auto restart
        else
            int_ap_continue <= 1'b0; // self clear
    end
end

// int_auto_restart
always @(posedge ACLK) begin
    if (ARESET)
        int_auto_restart <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_AP_CTRL && WSTRB[0])
            int_auto_restart <=  WDATA[7];
    end
end

// int_gie
always @(posedge ACLK) begin
    if (ARESET)
        int_gie <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_GIE && WSTRB[0])
            int_gie <= WDATA[0];
    end
end

// int_ier
always @(posedge ACLK) begin
    if (ARESET)
        int_ier <= 1'b0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_IER && WSTRB[0])
            int_ier <= WDATA[1:0];
    end
end

// int_isr[0]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[0] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[0] & ap_done)
            int_isr[0] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[0] <= int_isr[0] ^ WDATA[0]; // toggle on write
    end
end

// int_isr[1]
always @(posedge ACLK) begin
    if (ARESET)
        int_isr[1] <= 1'b0;
    else if (ACLK_EN) begin
        if (int_ier[1] & ap_ready)
            int_isr[1] <= 1'b1;
        else if (w_hs && waddr == ADDR_ISR && WSTRB[0])
            int_isr[1] <= int_isr[1] ^ WDATA[1]; // toggle on write
    end
end

// int_string1_mem[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_string1_mem[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRING1_MEM_DATA_0)
            int_string1_mem[31:0] <= (WDATA[31:0] & wmask) | (int_string1_mem[31:0] & ~wmask);
    end
end

// int_string1_mem[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_string1_mem[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRING1_MEM_DATA_1)
            int_string1_mem[63:32] <= (WDATA[31:0] & wmask) | (int_string1_mem[63:32] & ~wmask);
    end
end

// int_string2_mem[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_string2_mem[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRING2_MEM_DATA_0)
            int_string2_mem[31:0] <= (WDATA[31:0] & wmask) | (int_string2_mem[31:0] & ~wmask);
    end
end

// int_string2_mem[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_string2_mem[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_STRING2_MEM_DATA_1)
            int_string2_mem[63:32] <= (WDATA[31:0] & wmask) | (int_string2_mem[63:32] & ~wmask);
    end
end

// int_max_index[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_max_index[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MAX_INDEX_DATA_0)
            int_max_index[31:0] <= (WDATA[31:0] & wmask) | (int_max_index[31:0] & ~wmask);
    end
end

// int_max_index[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_max_index[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_MAX_INDEX_DATA_1)
            int_max_index[63:32] <= (WDATA[31:0] & wmask) | (int_max_index[63:32] & ~wmask);
    end
end

// int_direction_matrix_0[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_0[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_0_DATA_0)
            int_direction_matrix_0[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_0[31:0] & ~wmask);
    end
end

// int_direction_matrix_0[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_0[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_0_DATA_1)
            int_direction_matrix_0[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_0[63:32] & ~wmask);
    end
end

// int_direction_matrix_1[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_1[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_1_DATA_0)
            int_direction_matrix_1[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_1[31:0] & ~wmask);
    end
end

// int_direction_matrix_1[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_1[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_1_DATA_1)
            int_direction_matrix_1[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_1[63:32] & ~wmask);
    end
end

// int_direction_matrix_2[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_2[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_2_DATA_0)
            int_direction_matrix_2[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_2[31:0] & ~wmask);
    end
end

// int_direction_matrix_2[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_2[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_2_DATA_1)
            int_direction_matrix_2[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_2[63:32] & ~wmask);
    end
end

// int_direction_matrix_3[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_3[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_3_DATA_0)
            int_direction_matrix_3[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_3[31:0] & ~wmask);
    end
end

// int_direction_matrix_3[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_3[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_3_DATA_1)
            int_direction_matrix_3[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_3[63:32] & ~wmask);
    end
end

// int_direction_matrix_4[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_4[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_4_DATA_0)
            int_direction_matrix_4[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_4[31:0] & ~wmask);
    end
end

// int_direction_matrix_4[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_4[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_4_DATA_1)
            int_direction_matrix_4[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_4[63:32] & ~wmask);
    end
end

// int_direction_matrix_5[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_5[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_5_DATA_0)
            int_direction_matrix_5[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_5[31:0] & ~wmask);
    end
end

// int_direction_matrix_5[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_5[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_5_DATA_1)
            int_direction_matrix_5[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_5[63:32] & ~wmask);
    end
end

// int_direction_matrix_6[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_6[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_6_DATA_0)
            int_direction_matrix_6[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_6[31:0] & ~wmask);
    end
end

// int_direction_matrix_6[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_6[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_6_DATA_1)
            int_direction_matrix_6[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_6[63:32] & ~wmask);
    end
end

// int_direction_matrix_7[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_7[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_7_DATA_0)
            int_direction_matrix_7[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_7[31:0] & ~wmask);
    end
end

// int_direction_matrix_7[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_7[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_7_DATA_1)
            int_direction_matrix_7[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_7[63:32] & ~wmask);
    end
end

// int_direction_matrix_8[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_8[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_8_DATA_0)
            int_direction_matrix_8[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_8[31:0] & ~wmask);
    end
end

// int_direction_matrix_8[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_8[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_8_DATA_1)
            int_direction_matrix_8[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_8[63:32] & ~wmask);
    end
end

// int_direction_matrix_9[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_9[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_9_DATA_0)
            int_direction_matrix_9[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_9[31:0] & ~wmask);
    end
end

// int_direction_matrix_9[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_9[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_9_DATA_1)
            int_direction_matrix_9[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_9[63:32] & ~wmask);
    end
end

// int_direction_matrix_10[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_10[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_10_DATA_0)
            int_direction_matrix_10[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_10[31:0] & ~wmask);
    end
end

// int_direction_matrix_10[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_10[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_10_DATA_1)
            int_direction_matrix_10[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_10[63:32] & ~wmask);
    end
end

// int_direction_matrix_11[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_11[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_11_DATA_0)
            int_direction_matrix_11[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_11[31:0] & ~wmask);
    end
end

// int_direction_matrix_11[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_11[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_11_DATA_1)
            int_direction_matrix_11[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_11[63:32] & ~wmask);
    end
end

// int_direction_matrix_12[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_12[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_12_DATA_0)
            int_direction_matrix_12[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_12[31:0] & ~wmask);
    end
end

// int_direction_matrix_12[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_12[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_12_DATA_1)
            int_direction_matrix_12[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_12[63:32] & ~wmask);
    end
end

// int_direction_matrix_13[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_13[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_13_DATA_0)
            int_direction_matrix_13[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_13[31:0] & ~wmask);
    end
end

// int_direction_matrix_13[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_13[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_13_DATA_1)
            int_direction_matrix_13[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_13[63:32] & ~wmask);
    end
end

// int_direction_matrix_14[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_14[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_14_DATA_0)
            int_direction_matrix_14[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_14[31:0] & ~wmask);
    end
end

// int_direction_matrix_14[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_14[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_14_DATA_1)
            int_direction_matrix_14[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_14[63:32] & ~wmask);
    end
end

// int_direction_matrix_15[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_15[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_15_DATA_0)
            int_direction_matrix_15[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_15[31:0] & ~wmask);
    end
end

// int_direction_matrix_15[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_15[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_15_DATA_1)
            int_direction_matrix_15[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_15[63:32] & ~wmask);
    end
end

// int_direction_matrix_16[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_16[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_16_DATA_0)
            int_direction_matrix_16[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_16[31:0] & ~wmask);
    end
end

// int_direction_matrix_16[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_16[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_16_DATA_1)
            int_direction_matrix_16[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_16[63:32] & ~wmask);
    end
end

// int_direction_matrix_17[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_17[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_17_DATA_0)
            int_direction_matrix_17[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_17[31:0] & ~wmask);
    end
end

// int_direction_matrix_17[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_17[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_17_DATA_1)
            int_direction_matrix_17[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_17[63:32] & ~wmask);
    end
end

// int_direction_matrix_18[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_18[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_18_DATA_0)
            int_direction_matrix_18[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_18[31:0] & ~wmask);
    end
end

// int_direction_matrix_18[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_18[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_18_DATA_1)
            int_direction_matrix_18[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_18[63:32] & ~wmask);
    end
end

// int_direction_matrix_19[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_19[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_19_DATA_0)
            int_direction_matrix_19[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_19[31:0] & ~wmask);
    end
end

// int_direction_matrix_19[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_19[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_19_DATA_1)
            int_direction_matrix_19[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_19[63:32] & ~wmask);
    end
end

// int_direction_matrix_20[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_20[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_20_DATA_0)
            int_direction_matrix_20[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_20[31:0] & ~wmask);
    end
end

// int_direction_matrix_20[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_20[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_20_DATA_1)
            int_direction_matrix_20[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_20[63:32] & ~wmask);
    end
end

// int_direction_matrix_21[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_21[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_21_DATA_0)
            int_direction_matrix_21[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_21[31:0] & ~wmask);
    end
end

// int_direction_matrix_21[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_21[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_21_DATA_1)
            int_direction_matrix_21[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_21[63:32] & ~wmask);
    end
end

// int_direction_matrix_22[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_22[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_22_DATA_0)
            int_direction_matrix_22[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_22[31:0] & ~wmask);
    end
end

// int_direction_matrix_22[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_22[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_22_DATA_1)
            int_direction_matrix_22[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_22[63:32] & ~wmask);
    end
end

// int_direction_matrix_23[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_23[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_23_DATA_0)
            int_direction_matrix_23[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_23[31:0] & ~wmask);
    end
end

// int_direction_matrix_23[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_23[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_23_DATA_1)
            int_direction_matrix_23[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_23[63:32] & ~wmask);
    end
end

// int_direction_matrix_24[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_24[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_24_DATA_0)
            int_direction_matrix_24[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_24[31:0] & ~wmask);
    end
end

// int_direction_matrix_24[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_24[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_24_DATA_1)
            int_direction_matrix_24[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_24[63:32] & ~wmask);
    end
end

// int_direction_matrix_25[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_25[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_25_DATA_0)
            int_direction_matrix_25[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_25[31:0] & ~wmask);
    end
end

// int_direction_matrix_25[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_25[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_25_DATA_1)
            int_direction_matrix_25[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_25[63:32] & ~wmask);
    end
end

// int_direction_matrix_26[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_26[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_26_DATA_0)
            int_direction_matrix_26[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_26[31:0] & ~wmask);
    end
end

// int_direction_matrix_26[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_26[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_26_DATA_1)
            int_direction_matrix_26[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_26[63:32] & ~wmask);
    end
end

// int_direction_matrix_27[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_27[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_27_DATA_0)
            int_direction_matrix_27[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_27[31:0] & ~wmask);
    end
end

// int_direction_matrix_27[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_27[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_27_DATA_1)
            int_direction_matrix_27[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_27[63:32] & ~wmask);
    end
end

// int_direction_matrix_28[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_28[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_28_DATA_0)
            int_direction_matrix_28[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_28[31:0] & ~wmask);
    end
end

// int_direction_matrix_28[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_28[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_28_DATA_1)
            int_direction_matrix_28[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_28[63:32] & ~wmask);
    end
end

// int_direction_matrix_29[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_29[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_29_DATA_0)
            int_direction_matrix_29[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_29[31:0] & ~wmask);
    end
end

// int_direction_matrix_29[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_29[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_29_DATA_1)
            int_direction_matrix_29[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_29[63:32] & ~wmask);
    end
end

// int_direction_matrix_30[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_30[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_30_DATA_0)
            int_direction_matrix_30[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_30[31:0] & ~wmask);
    end
end

// int_direction_matrix_30[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_30[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_30_DATA_1)
            int_direction_matrix_30[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_30[63:32] & ~wmask);
    end
end

// int_direction_matrix_31[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_31[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_31_DATA_0)
            int_direction_matrix_31[31:0] <= (WDATA[31:0] & wmask) | (int_direction_matrix_31[31:0] & ~wmask);
    end
end

// int_direction_matrix_31[63:32]
always @(posedge ACLK) begin
    if (ARESET)
        int_direction_matrix_31[63:32] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_DIRECTION_MATRIX_31_DATA_1)
            int_direction_matrix_31[63:32] <= (WDATA[31:0] & wmask) | (int_direction_matrix_31[63:32] & ~wmask);
    end
end

// int_n[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_n[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_N_DATA_0)
            int_n[31:0] <= (WDATA[31:0] & wmask) | (int_n[31:0] & ~wmask);
    end
end

// int_m[31:0]
always @(posedge ACLK) begin
    if (ARESET)
        int_m[31:0] <= 0;
    else if (ACLK_EN) begin
        if (w_hs && waddr == ADDR_M_DATA_0)
            int_m[31:0] <= (WDATA[31:0] & wmask) | (int_m[31:0] & ~wmask);
    end
end


//------------------------Memory logic-------------------

endmodule
