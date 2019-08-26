
set Project_name RISCV_MCU

quit -sim


set main_folder [pwd]

if {[file isdirectory Simulation] == 0} {

    mkdir Simulation

	}

set sim_folder $main_folder/Simulation

cd $sim_folder

source ../wrap_files.tcl

cd $sim_folder

if {[file isdirectory $sim_folder/$Project_name] == 0} {

    puts "\nCreate new project simulation Library..."

    vlib $sim_folder/$Project_name


    vmap $Project_name $sim_folder/$Project_name

    vmap work $sim_folder/$Project_name

    puts "\nNew project simulation Library created!"

} else {

    puts "\nExisting project simulation Library detected!"

}

cp ../config.sv rtl_wrap

set source_rtl [glob -directory  rtl_wrap "*.*v"]

puts "\nCompiling project files..."

vlog -work $Project_name rtl_wrap/config.sv
vlog -work $Project_name rtl_wrap/apu_core_package.sv
vlog -work $Project_name rtl_wrap/riscv_defines.sv
vlog -work $Project_name rtl_wrap/riscv_tracer_defines.sv

foreach design_rtl [concat $source_rtl] {
    vlog -work $Project_name $design_rtl
}



vsim RISCV_MCU.mcu_top_level_tb

do ../wave.do

run 30 ns
