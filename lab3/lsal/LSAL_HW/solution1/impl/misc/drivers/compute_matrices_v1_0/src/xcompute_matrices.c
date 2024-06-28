// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xcompute_matrices.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XCompute_matrices_CfgInitialize(XCompute_matrices *InstancePtr, XCompute_matrices_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XCompute_matrices_Start(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XCompute_matrices_IsDone(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XCompute_matrices_IsIdle(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XCompute_matrices_IsReady(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XCompute_matrices_Continue(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL) & 0x80;
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL, Data | 0x10);
}

void XCompute_matrices_EnableAutoRestart(XCompute_matrices *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XCompute_matrices_DisableAutoRestart(XCompute_matrices *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_AP_CTRL, 0);
}

void XCompute_matrices_Set_string1_mem(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_string1_mem(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING1_MEM_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_string2_mem(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_string2_mem(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_STRING2_MEM_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_max_index(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_max_index(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_MAX_INDEX_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_0(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_0(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_0_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_1(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_1(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_1_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_2(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_2_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_2_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_2(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_2_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_2_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_3(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_3_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_3_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_3(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_3_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_3_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_4(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_4_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_4_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_4(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_4_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_4_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_5(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_5_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_5_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_5(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_5_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_5_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_6(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_6_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_6_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_6(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_6_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_6_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_7(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_7_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_7_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_7(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_7_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_7_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_8(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_8_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_8_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_8(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_8_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_8_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_9(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_9_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_9_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_9(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_9_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_9_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_10(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_10_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_10_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_10(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_10_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_10_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_11(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_11_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_11_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_11(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_11_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_11_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_12(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_12_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_12_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_12(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_12_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_12_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_13(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_13_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_13_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_13(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_13_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_13_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_14(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_14_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_14_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_14(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_14_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_14_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_15(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_15_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_15_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_15(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_15_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_15_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_16(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_16_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_16_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_16(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_16_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_16_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_17(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_17_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_17_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_17(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_17_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_17_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_18(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_18_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_18_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_18(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_18_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_18_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_19(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_19_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_19_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_19(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_19_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_19_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_20(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_20_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_20_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_20(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_20_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_20_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_21(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_21_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_21_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_21(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_21_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_21_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_22(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_22_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_22_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_22(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_22_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_22_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_23(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_23_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_23_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_23(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_23_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_23_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_24(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_24_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_24_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_24(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_24_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_24_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_25(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_25_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_25_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_25(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_25_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_25_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_26(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_26_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_26_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_26(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_26_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_26_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_27(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_27_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_27_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_27(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_27_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_27_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_28(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_28_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_28_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_28(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_28_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_28_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_29(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_29_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_29_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_29(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_29_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_29_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_30(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_30_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_30_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_30(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_30_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_30_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_direction_matrix_31(XCompute_matrices *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_31_DATA, (u32)(Data));
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_31_DATA + 4, (u32)(Data >> 32));
}

u64 XCompute_matrices_Get_direction_matrix_31(XCompute_matrices *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_31_DATA);
    Data += (u64)XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_DIRECTION_MATRIX_31_DATA + 4) << 32;
    return Data;
}

void XCompute_matrices_Set_n(XCompute_matrices *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_N_DATA, Data);
}

u32 XCompute_matrices_Get_n(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_N_DATA);
    return Data;
}

void XCompute_matrices_Set_m(XCompute_matrices *InstancePtr, u32 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_M_DATA, Data);
}

u32 XCompute_matrices_Get_m(XCompute_matrices *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_M_DATA);
    return Data;
}

void XCompute_matrices_InterruptGlobalEnable(XCompute_matrices *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_GIE, 1);
}

void XCompute_matrices_InterruptGlobalDisable(XCompute_matrices *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_GIE, 0);
}

void XCompute_matrices_InterruptEnable(XCompute_matrices *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_IER);
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_IER, Register | Mask);
}

void XCompute_matrices_InterruptDisable(XCompute_matrices *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_IER);
    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_IER, Register & (~Mask));
}

void XCompute_matrices_InterruptClear(XCompute_matrices *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XCompute_matrices_WriteReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_ISR, Mask);
}

u32 XCompute_matrices_InterruptGetEnabled(XCompute_matrices *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_IER);
}

u32 XCompute_matrices_InterruptGetStatus(XCompute_matrices *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XCompute_matrices_ReadReg(InstancePtr->Control_BaseAddress, XCOMPUTE_MATRICES_CONTROL_ADDR_ISR);
}

