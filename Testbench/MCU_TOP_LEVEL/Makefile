.PHONY: help
help:
	@echo "Options available:"
	@echo "\tall - Build simulation projectr"
	@echo "\tclean - Clean simulation project"

.PHONY: all
all: #clean
	vsim -do build_simulation.tcl 

.PHONY: clean
clean:
	rm -r Simulation

.PHONY: rebuild
rebuild: clean
	vsim -do build_simulation.tcl 
