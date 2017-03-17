
cmp start_batch

project start_batch

project start_batch buffer
cmp add_assignment "" "" "" ROOT "|buffer"
cmp add_assignment "" "" "" FAMILY "CYCLONE II"
cmp add_assignment "buffer" "" "" DEVICE "EP2C5T144C7"
project add_assignment "" "buffer" "" "" "EDA_DESIGN_ENTRY_SYNTHESIS_TOOL" "SYNPLIFY"
project add_assignment "" "eda_design_synthesis" "" "" "EDA_USE_LMF" "synplcty.lmf"
project add_assignment "" "nWE_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "buffer" "" "" "nWE" "GLOBAL_SIGNAL" "ON"
project add_assignment "buffer" "" "" "nWE" "USE_CLOCK_SETTINGS" "nWE_setting"
project add_assignment "" "nWE_setting" "" "" "FMAX_REQUIREMENT" "100.0MHZ"
project add_assignment "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "buffer" "" "" "|Wigend_In:wigend_in|wil_clk_i" "GLOBAL_SIGNAL" "ON"
project add_assignment "buffer" "" "" "|Wigend_In:wigend_in|wil_clk_i" "USE_CLOCK_SETTINGS" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting"
project add_assignment "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "FMAX_REQUIREMENT" "100.0MHZ"
project add_assignment "" "clk_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "buffer" "" "" "clk" "GLOBAL_SIGNAL" "ON"
project add_assignment "buffer" "" "" "clk" "USE_CLOCK_SETTINGS" "clk_setting"
project add_assignment "" "clk_setting" "" "" "FMAX_REQUIREMENT" "100.0MHZ"
project add_assignment "" "" "" "" "TAO_FILE" "myresults.tao"
project add_assignment "" "" "" "" "SOURCES_PER_DESTINATION_INCLUDE_COUNT" "1000"
project add_assignment "" "" "" "" "ROUTER_REGISTER_DUPLICATION" "ON"
project add_assignment "buffer" "" "nWE"  "nWE"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "buffer" "" "clk"  "nWE"  "TSU_REQUIREMENT"  "10.000ns"

# False path constraints 

# Multicycle constraints 

# Path delay constraints 

project end_batch buffer

project end_batch

cmp end_batch
