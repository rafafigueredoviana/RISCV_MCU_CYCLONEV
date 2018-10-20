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

