// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xcompute_matrices.h"

extern XCompute_matrices_Config XCompute_matrices_ConfigTable[];

XCompute_matrices_Config *XCompute_matrices_LookupConfig(u16 DeviceId) {
	XCompute_matrices_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XCOMPUTE_MATRICES_NUM_INSTANCES; Index++) {
		if (XCompute_matrices_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XCompute_matrices_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XCompute_matrices_Initialize(XCompute_matrices *InstancePtr, u16 DeviceId) {
	XCompute_matrices_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XCompute_matrices_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XCompute_matrices_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

