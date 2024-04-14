# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/Vitis/profiling_arm/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/Vitis/profiling_arm/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {profiling_arm}\
-hw {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/profiling_arm/profiling_arm_exp.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/Vitis}

platform write
platform generate -domains 
platform active {profiling_arm}
platform generate
platform active {profiling_arm}
platform generate -domains 
bsp reload
platform generate -domains 
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
platform generate -domains 
