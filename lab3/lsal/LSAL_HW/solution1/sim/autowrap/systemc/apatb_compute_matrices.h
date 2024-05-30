// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================

extern "C" void AESL_WRAP_compute_matrices (
volatile void* string1,
volatile void* string2,
volatile void* max_index,
volatile void* similarity_matrix,
volatile void* direction_matrix,
int N,
int M);
