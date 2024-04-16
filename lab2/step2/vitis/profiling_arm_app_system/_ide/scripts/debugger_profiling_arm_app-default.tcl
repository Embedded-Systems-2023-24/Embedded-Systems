# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_arm_app_system/_ide/scripts/debugger_profiling_arm_app-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_arm_app_system/_ide/scripts/debugger_profiling_arm_app-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248553221" && level==0 && jtag_device_ctx=="jsn-Zed-210248553221-23727093-0"}
fpga -file /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_arm_app/_ide/bitstream/design_interrupt_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_platform/export/profiling_platform/hw/design_interrupt_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_arm_app/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/inf2021/iathanasi/embedded/Embedded-Systems/lab2/step2/vitis/profiling_arm_app/Debug/profiling_arm_app.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
