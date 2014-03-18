###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################
set_attribute -name ram_processed -value "true" -instance u_lab3/mem/mem -design rtl 

set_attribute -name ram_processed -value "true" -instance u_lab3/mem_0/mem_0 -design rtl 

set_attribute -name ram_processed -value "true" -instance u_lab3/mem_1/mem_1 -design rtl 




##################
# Clocks
##################
create_clock { clk } -domain ClockDomain0 -name clk -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 

