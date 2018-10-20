# RISCV_MCU_CYCLONEV

An basic implementation of the RISCV core into a DE10nano FPGA board.

# Components:

Note: As the system is built, its components will be described here.

* A 32-bit RISCV core with FPU and a small set of interrupts
* A UART peripheral;
* 32KB (?) General Data Memory;
* An AXI-4 bus for peripheral interconnect.

# Goals:

Implement a fully functional system for basic aplications, which will include:
  * A fully constrained soft-core FPGA design;
  * An Eclipse project with target configuration set;
  * Some API/Drivers to enable peripheral usage.

# Plataform

A DE10nano FPGA board from Altera will be the target device for the system. Thus, the Quartus II software will be used.
The project will be featured in the 13.1 version of the tool, under personal preference.
To simulate the project, the Modelsim 10.5b version will be used.

# Folder strucure:

* Doc - Relevant documentation and recomended sources for project design;
* Project - Main project folder - it will contain the Quartus II 13.1 project files
* RTL - Hardware description source files - it will include all IPs and self-made designs used in the project
* Tesbench - Main testbenches files and definitions
