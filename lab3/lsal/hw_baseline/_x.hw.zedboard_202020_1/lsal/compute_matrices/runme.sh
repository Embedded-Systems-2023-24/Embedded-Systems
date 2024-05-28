#!/bin/sh

# 
# v++(TM)
# runme.sh: a v++-generated Runs Script for UNIX
# Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/opt/Xilinx/Vitis_HLS/2020.2/bin:/opt/Xilinx/Vitis/2020.2/bin:/opt/Xilinx/Vitis/2020.2/bin
else
  PATH=/opt/Xilinx/Vitis_HLS/2020.2/bin:/opt/Xilinx/Vitis/2020.2/bin:/opt/Xilinx/Vitis/2020.2/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/_x.hw.zedboard_202020_1/lsal/compute_matrices'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

EAStep vitis_hls -f compute_matrices.tcl -messageDb vitis_hls.pb
