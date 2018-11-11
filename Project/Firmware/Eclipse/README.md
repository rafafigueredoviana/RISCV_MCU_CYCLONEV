# RISCV Firmware Folder

After building the project, you must open the RISCV_MCU_FPGA folder and run


``
$ ./build_boot_code.sh
``

It will copy the boot_code.sv to the RTL/Modified_source/pulpino folder. This way every new simulation or sinthesis run will use the last compiled code.
