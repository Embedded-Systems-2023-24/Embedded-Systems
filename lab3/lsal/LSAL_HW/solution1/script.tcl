############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project LSAL_HW
set_top compute_matrices
add_files hw_baseline/Vitis_HLS/lsal.cpp
add_files -tb hw_baseline/Vitis_HLS/lsal_test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1" -flow_target vitis
set_part {xc7z020-clg484-1}
create_clock -period 10 -name default
config_interface -m_axi_alignment_byte_size 64 -m_axi_latency 64 -m_axi_max_widen_bitwidth 512 -m_axi_offset slave
config_rtl -register_reset_num 3
source "./LSAL_HW/solution1/directives.tcl"
csim_design -argv {32 65536}
csynth_design
cosim_design
export_design -format ip_catalog
