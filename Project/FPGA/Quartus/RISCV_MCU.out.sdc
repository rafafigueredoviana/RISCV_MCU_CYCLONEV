## Generated SDC file "RISCV_MCU.out.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions
## and other software and tools, and its AMPP partner logic
## functions, and any output files from any of the foregoing
## (including device programming or simulation files), and any
## associated documentation or information are expressly subject
## to the terms and conditions of the Intel Program License
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Sat Nov  3 15:19:37 2018"

##
## DEVICE  "5CSEBA6U23I7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk} -period 3.333 -waveform { 2.499 4.166 } [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk}]
create_clock -name {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -period 3.333 -waveform { 0.000 1.666 } [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}]
create_clock -name {memory_mem_dqs_IN} -period 3.333 -waveform { 0.000 1.667 } [get_ports {memory_mem_dqs}] -add
create_clock -name {clock_input} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clock}]
create_clock -name {virtual_clk} -period 20.000 -waveform { 0.000 10.000 }


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock} -source [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_registers {u0|hps_0|hps_io|border|hps_sdram_inst|p0|umemphy|uio_pads|dq_ddio[*].ubidir_dq_dqs|altdq_dqs2_inst|dqs_enable_ctrl~DQSENABLEOUT_DFF}]
create_generated_clock -name {memory_mem_ck} -source [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {memory_mem_ck}]
create_generated_clock -name {memory_mem_ck_n} -source [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} -invert [get_ports {memory_mem_ck_n}]
create_generated_clock -name {memory_mem_dqs_OUT} -source [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {memory_mem_dqs}] -add
create_generated_clock -name {memory_mem_dqs_n_OUT} -source [get_registers {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk}] -master_clock {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk} [get_ports {memory_mem_dqs_n}]


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_n_OUT}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_OUT}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck_n}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {memory_mem_ck}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {clock_input}] -setup 0.170
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {clock_input}] -hold 0.060
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {clock_input}] -setup 0.170
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {clock_input}] -hold 0.060
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {clock_input}] -setup 0.170
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {clock_input}] -hold 0.060
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {clock_input}] -setup 0.170
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {clock_input}] -hold 0.060
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_IN}]  0.260
set_clock_uncertainty -rise_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_IN}]  0.260
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -rise_to [get_clocks {memory_mem_dqs_IN}]  0.260
set_clock_uncertainty -fall_from [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}] -fall_to [get_clocks {memory_mem_dqs_IN}]  0.260
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_ck_n}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_ck_n}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_ck}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_ck}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {virtual_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {virtual_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {clock_input}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {clock_input}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_IN}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_IN}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_ck_n}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_ck_n}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_ck}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_ck}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {virtual_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {virtual_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {clock_input}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {clock_input}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {memory_mem_dqs_IN}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {memory_mem_dqs_IN}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000
set_clock_uncertainty -fall_from [get_clocks {memory_mem_dqs_IN}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  0.060
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -rise_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -fall_to [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}]  0.060
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_dqs_n_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_dqs_OUT}]  0.000
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_ck_n}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -rise_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|pll_write_clk_dq_write_clk}] -fall_to [get_clocks {memory_mem_ck}]  0.226
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {clock_input}] -setup 0.080
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -rise_to [get_clocks {clock_input}] -hold 0.090
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {clock_input}] -setup 0.080
set_clock_uncertainty -rise_from [get_clocks {virtual_clk}] -fall_to [get_clocks {clock_input}] -hold 0.090
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {clock_input}] -setup 0.080
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -rise_to [get_clocks {clock_input}] -hold 0.090
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {clock_input}] -setup 0.080
set_clock_uncertainty -fall_from [get_clocks {virtual_clk}] -fall_to [get_clocks {clock_input}] -hold 0.090
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {virtual_clk}] -setup 0.090
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -rise_to [get_clocks {virtual_clk}] -hold 0.080
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {virtual_clk}] -setup 0.090
set_clock_uncertainty -rise_from [get_clocks {clock_input}] -fall_to [get_clocks {virtual_clk}] -hold 0.080
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {virtual_clk}] -setup 0.090
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -rise_to [get_clocks {virtual_clk}] -hold 0.080
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {virtual_clk}] -setup 0.090
set_clock_uncertainty -fall_from [get_clocks {clock_input}] -fall_to [get_clocks {virtual_clk}] -hold 0.080


