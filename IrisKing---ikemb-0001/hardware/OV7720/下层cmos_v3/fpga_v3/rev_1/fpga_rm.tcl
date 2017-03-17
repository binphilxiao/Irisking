if {[cmp get_assignment_value "" "" "" ROOT] != ""} {
  cmp remove_assignment "" "" "" ROOT ""
}
if {[cmp get_assignment_value "" "" "" FAMILY] !=  ""} {
  cmp remove_assignment "" "" "" FAMILY ""
}
if {[cmp get_assignment_value "FPGA" "" "" DEVICE] !=  ""} {
  cmp remove_assignment "FPGA" "" "" DEVICE ""
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
