# RISCV Firmware Folder


After building the project, you must open the RISCV_MCU_FPGA folder and run


``
$ ./build_boot_code.sh
``

It will copy the boot_code.sv to the RTL/Modified_source/pulpino folder. This way every new simulation or sinthesis run will use the last compiled code.

# ECLIPSE 


To compile firmware for target hardware, please install [GNU MCU Eclipse IDE for C/C++ Developers](https://github.com/gnu-mcu-eclipse/org.eclipse.epp.packages/releases) and [GNU MCU EMBEDDED GCC](https://github.com/gnu-mcu-eclipse/riscv-none-gcc/releases).
