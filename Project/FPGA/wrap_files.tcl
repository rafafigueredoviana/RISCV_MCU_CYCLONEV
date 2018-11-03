puts "\nBuilding design files"
if {[file isdirectory rtl_wrap] == 0} {
  file  mkdir rtl_wrap
}

source ../source_files.tcl

foreach design [concat $ORIGINAL_SOURCES $MODIFIED_SOURCES $MCU_FILES] {
    puts "Source files: $design"
    # Create the file set
    set design_files_verilog [glob -directory  $design "*.*v*"]
    foreach file_inc_verilog [concat $design_files_verilog] {
        file copy -force $file_inc_verilog rtl_wrap
    }
}

cd rtl_wrap

# Delete unwanted files

#file delete -force sleep_unit.sv

file delete -force apb_uart.sv

file delete -force random_stalls.sv

file delete -force core_region.sv

file delete -force pulpino_top.sv

file delete -force tb_axi_read_only.sv

file delete -force tb_axi_DP.sv

file delete -force tb_axi_write_only.sv

file delete -force fpu_shared.sv

file delete -force fpu_defs.sv

foreach system_verilog_file [glob "*.sv"] {

  set_global_assignment -name SYSTEMVERILOG_FILE ./rtl_wrap/$system_verilog_file

}

foreach verilog_file [glob "*.v"] {

  set_global_assignment -name VERILOG_FILE ./rtl_wrap/$verilog_file

}
