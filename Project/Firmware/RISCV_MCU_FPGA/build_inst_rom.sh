python ./utils/s19toinstRom.py ./Debug/RISCV_MCU_FPGA.srec

rm inst_rom_code.cde

cp inst_rom_code.sv ./Debug

mv inst_rom_code.sv  ../../../RTL/Modified_source/pulpino
