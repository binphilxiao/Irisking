if {[cmp get_assignment_value "" "" "" ROOT] != ""} {
  cmp remove_assignment "" "" "" ROOT ""
}
if {[cmp get_assignment_value "" "" "" FAMILY] !=  ""} {
  cmp remove_assignment "" "" "" FAMILY ""
}
if {[cmp get_assignment_value "buffer" "" "" DEVICE] !=  ""} {
  cmp remove_assignment "buffer" "" "" DEVICE ""
}
if {[project get_assignment_value "" "nWE_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "nWE_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "buffer" "" "" "nWE" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "buffer" "" "" "nWE" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "buffer" "" "" "nWE" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "buffer" "" "" "nWE" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "nWE_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "nWE_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "buffer" "" "" "|Wigend_In:wigend_in|wil_clk_i" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "buffer" "" "" "|Wigend_In:wigend_in|wil_clk_i" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "buffer" "" "" "|Wigend_In:wigend_in|wigend_in_wil_clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "buffer" "" "" "|Wigend_In:wigend_in|wigend_in_wil_clk" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "|Wigend_In:wigend_in|wigend_in_wil_clk_setting" "" "" "FMAX_REQUIREMENT" ""
}
if {[project get_assignment_value "" "clk_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "clk_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "buffer" "" "" "clk" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "buffer" "" "" "clk" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "buffer" "" "" "clk" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "buffer" "" "" "clk" "USE_CLOCK_SETTINGS" ""
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
