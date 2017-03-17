if {[cmp get_assignment_value "" "" "" ROOT] != ""} {
  cmp remove_assignment "" "" "" ROOT ""
}
if {[cmp get_assignment_value "" "" "" FAMILY] !=  ""} {
  cmp remove_assignment "" "" "" FAMILY ""
}
if {[cmp get_assignment_value "FPGA" "" "" DEVICE] !=  ""} {
  cmp remove_assignment "FPGA" "" "" DEVICE ""
}
if {[project get_assignment_value "" "vpclkin\[0\]_setting" "" "" "DUTY_CYCLE"] != ""} {
  project remove_assignment "" "vpclkin\[0\]_setting" "" "" "DUTY_CYCLE" ""
}
if {[project get_assignment_value "FPGA" "" "" "vpclkin\[0\]" "GLOBAL_SIGNAL"] !=  ""} {
  project remove_assignment "FPGA" "" "" "vpclkin\[0\]" "GLOBAL_SIGNAL" ""
}
if {[project get_assignment_value "FPGA" "" "" "vpclkin\[0\]" "USE_CLOCK_SETTINGS"] != ""} {
  project remove_assignment "FPGA" "" "" "vpclkin\[0\]" "USE_CLOCK_SETTINGS" ""
}
if {[project get_assignment_value "" "vpclkin\[0\]_setting" "" "" "FMAX_REQUIREMENT"] != ""} {
  project remove_assignment "" "vpclkin\[0\]_setting" "" "" "FMAX_REQUIREMENT" ""
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
