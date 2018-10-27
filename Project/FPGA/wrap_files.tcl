
puts "\nBuilding design files"
if {[file isdirectory rtl_wrap] == 0} {
  file  mkdir rtl_wrap
}


source ../source_files.tcl


foreach design [concat $PULPINO_SOURCE $APB_SOURCE $MODIFIED_SOURCES ] {
    puts "Source files: $design"
    # Create the file set
    set design_files_verilog [glob -directory  $design "*.*v*"]
    foreach file_inc_verilog [concat $design_files_verilog] {
        file copy -force $file_inc_verilog rtl_wrap
        #puts "#$file_inc_verilog Verilog #"
    }


}

cd rtl_wrap

# Delete unwanted files
#foreach testbench_file [glob "*tb*.*v"] {
  #file delete -force $testbench_file

#}

  #file delete -force sleep_unit.sv

file delete -force apb_uart.sv

file delete -force random_stalls.sv

file delete -force core_region.sv

file delete -force pulpino_top.sv

foreach system_verilog_file [glob "*.sv"] {
  #puts "Verilog file name: $verilog_file"
  set_global_assignment -name SYSTEMVERILOG_FILE ./rtl_wrap/$system_verilog_file

}

foreach verilog_file [glob "*.v"] {
  #puts "Verilog file name: $verilog_file"
  set_global_assignment -name VERILOG_FILE ./rtl_wrap/$verilog_file

}
