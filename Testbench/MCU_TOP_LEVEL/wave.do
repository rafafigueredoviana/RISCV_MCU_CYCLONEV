onerror {resume}
quietly virtual function -install /mcu_top_level_tb/mcu_top_inst/riscv_core_instance -env /mcu_top_level_tb { &{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[12], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[11], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[10], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[9], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[8], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[7], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[6], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[5], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[4], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[3], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[2], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[1], /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[0] }} Boot_addr
quietly virtual signal -install /mcu_top_level_tb/mcu_top_inst/apb_gpio_instance {/mcu_top_level_tb/mcu_top_inst/apb_gpio_instance/PADDR  } GPIO_ADDR
quietly virtual signal -install /mcu_top_level_tb/mcu_top_inst/apb_gpio_instance { /mcu_top_level_tb/mcu_top_inst/apb_gpio_instance/PADDR[11:0]} GPIO_ADDR001
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {Control Signals} /mcu_top_level_tb/mcu_top_inst/clock
add wave -noupdate -expand -group {Control Signals} /mcu_top_level_tb/mcu_top_inst/reset_n
add wave -noupdate -expand -group {Control Signals} /mcu_top_level_tb/mcu_top_inst/fetch_enable_input
add wave -noupdate -expand -group {Control Signals} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/irq_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/clk
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/rst_n
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_req_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_gnt_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_rvalid_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_addr_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_we_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_be_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_rdata_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port0_wdata_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_req_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_gnt_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_rvalid_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_addr_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_we_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_be_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_rdata_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/port1_wdata_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_en_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_addr_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_we_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_be_o
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_rdata_i
add wave -noupdate -group {Inst RAM Mux} /mcu_top_level_tb/mcu_top_inst/inst_ram_mux_i/ram_wdata_o
add wave -noupdate -group {Instruction Memory} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/Boot_addr
add wave -noupdate -group {Instruction Memory} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[31]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[30]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[29]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[28]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[27]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[26]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[25]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[24]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[23]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[22]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[21]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[20]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[19]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[18]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[17]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[16]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[15]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[14]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[13]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[12]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[11]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[10]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[9]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[8]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[7]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[6]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[5]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[4]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[3]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[2]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[1]} -radix binary} {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[0]} -radix binary}} -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[31]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[30]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[29]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[28]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[27]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[26]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[25]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[24]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[23]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[22]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[21]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[20]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[19]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[18]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[17]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[16]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[15]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[14]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[13]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[12]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[11]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[10]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[9]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[8]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[7]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[6]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[5]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[4]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[3]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[2]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[1]} {-height 16 -radix binary} {/mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o[0]} {-height 16 -radix binary}} /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_addr_o
add wave -noupdate -group {Instruction Memory} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/instr_rdata_i
add wave -noupdate -group {General Data Memory} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/data_addr_o
add wave -noupdate -group {General Data Memory} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/data_rdata_i
add wave -noupdate -group {General Data Memory} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/data_wdata_o
add wave -noupdate -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/riscv_core_instance/data_gnt_i
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/is_boot
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/is_boot_q
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/clk
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/rst_n
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/en_i
add wave -noupdate -group {Instr RAM Wrap} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/addr_i
add wave -noupdate -group {Instr RAM Wrap} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/wdata_i
add wave -noupdate -group {Instr RAM Wrap} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/rdata_o
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/we_i
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/be_i
add wave -noupdate -group {Instr RAM Wrap} /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/bypass_en_i
add wave -noupdate -group {Inst ROM} -label CLK /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/inst_rom_wrap_i/clk
add wave -noupdate -group {Inst ROM} -label RST_N /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/inst_rom_wrap_i/rst_n
add wave -noupdate -group {Inst ROM} -label EN /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/inst_rom_wrap_i/en_i
add wave -noupdate -group {Inst ROM} -label Addr -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/inst_rom_wrap_i/addr_i
add wave -noupdate -group {Inst ROM} -label RDATA /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/inst_rom_wrap_i/rdata_o
add wave -noupdate -group {Boot ROM} -format Literal -label is_boot -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/is_boot
add wave -noupdate -group {Boot ROM} -label A -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/boot_rom_wrap_i/boot_code_i/A
add wave -noupdate -group {Boot ROM} -label Q -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/boot_rom_wrap_i/boot_code_i/Q
add wave -noupdate -group {Boot ROM} -label en /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/boot_rom_wrap_i/en_i
add wave -noupdate -group {Boot ROM} -format Literal -label CSN -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/instruction_ram_wrap_instance/boot_rom_wrap_i/boot_code_i/CSN
add wave -noupdate -group {Single Port RAM} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[14]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[13]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[12]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[11]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[10]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[9]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[8]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[7]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[6]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[5]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[4]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[3]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[2]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[0]} -radix hexadecimal}} -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[14]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[13]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[12]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[11]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[10]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[9]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[8]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[7]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[6]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[5]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[4]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[3]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[2]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/addr_i
add wave -noupdate -group {Single Port RAM} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/wdata_i
add wave -noupdate -group {Single Port RAM} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/rdata_o
add wave -noupdate -group {Single Port RAM} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/we_i
add wave -noupdate -group {Single Port RAM} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/be_i
add wave -noupdate -group {Single Port RAM} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/single_port_ram_wrap_instance/sp_ram_i/en_i
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_addr_i
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_we_i
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_req_i
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_wdata_i
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_rdata_o
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_gnt_o
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_rvalid_o
add wave -noupdate -group {Core 2 Axi} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/core2axi_instance/data_be_i
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_addr}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_prot}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_region}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_len}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_size}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_burst}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_lock}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_cache}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_qos}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_id}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_user}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_ready}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/aw_valid}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_addr}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_prot}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_region}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_len}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_size}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_burst}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_lock}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_cache}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_qos}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_id}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_user}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_ready}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/ar_valid}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_valid}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_data}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_strb}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_user}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_last}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/w_ready}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_data}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_resp}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_last}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_id}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_user}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_ready}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/r_valid}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/b_resp}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/b_id}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/b_user}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/b_ready}
add wave -noupdate -expand -group {MCU AXI Master} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/masters[0]/b_valid}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_addr}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_prot}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_region}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_len}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_size}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_burst}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_lock}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_cache}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_qos}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_id}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_user}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_ready}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/aw_valid}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_addr}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_prot}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_region}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_len}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_size}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_burst}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_lock}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_cache}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_qos}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_id}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_user}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_ready}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/ar_valid}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_valid}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_data}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_strb}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_user}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_last}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/w_ready}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_data}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_resp}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_last}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_id}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_user}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_ready}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/r_valid}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/b_resp}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/b_id}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/b_user}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/b_ready}
add wave -noupdate -group {AXI Slave 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[0]/b_valid}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_addr}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_prot}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_region}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_len}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_size}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_burst}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_lock}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_cache}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_qos}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_id}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_user}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_ready}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/aw_valid}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_addr}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_prot}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_region}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_len}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_size}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_burst}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_lock}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_cache}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_qos}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_id}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_user}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_ready}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/ar_valid}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_valid}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_data}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_strb}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_user}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_last}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/w_ready}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_data}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_resp}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_last}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_id}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_user}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_ready}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/r_valid}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/b_resp}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/b_id}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/b_user}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/b_ready}
add wave -noupdate -group {AXI Slave 1} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[1]/b_valid}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_addr}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_prot}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_region}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_len}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_size}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_burst}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_lock}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_cache}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_qos}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_id}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_user}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_ready}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/aw_valid}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_addr}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_prot}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_region}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_len}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_size}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_burst}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_lock}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_cache}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_qos}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_id}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_user}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_ready}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/ar_valid}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_valid}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_data}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_strb}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_user}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_last}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/w_ready}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_data}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_resp}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_last}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_id}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_user}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_ready}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/r_valid}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/b_resp}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/b_id}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/b_user}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/b_ready}
add wave -noupdate -group {AXI Slave 2} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/slaves[2]/b_valid}
add wave -noupdate -group GPIO -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/apb_gpio_instance/GPIO_ADDR001
add wave -noupdate -group GPIO /mcu_top_level_tb/mcu_top_inst/apb_gpio_instance/PWDATA
add wave -noupdate -group GPIO /mcu_top_level_tb/mcu_top_inst/gpio_output
add wave -noupdate -group GPIO /mcu_top_level_tb/mcu_top_inst/gpio_input
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/PADDR
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/PWDATA
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/PWRITE
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/PSEL
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/PENABLE
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/irq_i
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/event_i
add wave -noupdate -group {Event Unit} /mcu_top_level_tb/mcu_top_inst/apb_event_unit_instance/irq_o
add wave -noupdate -group {AXI BUS II} -expand /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/s_master_aw_addr
add wave -noupdate -group {AXI BUS II} -expand /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/s_slave_aw_addr
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/clk
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/rst_n
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/test_en_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlen_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awsize_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awburst_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlock_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awcache_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awprot_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awregion_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awuser_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awqos_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awvalid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awready_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wdata_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wstrb_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wlast_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wuser_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wvalid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wready_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bresp_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bvalid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_buser_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bready_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_araddr_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlen_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arsize_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arburst_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlock_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arcache_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arprot_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_aruser_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arqos_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arvalid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arready_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rdata_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rresp_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rlast_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_ruser_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rvalid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rready_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlen_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awsize_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awburst_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlock_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awcache_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awprot_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awregion_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awuser_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awqos_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awvalid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awready_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wdata_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wvalid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wready_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bresp_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_buser_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bvalid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bready_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_araddr_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlen_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arsize_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arburst_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlock_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arcache_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arprot_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arregion_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_aruser_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arqos_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arvalid_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arready_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rdata_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rresp_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rlast_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_ruser_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rvalid_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rready_o
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/cfg_START_ADDR_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/cfg_END_ADDR_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/cfg_valid_rule_i
add wave -noupdate -group {AXI REQ BLOCK 1} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/cfg_connectivity_map_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/clk
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/rst_n
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/test_en_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i[0]} -radix hexadecimal}} -expand -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlen_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awsize_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awburst_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlock_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awcache_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awprot_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awregion_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awuser_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awqos_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awvalid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awready_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wdata_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wstrb_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wlast_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wuser_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wvalid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wready_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bresp_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bvalid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_buser_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bready_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_araddr_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlen_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arsize_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arburst_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlock_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arcache_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arprot_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i[0]} -radix hexadecimal}} -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_aruser_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arqos_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arvalid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arready_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rdata_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rresp_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rlast_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_ruser_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rvalid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rready_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[2]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[0]} -radix hexadecimal}} -expand -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[2]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlen_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awsize_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awburst_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlock_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awcache_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awprot_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awregion_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awuser_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awqos_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awvalid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awready_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wdata_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[2]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[0]} -radix hexadecimal}} -expand -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[2]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[2]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[0]} -radix hexadecimal}} -expand -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[2]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal -childformat {{{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[2]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[1]} -radix hexadecimal} {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[0]} -radix hexadecimal}} -subitemconfig {{/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[2]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[1]} {-height 16 -radix hexadecimal} {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o[0]} {-height 16 -radix hexadecimal}} /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wvalid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wready_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bresp_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_buser_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bvalid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bready_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_araddr_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlen_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arsize_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arburst_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlock_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arcache_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arprot_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arregion_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_aruser_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arqos_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arvalid_o
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arready_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rdata_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rresp_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rlast_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_ruser_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rvalid_i
add wave -noupdate -group {AXI REQ BLOCK 0} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rready_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/clk
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/rst_n
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/test_en_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awaddr_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlen_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awsize_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awburst_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awlock_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awcache_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awprot_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awregion_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awuser_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awqos_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awvalid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_awready_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wdata_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wstrb_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wlast_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wuser_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wvalid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_wready_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bresp_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bvalid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_buser_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_bready_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_araddr_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlen_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arsize_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arburst_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arlock_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arcache_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arprot_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arregion_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_aruser_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arqos_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arvalid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_arready_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rdata_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rresp_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rlast_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_ruser_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rvalid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/slave_rready_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awaddr_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlen_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awsize_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awburst_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awlock_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awcache_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awprot_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awregion_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awuser_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awqos_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awvalid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_awready_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wdata_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wstrb_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wlast_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wuser_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wvalid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_wready_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bresp_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_buser_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bvalid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_bready_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_araddr_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlen_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arsize_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arburst_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arlock_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arcache_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arprot_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arregion_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_aruser_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arqos_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arvalid_o
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_arready_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rdata_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rresp_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rlast_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_ruser_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rvalid_i
add wave -noupdate -group {AXI REQ BLOCK 2} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/master_rready_o
add wave -noupdate -group AW-ARB_TREE -radix decimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/N_MASTER}
add wave -noupdate -group AW-ARB_TREE -radix decimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/LOG_MASTER}
add wave -noupdate -group AW-ARB_TREE -radix decimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/TOTAL_N_MASTER}
add wave -noupdate -group AW-ARB_TREE {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[1]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/lock}
add wave -noupdate -group AW-ARB_TREE {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[1]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/INCR/FAN_IN_REQ/SEL}
add wave -noupdate -group AW-ARB_TREE {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/AW_ALLOCATOR/AW_ARB_TREE/N_WIRE}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awid_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awaddr_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awlen_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awsize_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awburst_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awlock_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awcache_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awprot_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awregion_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awuser_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awqos_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awvalid_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/awready_o}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wdata_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wstrb_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wlast_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wuser_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wvalid_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/wready_o}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arid_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/araddr_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arlen_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arsize_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arburst_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arlock_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arcache_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arprot_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arregion_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/aruser_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arqos_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arvalid_i}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/arready_o}
add wave -noupdate -group {REQ_BLOCK GEN 0} -radix hexadecimal {/mcu_top_level_tb/mcu_top_inst/axi_bus_interconnect/axi_node_i/_REQ_BLOCK_GEN[0]/REQ_BLOCK/bid_i}
add wave -noupdate -expand -group {AXI 2 APB bridge (B)} /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_b_buffer/master_valid_o
add wave -noupdate -expand -group {AXI 2 APB bridge (B)} /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_b_buffer/buffer_i/CS
add wave -noupdate -expand -group {AXI 2 APB bridge (B)} /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_b_buffer/buffer_i/valid_o
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/data_i
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/valid_i
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/grant_o
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/data_o
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/valid_o
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/grant_i
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/test_mode_i
add wave -noupdate -expand -group {AXI 2 APB Bridge (W)} -radix hexadecimal /mcu_top_level_tb/mcu_top_inst/axi2apb_bridge_instance/genblk1/axi2apb_i/Slave_w_buffer/buffer_i/CS
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5796 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 552
configure wave -valuecolwidth 376
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {5453 ps} {6111 ps}
