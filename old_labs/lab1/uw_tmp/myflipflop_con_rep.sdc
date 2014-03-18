###################################################################################
# Mentor Graphics Corporation
#
###################################################################################

#################
# Attributes
#################

##################
# Clocks
##################
create_clock { i_clock } -domain ClockDomain0 -name i_clock -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 
create_clock { reg_proc_b_intermediary/out } -domain ClockDomain1 -name reg_proc_b_intermediary/out -period 4.000000 -waveform { 0.000000 2.000000 } -design rtl 

