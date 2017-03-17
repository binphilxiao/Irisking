# Run with quartus_sh -t <x_cons.tcl>

# Global assignments 
set_global_assignment -name TOP_LEVEL_ENTITY "|pld"
set_global_assignment -name FAMILY "MAX II"
set_global_assignment -name DEVICE "EPM240T100C5"
set_global_assignment -section_id pld -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "SYNPLIFY"
set_global_assignment -section_id eda_design_synthesis -name EDA_USE_LMF synplcty.lmf
set_global_assignment -name TAO_FILE "myresults.tao"
set_global_assignment -name SOURCES_PER_DESTINATION_INCLUDE_COUNT "1000" 
set_global_assignment -name ROUTER_REGISTER_DUPLICATION ON
set_global_assignment -name REMOVE_REDUNDANT_LOGIC_CELLS "OFF"
set_global_assignment -name REMOVE_DUPLICATE_REGISTERS "OFF"
set_global_assignment -name REMOVE_DUPLICATE_LOGIC "OFF"
# set_global_assignment -name FITTER_EFFORT "STANDARD FIT"
#set_global_assignment -name EDA_RESYNTHESIS_TOOL "AMPLIFY"

# Clock assignments 

create_base_clock clk_setting -fmax 1.0mhz -duty_cycle 50.00 -target clk 


# False path constraints 

# Multicycle constraints 

# Path delay constraints 
