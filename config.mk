# Export the design name for the project
export DESIGN_NAME = alu

# Specify the technology platform to be used
export PLATFORM = sky130hd

# Define the Verilog source files for the design
export VERILOG_FILES = $(DESIGN_DIR)/alu.v

# Specify the SDC (Synopsys Design Constraints) file for timing constraints
export SDC_FILE = $(DESIGN_DIR)/constraint.sdc

# Define the clock signal port name
export CLOCK_PORT = clk

# Set the clock period in nanoseconds
export CLOCK_PERIOD = 10.0

# Specify the die area coordinates (lower_x lower_y upper_x upper_y)
export DIE_AREA = 0 0 100 100

# Specify the core area coordinates within the die (lower_x lower_y upper_x upper_y)
export CORE_AREA = 10 10 90 90