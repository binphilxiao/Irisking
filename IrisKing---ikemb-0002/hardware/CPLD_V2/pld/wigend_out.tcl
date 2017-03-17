
cmp start_batch

project start_batch

project start_batch pld
cmp add_assignment "" "" "" ROOT "|pld"
cmp add_assignment "" "" "" FAMILY "CYCLONE II"
cmp add_assignment "pld" "" "" DEVICE "EP2C5T144C7"
project add_assignment "" "pld" "" "" "EDA_DESIGN_ENTRY_SYNTHESIS_TOOL" "SYNPLIFY"
project add_assignment "" "eda_design_synthesis" "" "" "EDA_USE_LMF" "synplcty.lmf"
project add_assignment "" "|wil_clk_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "pld" "" "" "|wil_clk_i_0" "GLOBAL_SIGNAL" "ON"
project add_assignment "pld" "" "" "|wil_clk_i_0" "USE_CLOCK_SETTINGS" "|wil_clk_setting"
project add_assignment "" "|wil_clk_setting" "" "" "FMAX_REQUIREMENT" "100.0MHZ"
project add_assignment "" "clk_setting" "" "" "DUTY_CYCLE" "50"
project add_assignment "pld" "" "" "clk" "GLOBAL_SIGNAL" "ON"
project add_assignment "pld" "" "" "clk" "USE_CLOCK_SETTINGS" "clk_setting"
project add_assignment "" "clk_setting" "" "" "FMAX_REQUIREMENT" "100.0MHZ"
project add_assignment "" "" "" "" "TAO_FILE" "myresults.tao"
project add_assignment "" "" "" "" "SOURCES_PER_DESTINATION_INCLUDE_COUNT" "1000"
project add_assignment "" "" "" "" "ROUTER_REGISTER_DUPLICATION" "ON"
project add_assignment "pld" "" "clk"  "data\[0\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[1\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[2\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[3\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[4\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[5\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[6\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[7\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "eint11"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out0\[0\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out0\[1\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out1\[0\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out1\[1\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out2\[0\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil_out2\[1\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "GPIO\[0\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "GPIO\[1\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "GPIO\[2\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "GPIO\[3\]"  "TCO_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "nOE"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "nWE"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "nGCS\[3\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[2\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[3\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[4\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[5\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[6\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[7\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "addr\[8\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[0\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[1\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[2\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[3\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[4\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[5\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[6\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "data\[7\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil\[0\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "wil\[1\]"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "lock"  "TSU_REQUIREMENT"  "10.000ns"
project add_assignment "pld" "" "clk"  "cfg_rst"  "TSU_REQUIREMENT"  "10.000ns"

# False path constraints 

# Multicycle constraints 

# Path delay constraints 

project end_batch pld

project end_batch

cmp end_batch
