# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {profiling_platform}\
-hw {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step1/interrupt_arm/interupt_arm_vivado/design_interrupt_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis}

platform write
platform generate -domains 
platform active {profiling_platform}
platform generate
