# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/vitis/fpadd_arm_platform/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/vitis/fpadd_arm_platform/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {fpadd_arm_platform}\
-hw {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/fpadd_arm/fpadd_arm.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -fsbl-target {psu_cortexa53_0} -out {/home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step3/vitis}

platform write
platform generate -domains 
platform active {fpadd_arm_platform}
platform generate
