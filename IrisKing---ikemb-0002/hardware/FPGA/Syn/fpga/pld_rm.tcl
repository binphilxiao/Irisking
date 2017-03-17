if {[cmp get_assignment_value "" "" "" ROOT] != ""} {
  cmp remove_assignment "" "" "" ROOT ""
}
if {[cmp get_assignment_value "" "" "" FAMILY] !=  ""} {
  cmp remove_assignment "" "" "" FAMILY ""
}
if {[cmp get_assignment_value "pld" "" "" DEVICE] !=  ""} {
  cmp remove_assignment "pld" "" "" DEVICE ""
}
if {[project get_assignment_value "" "nWE_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "nWE_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "nWE" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "nWE" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "nWE" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "nWE" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "nWE_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "nWE_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Button_1:Button_FW|Button_FW_clk_1k_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Button_1:Button_FW|Button_FW_clk_1k_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "|Button_1:Button_FW|Button_FW_clk_1k" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "|Button_1:Button_FW|Button_FW_clk_1k" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Button_1:Button_FW|Button_FW_clk_1k_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Button_1:Button_FW|Button_FW_clk_1k_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Button:Button_FQ|Button_FQ_clk_1k_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Button:Button_FQ|Button_FQ_clk_1k_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "|Button:Button_FQ|Button_FQ_clk_1k" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "|Button:Button_FQ|Button_FQ_clk_1k" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "|Button:Button_FQ|Button_FQ_clk_1k" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "|Button:Button_FQ|Button_FQ_clk_1k" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Button:Button_FQ|Button_FQ_clk_1k_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Button:Button_FQ|Button_FQ_clk_1k_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In_2:wigend_in3|wil_clk_i" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "|Wigend_In_2:wigend_in3|wil_clk_i" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Wigend_In_2:wigend_in3|wigend_in3_wil_clk_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In_1:wigend_in2|wil_clk_i" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "|Wigend_In_1:wigend_in2|wil_clk_i" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Wigend_In_1:wigend_in2|wigend_in2_wil_clk_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In:wigend_in1|wil_clk_i" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "|Wigend_In:wigend_in1|wil_clk_i" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Wigend_In:wigend_in1|wigend_in1_wil_clk_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "pld" "" "" "clk" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "pld" "" "" "clk" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "pld" "" "" "clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "pld" "" "" "clk" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "clk_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "clk_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "" "" "TAO_FILE" "myresults.tao"] != ""} {
  project remove_assignment "" "" "" "TAO_FILE" "myresults.tao" ""
}
if {[project get_assignment_value "" "" "" "SOURCES_PER_DESTINATION_INCLUDE_COUNT" "1000"] != ""} {
  project remove_assignment "" "" "" "SOURCES_PER_DESTINATION_INCLUDE_COUNT" "1000" ""
}
if {[project get_assignment_value "" "" "" "ROUTER_REGISTER_DUPLICATION" "ON"] != ""} {
  project remove_assignment "" "" "" "ROUTER_REGISTER_DUPLICATION" "ON" ""
}
