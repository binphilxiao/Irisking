source "C:/Program Files/Synplicity/fpga_862/lib/altera/quartus_max_cons.tcl"
syn_create_and_open_prj pld
source $::quartus(binpath)/prj_asd_import.tcl
syn_create_and_open_csf pld
syn_handle_cons pld
