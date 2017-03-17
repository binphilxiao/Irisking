if {[cmp get_assignment_value "buffer" "" "" DEVICE] !=  ""} {
  cmp remove_assignment "buffer" "" "" DEVICE ""
}
