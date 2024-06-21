############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LSAL_HW
set_top compute_matrices
add_files hw_baseline/Vitis_HLS/lsal.cpp
add_files -tb hw_baseline/Vitis_HLS/lsal_test.cpp
open_solution "solution1" -flow_target vitis
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./LSAL_HW/solution1/directives.tcl"
csim_design -argv {256 256}
csynth_design
cosim_design
export_design -format ip_catalog
