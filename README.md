# RISCV_MCU_CYCLONEV

![MCU Architecture](Doc/RISCV_MCU_CYCLONEV.png)

A basic implementation of the RISCV core into a DE10nano FPGA board. Its main components will be featured from the [Pulpino Project](https://github.com/pulp-platform/pulpino).

To use this project, you will need to clone the Pulpino repo that is inside the folder tree. In order to do this, use the following command:

git clone --recurse-submodules https://github.com/rafafigueredoviana/RISCV_MCU_CYCLONEV.git

If you have already downloaded the repository and wants to clone Pulpino's sumodule, use the following command:

git submodule update --init --recursive

Note: Due to some bugs while running update-ips.py in pulipino repository, i've added the repo's files inside a .zip file, located at /RTL/.

# Components:

Note: As the system is built, its components will be described here.

* A 32-bit RISCV core with FPU and a small set of interrupts
* A UART peripheral;
* A GPIO peripheral;
* 32KB (?) General Data Memory;
* An AXI-4 bus for peripheral interconnect.

# Goals:

Implement a fully functional system for basic aplications, which will include:
  * A fully constrained soft-core FPGA design;
  * An Eclipse project with target configuration set;
  * Some API/Drivers to enable peripheral usage.

# Plataform

A DE10nano FPGA board from Altera will be the target device for the system.
* Syntehsis tool: Quartus II v18.1;
* Simulation tool: Modelsim 10.5b.

# Folder strucure:

* Doc - Relevant documentation and recomended sources for project design;
* Project - Main project folder - it will contain the Quartus II 18.1 and Eclipse project files;
* RTL - Hardware description source files - it will include all IPs and self-made designs used in the project;
* Tesbench - Main testbenches files and definitions.
