// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XCOMPUTE_MATRICES_H
#define XCOMPUTE_MATRICES_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xcompute_matrices_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u32 Control_BaseAddress;
} XCompute_matrices_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XCompute_matrices;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XCompute_matrices_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XCompute_matrices_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XCompute_matrices_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XCompute_matrices_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XCompute_matrices_Initialize(XCompute_matrices *InstancePtr, u16 DeviceId);
XCompute_matrices_Config* XCompute_matrices_LookupConfig(u16 DeviceId);
int XCompute_matrices_CfgInitialize(XCompute_matrices *InstancePtr, XCompute_matrices_Config *ConfigPtr);
#else
int XCompute_matrices_Initialize(XCompute_matrices *InstancePtr, const char* InstanceName);
int XCompute_matrices_Release(XCompute_matrices *InstancePtr);
#endif

void XCompute_matrices_Start(XCompute_matrices *InstancePtr);
u32 XCompute_matrices_IsDone(XCompute_matrices *InstancePtr);
u32 XCompute_matrices_IsIdle(XCompute_matrices *InstancePtr);
u32 XCompute_matrices_IsReady(XCompute_matrices *InstancePtr);
void XCompute_matrices_Continue(XCompute_matrices *InstancePtr);
void XCompute_matrices_EnableAutoRestart(XCompute_matrices *InstancePtr);
void XCompute_matrices_DisableAutoRestart(XCompute_matrices *InstancePtr);

void XCompute_matrices_Set_string1(XCompute_matrices *InstancePtr, u64 Data);
u64 XCompute_matrices_Get_string1(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_string2(XCompute_matrices *InstancePtr, u64 Data);
u64 XCompute_matrices_Get_string2(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_max_index(XCompute_matrices *InstancePtr, u64 Data);
u64 XCompute_matrices_Get_max_index(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_similarity_matrix(XCompute_matrices *InstancePtr, u64 Data);
u64 XCompute_matrices_Get_similarity_matrix(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_direction_matrix(XCompute_matrices *InstancePtr, u64 Data);
u64 XCompute_matrices_Get_direction_matrix(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_N(XCompute_matrices *InstancePtr, u32 Data);
u32 XCompute_matrices_Get_N(XCompute_matrices *InstancePtr);
void XCompute_matrices_Set_M(XCompute_matrices *InstancePtr, u32 Data);
u32 XCompute_matrices_Get_M(XCompute_matrices *InstancePtr);

void XCompute_matrices_InterruptGlobalEnable(XCompute_matrices *InstancePtr);
void XCompute_matrices_InterruptGlobalDisable(XCompute_matrices *InstancePtr);
void XCompute_matrices_InterruptEnable(XCompute_matrices *InstancePtr, u32 Mask);
void XCompute_matrices_InterruptDisable(XCompute_matrices *InstancePtr, u32 Mask);
void XCompute_matrices_InterruptClear(XCompute_matrices *InstancePtr, u32 Mask);
u32 XCompute_matrices_InterruptGetEnabled(XCompute_matrices *InstancePtr);
u32 XCompute_matrices_InterruptGetStatus(XCompute_matrices *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
