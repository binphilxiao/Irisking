
cmp start_batch

project start_batch

project start_batch FPGA
cmp add_assignment "" "" "" ROOT "|FPGA"
cmp add_assignment "" "" "" FAMILY "CYCLONE II"
cmp add_assignment "FPGA" "" "" DEVICE "EP2C5T144C7"
project add_assignment "" "FPGA" "" "" "EDA_DESIGN_ENTRY_SYNTHESIS_TOOL" "SYNPLIFY"
project add_assignment "" "eda_design_synthesis" "" "" "EDA_USE_LMF" "synplcty.lmf"
project add_assignment "" "vpclkin\[0\]_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "FPGA" "" "" "vpclkin\[0\]" "GLOBAL_SIGNAL" "ON"
project add_assignment "FPGA" "" "" "vpclkin\[0\]" "USE_CLOCK_SETTINGS" "vpclkin\[0\]_setting"
project add_assignment "" "vpclkin\[0\]_setting" "" "" "FMAX_REQUIREMENT" "1.0MHZ"
project add_assignment "" "" "" "" "TAO_FILE" "myresults.tao"
project add_assignment "" "" "" "" "SOURCES_PER_DESTINATION_INCLUDE_COUNT" "1000"
project add_assignment "" "" "" "" "ROUTER_REGISTER_DUPLICATION" "ON"

# False path constraints 

# Multicycle constraints 

# Path delay constraints 

project end_batch FPGA

project end_batch

cmp end_batch