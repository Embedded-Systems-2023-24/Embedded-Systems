# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_control {
string1 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
string2 { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
max_index { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
similarity_matrix { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
direction_matrix { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 48
	offset_end 55
}
N { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 56
	offset_end 63
}
M { 
	dir I
	width 32
	depth 1
	mode ap_none
	offset 64
	offset_end 71
}
ap_start { }
ap_done { }
ap_ready { }
ap_continue { }
ap_idle { }
}
dict set axilite_register_dict control $port_control


