project add_assignment "" "buffer" "" "" "EDA_DESIGN_ENTRY_SYNTHESIS_TOOL" "SYNPLIFY"
project add_assignment "" "eda_design_synthesis" "" "" EDA_INPUT_DATA_FORMAT EDIF
project add_assignment "" "eda_design_synthesis" "" "" EDA_INPUT_VCC_NAME VCC
project add_assignment "" "eda_design_synthesis" "" "" EDA_INPUT_GND_NAME GND
project add_assignment "" "eda_design_synthesis" "" "" EDA_LMF_FILE synplcty.lmf
import_assignments_from_maxplus2 buffer.acf
