# Monitor points
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_cells compute_matrices_1]
set_property HDL_ATTRIBUTE.DPA_MONITOR true [get_bd_intf_pins /compute_matrices_1/m_axi_gmem]

# Platform options
set_property HDL_ATTRIBUTE.DPA_AXILITE_MASTER true [get_bd_intf_pins /interconnect_axilite/M02_AXI]
set_property HDL_ATTRIBUTE.DPA_TRACE_MASTER true [get_bd_intf_pins /interconnect_axilite/M03_AXI]

# Call debug/profiling automation
set dpa_dict [list \
              [get_bd_cells compute_matrices_1]  {TYPE stall DETAIL all CLK_SRC /compute_matrices_1/ap_clk RST_SRC /compute_matrices_1/ap_rst_n PRINTABLE_KEY {[get_bd_cells compute_matrices_1]} INS_MODE user} \
              [get_bd_intf_pins compute_matrices_1/M_AXI_GMEM]  {TYPE data DETAIL all CLK_SRC /compute_matrices_1/ap_clk RST_SRC /compute_matrices_1/ap_rst_n MEMORY DDR PRINTABLE_KEY {[get_bd_intf_pins compute_matrices_1/M_AXI_GMEM]} INS_MODE user} \
             ]
set dpa_opts [list \
              AIE_TRACE  {PACKET_RATE 0 CLK_SELECT default PROFILE_STREAMS 0 MEM_SPACE NOC MEM_INDEX 0} \
              SETTINGS  {HW_EMU false IS_EMBEDDED true} \
              AXILITE  {MASTER /interconnect_axilite/M02_AXI CLK_SRC /compute_matrices_1/ap_clk RST_SRC /compute_matrices_1/ap_rst_n} \
              TRACE_OFFLOAD  {DEPTH 8192 MEM_SPACE FIFO MEM_INDEX 0 MASTER /interconnect_axilite/M03_AXI CLK_SRC /compute_matrices_1/ap_clk RST_SRC /compute_matrices_1/ap_rst_n SLR SLR0 DEDICATED 1} \
             ]

set_param bd.enable_dpa 1
set_param bd.debug_profile.script /home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/build_dir.hw.zedboard_202020_1/link/vivado/vpl/.local/debug_profile_automation.tcl
apply_bd_automation -rule xilinx.com:bd_rule:debug_profile -opts $dpa_opts -dict $dpa_dict

# Write debug_ip_layout
debug_profile::write_debug_ip_layout false "xilinx.com:xd:zedboard_202020_1:202020.1" "/home/inf2021/iathanasi/embedded/Embedded-Systems/lab3/lsal/hw_baseline/build_dir.hw.zedboard_202020_1/link/int"
