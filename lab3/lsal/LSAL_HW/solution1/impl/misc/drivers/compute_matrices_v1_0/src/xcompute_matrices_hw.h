// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
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

#define XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL                  0x000
#define XCOMPUTE_MATRICES_CONTROL_ADDR_GIE                      0x004
#define XCOMPUTE_MATRICES_CONTROL_ADDR_IER                      0x008
#define XCOMPUTE_MATRICES_CONTROL_ADDR_ISR                      0x00c
#define XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA         0x010
#define XCOMPUTE_MATRICES_CONTROL_BITS_STRING1_MEM_DATA         64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA         0x01c
#define XCOMPUTE_MATRICES_CONTROL_BITS_STRING2_MEM_DATA         64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA           0x028
#define XCOMPUTE_MATRICES_CONTROL_BITS_MAX_INDEX_DATA           64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA  0x034
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_0_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA  0x040
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_1_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_2_DATA  0x04c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_2_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_3_DATA  0x058
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_3_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_4_DATA  0x064
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_4_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_5_DATA  0x070
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_5_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_6_DATA  0x07c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_6_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_7_DATA  0x088
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_7_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_8_DATA  0x094
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_8_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_9_DATA  0x0a0
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_9_DATA  64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_10_DATA 0x0ac
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_10_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_11_DATA 0x0b8
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_11_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_12_DATA 0x0c4
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_12_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_13_DATA 0x0d0
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_13_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_14_DATA 0x0dc
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_14_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_15_DATA 0x0e8
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_15_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_16_DATA 0x0f4
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_16_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_17_DATA 0x100
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_17_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_18_DATA 0x10c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_18_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_19_DATA 0x118
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_19_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_20_DATA 0x124
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_20_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_21_DATA 0x130
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_21_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_22_DATA 0x13c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_22_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_23_DATA 0x148
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_23_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_24_DATA 0x154
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_24_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_25_DATA 0x160
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_25_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_26_DATA 0x16c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_26_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_27_DATA 0x178
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_27_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_28_DATA 0x184
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_28_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_29_DATA 0x190
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_29_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_30_DATA 0x19c
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_30_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_31_DATA 0x1a8
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_31_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_N_DATA                   0x1b4
#define XCOMPUTE_MATRICES_CONTROL_BITS_N_DATA                   32
#define XCOMPUTE_MATRICES_CONTROL_ADDR_M_DATA                   0x1bc
#define XCOMPUTE_MATRICES_CONTROL_BITS_M_DATA                   32

