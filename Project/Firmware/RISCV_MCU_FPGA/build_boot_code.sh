python ./utils/s19toboot.py ./Debug/RISCV_MCU_FPGA.srec

rm boot_code.cde

cp boot_code.sv ./Debug

mv boot_code.sv  ../../../../RTL/Modified_source/pulpino
