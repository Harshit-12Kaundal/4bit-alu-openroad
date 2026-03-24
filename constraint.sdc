// Creates a clock constraint named 'clk' with a period of 10 time units on the 'clk' port
// This defines the timing requirement for the clock signal in the design
create_clock -name clk -period 10 [get_ports clk] 