#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {fetch_enable_input}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[0]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[1]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[2]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[3]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[4]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[5]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[6]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[7]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[8]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[9]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[10]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[11]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[12]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[13]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[14]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[15]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[16]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[17]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[18]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[19]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[20]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[21]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[22]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[23]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[24]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[25]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[26]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[27]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[28]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[29]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[30]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_input[31]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[0]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[0]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[1]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[1]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[2]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[2]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[3]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[3]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[4]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[4]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[5]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[5]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[6]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[6]}]
set_input_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_IN}]  0.153 [get_ports {memory_mem_dq[7]}]
set_input_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_IN}]  -0.416 [get_ports {memory_mem_dq[7]}]
set_input_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {reset_n}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[0]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[1]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[2]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[3]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[4]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[5]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[6]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[7]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[8]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[9]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[10]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[11]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[12]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[13]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[14]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[15]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[16]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[17]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[18]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[19]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[20]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[21]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[22]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[23]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[24]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[25]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[26]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[27]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[28]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[29]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[30]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_direction[31]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[0]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[1]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[2]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[3]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[4]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[5]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[6]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[7]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[8]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[9]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[10]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[11]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[12]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[13]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[14]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[15]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[16]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[17]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[18]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[19]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[20]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[21]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[22]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[23]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[24]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[25]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[26]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[27]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[28]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[29]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[30]}]
set_output_delay -add_delay  -clock [get_clocks {virtual_clk}]  2.000 [get_ports {gpio_output[31]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[0]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[0]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[1]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[1]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[2]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[2]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[3]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[3]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[4]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[4]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[5]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[5]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[6]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[6]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[7]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[7]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[8]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[8]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[9]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[9]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[10]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[10]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[11]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[11]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_a[12]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_a[12]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_ba[0]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_ba[0]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_ba[1]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_ba[1]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_ba[2]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_ba[2]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_cas_n}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_cas_n}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_cke}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_cke}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_cs_n}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_cs_n}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dm}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dm}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dm}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dm}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[0]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[0]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[0]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[0]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[1]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[1]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[1]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[1]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[2]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[2]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[2]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[2]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[3]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[3]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[3]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[3]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[4]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[4]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[4]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[4]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[5]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[5]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[5]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[5]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[6]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[6]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[6]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[6]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_n_OUT}]  0.386 [get_ports {memory_mem_dq[7]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_n_OUT}]  -0.382 [get_ports {memory_mem_dq[7]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_dqs_OUT}]  0.386 [get_ports {memory_mem_dq[7]}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_dqs_OUT}]  -0.382 [get_ports {memory_mem_dq[7]}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.301 [get_ports {memory_mem_dqs}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.032 [get_ports {memory_mem_dqs}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_odt}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_odt}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_ras_n}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_ras_n}]
set_output_delay -add_delay -max -clock [get_clocks {memory_mem_ck}]  2.037 [get_ports {memory_mem_we_n}]
set_output_delay -add_delay -min -clock [get_clocks {memory_mem_ck}]  1.297 [get_ports {memory_mem_we_n}]


#**************************************************************
# Set Clock Groups
#**************************************************************

set_clock_groups -physically_exclusive -group [get_clocks {memory_mem_dqs_IN}] -group [get_clocks {memory_mem_dqs_OUT memory_mem_dqs_n_OUT}]
set_clock_groups -physically_exclusive -group [get_clocks {memory_mem_dqs_IN}] -group [get_clocks {memory_mem_dqs_OUT memory_mem_dqs_n_OUT}]


#**************************************************************
# Set False Path
#**************************************************************

