# Elaborate project

To elaborate the project, first open the Quartus folder and open the RISCV_MCU.qpf. Then go to
``bash
 Tools -> Tcl scripts
``
  and run
  ``bash
  ../wrap_files.tcl
  ``
   It will give an error, but the key source files will be added to the project. Check them at
``bash
    Assignment -> Settings -> Files
``
Now, run "Analysis and Syntheis" at
``bash
Processing -> Start -> Start Analysis and Syntheis
``
 or via the GUI menu.

To view the RTL schematic, go to
``bash
 Tools -> Netlist Viewers -> RTL Viewer
 ``
