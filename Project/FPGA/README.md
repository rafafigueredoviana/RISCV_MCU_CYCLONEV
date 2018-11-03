# Elaborate the project

To elaborate the project, first open the Quartus folder and open the RISCV_MCU.qpf. Then go to
``
 Tools -> Tcl scripts
``
  and run
  ``
  ../wrap_files.tcl
  ``
   The key source files will be added to the project. Check them at
``
    Assignment -> Settings -> Files
``

Now, run "Analysis and Elaboration" at
``
Processing -> Start -> Start Analysis and Elaboration
``
 or via the GUI menu.

To view the RTL schematic, go to
``
 Tools -> Netlist Viewers -> RTL Viewer
 ``

 To make a full sinthesis run, after elaborating the project run
 ``
 hps_sdram_p0_pin_assignments.tcl
``

On `` Tools -> Tcl scripts ``
PS:
You *MUST* run the hps_sdram_p0_pin_assignments.tcl, otherwise the fitter will not be able to route FPGA<->HPS ports.
