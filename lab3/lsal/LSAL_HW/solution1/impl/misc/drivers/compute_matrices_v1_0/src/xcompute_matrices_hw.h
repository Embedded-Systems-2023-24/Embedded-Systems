// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// control
// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read)
//        bit 4  - ap_continue (Read/Write/SC)
//        bit 7  - auto_restart (Read/Write)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0  - enable ap_done interrupt (Read/Write)
//        bit 1  - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0  - ap_done (COR/TOW)
//        bit 1  - ap_ready (COR/TOW)
//        others - reserved
// 0x10 : Data signal of string1_mem
//        bit 31~0 - string1_mem[31:0] (Read/Write)
// 0x14 : Data signal of string1_mem
//        bit 31~0 - string1_mem[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of string2_mem
//        bit 31~0 - string2_mem[31:0] (Read/Write)
// 0x20 : Data signal of string2_mem
//        bit 31~0 - string2_mem[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of max_index
//        bit 31~0 - max_index[31:0] (Read/Write)
// 0x2c : Data signal of max_index
//        bit 31~0 - max_index[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of direction_matrix_0
//        bit 31~0 - direction_matrix_0[31:0] (Read/Write)
// 0x38 : Data signal of direction_matrix_0
//        bit 31~0 - direction_matrix_0[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of direction_matrix_1
//        bit 31~0 - direction_matrix_1[31:0] (Read/Write)
// 0x44 : Data signal of direction_matrix_1
//        bit 31~0 - direction_matrix_1[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of n
//        bit 31~0 - n[31:0] (Read/Write)
// 0x50 : reserved
// 0x54 : Data signal of m
//        bit 31~0 - m[31:0] (Read/Write)
// 0x58 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL                 0x00
#define XCOMPUTE_MATRICES_CONTROL_ADDR_GIE                     0x04
#define XCOMPUTE_MATRICES_CONTROL_ADDR_IER                     0x08
#define XCOMPUTE_MATRICES_CONTROL_ADDR_ISR                     0x0c
#define XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA        0x10
#define XCOMPUTE_MATRICES_CONTROL_BITS_STRING1_MEM_DATA        64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA        0x1c
#define XCOMPUTE_MATRICES_CONTROL_BITS_STRING2_MEM_DATA        64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA          0x28
#define XCOMPUTE_MATRICES_CONTROL_BITS_MAX_INDEX_DATA          64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA 0x34
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_0_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA 0x40
#define XCOMPUTE_MATRICES_CONTROL_BITS_DIRECTION_MATRIX_1_DATA 64
#define XCOMPUTE_MATRICES_CONTROL_ADDR_N_DATA                  0x4c
#define XCOMPUTE_MATRICES_CONTROL_BITS_N_DATA                  32
#define XCOMPUTE_MATRICES_CONTROL_ADDR_M_DATA                  0x54
#define XCOMPUTE_MATRICES_CONTROL_BITS_M_DATA                  32

