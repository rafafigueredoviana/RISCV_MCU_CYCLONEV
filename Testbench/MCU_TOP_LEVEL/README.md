# MCU Top Level Testbench

To build and run the simulation project, open a terminal and type

* **make all**

The main project parameter definition *config.sv* will be overwrited by a new one configured to simulation runs.

The default application will change the GPIO pin located in addr 0x100 to '1' at some point in the simulation (check GPIO group in simulation window).