set_false_path  -fall_from  [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {memory_mem_ck}]
set_false_path  -from  [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]
set_false_path  -fall_from  [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {memory_mem_ck}]
set_false_path  -from  [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}]  -to  [get_clocks {*_IN}]
set_false_path  -from  [get_clocks *]  -to  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]
set_false_path -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -to [get_ports {{memory_mem_a[0]} {memory_mem_a[10]} {memory_mem_a[11]} {memory_mem_a[12]} {memory_mem_a[1]} {memory_mem_a[2]} {memory_mem_a[3]} {memory_mem_a[4]} {memory_mem_a[5]} {memory_mem_a[6]} {memory_mem_a[7]} {memory_mem_a[8]} {memory_mem_a[9]} {memory_mem_ba[0]} {memory_mem_ba[1]} {memory_mem_ba[2]} memory_mem_cas_n memory_mem_cke memory_mem_cs_n memory_mem_odt memory_mem_ras_n memory_mem_we_n}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {memory_mem_dqs_OUT}]
set_false_path -fall_from [get_clocks {mcu_qsys:u0|mcu_qsys_hps_0:hps_0|mcu_qsys_hps_0_hps_io:hps_io|mcu_qsys_hps_0_hps_io_border:border|hps_sdram:hps_sdram_inst|hps_sdram_pll:pll|afi_clk_write_clk}] -to [get_ports {{memory_mem_a[0]} {memory_mem_a[10]} {memory_mem_a[11]} {memory_mem_a[12]} {memory_mem_a[1]} {memory_mem_a[2]} {memory_mem_a[3]} {memory_mem_a[4]} {memory_mem_a[5]} {memory_mem_a[6]} {memory_mem_a[7]} {memory_mem_a[8]} {memory_mem_a[9]} {memory_mem_ba[0]} {memory_mem_ba[1]} {memory_mem_ba[2]} memory_mem_cas_n memory_mem_cke memory_mem_cs_n memory_mem_odt memory_mem_ras_n memory_mem_we_n}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*vfifo~INC_WR_PTR_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_OUT_RDATA_VALID_DFF}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|vfifo~QVLD_IN_DFF}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~RD_LATENCY_DFF*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|*output_path_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*altdq_dqs2_inst|extra_output_pad_gen[*].ddio_out*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*c0|hmc_inst~FF_*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*phase_align_os~DFF*}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~OUTPUT_DFF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}]
set_false_path -to [get_ports {memory_mem_dqs_n}]
set_false_path -to [get_ports {memory_mem_ck}]
set_false_path -to [get_ports {memory_mem_ck_n}]
set_false_path -to [get_ports {memory_mem_reset_n}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_clocks {memory_mem_dqs_OUT}]
set_false_path -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_enable_ctrl~*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|dqs_delay_chain~POSTAMBLE_DFF}]
set_false_path -from [get_ports {hps_io_hps_io_gpio_inst_LOANIO49}]
set_false_path -to [get_ports {hps_io_hps_io_gpio_inst_LOANIO49}]
set_false_path -from [get_ports {hps_io_hps_io_gpio_inst_LOANIO50}]
set_false_path -to [get_ports {hps_io_hps_io_gpio_inst_LOANIO50}]



#**************************************************************
# Set Multicycle Path
#**************************************************************

set_multicycle_path -setup -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -hold -end -from  [get_clocks {u0|hps_0|hps_io|border|hps_sdram_inst|hps_sdram_p0_sampling_clock}]  -to  [get_clocks *] 2
set_multicycle_path -setup -end -to [get_registers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -hold -end -to [get_registers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|*uio_pads|*uaddr_cmd_pads|*clock_gen[*].umem_ck_pad|*}] 4
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*lfifo~LFIFO_IN_READ_EN_FULL_DFF}] 1
set_multicycle_path -setup -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 2
set_multicycle_path -hold -end -from [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*umemphy|hphy_inst~FF_*}] -to [get_keepers {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*p0|*altdq_dqs2_inst|*read_fifo~READ_ADDRESS_DFF}] 1


#**************************************************************
# Set Maximum Delay
#**************************************************************

set_max_delay -from [get_ports {memory_mem_dq[0]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[1]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[2]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[3]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[4]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[5]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[6]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000
set_max_delay -from [get_ports {memory_mem_dq[7]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] 0.000


#**************************************************************
# Set Minimum Delay
#**************************************************************

set_min_delay -from [get_ports {memory_mem_dq[0]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[1]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[2]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[3]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[4]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[5]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[6]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667
set_min_delay -from [get_ports {memory_mem_dq[7]}] -to [get_keepers {{*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].capture_reg~DFFLO} {*:u0|*:hps_0|*:hps_io|*:border|*:hps_sdram_inst|*:p0|*:umemphy|*:uio_pads|*:dq_ddio[*].ubidir_dq_dqs|*:altdq_dqs2_inst|*input_path_gen[*].aligned_input[*]}}] -1.667


#**************************************************************
# Set Input Transition
#**************************************************************
