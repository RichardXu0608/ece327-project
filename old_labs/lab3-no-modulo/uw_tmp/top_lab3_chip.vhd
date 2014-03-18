-- Copyright (C) 1991-2011 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II"
-- VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

-- DATE "02/15/2014 13:30:21"

-- 
-- Device: Altera EP2C35F672C7 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_lab3_chip IS
    PORT (
	nrst : IN std_logic;
	clk : IN std_logic;
	rxflex : IN std_logic;
	txflex : OUT std_logic;
	ctsflex : OUT std_logic;
	o_sevenseg : OUT std_logic_vector(15 DOWNTO 0)
	);
END top_lab3_chip;

-- Design Ports Information
-- txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- ctsflex	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[7]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_sevenseg[15]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF top_lab3_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_nrst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rxflex : std_logic;
SIGNAL ww_txflex : std_logic;
SIGNAL ww_ctsflex : std_logic;
SIGNAL ww_o_sevenseg : std_logic_vector(15 DOWNTO 0);
SIGNAL \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z13\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z7\ : std_logic;
SIGNAL \u_uw_uart|sdout_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z4\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z5\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z2\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx52268z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx40964z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx41961z1\ : std_logic;
SIGNAL \u_lab3|nx3163z41\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z4\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx40964z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx41961z1\ : std_logic;
SIGNAL \u_lab3|nx3163z42\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z8\ : std_logic;
SIGNAL \u_lab3|nx3163z43\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z12\ : std_logic;
SIGNAL \u_lab3|nx3163z22\ : std_logic;
SIGNAL \u_lab3|nx3163z21\ : std_logic;
SIGNAL \u_lab3|nx3163z26\ : std_logic;
SIGNAL \u_lab3|nx3163z25\ : std_logic;
SIGNAL \u_lab3|nx3163z46\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z24\ : std_logic;
SIGNAL \u_lab3|nx3163z47\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z28\ : std_logic;
SIGNAL \u_lab3|nx3163z48\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z32\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx38970z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx43955z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|mdata_3_\ : std_logic;
SIGNAL \u_uw_uart|nx42856z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx29621z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx51917z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z21\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z25\ : std_logic;
SIGNAL \u_uw_uart|nx46385z5\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1\ : std_logic;
SIGNAL \u_lab3|y_pos_0_\ : std_logic;
SIGNAL \u_uw_uart|nx36748z2\ : std_logic;
SIGNAL \u_uw_uart|nx36748z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx30618z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx30618z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx56256z1\ : std_logic;
SIGNAL \u_lab3|nx35397z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx31615z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx15541z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z4\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z8\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx8373z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx8373z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx9370z2\ : std_logic;
SIGNAL \u_lab3|y_pos_0_~_wirecell_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1\ : std_logic;
SIGNAL \nrst~combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z7\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z9\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxDivisor_5_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z8\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z6\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx32400z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TopTx\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx50920z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx48926z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx49923z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx50920z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx50920z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx51917z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx51917z4\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx51917z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxBitCnt_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx4608z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|nx33354z2\ : std_logic;
SIGNAL \rxflex~combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|NOT_Rx\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|not_Rx_r\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx14544z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_6_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx16538z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z2\ : std_logic;
SIGNAL \u_uw_uart|RawRx\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx15541z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx15541z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx13547z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx11364z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxBitCnt_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx10367z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxBitCnt_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx9370z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxBitCnt_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx13547z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx11553z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxFSM_5_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx65151z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z10\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z9\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z6\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z7\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z5\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx34394z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TopRx\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx30017z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxRDY\ : std_logic;
SIGNAL \u_uw_uart|nx33468z1\ : std_logic;
SIGNAL \u_uw_uart|o_pixavail\ : std_logic;
SIGNAL \u_uw_uart|nx39480z1\ : std_logic;
SIGNAL \u_uw_uart|ack\ : std_logic;
SIGNAL \u_uw_uart|nx33354z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z31\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z30\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx52268z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z29\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z28\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx53265z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z27\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z26\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z24\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx55259z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z23\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z22\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z20\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z18\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx58250z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z17\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z16\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z14\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx60244z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z13\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z12\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx17096z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z11\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx59247z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z15\ : std_logic;
SIGNAL \u_uw_uart|nx46385z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z10\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx18093z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z9\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z8\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx19090z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z7\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z6\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx20087z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z5\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z4\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx21084z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z3\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx64508z1\ : std_logic;
SIGNAL \u_uw_uart|nx46385z2\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx57253z1\ : std_logic;
SIGNAL \u_uw_uart|modgen_counter_waitcount|nx22081z19\ : std_logic;
SIGNAL \u_uw_uart|nx46385z4\ : std_logic;
SIGNAL \u_uw_uart|nx46385z1\ : std_logic;
SIGNAL \u_uw_uart|dsend~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx15376z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|RxErr\ : std_logic;
SIGNAL \u_uw_uart|nx46385z6\ : std_logic;
SIGNAL \u_uw_uart|dsend\ : std_logic;
SIGNAL \u_uw_uart|nx42856z2\ : std_logic;
SIGNAL \u_uw_uart|State\ : std_logic;
SIGNAL \u_uw_uart|nx54369z1\ : std_logic;
SIGNAL \u_uw_uart|LD_SDOUT\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx4608z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx4608z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxFSM_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx5605z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|TxFSM_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx31615z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx29621z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx28624z2\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx28624z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx61140z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx61812z1\ : std_logic;
SIGNAL nx21351z2 : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx51271z1\ : std_logic;
SIGNAL \u_lab3|nx14243z1\ : std_logic;
SIGNAL \u_lab3|nx45976z1\ : std_logic;
SIGNAL \u_lab3|x_pos_1_\ : std_logic;
SIGNAL \u_lab3|nx44979z1\ : std_logic;
SIGNAL \u_lab3|x_pos_2_\ : std_logic;
SIGNAL \u_lab3|nx43982z1\ : std_logic;
SIGNAL \u_lab3|x_pos_3_\ : std_logic;
SIGNAL \u_lab3|x_pos_0_~_wirecell_combout\ : std_logic;
SIGNAL \u_lab3|x_pos_0_\ : std_logic;
SIGNAL \u_lab3|nx53087z2\ : std_logic;
SIGNAL \u_lab3|nx53087z1\ : std_logic;
SIGNAL \u_lab3|nx12249z1\ : std_logic;
SIGNAL \u_lab3|y_pos_3_\ : std_logic;
SIGNAL \u_lab3|nx35397z1\ : std_logic;
SIGNAL \u_lab3|end_of_input\ : std_logic;
SIGNAL \u_lab3|nx46973z1\ : std_logic;
SIGNAL \u_lab3|y_pos_1_\ : std_logic;
SIGNAL \u_lab3|nx13246z1\ : std_logic;
SIGNAL \u_lab3|y_pos_2_\ : std_logic;
SIGNAL \u_lab3|nx3163z72\ : std_logic;
SIGNAL \u_lab3|nx54084z1~_wirecell_combout\ : std_logic;
SIGNAL \u_lab3|i_1_\ : std_logic;
SIGNAL \u_lab3|i_2_\ : std_logic;
SIGNAL \u_lab3|i_2_~_wirecell_combout\ : std_logic;
SIGNAL \u_lab3|nx54084z1\ : std_logic;
SIGNAL \u_lab3|nx3163z3\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|nx54636z1\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_7_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_6_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_5_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_4_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Rx_Reg_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_0_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_0_\ : std_logic;
SIGNAL \u_uw_uart|RData_0_\ : std_logic;
SIGNAL \u_uw_uart|datain_0_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_1_\ : std_logic;
SIGNAL \u_uw_uart|RData_1_\ : std_logic;
SIGNAL \u_uw_uart|datain_1_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_2_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_2_\ : std_logic;
SIGNAL \u_uw_uart|RData_2_\ : std_logic;
SIGNAL \u_uw_uart|datain_2_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_3_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_3_\ : std_logic;
SIGNAL \u_uw_uart|RData_3_\ : std_logic;
SIGNAL \u_uw_uart|datain_3_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_4_\ : std_logic;
SIGNAL \u_uw_uart|RData_4_\ : std_logic;
SIGNAL \u_uw_uart|datain_4_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_5_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_5_\ : std_logic;
SIGNAL \u_uw_uart|RData_5_\ : std_logic;
SIGNAL \u_uw_uart|datain_5_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_6_~feeder_combout\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_6_\ : std_logic;
SIGNAL \u_uw_uart|RData_6_\ : std_logic;
SIGNAL \u_uw_uart|datain_6_\ : std_logic;
SIGNAL \u_uw_uart|u_UARTS|Dout_7_\ : std_logic;
SIGNAL \u_uw_uart|RData_7_\ : std_logic;
SIGNAL \u_uw_uart|datain_7_\ : std_logic;
SIGNAL \u_lab3|nx51243z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z22\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z19\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z16\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z13\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z10\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z7\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z4\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx44952z1\ : std_logic;
SIGNAL \u_lab3|nx54113z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z22\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z19\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z16\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z13\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z10\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z7\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z4\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx44952z1\ : std_logic;
SIGNAL \u_lab3|nx3163z10\ : std_logic;
SIGNAL \u_lab3|nx3163z9\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx43955z1\ : std_logic;
SIGNAL \u_lab3|nx3163z14\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx43955z1\ : std_logic;
SIGNAL \u_lab3|nx3163z13\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx42958z1\ : std_logic;
SIGNAL \u_lab3|nx3163z18\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx42958z1\ : std_logic;
SIGNAL \u_lab3|nx3163z17\ : std_logic;
SIGNAL \u_lab3|nx3163z44\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z16\ : std_logic;
SIGNAL \u_lab3|nx3163z45\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z20\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx39967z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx39967z1\ : std_logic;
SIGNAL \u_lab3|nx3163z30\ : std_logic;
SIGNAL \u_lab3|nx3163z29\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx38970z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx38970z1\ : std_logic;
SIGNAL \u_lab3|nx3163z34\ : std_logic;
SIGNAL \u_lab3|nx3163z33\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx37973z1\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx37973z1\ : std_logic;
SIGNAL \u_lab3|nx3163z38\ : std_logic;
SIGNAL \u_lab3|nx3163z37\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z35\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z31\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z27\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z23\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z19\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z15\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z11\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z7\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z3\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx45949z1\ : std_logic;
SIGNAL \u_lab3|nx3163z58\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx44952z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx43955z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx42958z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx41961z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx39967z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx38970z1\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx37973z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z23\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z22\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z19\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z16\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z13\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z10\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z7\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z4\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx44952z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx41961z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx42958z1\ : std_logic;
SIGNAL \u_lab3|nx3163z60\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx37973z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx40964z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx39967z1\ : std_logic;
SIGNAL \u_lab3|nx3163z65\ : std_logic;
SIGNAL \u_lab3|nx3163z56\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx23445z2\ : std_logic;
SIGNAL \u_lab3|ix3163z19319|nx23445z1\ : std_logic;
SIGNAL \u_lab3|nx3163z57\ : std_logic;
SIGNAL \u_lab3|ix3163z30602|nx40964z1\ : std_logic;
SIGNAL \u_lab3|nx3163z75\ : std_logic;
SIGNAL \u_lab3|nx3163z74\ : std_logic;
SIGNAL \u_lab3|nx3163z73\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx23445z2\ : std_logic;
SIGNAL \u_lab3|ix3163z19322|nx23445z1\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx23445z2\ : std_logic;
SIGNAL \u_lab3|ix3163z60014|nx23445z1\ : std_logic;
SIGNAL \u_lab3|nx3163z5\ : std_logic;
SIGNAL \u_lab3|nx3163z77\ : std_logic;
SIGNAL \u_lab3|nx3163z76\ : std_logic;
SIGNAL \u_lab3|nx53066z1\ : std_logic;
SIGNAL \u_lab3|nx3163z71\ : std_logic;
SIGNAL \u_lab3|nx3163z70\ : std_logic;
SIGNAL \u_lab3|nx3163z2\ : std_logic;
SIGNAL \u_lab3|nx3163z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx57253z3\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z15\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z14\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z12\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx53265z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z11\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z10\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx54262z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z9\ : std_logic;
SIGNAL nx57590z1 : std_logic;
SIGNAL nx41851z1 : std_logic;
SIGNAL nx58587z1 : std_logic;
SIGNAL nx42848z1 : std_logic;
SIGNAL nx59584z1 : std_logic;
SIGNAL nx43845z1 : std_logic;
SIGNAL nx60581z1 : std_logic;
SIGNAL nx44842z1 : std_logic;
SIGNAL nx61578z1 : std_logic;
SIGNAL nx45839z1 : std_logic;
SIGNAL nx62575z1 : std_logic;
SIGNAL nx46836z1 : std_logic;
SIGNAL nx63572z1 : std_logic;
SIGNAL nx47833z1 : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z8\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z6\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx56256z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z5\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z4\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx57253z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z3\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z2\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx58250z1\ : std_logic;
SIGNAL \u_lab3|modgen_counter_o_output|nx1041z1\ : std_logic;
SIGNAL nx30z1 : std_logic;
SIGNAL nx49827z1 : std_logic;
SIGNAL nx1027z1 : std_logic;
SIGNAL nx50824z1 : std_logic;
SIGNAL nx25683z1 : std_logic;
SIGNAL nx62540z1 : std_logic;
SIGNAL nx26680z1 : std_logic;
SIGNAL nx63537z1 : std_logic;
SIGNAL nx27677z1 : std_logic;
SIGNAL nx64534z1 : std_logic;
SIGNAL nx28674z1 : std_logic;
SIGNAL nx65531z1 : std_logic;
SIGNAL nx29671z1 : std_logic;
SIGNAL nx992z1 : std_logic;
SIGNAL \u_lab3|mem|ix64056z44883|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL ALT_INV_nx21351z2 : std_logic;
SIGNAL \ALT_INV_nrst~combout\ : std_logic;

BEGIN

ww_nrst <= nrst;
ww_clk <= clk;
ww_rxflex <= rxflex;
txflex <= ww_txflex;
ctsflex <= ww_ctsflex;
o_sevenseg <= ww_o_sevenseg;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7) <= \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) <= \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\u_uw_uart|datain_7_\ & \u_uw_uart|datain_6_\ & \u_uw_uart|datain_5_\ & \u_uw_uart|datain_4_\ & \u_uw_uart|datain_3_\ & \u_uw_uart|datain_2_\ & \u_uw_uart|datain_1_\ & 
\u_uw_uart|datain_0_\);

\u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\u_lab3|x_pos_3_\ & \u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\ & \u_lab3|x_pos_0_\);

\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(5);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(6);
\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) <= \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(7);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
ALT_INV_nx21351z2 <= NOT nx21351z2;
\ALT_INV_nrst~combout\ <= NOT \nrst~combout\;

-- Location: LCFF_X29_Y29_N15
\u_lab3|modgen_counter_o_output|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z13\);

-- Location: LCFF_X29_Y29_N21
\u_lab3|modgen_counter_o_output|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z7\);

-- Location: LCFF_X31_Y28_N11
\u_uw_uart|reg_sdout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx42856z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|sdout_3_\);

-- Location: LCFF_X32_Y29_N23
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\);

-- Location: LCCOMB_X33_Y29_N2
\u_uw_uart|u_UARTS|ix32400z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z3\ = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ & \u_uw_uart|u_UARTS|TxDivisor_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\,
	datad => \u_uw_uart|u_UARTS|TxDivisor_5_\,
	combout => \u_uw_uart|u_UARTS|nx32400z3\);

-- Location: LCCOMB_X33_Y29_N20
\u_uw_uart|u_UARTS|ix32400z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z4\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ & \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|u_UARTS|nx32400z4\);

-- Location: LCCOMB_X33_Y29_N14
\u_uw_uart|u_UARTS|ix32400z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z5\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\,
	combout => \u_uw_uart|u_UARTS|nx32400z5\);

-- Location: LCCOMB_X33_Y29_N24
\u_uw_uart|u_UARTS|ix32400z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z2\ = (\u_uw_uart|u_UARTS|nx32400z4\ & (\u_uw_uart|u_UARTS|nx32400z5\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\ & \u_uw_uart|u_UARTS|nx32400z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx32400z4\,
	datab => \u_uw_uart|u_UARTS|nx32400z5\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|u_UARTS|nx32400z3\,
	combout => \u_uw_uart|u_UARTS|nx32400z2\);

-- Location: LCCOMB_X29_Y29_N14
\u_lab3|modgen_counter_o_output|ix58250z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx52268z1\ = (\u_lab3|modgen_counter_o_output|nx58250z13\ & (!\u_lab3|modgen_counter_o_output|nx58250z14\)) # (!\u_lab3|modgen_counter_o_output|nx58250z13\ & ((\u_lab3|modgen_counter_o_output|nx58250z14\) # (GND)))
-- \u_lab3|modgen_counter_o_output|nx58250z12\ = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z14\) # (!\u_lab3|modgen_counter_o_output|nx58250z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z14\,
	combout => \u_lab3|modgen_counter_o_output|nx52268z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z12\);

-- Location: M4K_X26_Y32
\u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lab3:u_lab3|ram_dq_8_2:mem_1|altsyncram:ix64056z44885|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_lab3|nx54113z1\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \u_lab3|nx54113z1\,
	portadatain => \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: M4K_X26_Y31
\u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lab3:u_lab3|ram_dq_8_0:mem|altsyncram:ix64056z44883|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_lab3|nx51243z1\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \u_lab3|nx51243z1\,
	portadatain => \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X27_Y31_N10
\u_lab3|ix3163z19319|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx40964z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) & (!\u_lab3|ix3163z19319|nx44952z16\)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) & 
-- ((\u_lab3|ix3163z19319|nx44952z16\) # (GND))))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) & (\u_lab3|ix3163z19319|nx44952z16\ & VCC)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) 
-- & (!\u_lab3|ix3163z19319|nx44952z16\))))
-- \u_lab3|ix3163z19319|nx44952z13\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & ((!\u_lab3|ix3163z19319|nx44952z16\) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & 
-- (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3) & !\u_lab3|ix3163z19319|nx44952z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(3),
	datab => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z16\,
	combout => \u_lab3|ix3163z19319|nx40964z1\,
	cout => \u_lab3|ix3163z19319|nx44952z13\);

-- Location: LCCOMB_X27_Y31_N12
\u_lab3|ix3163z19319|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx41961z1\ = ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4) $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) $ (\u_lab3|ix3163z19319|nx44952z13\)))) # (GND)
-- \u_lab3|ix3163z19319|nx44952z10\ = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4) & ((!\u_lab3|ix3163z19319|nx44952z13\) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4) & 
-- (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) & !\u_lab3|ix3163z19319|nx44952z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4),
	datab => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(4),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z13\,
	combout => \u_lab3|ix3163z19319|nx41961z1\,
	cout => \u_lab3|ix3163z19319|nx44952z10\);

-- Location: LCCOMB_X25_Y31_N2
\u_lab3|ix3163z52947\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z41\ = (\u_lab3|i_2_\ & (((\u_uw_uart|datain_7_\)))) # (!\u_lab3|i_2_\ & ((\u_lab3|i_1_\ & ((\u_uw_uart|datain_7_\))) # (!\u_lab3|i_1_\ & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|i_2_\,
	datab => \u_lab3|i_1_\,
	datac => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7),
	datad => \u_uw_uart|datain_7_\,
	combout => \u_lab3|nx3163z41\);

-- Location: LCCOMB_X25_Y31_N12
\u_lab3|ix3163z30602|ix45949z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z4\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z41\,
	combout => \u_lab3|ix3163z30602|nx45949z4\);

-- Location: LCCOMB_X25_Y31_N20
\u_lab3|ix3163z19322|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx40964z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) & (!\u_lab3|ix3163z19322|nx44952z16\)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) & 
-- (\u_lab3|ix3163z19322|nx44952z16\ & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) & ((\u_lab3|ix3163z19322|nx44952z16\) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) 
-- & (!\u_lab3|ix3163z19322|nx44952z16\))))
-- \u_lab3|ix3163z19322|nx44952z13\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3) & !\u_lab3|ix3163z19322|nx44952z16\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(3) & 
-- ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3)) # (!\u_lab3|ix3163z19322|nx44952z16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(3),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z16\,
	combout => \u_lab3|ix3163z19322|nx40964z1\,
	cout => \u_lab3|ix3163z19322|nx44952z13\);

-- Location: LCCOMB_X25_Y31_N22
\u_lab3|ix3163z19322|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx41961z1\ = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) $ (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4) $ (\u_lab3|ix3163z19322|nx44952z13\)))) # (GND)
-- \u_lab3|ix3163z19322|nx44952z10\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) & ((!\u_lab3|ix3163z19322|nx44952z13\) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(4) & 
-- (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4) & !\u_lab3|ix3163z19322|nx44952z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(4),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z13\,
	combout => \u_lab3|ix3163z19322|nx41961z1\,
	cout => \u_lab3|ix3163z19322|nx44952z10\);

-- Location: LCCOMB_X29_Y31_N10
\u_lab3|ix3163z52948\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z42\ = (\u_lab3|i_1_\ & (((\u_uw_uart|datain_6_\)))) # (!\u_lab3|i_1_\ & ((\u_lab3|i_2_\ & ((\u_uw_uart|datain_6_\))) # (!\u_lab3|i_2_\ & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|i_1_\,
	datab => \u_lab3|i_2_\,
	datac => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6),
	datad => \u_uw_uart|datain_6_\,
	combout => \u_lab3|nx3163z42\);

-- Location: LCCOMB_X29_Y31_N20
\u_lab3|ix3163z30602|ix45949z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z8\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z42\,
	combout => \u_lab3|ix3163z30602|nx45949z8\);

-- Location: LCCOMB_X29_Y31_N22
\u_lab3|ix3163z52949\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z43\ = (\u_lab3|i_1_\ & (((\u_uw_uart|datain_5_\)))) # (!\u_lab3|i_1_\ & ((\u_lab3|i_2_\ & ((\u_uw_uart|datain_5_\))) # (!\u_lab3|i_2_\ & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|i_1_\,
	datab => \u_lab3|i_2_\,
	datac => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5),
	datad => \u_uw_uart|datain_5_\,
	combout => \u_lab3|nx3163z43\);

-- Location: LCCOMB_X29_Y31_N0
\u_lab3|ix3163z30602|ix45949z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z12\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z43\,
	combout => \u_lab3|ix3163z30602|nx45949z12\);

-- Location: LCCOMB_X27_Y31_N24
\u_lab3|ix3163z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z22\ = (\u_lab3|nx51243z1\ & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4)) # ((\u_lab3|nx54113z1\)))) # (!\u_lab3|nx51243z1\ & (((!\u_lab3|nx54113z1\ & \u_lab3|ix3163z19319|nx41961z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx51243z1\,
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(4),
	datac => \u_lab3|nx54113z1\,
	datad => \u_lab3|ix3163z19319|nx41961z1\,
	combout => \u_lab3|nx3163z22\);

-- Location: LCCOMB_X27_Y31_N2
\u_lab3|ix3163z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z21\ = (\u_lab3|nx54113z1\ & (!\u_lab3|nx3163z22\ & \u_lab3|ix3163z19322|nx41961z1\)) # (!\u_lab3|nx54113z1\ & (\u_lab3|nx3163z22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|nx3163z22\,
	datad => \u_lab3|ix3163z19322|nx41961z1\,
	combout => \u_lab3|nx3163z21\);

-- Location: LCCOMB_X27_Y31_N30
\u_lab3|ix3163z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z26\ = (\u_lab3|nx54113z1\ & (\u_lab3|nx51243z1\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx51243z1\ & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3))) # (!\u_lab3|nx51243z1\ & ((\u_lab3|ix3163z19319|nx40964z1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datab => \u_lab3|nx51243z1\,
	datac => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(3),
	datad => \u_lab3|ix3163z19319|nx40964z1\,
	combout => \u_lab3|nx3163z26\);

-- Location: LCCOMB_X27_Y31_N0
\u_lab3|ix3163z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z25\ = (\u_lab3|nx54113z1\ & (\u_lab3|ix3163z19322|nx40964z1\ & !\u_lab3|nx3163z26\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx3163z26\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|ix3163z19322|nx40964z1\,
	datad => \u_lab3|nx3163z26\,
	combout => \u_lab3|nx3163z25\);

-- Location: LCCOMB_X29_Y31_N2
\u_lab3|ix3163z52952\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z46\ = (\u_lab3|i_2_\ & (\u_uw_uart|datain_2_\)) # (!\u_lab3|i_2_\ & ((\u_lab3|i_1_\ & (\u_uw_uart|datain_2_\)) # (!\u_lab3|i_1_\ & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_2_\,
	datab => \u_lab3|i_2_\,
	datac => \u_lab3|i_1_\,
	datad => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2),
	combout => \u_lab3|nx3163z46\);

-- Location: LCCOMB_X29_Y31_N4
\u_lab3|ix3163z30602|ix45949z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z24\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z46\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z46\,
	combout => \u_lab3|ix3163z30602|nx45949z24\);

-- Location: LCCOMB_X27_Y32_N2
\u_lab3|ix3163z52953\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z47\ = (\u_lab3|i_2_\ & (\u_uw_uart|datain_1_\)) # (!\u_lab3|i_2_\ & ((\u_lab3|i_1_\ & (\u_uw_uart|datain_1_\)) # (!\u_lab3|i_1_\ & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_1_\,
	datab => \u_lab3|i_2_\,
	datac => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1),
	datad => \u_lab3|i_1_\,
	combout => \u_lab3|nx3163z47\);

-- Location: LCCOMB_X28_Y32_N16
\u_lab3|ix3163z30602|ix45949z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z28\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z47\,
	combout => \u_lab3|ix3163z30602|nx45949z28\);

-- Location: LCCOMB_X27_Y32_N4
\u_lab3|ix3163z52954\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z48\ = (\u_lab3|i_1_\ & (\u_uw_uart|datain_0_\)) # (!\u_lab3|i_1_\ & ((\u_lab3|i_2_\ & (\u_uw_uart|datain_0_\)) # (!\u_lab3|i_2_\ & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_0_\,
	datab => \u_lab3|i_1_\,
	datac => \u_lab3|i_2_\,
	datad => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0),
	combout => \u_lab3|nx3163z48\);

-- Location: LCCOMB_X27_Y32_N8
\u_lab3|ix3163z30602|ix45949z52940\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z32\ = \u_lab3|nx3163z48\ $ (!\u_lab3|nx54084z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx3163z48\,
	datad => \u_lab3|nx54084z1\,
	combout => \u_lab3|ix3163z30602|nx45949z32\);

-- Location: LCCOMB_X28_Y29_N4
\u_lab3|ix3163z60014|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx38970z1\ = ((\u_uw_uart|datain_1_\ $ (\u_lab3|ix3163z30602|nx38970z1\ $ (!\u_lab3|ix3163z60014|nx44952z22\)))) # (GND)
-- \u_lab3|ix3163z60014|nx44952z19\ = CARRY((\u_uw_uart|datain_1_\ & ((\u_lab3|ix3163z30602|nx38970z1\) # (!\u_lab3|ix3163z60014|nx44952z22\))) # (!\u_uw_uart|datain_1_\ & (\u_lab3|ix3163z30602|nx38970z1\ & !\u_lab3|ix3163z60014|nx44952z22\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_1_\,
	datab => \u_lab3|ix3163z30602|nx38970z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z22\,
	combout => \u_lab3|ix3163z60014|nx38970z1\,
	cout => \u_lab3|ix3163z60014|nx44952z19\);

-- Location: LCCOMB_X28_Y29_N14
\u_lab3|ix3163z60014|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx43955z1\ = (\u_uw_uart|datain_6_\ & ((\u_lab3|ix3163z30602|nx43955z1\ & (\u_lab3|ix3163z60014|nx44952z7\ & VCC)) # (!\u_lab3|ix3163z30602|nx43955z1\ & (!\u_lab3|ix3163z60014|nx44952z7\)))) # (!\u_uw_uart|datain_6_\ & 
-- ((\u_lab3|ix3163z30602|nx43955z1\ & (!\u_lab3|ix3163z60014|nx44952z7\)) # (!\u_lab3|ix3163z30602|nx43955z1\ & ((\u_lab3|ix3163z60014|nx44952z7\) # (GND)))))
-- \u_lab3|ix3163z60014|nx44952z4\ = CARRY((\u_uw_uart|datain_6_\ & (!\u_lab3|ix3163z30602|nx43955z1\ & !\u_lab3|ix3163z60014|nx44952z7\)) # (!\u_uw_uart|datain_6_\ & ((!\u_lab3|ix3163z60014|nx44952z7\) # (!\u_lab3|ix3163z30602|nx43955z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_6_\,
	datab => \u_lab3|ix3163z30602|nx43955z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z7\,
	combout => \u_lab3|ix3163z60014|nx43955z1\,
	cout => \u_lab3|ix3163z60014|nx44952z4\);

-- Location: LCCOMB_X29_Y29_N20
\u_lab3|modgen_counter_o_output|ix58250z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx55259z1\ = (\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx58250z8\ $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z7\ & (!\u_lab3|modgen_counter_o_output|nx58250z8\ & VCC))
-- \u_lab3|modgen_counter_o_output|nx58250z6\ = CARRY((\u_lab3|modgen_counter_o_output|nx58250z7\ & !\u_lab3|modgen_counter_o_output|nx58250z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z8\,
	combout => \u_lab3|modgen_counter_o_output|nx55259z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z6\);

-- Location: LCFF_X31_Y28_N31
\u_uw_uart|reg_mdata_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx36748z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|mdata_3_\);

-- Location: LCCOMB_X31_Y28_N10
\u_uw_uart|ix42856z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx42856z1\ = (\u_uw_uart|nx42856z2\ & ((\nrst~combout\ & ((\u_uw_uart|mdata_3_\))) # (!\nrst~combout\ & (\u_uw_uart|sdout_3_\)))) # (!\u_uw_uart|nx42856z2\ & (((\u_uw_uart|sdout_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx42856z2\,
	datab => \nrst~combout\,
	datac => \u_uw_uart|sdout_3_\,
	datad => \u_uw_uart|mdata_3_\,
	combout => \u_uw_uart|nx42856z1\);

-- Location: LCFF_X32_Y28_N9
\u_uw_uart|u_UARTS|reg_Tx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx30618z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|nx29621z2\);

-- Location: LCCOMB_X32_Y28_N10
\u_uw_uart|u_UARTS|ix29621z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_\ = (\u_uw_uart|u_UARTS|TxFSM_1_\ & ((!\u_uw_uart|u_UARTS|nx29621z2\))) # (!\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_3_\,
	datac => \u_uw_uart|u_UARTS|nx29621z2\,
	datad => \u_uw_uart|u_UARTS|TxFSM_1_\,
	combout => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_\);

-- Location: LCCOMB_X32_Y28_N20
\u_uw_uart|u_UARTS|ix51917z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx51917z2\ = (\u_uw_uart|u_UARTS|TopTx\ & (\u_uw_uart|u_UARTS|TxFSM_1_\ $ (\u_uw_uart|u_UARTS|TxFSM_0_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datac => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datad => \u_uw_uart|u_UARTS|TopTx\,
	combout => \u_uw_uart|u_UARTS|nx51917z2\);

-- Location: LCFF_X30_Y28_N11
\u_uw_uart|modgen_counter_waitcount|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z21\);

-- Location: LCFF_X30_Y28_N7
\u_uw_uart|modgen_counter_waitcount|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z25\);

-- Location: LCCOMB_X31_Y28_N6
\u_uw_uart|ix46385z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z5\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z31\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z29\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	combout => \u_uw_uart|nx46385z5\);

-- Location: LCCOMB_X32_Y29_N20
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2\);

-- Location: LCCOMB_X32_Y29_N22
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1\ = \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2\ $ (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1\);

-- Location: LCFF_X27_Y32_N21
\u_lab3|modgen_counter_y_pos_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|y_pos_0_~_wirecell_combout\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|y_pos_0_\);

-- Location: LCCOMB_X31_Y28_N8
\u_uw_uart|ix36748z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx36748z2\ = (\u_uw_uart|o_pixavail\ & (\u_uw_uart|nx46385z1\)) # (!\u_uw_uart|o_pixavail\ & ((\u_uw_uart|ack\ & (\u_uw_uart|nx46385z1\)) # (!\u_uw_uart|ack\ & ((\u_uw_uart|u_UARTS|RxErr\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx46385z1\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|u_UARTS|RxErr\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx36748z2\);

-- Location: LCCOMB_X31_Y28_N30
\u_uw_uart|ix36748z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx36748z1\ = (\u_uw_uart|nx36748z2\ & ((\nrst~combout\ & ((!\u_uw_uart|nx46385z6\))) # (!\nrst~combout\ & (\u_uw_uart|mdata_3_\)))) # (!\u_uw_uart|nx36748z2\ & (((\u_uw_uart|mdata_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx36748z2\,
	datab => \nrst~combout\,
	datac => \u_uw_uart|mdata_3_\,
	datad => \u_uw_uart|nx46385z6\,
	combout => \u_uw_uart|nx36748z1\);

-- Location: LCFF_X31_Y28_N19
\u_uw_uart|u_UARTS|reg_Tx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx31615z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|nx30618z2\);

-- Location: LCCOMB_X32_Y28_N22
\u_uw_uart|u_UARTS|ix30618z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_\ = (\u_uw_uart|u_UARTS|TxFSM_1_\ & ((!\u_uw_uart|u_UARTS|nx30618z2\))) # (!\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_3_\,
	datab => \u_uw_uart|u_UARTS|nx30618z2\,
	datad => \u_uw_uart|u_UARTS|TxFSM_1_\,
	combout => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_\);

-- Location: LCCOMB_X32_Y28_N8
\u_uw_uart|u_UARTS|ix30618z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx30618z1\ = (\u_uw_uart|u_UARTS|nx31615z2\ & (!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_\)) # (!\u_uw_uart|u_UARTS|nx31615z2\ & ((\u_uw_uart|u_UARTS|nx29621z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_\,
	datac => \u_uw_uart|u_UARTS|nx29621z2\,
	datad => \u_uw_uart|u_UARTS|nx31615z2\,
	combout => \u_uw_uart|u_UARTS|nx30618z1\);

-- Location: LCCOMB_X30_Y28_N6
\u_uw_uart|modgen_counter_waitcount|ix22081z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx54262z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z26\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z26\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z24\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z26\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z25\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z26\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx54262z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z24\);

-- Location: LCCOMB_X30_Y28_N10
\u_uw_uart|modgen_counter_waitcount|ix22081z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx56256z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z22\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z22\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z20\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z22\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z22\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx56256z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z20\);

-- Location: LCCOMB_X27_Y32_N10
\u_lab3|ix35397z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx35397z2\ = (\u_lab3|y_pos_1_\ & (\u_lab3|y_pos_0_\ & \u_lab3|y_pos_2_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|y_pos_1_\,
	datac => \u_lab3|y_pos_0_\,
	datad => \u_lab3|y_pos_2_\,
	combout => \u_lab3|nx35397z2\);

-- Location: LCCOMB_X31_Y28_N18
\u_uw_uart|u_UARTS|ix31615z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx31615z1\ = (\u_uw_uart|u_UARTS|nx31615z2\ & (!\u_uw_uart|sdout_3_\ & (!\u_uw_uart|u_UARTS|TxFSM_1_\))) # (!\u_uw_uart|u_UARTS|nx31615z2\ & (((\u_uw_uart|u_UARTS|nx30618z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_3_\,
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datac => \u_uw_uart|u_UARTS|nx30618z2\,
	datad => \u_uw_uart|u_UARTS|nx31615z2\,
	combout => \u_uw_uart|u_UARTS|nx31615z1\);

-- Location: LCCOMB_X31_Y30_N10
\u_uw_uart|u_UARTS|ix15541z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx15541z3\ = ((\nrst~combout\ & \rxflex~combout\)) # (!\u_uw_uart|u_UARTS|RxFSM_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datab => \u_uw_uart|u_UARTS|RxFSM_6_\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|u_UARTS|nx15541z3\);

-- Location: LCCOMB_X33_Y29_N10
\u_uw_uart|u_UARTS|ix34394z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z4\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ & \u_uw_uart|u_UARTS|TxDivisor_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\,
	datad => \u_uw_uart|u_UARTS|TxDivisor_5_\,
	combout => \u_uw_uart|u_UARTS|nx34394z4\);

-- Location: LCFF_X34_Y29_N21
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\);

-- Location: LCFF_X34_Y29_N13
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\);

-- Location: LCCOMB_X34_Y29_N4
\u_uw_uart|u_UARTS|ix34394z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z8\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart|u_UARTS|nx34394z8\);

-- Location: LCFF_X30_Y30_N21
\u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx8373z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxBitCnt_3_\);

-- Location: LCCOMB_X34_Y29_N12
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\)) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\);

-- Location: LCCOMB_X34_Y29_N20
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\)) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\);

-- Location: LCCOMB_X30_Y30_N4
\u_uw_uart|u_UARTS|ix8373z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx8373z2\ = \u_uw_uart|u_UARTS|RxBitCnt_3_\ $ (((\u_uw_uart|u_UARTS|RxBitCnt_1_\ & (\u_uw_uart|u_UARTS|RxBitCnt_0_\ & \u_uw_uart|u_UARTS|RxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|RxBitCnt_3_\,
	datab => \u_uw_uart|u_UARTS|RxBitCnt_1_\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_0_\,
	datad => \u_uw_uart|u_UARTS|RxBitCnt_2_\,
	combout => \u_uw_uart|u_UARTS|nx8373z2\);

-- Location: LCCOMB_X30_Y30_N20
\u_uw_uart|u_UARTS|ix8373z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx8373z1\ = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & (\u_uw_uart|u_UARTS|nx8373z2\ & ((\u_uw_uart|u_UARTS|nx34394z2\)))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & (((\u_uw_uart|u_UARTS|RxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx8373z2\,
	datab => \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_3_\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx8373z1\);

-- Location: LCCOMB_X30_Y30_N14
\u_uw_uart|u_UARTS|ix9370z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx9370z2\ = (\u_uw_uart|u_UARTS|RxBitCnt_0_\ & \u_uw_uart|u_UARTS|RxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|RxBitCnt_0_\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_1_\,
	combout => \u_uw_uart|u_UARTS|nx9370z2\);

-- Location: LCCOMB_X27_Y32_N20
\u_lab3|y_pos_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|y_pos_0_~_wirecell_combout\ = !\u_lab3|y_pos_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|y_pos_0_\,
	combout => \u_lab3|y_pos_0_~_wirecell_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
clk_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: LCCOMB_X32_Y29_N0
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1\ = \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\ $ (VCC)
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\ = CARRY(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\,
	datad => VCC,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
nrst_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_nrst,
	combout => \nrst~combout\);

-- Location: LCFF_X32_Y29_N1
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\);

-- Location: LCCOMB_X32_Y29_N2
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\)) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\);

-- Location: LCFF_X32_Y29_N3
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\);

-- Location: LCCOMB_X32_Y29_N4
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\);

-- Location: LCFF_X32_Y29_N5
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\);

-- Location: LCCOMB_X32_Y29_N6
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\)) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\);

-- Location: LCFF_X32_Y29_N7
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\);

-- Location: LCCOMB_X33_Y29_N4
\u_uw_uart|u_UARTS|ix32400z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z7\ = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21\,
	combout => \u_uw_uart|u_UARTS|nx32400z7\);

-- Location: LCCOMB_X32_Y29_N8
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\);

-- Location: LCFF_X32_Y29_N9
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15\);

-- Location: LCCOMB_X32_Y29_N10
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\)) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\);

-- Location: LCCOMB_X32_Y29_N12
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\);

-- Location: LCCOMB_X32_Y29_N14
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\)) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\);

-- Location: LCFF_X32_Y29_N15
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\);

-- Location: LCCOMB_X32_Y29_N16
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\);

-- Location: LCCOMB_X32_Y29_N18
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1\ = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\)) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4\);

-- Location: LCFF_X32_Y29_N19
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\);

-- Location: LCFF_X32_Y29_N21
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\);

-- Location: LCCOMB_X33_Y29_N30
\u_uw_uart|u_UARTS|ix32400z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z9\ = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5\,
	combout => \u_uw_uart|u_UARTS|nx32400z9\);

-- Location: LCCOMB_X33_Y29_N0
\u_uw_uart|u_UARTS|TxDivisor_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout\);

-- Location: LCFF_X33_Y29_N1
\u_uw_uart|u_UARTS|reg_TxDivisor_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxDivisor_5_\);

-- Location: LCCOMB_X33_Y29_N8
\u_uw_uart|u_UARTS|ix32400z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z8\ = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\ & (\u_uw_uart|u_UARTS|nx32400z9\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\ & !\u_uw_uart|u_UARTS|TxDivisor_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1\,
	datab => \u_uw_uart|u_UARTS|nx32400z9\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23\,
	datad => \u_uw_uart|u_UARTS|TxDivisor_5_\,
	combout => \u_uw_uart|u_UARTS|nx32400z8\);

-- Location: LCFF_X32_Y29_N17
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\);

-- Location: LCFF_X32_Y29_N13
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\);

-- Location: LCFF_X32_Y29_N11
\u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx32400z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\);

-- Location: LCCOMB_X33_Y29_N18
\u_uw_uart|u_UARTS|ix32400z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z6\ = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\ & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\ & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13\,
	combout => \u_uw_uart|u_UARTS|nx32400z6\);

-- Location: LCCOMB_X33_Y29_N26
\u_uw_uart|u_UARTS|ix32400z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx32400z1\ = (\u_uw_uart|u_UARTS|nx32400z2\) # ((\u_uw_uart|u_UARTS|nx32400z7\ & (\u_uw_uart|u_UARTS|nx32400z8\ & \u_uw_uart|u_UARTS|nx32400z6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx32400z2\,
	datab => \u_uw_uart|u_UARTS|nx32400z7\,
	datac => \u_uw_uart|u_UARTS|nx32400z8\,
	datad => \u_uw_uart|u_UARTS|nx32400z6\,
	combout => \u_uw_uart|u_UARTS|nx32400z1\);

-- Location: LCFF_X33_Y29_N27
\u_uw_uart|u_UARTS|reg_TopTx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx32400z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TopTx\);

-- Location: LCCOMB_X32_Y28_N24
\u_uw_uart|u_UARTS|ix50920z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx50920z2\ = (!\u_uw_uart|u_UARTS|TxFSM_1_\ & \u_uw_uart|u_UARTS|TopTx\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datad => \u_uw_uart|u_UARTS|TopTx\,
	combout => \u_uw_uart|u_UARTS|nx50920z2\);

-- Location: LCCOMB_X32_Y28_N4
\u_uw_uart|u_UARTS|ix48926z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx48926z1\ = (\u_uw_uart|u_UARTS|TopTx\ & ((\u_uw_uart|u_UARTS|TxFSM_0_\ & ((\u_uw_uart|u_UARTS|TxBitCnt_0_\) # (!\u_uw_uart|u_UARTS|TxFSM_1_\))) # (!\u_uw_uart|u_UARTS|TxFSM_0_\ & (\u_uw_uart|u_UARTS|TxBitCnt_0_\ $ 
-- (\u_uw_uart|u_UARTS|TxFSM_1_\))))) # (!\u_uw_uart|u_UARTS|TopTx\ & (((\u_uw_uart|u_UARTS|TxBitCnt_0_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TopTx\,
	datab => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_0_\,
	datad => \u_uw_uart|u_UARTS|TxFSM_1_\,
	combout => \u_uw_uart|u_UARTS|nx48926z1\);

-- Location: LCFF_X32_Y28_N5
\u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx48926z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxBitCnt_0_\);

-- Location: LCCOMB_X32_Y28_N26
\u_uw_uart|u_UARTS|ix49923z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx49923z1\ = (\u_uw_uart|u_UARTS|nx51917z2\ & (!\u_uw_uart|u_UARTS|nx50920z2\ & (\u_uw_uart|u_UARTS|TxBitCnt_1_\ $ (!\u_uw_uart|u_UARTS|TxBitCnt_0_\)))) # (!\u_uw_uart|u_UARTS|nx51917z2\ & (((\u_uw_uart|u_UARTS|TxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx51917z2\,
	datab => \u_uw_uart|u_UARTS|nx50920z2\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_1_\,
	datad => \u_uw_uart|u_UARTS|TxBitCnt_0_\,
	combout => \u_uw_uart|u_UARTS|nx49923z1\);

-- Location: LCFF_X32_Y28_N27
\u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx49923z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxBitCnt_1_\);

-- Location: LCCOMB_X32_Y28_N18
\u_uw_uart|u_UARTS|ix50920z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx50920z3\ = (\u_uw_uart|u_UARTS|TxBitCnt_0_\) # (\u_uw_uart|u_UARTS|TxBitCnt_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|u_UARTS|TxBitCnt_0_\,
	datad => \u_uw_uart|u_UARTS|TxBitCnt_1_\,
	combout => \u_uw_uart|u_UARTS|nx50920z3\);

-- Location: LCCOMB_X32_Y28_N16
\u_uw_uart|u_UARTS|ix50920z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx50920z1\ = (\u_uw_uart|u_UARTS|nx51917z2\ & (!\u_uw_uart|u_UARTS|nx50920z2\ & (\u_uw_uart|u_UARTS|TxBitCnt_2_\ $ (!\u_uw_uart|u_UARTS|nx50920z3\)))) # (!\u_uw_uart|u_UARTS|nx51917z2\ & (((\u_uw_uart|u_UARTS|TxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx51917z2\,
	datab => \u_uw_uart|u_UARTS|nx50920z2\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_2_\,
	datad => \u_uw_uart|u_UARTS|nx50920z3\,
	combout => \u_uw_uart|u_UARTS|nx50920z1\);

-- Location: LCFF_X32_Y28_N17
\u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx50920z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxBitCnt_2_\);

-- Location: LCCOMB_X32_Y28_N14
\u_uw_uart|u_UARTS|ix51917z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx51917z3\ = (\u_uw_uart|u_UARTS|TxBitCnt_1_\) # ((\u_uw_uart|u_UARTS|TxBitCnt_2_\) # (\u_uw_uart|u_UARTS|TxBitCnt_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|TxBitCnt_1_\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_2_\,
	datad => \u_uw_uart|u_UARTS|TxBitCnt_0_\,
	combout => \u_uw_uart|u_UARTS|nx51917z3\);

-- Location: LCCOMB_X32_Y28_N28
\u_uw_uart|u_UARTS|ix51917z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx51917z4\ = (\u_uw_uart|u_UARTS|nx50920z2\) # ((!\u_uw_uart|u_UARTS|TxBitCnt_3_\ & (!\u_uw_uart|u_UARTS|nx50920z3\ & !\u_uw_uart|u_UARTS|TxBitCnt_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TxBitCnt_3_\,
	datab => \u_uw_uart|u_UARTS|nx50920z3\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_2_\,
	datad => \u_uw_uart|u_UARTS|nx50920z2\,
	combout => \u_uw_uart|u_UARTS|nx51917z4\);

-- Location: LCCOMB_X32_Y28_N6
\u_uw_uart|u_UARTS|ix51917z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx51917z1\ = (\u_uw_uart|u_UARTS|nx51917z2\ & ((\u_uw_uart|u_UARTS|nx51917z4\) # ((\u_uw_uart|u_UARTS|nx51917z3\ & \u_uw_uart|u_UARTS|TxBitCnt_3_\)))) # (!\u_uw_uart|u_UARTS|nx51917z2\ & (((\u_uw_uart|u_UARTS|TxBitCnt_3_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx51917z2\,
	datab => \u_uw_uart|u_UARTS|nx51917z3\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_3_\,
	datad => \u_uw_uart|u_UARTS|nx51917z4\,
	combout => \u_uw_uart|u_UARTS|nx51917z1\);

-- Location: LCFF_X32_Y28_N7
\u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx51917z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxBitCnt_3_\);

-- Location: LCCOMB_X33_Y29_N22
\u_uw_uart|u_UARTS|ix4608z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx4608z3\ = ((\u_uw_uart|u_UARTS|TxBitCnt_1_\) # ((\u_uw_uart|u_UARTS|TxBitCnt_3_\) # (\u_uw_uart|u_UARTS|TxBitCnt_2_\))) # (!\u_uw_uart|u_UARTS|TxBitCnt_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TxBitCnt_0_\,
	datab => \u_uw_uart|u_UARTS|TxBitCnt_1_\,
	datac => \u_uw_uart|u_UARTS|TxBitCnt_3_\,
	datad => \u_uw_uart|u_UARTS|TxBitCnt_2_\,
	combout => \u_uw_uart|u_UARTS|nx4608z3\);

-- Location: LCCOMB_X30_Y28_N0
\u_uw_uart|modgen_counter_waitcount|ix22081z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx51271z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z31\ $ (VCC)
-- \u_uw_uart|modgen_counter_waitcount|nx22081z30\ = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z31\,
	datad => VCC,
	combout => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z30\);

-- Location: LCCOMB_X31_Y28_N4
\u_uw_uart|ix33354z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z2\ = (\u_uw_uart|nx46385z1\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datac => \u_uw_uart|nx46385z1\,
	combout => \u_uw_uart|nx33354z2\);

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
rxflex_ibuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rxflex,
	combout => \rxflex~combout\);

-- Location: LCCOMB_X30_Y30_N26
\u_uw_uart|u_UARTS|ix57064z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|NOT_Rx\ = (!\nrst~combout\) # (!\rxflex~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rxflex~combout\,
	datad => \nrst~combout\,
	combout => \u_uw_uart|u_UARTS|NOT_Rx\);

-- Location: LCFF_X30_Y30_N27
\u_uw_uart|u_UARTS|reg_Rx_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|NOT_Rx\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|not_Rx_r\);

-- Location: LCCOMB_X31_Y30_N26
\u_uw_uart|u_UARTS|ix14544z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx14544z1\ = (\u_uw_uart|u_UARTS|RxFSM_3_\) # ((\u_uw_uart|u_UARTS|RxFSM_1_\ & \u_uw_uart|u_UARTS|not_Rx_r\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|RxFSM_1_\,
	datab => \u_uw_uart|u_UARTS|not_Rx_r\,
	datad => \u_uw_uart|u_UARTS|RxFSM_3_\,
	combout => \u_uw_uart|u_UARTS|nx14544z1\);

-- Location: LCCOMB_X31_Y30_N6
\u_uw_uart|u_UARTS|nx34394z2~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout\ = !\u_uw_uart|u_UARTS|nx34394z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout\);

-- Location: LCFF_X31_Y30_N7
\u_uw_uart|u_UARTS|reg_RxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxFSM_1_\);

-- Location: LCCOMB_X31_Y30_N28
\u_uw_uart|u_UARTS|RxFSM_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout\ = \u_uw_uart|u_UARTS|RxFSM_1_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|RxFSM_1_\,
	combout => \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout\);

-- Location: LCFF_X31_Y30_N29
\u_uw_uart|u_UARTS|reg_RxFSM_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout\,
	sdata => \u_uw_uart|u_UARTS|RxFSM_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|u_UARTS|not_Rx_r\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxFSM_6_\);

-- Location: LCCOMB_X31_Y30_N18
\u_uw_uart|u_UARTS|ix16538z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx16538z1\ = (!\u_uw_uart|u_UARTS|RxFSM_6_\ & ((\u_uw_uart|u_UARTS|not_Rx_r\) # (!\u_uw_uart|u_UARTS|RxFSM_5_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|not_Rx_r\,
	datac => \u_uw_uart|u_UARTS|RxFSM_5_\,
	datad => \u_uw_uart|u_UARTS|RxFSM_6_\,
	combout => \u_uw_uart|u_UARTS|nx16538z1\);

-- Location: LCFF_X31_Y30_N19
\u_uw_uart|u_UARTS|reg_RxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx16538z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|nx34394z2\);

-- Location: LCCOMB_X31_Y30_N2
\u_uw_uart|ix29443z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|RawRx\ = (\nrst~combout\ & \rxflex~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \nrst~combout\,
	datad => \rxflex~combout\,
	combout => \u_uw_uart|RawRx\);

-- Location: LCCOMB_X31_Y30_N4
\u_uw_uart|u_UARTS|ix15541z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx15541z2\ = (\u_uw_uart|u_UARTS|nx34394z2\ & ((\u_uw_uart|u_UARTS|RxFSM_6_\ & ((\u_uw_uart|RawRx\))) # (!\u_uw_uart|u_UARTS|RxFSM_6_\ & (\u_uw_uart|u_UARTS|TopRx\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TopRx\,
	datab => \u_uw_uart|u_UARTS|nx34394z2\,
	datac => \u_uw_uart|RawRx\,
	datad => \u_uw_uart|u_UARTS|RxFSM_6_\,
	combout => \u_uw_uart|u_UARTS|nx15541z2\);

-- Location: LCCOMB_X31_Y30_N20
\u_uw_uart|u_UARTS|ix15541z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx15541z1\ = (\u_uw_uart|u_UARTS|nx15541z2\) # ((\u_uw_uart|u_UARTS|nx15541z3\ & (\u_uw_uart|u_UARTS|not_Rx_r\ & !\u_uw_uart|u_UARTS|nx34394z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx15541z3\,
	datab => \u_uw_uart|u_UARTS|not_Rx_r\,
	datac => \u_uw_uart|u_UARTS|nx15541z2\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx15541z1\);

-- Location: LCFF_X31_Y30_N27
\u_uw_uart|u_UARTS|reg_RxFSM_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx14544z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxFSM_2_\);

-- Location: LCCOMB_X31_Y30_N0
\u_uw_uart|u_UARTS|ix13547z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx13547z1\ = (!\u_uw_uart|u_UARTS|nx13547z2\ & \u_uw_uart|u_UARTS|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|nx13547z2\,
	datad => \u_uw_uart|u_UARTS|RxFSM_2_\,
	combout => \u_uw_uart|u_UARTS|nx13547z1\);

-- Location: LCFF_X31_Y30_N1
\u_uw_uart|u_UARTS|reg_RxFSM_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx13547z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxFSM_3_\);

-- Location: LCCOMB_X31_Y30_N8
\u_uw_uart|u_UARTS|ix11364z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx11364z1\ = (\u_uw_uart|u_UARTS|TopRx\ & (\u_uw_uart|u_UARTS|nx34394z2\ & (\u_uw_uart|u_UARTS|RxFSM_3_\ $ (\u_uw_uart|u_UARTS|RxBitCnt_0_\)))) # (!\u_uw_uart|u_UARTS|TopRx\ & (\u_uw_uart|u_UARTS|RxBitCnt_0_\ & 
-- ((\u_uw_uart|u_UARTS|RxFSM_3_\) # (\u_uw_uart|u_UARTS|nx34394z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TopRx\,
	datab => \u_uw_uart|u_UARTS|RxFSM_3_\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_0_\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx11364z1\);

-- Location: LCFF_X31_Y30_N9
\u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx11364z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxBitCnt_0_\);

-- Location: LCCOMB_X30_Y30_N8
\u_uw_uart|u_UARTS|ix10367z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx10367z1\ = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & (\u_uw_uart|u_UARTS|nx34394z2\ & (\u_uw_uart|u_UARTS|RxBitCnt_0_\ $ (\u_uw_uart|u_UARTS|RxBitCnt_1_\)))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart|u_UARTS|RxBitCnt_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\,
	datab => \u_uw_uart|u_UARTS|RxBitCnt_0_\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_1_\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx10367z1\);

-- Location: LCFF_X30_Y30_N9
\u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx10367z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxBitCnt_1_\);

-- Location: LCCOMB_X31_Y30_N22
\u_uw_uart|u_UARTS|ix8373z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ = (\u_uw_uart|u_UARTS|RxFSM_3_\ & (\u_uw_uart|u_UARTS|TopRx\)) # (!\u_uw_uart|u_UARTS|RxFSM_3_\ & ((!\u_uw_uart|u_UARTS|nx34394z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TopRx\,
	datab => \u_uw_uart|u_UARTS|RxFSM_3_\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\);

-- Location: LCCOMB_X30_Y30_N6
\u_uw_uart|u_UARTS|ix9370z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx9370z1\ = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & (\u_uw_uart|u_UARTS|nx34394z2\ & (\u_uw_uart|u_UARTS|nx9370z2\ $ (\u_uw_uart|u_UARTS|RxBitCnt_2_\)))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\ & 
-- (((\u_uw_uart|u_UARTS|RxBitCnt_2_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx9370z2\,
	datab => \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_2_\,
	datad => \u_uw_uart|u_UARTS|nx34394z2\,
	combout => \u_uw_uart|u_UARTS|nx9370z1\);

-- Location: LCFF_X30_Y30_N7
\u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx9370z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxBitCnt_2_\);

-- Location: LCCOMB_X30_Y30_N18
\u_uw_uart|u_UARTS|ix13547z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx13547z2\ = (\u_uw_uart|u_UARTS|RxBitCnt_3_\ & (!\u_uw_uart|u_UARTS|RxBitCnt_1_\ & (!\u_uw_uart|u_UARTS|RxBitCnt_0_\ & !\u_uw_uart|u_UARTS|RxBitCnt_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|RxBitCnt_3_\,
	datab => \u_uw_uart|u_UARTS|RxBitCnt_1_\,
	datac => \u_uw_uart|u_UARTS|RxBitCnt_0_\,
	datad => \u_uw_uart|u_UARTS|RxBitCnt_2_\,
	combout => \u_uw_uart|u_UARTS|nx13547z2\);

-- Location: LCCOMB_X31_Y30_N24
\u_uw_uart|u_UARTS|ix11553z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx11553z1\ = (\u_uw_uart|u_UARTS|nx13547z2\ & \u_uw_uart|u_UARTS|RxFSM_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|nx13547z2\,
	datad => \u_uw_uart|u_UARTS|RxFSM_2_\,
	combout => \u_uw_uart|u_UARTS|nx11553z1\);

-- Location: LCFF_X31_Y30_N25
\u_uw_uart|u_UARTS|reg_RxFSM_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx11553z1\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx15541z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxFSM_5_\);

-- Location: LCCOMB_X34_Y29_N10
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1\ = \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\ $ (VCC)
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\ = CARRY(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\,
	datad => VCC,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20\);

-- Location: LCCOMB_X34_Y29_N14
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\);

-- Location: LCCOMB_X31_Y30_N16
\u_uw_uart|u_UARTS|ix65151z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx65151z1\ = (\u_uw_uart|u_UARTS|nx34394z3\) # (!\u_uw_uart|u_UARTS|nx34394z2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|nx34394z2\,
	datac => \u_uw_uart|u_UARTS|nx34394z3\,
	combout => \u_uw_uart|u_UARTS|nx65151z1\);

-- Location: LCFF_X34_Y29_N15
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\);

-- Location: LCCOMB_X34_Y29_N16
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\)) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\);

-- Location: LCFF_X34_Y29_N17
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\);

-- Location: LCFF_X34_Y29_N11
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\);

-- Location: LCCOMB_X34_Y29_N0
\u_uw_uart|u_UARTS|ix34394z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z10\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21\,
	combout => \u_uw_uart|u_UARTS|nx34394z10\);

-- Location: LCCOMB_X34_Y29_N18
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12\);

-- Location: LCFF_X34_Y29_N19
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\);

-- Location: LCCOMB_X34_Y29_N22
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\);

-- Location: LCFF_X34_Y29_N23
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\);

-- Location: LCCOMB_X34_Y29_N24
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\)) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\);

-- Location: LCFF_X34_Y29_N25
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\);

-- Location: LCCOMB_X34_Y29_N6
\u_uw_uart|u_UARTS|ix34394z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z9\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\ & \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart|u_UARTS|nx34394z9\);

-- Location: LCCOMB_X34_Y29_N26
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\ $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ & 
-- (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\ & VCC))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\ = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\);

-- Location: LCFF_X34_Y29_N27
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\);

-- Location: LCCOMB_X34_Y29_N28
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1\ = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\)) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\ & 
-- ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\) # (GND)))
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2\ = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\,
	datad => VCC,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1\,
	cout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2\);

-- Location: LCFF_X34_Y29_N29
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\);

-- Location: LCCOMB_X34_Y29_N30
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1\ = \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2\ $ (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\,
	cin => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2\,
	combout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1\);

-- Location: LCFF_X34_Y29_N31
\u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_uw_uart|u_UARTS|nx65151z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\);

-- Location: LCCOMB_X34_Y29_N8
\u_uw_uart|u_UARTS|ix34394z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z6\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\ & (!\u_uw_uart|u_UARTS|TxDivisor_5_\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3\,
	datac => \u_uw_uart|u_UARTS|TxDivisor_5_\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1\,
	combout => \u_uw_uart|u_UARTS|nx34394z6\);

-- Location: LCCOMB_X34_Y29_N2
\u_uw_uart|u_UARTS|ix34394z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z7\ = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\ & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\ & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11\,
	datab => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9\,
	datac => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7\,
	datad => \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13\,
	combout => \u_uw_uart|u_UARTS|nx34394z7\);

-- Location: LCCOMB_X33_Y29_N28
\u_uw_uart|u_UARTS|ix34394z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z5\ = (\u_uw_uart|u_UARTS|nx34394z8\ & (\u_uw_uart|u_UARTS|nx34394z6\ & \u_uw_uart|u_UARTS|nx34394z7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx34394z8\,
	datac => \u_uw_uart|u_UARTS|nx34394z6\,
	datad => \u_uw_uart|u_UARTS|nx34394z7\,
	combout => \u_uw_uart|u_UARTS|nx34394z5\);

-- Location: LCCOMB_X33_Y29_N6
\u_uw_uart|u_UARTS|ix34394z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z3\ = (\u_uw_uart|u_UARTS|nx34394z5\) # ((\u_uw_uart|u_UARTS|nx34394z4\ & (\u_uw_uart|u_UARTS|nx34394z10\ & \u_uw_uart|u_UARTS|nx34394z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx34394z4\,
	datab => \u_uw_uart|u_UARTS|nx34394z10\,
	datac => \u_uw_uart|u_UARTS|nx34394z9\,
	datad => \u_uw_uart|u_UARTS|nx34394z5\,
	combout => \u_uw_uart|u_UARTS|nx34394z3\);

-- Location: LCCOMB_X31_Y30_N12
\u_uw_uart|u_UARTS|ix34394z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx34394z1\ = (\u_uw_uart|u_UARTS|nx34394z2\ & \u_uw_uart|u_UARTS|nx34394z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|nx34394z2\,
	datac => \u_uw_uart|u_UARTS|nx34394z3\,
	combout => \u_uw_uart|u_UARTS|nx34394z1\);

-- Location: LCFF_X31_Y30_N13
\u_uw_uart|u_UARTS|reg_TopRx\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx34394z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TopRx\);

-- Location: LCCOMB_X31_Y30_N30
\u_uw_uart|u_UARTS|ix30017z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx30017z1\ = (!\u_uw_uart|u_UARTS|not_Rx_r\ & (\u_uw_uart|u_UARTS|RxFSM_5_\ & \u_uw_uart|u_UARTS|TopRx\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|not_Rx_r\,
	datac => \u_uw_uart|u_UARTS|RxFSM_5_\,
	datad => \u_uw_uart|u_UARTS|TopRx\,
	combout => \u_uw_uart|u_UARTS|nx30017z1\);

-- Location: LCFF_X31_Y30_N31
\u_uw_uart|u_UARTS|reg_RxRDYi\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx30017z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxRDY\);

-- Location: LCCOMB_X30_Y30_N16
\u_uw_uart|ix33468z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33468z1\ = (!\u_uw_uart|o_pixavail\ & \u_uw_uart|u_UARTS|RxRDY\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|u_UARTS|RxRDY\,
	combout => \u_uw_uart|nx33468z1\);

-- Location: LCFF_X30_Y30_N17
\u_uw_uart|reg_CharAvail\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx33468z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|o_pixavail\);

-- Location: LCCOMB_X31_Y28_N20
\u_uw_uart|ix39480z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx39480z1\ = (!\u_uw_uart|nx46385z1\ & ((\u_uw_uart|o_pixavail\) # (\u_uw_uart|ack\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx46385z1\,
	datab => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx39480z1\);

-- Location: LCFF_X31_Y28_N21
\u_uw_uart|reg_ack\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx39480z1\,
	sclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|ack\);

-- Location: LCCOMB_X31_Y28_N14
\u_uw_uart|ix33354z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx33354z1\ = (\u_uw_uart|o_pixavail\) # ((\u_uw_uart|ack\) # (!\nrst~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|o_pixavail\,
	datac => \nrst~combout\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx33354z1\);

-- Location: LCFF_X30_Y28_N1
\u_uw_uart|modgen_counter_waitcount|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx51271z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z31\);

-- Location: LCCOMB_X30_Y28_N2
\u_uw_uart|modgen_counter_waitcount|ix22081z52938\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx52268z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z30\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z30\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z28\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z30\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z29\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z30\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z28\);

-- Location: LCFF_X30_Y28_N3
\u_uw_uart|modgen_counter_waitcount|reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx52268z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z29\);

-- Location: LCCOMB_X30_Y28_N4
\u_uw_uart|modgen_counter_waitcount|ix22081z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx53265z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z28\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z28\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z26\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z27\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z27\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z28\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z26\);

-- Location: LCFF_X30_Y28_N5
\u_uw_uart|modgen_counter_waitcount|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx53265z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z27\);

-- Location: LCCOMB_X30_Y28_N8
\u_uw_uart|modgen_counter_waitcount|ix22081z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx55259z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z24\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z24\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z22\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z24\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z22\);

-- Location: LCFF_X30_Y28_N9
\u_uw_uart|modgen_counter_waitcount|reg_q_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx55259z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z23\);

-- Location: LCCOMB_X30_Y28_N12
\u_uw_uart|modgen_counter_waitcount|ix22081z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx57253z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z20\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z20\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z18\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z19\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z20\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z18\);

-- Location: LCCOMB_X30_Y28_N14
\u_uw_uart|modgen_counter_waitcount|ix22081z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx58250z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z18\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z18\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z16\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z18\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z18\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z16\);

-- Location: LCFF_X30_Y28_N15
\u_uw_uart|modgen_counter_waitcount|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx58250z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z17\);

-- Location: LCCOMB_X30_Y28_N16
\u_uw_uart|modgen_counter_waitcount|ix22081z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx59247z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z16\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z16\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z14\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z15\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z16\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z14\);

-- Location: LCCOMB_X30_Y28_N18
\u_uw_uart|modgen_counter_waitcount|ix22081z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx60244z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z14\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & 
-- ((\u_uw_uart|modgen_counter_waitcount|nx22081z14\) # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z12\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z14\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z14\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z12\);

-- Location: LCFF_X30_Y28_N19
\u_uw_uart|modgen_counter_waitcount|reg_q_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx60244z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z13\);

-- Location: LCCOMB_X30_Y28_N20
\u_uw_uart|modgen_counter_waitcount|ix22081z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx17096z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z12\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z12\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z10\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z12\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z10\);

-- Location: LCFF_X30_Y28_N21
\u_uw_uart|modgen_counter_waitcount|reg_q_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx17096z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z11\);

-- Location: LCFF_X30_Y28_N17
\u_uw_uart|modgen_counter_waitcount|reg_q_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx59247z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z15\);

-- Location: LCCOMB_X31_Y28_N2
\u_uw_uart|ix46385z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z3\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z13\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z11\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z13\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z11\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z15\,
	combout => \u_uw_uart|nx46385z3\);

-- Location: LCCOMB_X30_Y28_N22
\u_uw_uart|modgen_counter_waitcount|ix22081z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx18093z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z10\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\ & ((\u_uw_uart|modgen_counter_waitcount|nx22081z10\) 
-- # (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z8\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z10\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z9\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z10\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z8\);

-- Location: LCFF_X30_Y28_N23
\u_uw_uart|modgen_counter_waitcount|reg_q_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx18093z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z9\);

-- Location: LCCOMB_X30_Y28_N24
\u_uw_uart|modgen_counter_waitcount|ix22081z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx19090z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z8\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z8\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z6\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z8\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z6\);

-- Location: LCFF_X30_Y28_N25
\u_uw_uart|modgen_counter_waitcount|reg_q_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx19090z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z7\);

-- Location: LCCOMB_X30_Y28_N26
\u_uw_uart|modgen_counter_waitcount|ix22081z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx20087z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z6\)) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & ((\u_uw_uart|modgen_counter_waitcount|nx22081z6\) # 
-- (GND)))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z4\ = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z6\) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z6\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z4\);

-- Location: LCFF_X30_Y28_N27
\u_uw_uart|modgen_counter_waitcount|reg_q_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx20087z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z5\);

-- Location: LCCOMB_X30_Y28_N28
\u_uw_uart|modgen_counter_waitcount|ix22081z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx21084z1\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & (\u_uw_uart|modgen_counter_waitcount|nx22081z4\ $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & 
-- (!\u_uw_uart|modgen_counter_waitcount|nx22081z4\ & VCC))
-- \u_uw_uart|modgen_counter_waitcount|nx22081z2\ = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z3\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	datad => VCC,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z4\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	cout => \u_uw_uart|modgen_counter_waitcount|nx22081z2\);

-- Location: LCFF_X30_Y28_N29
\u_uw_uart|modgen_counter_waitcount|reg_q_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx21084z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z3\);

-- Location: LCCOMB_X30_Y28_N30
\u_uw_uart|modgen_counter_waitcount|ix22081z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|modgen_counter_waitcount|nx22081z1\ = \u_uw_uart|modgen_counter_waitcount|nx22081z2\ $ (\u_uw_uart|modgen_counter_waitcount|nx64508z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	cin => \u_uw_uart|modgen_counter_waitcount|nx22081z2\,
	combout => \u_uw_uart|modgen_counter_waitcount|nx22081z1\);

-- Location: LCFF_X30_Y28_N31
\u_uw_uart|modgen_counter_waitcount|reg_q_15_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx22081z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx64508z1\);

-- Location: LCCOMB_X31_Y28_N24
\u_uw_uart|ix46385z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z2\ = (!\u_uw_uart|modgen_counter_waitcount|nx22081z5\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z7\ & (!\u_uw_uart|modgen_counter_waitcount|nx64508z1\ & !\u_uw_uart|modgen_counter_waitcount|nx22081z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z5\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z7\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx64508z1\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z3\,
	combout => \u_uw_uart|nx46385z2\);

-- Location: LCFF_X30_Y28_N13
\u_uw_uart|modgen_counter_waitcount|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|modgen_counter_waitcount|nx57253z1\,
	sclr => \u_uw_uart|nx33354z2\,
	ena => \u_uw_uart|nx33354z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|modgen_counter_waitcount|nx22081z19\);

-- Location: LCCOMB_X31_Y28_N28
\u_uw_uart|ix46385z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z4\ = (\u_uw_uart|modgen_counter_waitcount|nx22081z21\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z17\ & (!\u_uw_uart|modgen_counter_waitcount|nx22081z23\ & \u_uw_uart|modgen_counter_waitcount|nx22081z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|modgen_counter_waitcount|nx22081z21\,
	datab => \u_uw_uart|modgen_counter_waitcount|nx22081z17\,
	datac => \u_uw_uart|modgen_counter_waitcount|nx22081z23\,
	datad => \u_uw_uart|modgen_counter_waitcount|nx22081z19\,
	combout => \u_uw_uart|nx46385z4\);

-- Location: LCCOMB_X31_Y28_N16
\u_uw_uart|ix46385z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z1\ = (\u_uw_uart|nx46385z5\ & (\u_uw_uart|nx46385z3\ & (\u_uw_uart|nx46385z2\ & \u_uw_uart|nx46385z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|nx46385z5\,
	datab => \u_uw_uart|nx46385z3\,
	datac => \u_uw_uart|nx46385z2\,
	datad => \u_uw_uart|nx46385z4\,
	combout => \u_uw_uart|nx46385z1\);

-- Location: LCCOMB_X32_Y28_N30
\u_uw_uart|dsend~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|dsend~feeder_combout\ = \u_uw_uart|nx46385z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|nx46385z1\,
	combout => \u_uw_uart|dsend~feeder_combout\);

-- Location: LCCOMB_X31_Y28_N26
\u_uw_uart|u_UARTS|ix15376z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx15376z1\ = (\u_uw_uart|u_UARTS|RxFSM_6_\) # ((\u_uw_uart|u_UARTS|RxErr\ & !\u_uw_uart|u_UARTS|RxRDY\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|RxFSM_6_\,
	datac => \u_uw_uart|u_UARTS|RxErr\,
	datad => \u_uw_uart|u_UARTS|RxRDY\,
	combout => \u_uw_uart|u_UARTS|nx15376z1\);

-- Location: LCFF_X31_Y28_N27
\u_uw_uart|u_UARTS|reg_RxErr\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx15376z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|RxErr\);

-- Location: LCCOMB_X31_Y28_N22
\u_uw_uart|ix46385z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx46385z6\ = (!\u_uw_uart|o_pixavail\ & !\u_uw_uart|ack\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|o_pixavail\,
	datad => \u_uw_uart|ack\,
	combout => \u_uw_uart|nx46385z6\);

-- Location: LCFF_X32_Y28_N31
\u_uw_uart|reg_dsend\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|dsend~feeder_combout\,
	sdata => \u_uw_uart|u_UARTS|RxErr\,
	sclr => \ALT_INV_nrst~combout\,
	sload => \u_uw_uart|nx46385z6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|dsend\);

-- Location: LCCOMB_X31_Y28_N12
\u_uw_uart|ix42856z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx42856z2\ = (!\u_uw_uart|State\ & \u_uw_uart|dsend\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_uw_uart|State\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx42856z2\);

-- Location: LCFF_X31_Y28_N13
\u_uw_uart|reg_State\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx42856z2\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|State\);

-- Location: LCCOMB_X31_Y28_N0
\u_uw_uart|ix54369z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|nx54369z1\ = (!\u_uw_uart|State\ & ((\u_uw_uart|LD_SDOUT\) # (\u_uw_uart|dsend\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|State\,
	datac => \u_uw_uart|LD_SDOUT\,
	datad => \u_uw_uart|dsend\,
	combout => \u_uw_uart|nx54369z1\);

-- Location: LCFF_X31_Y28_N1
\u_uw_uart|reg_LD_SDOUT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|nx54369z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|LD_SDOUT\);

-- Location: LCCOMB_X33_Y29_N12
\u_uw_uart|u_UARTS|ix4608z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx4608z2\ = (\u_uw_uart|u_UARTS|TxFSM_0_\ & (((!\u_uw_uart|u_UARTS|TopTx\)))) # (!\u_uw_uart|u_UARTS|TxFSM_0_\ & ((\u_uw_uart|u_UARTS|TxFSM_1_\ & ((!\u_uw_uart|u_UARTS|TopTx\))) # (!\u_uw_uart|u_UARTS|TxFSM_1_\ & 
-- (!\u_uw_uart|LD_SDOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datab => \u_uw_uart|LD_SDOUT\,
	datac => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datad => \u_uw_uart|u_UARTS|TopTx\,
	combout => \u_uw_uart|u_UARTS|nx4608z2\);

-- Location: LCCOMB_X33_Y29_N16
\u_uw_uart|u_UARTS|ix4608z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx4608z1\ = (\u_uw_uart|u_UARTS|TxFSM_0_\ & (((\u_uw_uart|u_UARTS|nx4608z2\)))) # (!\u_uw_uart|u_UARTS|TxFSM_0_\ & (!\u_uw_uart|u_UARTS|nx4608z2\ & ((!\u_uw_uart|u_UARTS|nx4608z3\) # (!\u_uw_uart|u_UARTS|TxFSM_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datab => \u_uw_uart|u_UARTS|nx4608z3\,
	datac => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datad => \u_uw_uart|u_UARTS|nx4608z2\,
	combout => \u_uw_uart|u_UARTS|nx4608z1\);

-- Location: LCFF_X33_Y29_N17
\u_uw_uart|u_UARTS|reg_TxFSM_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx4608z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxFSM_0_\);

-- Location: LCCOMB_X32_Y28_N0
\u_uw_uart|u_UARTS|ix5605z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx5605z1\ = \u_uw_uart|u_UARTS|TxFSM_1_\ $ (((\u_uw_uart|u_UARTS|TxFSM_0_\ & \u_uw_uart|u_UARTS|TopTx\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datac => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datad => \u_uw_uart|u_UARTS|TopTx\,
	combout => \u_uw_uart|u_UARTS|nx5605z1\);

-- Location: LCFF_X32_Y28_N1
\u_uw_uart|u_UARTS|reg_TxFSM_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx5605z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|TxFSM_1_\);

-- Location: LCCOMB_X32_Y28_N12
\u_uw_uart|u_UARTS|ix31615z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx31615z2\ = (!\u_uw_uart|u_UARTS|TxFSM_0_\ & ((\u_uw_uart|u_UARTS|TxFSM_1_\ & ((\u_uw_uart|u_UARTS|TopTx\))) # (!\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|LD_SDOUT\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|LD_SDOUT\,
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datac => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datad => \u_uw_uart|u_UARTS|TopTx\,
	combout => \u_uw_uart|u_UARTS|nx31615z2\);

-- Location: LCCOMB_X32_Y28_N2
\u_uw_uart|u_UARTS|ix29621z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx29621z1\ = (\u_uw_uart|u_UARTS|nx31615z2\ & (!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_\)) # (!\u_uw_uart|u_UARTS|nx31615z2\ & ((\u_uw_uart|u_UARTS|nx28624z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_\,
	datac => \u_uw_uart|u_UARTS|nx28624z2\,
	datad => \u_uw_uart|u_UARTS|nx31615z2\,
	combout => \u_uw_uart|u_UARTS|nx29621z1\);

-- Location: LCFF_X32_Y28_N3
\u_uw_uart|u_UARTS|reg_Tx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx29621z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|nx28624z2\);

-- Location: LCCOMB_X32_Y29_N30
\u_uw_uart|u_UARTS|ix28624z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_\ = (\u_uw_uart|u_UARTS|TxFSM_1_\ & ((!\u_uw_uart|u_UARTS|nx28624z2\))) # (!\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|sdout_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|sdout_3_\,
	datac => \u_uw_uart|u_UARTS|nx28624z2\,
	datad => \u_uw_uart|u_UARTS|TxFSM_1_\,
	combout => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_\);

-- Location: LCCOMB_X32_Y29_N26
\u_uw_uart|u_UARTS|ix28624z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx28624z1\ = (\u_uw_uart|u_UARTS|nx31615z2\ & ((!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_\))) # (!\u_uw_uart|u_UARTS|nx31615z2\ & (\u_uw_uart|u_UARTS|nx61140z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|nx31615z2\,
	datac => \u_uw_uart|u_UARTS|nx61140z1\,
	datad => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_\,
	combout => \u_uw_uart|u_UARTS|nx28624z1\);

-- Location: LCFF_X32_Y29_N27
\u_uw_uart|u_UARTS|reg_Tx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|nx28624z1\,
	aclr => \ALT_INV_nrst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|nx61140z1\);

-- Location: LCCOMB_X32_Y29_N24
\u_uw_uart|u_UARTS|ix61140z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_\ = (\u_uw_uart|u_UARTS|TxFSM_0_\) # ((\u_uw_uart|u_UARTS|TxFSM_1_\ & \u_uw_uart|u_UARTS|nx61140z1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datac => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datad => \u_uw_uart|u_UARTS|nx61140z1\,
	combout => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_\);

-- Location: LCCOMB_X32_Y29_N28
\u_uw_uart|u_UARTS|ix61812z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx61812z1\ = (\u_uw_uart|u_UARTS|TxFSM_0_\ & (!\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|u_UARTS|TopTx\))) # (!\u_uw_uart|u_UARTS|TxFSM_0_\ & ((\u_uw_uart|u_UARTS|TxFSM_1_\ & (\u_uw_uart|u_UARTS|TopTx\)) # 
-- (!\u_uw_uart|u_UARTS|TxFSM_1_\ & ((\u_uw_uart|LD_SDOUT\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|u_UARTS|TxFSM_0_\,
	datab => \u_uw_uart|u_UARTS|TxFSM_1_\,
	datac => \u_uw_uart|u_UARTS|TopTx\,
	datad => \u_uw_uart|LD_SDOUT\,
	combout => \u_uw_uart|u_UARTS|nx61812z1\);

-- Location: LCFF_X32_Y29_N25
reg_out_txflex_obuf : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx61812z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx21351z2);

-- Location: LCCOMB_X29_Y29_N12
\u_lab3|modgen_counter_o_output|ix58250z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx51271z1\ = \u_lab3|modgen_counter_o_output|nx58250z15\ $ (VCC)
-- \u_lab3|modgen_counter_o_output|nx58250z14\ = CARRY(\u_lab3|modgen_counter_o_output|nx58250z15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => VCC,
	combout => \u_lab3|modgen_counter_o_output|nx51271z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z14\);

-- Location: LCCOMB_X27_Y32_N6
\u_lab3|ix14243z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx14243z1\ = \u_lab3|y_pos_0_\ $ (\u_lab3|y_pos_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|y_pos_0_\,
	datac => \u_lab3|y_pos_1_\,
	combout => \u_lab3|nx14243z1\);

-- Location: LCCOMB_X28_Y29_N26
\u_lab3|ix45976z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx45976z1\ = \u_lab3|x_pos_0_\ $ (\u_lab3|x_pos_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|x_pos_0_\,
	datac => \u_lab3|x_pos_1_\,
	combout => \u_lab3|nx45976z1\);

-- Location: LCFF_X28_Y29_N27
\u_lab3|modgen_counter_x_pos_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx45976z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|x_pos_1_\);

-- Location: LCCOMB_X28_Y29_N24
\u_lab3|ix44979z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx44979z1\ = \u_lab3|x_pos_2_\ $ (((\u_lab3|x_pos_0_\ & \u_lab3|x_pos_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|x_pos_0_\,
	datac => \u_lab3|x_pos_2_\,
	datad => \u_lab3|x_pos_1_\,
	combout => \u_lab3|nx44979z1\);

-- Location: LCFF_X28_Y29_N25
\u_lab3|modgen_counter_x_pos_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx44979z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|x_pos_2_\);

-- Location: LCCOMB_X28_Y29_N22
\u_lab3|ix43982z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx43982z1\ = \u_lab3|x_pos_3_\ $ (((\u_lab3|x_pos_0_\ & (\u_lab3|x_pos_2_\ & \u_lab3|x_pos_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|x_pos_0_\,
	datab => \u_lab3|x_pos_2_\,
	datac => \u_lab3|x_pos_3_\,
	datad => \u_lab3|x_pos_1_\,
	combout => \u_lab3|nx43982z1\);

-- Location: LCFF_X28_Y29_N23
\u_lab3|modgen_counter_x_pos_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx43982z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|x_pos_3_\);

-- Location: LCCOMB_X28_Y29_N20
\u_lab3|x_pos_0_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|x_pos_0_~_wirecell_combout\ = !\u_lab3|x_pos_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|x_pos_0_\,
	combout => \u_lab3|x_pos_0_~_wirecell_combout\);

-- Location: LCFF_X28_Y29_N21
\u_lab3|modgen_counter_x_pos_reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|x_pos_0_~_wirecell_combout\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_uw_uart|o_pixavail\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|x_pos_0_\);

-- Location: LCCOMB_X28_Y29_N30
\u_lab3|ix53087z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx53087z2\ = (\u_lab3|x_pos_0_\ & \u_lab3|x_pos_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|x_pos_0_\,
	datad => \u_lab3|x_pos_1_\,
	combout => \u_lab3|nx53087z2\);

-- Location: LCCOMB_X27_Y32_N22
\u_lab3|ix53087z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx53087z1\ = (\u_uw_uart|o_pixavail\ & (\u_lab3|x_pos_2_\ & (\u_lab3|x_pos_3_\ & \u_lab3|nx53087z2\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_lab3|x_pos_2_\,
	datac => \u_lab3|x_pos_3_\,
	datad => \u_lab3|nx53087z2\,
	combout => \u_lab3|nx53087z1\);

-- Location: LCCOMB_X27_Y32_N12
\u_lab3|ix12249z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx12249z1\ = \u_lab3|y_pos_3_\ $ (((\u_lab3|y_pos_0_\ & (\u_lab3|y_pos_2_\ & \u_lab3|y_pos_1_\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|y_pos_0_\,
	datab => \u_lab3|y_pos_2_\,
	datac => \u_lab3|y_pos_3_\,
	datad => \u_lab3|y_pos_1_\,
	combout => \u_lab3|nx12249z1\);

-- Location: LCFF_X27_Y32_N13
\u_lab3|modgen_counter_y_pos_reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx12249z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|y_pos_3_\);

-- Location: LCCOMB_X27_Y32_N28
\u_lab3|ix35397z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx35397z1\ = (\u_lab3|end_of_input\) # ((\u_lab3|nx35397z2\ & (\u_lab3|nx53087z1\ & \u_lab3|y_pos_3_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx35397z2\,
	datab => \u_lab3|nx53087z1\,
	datac => \u_lab3|end_of_input\,
	datad => \u_lab3|y_pos_3_\,
	combout => \u_lab3|nx35397z1\);

-- Location: LCFF_X27_Y32_N29
\u_lab3|reg_end_of_input\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx35397z1\,
	aclr => \u_lab3|nx46973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|end_of_input\);

-- Location: LCCOMB_X27_Y32_N24
\u_lab3|ix46973z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx46973z1\ = (\u_lab3|end_of_input\) # (!\nrst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \nrst~combout\,
	datad => \u_lab3|end_of_input\,
	combout => \u_lab3|nx46973z1\);

-- Location: LCFF_X27_Y32_N7
\u_lab3|modgen_counter_y_pos_reg_q_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx14243z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|y_pos_1_\);

-- Location: LCCOMB_X27_Y32_N26
\u_lab3|ix13246z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx13246z1\ = \u_lab3|y_pos_2_\ $ (((\u_lab3|y_pos_0_\ & \u_lab3|y_pos_1_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|y_pos_0_\,
	datac => \u_lab3|y_pos_2_\,
	datad => \u_lab3|y_pos_1_\,
	combout => \u_lab3|nx13246z1\);

-- Location: LCFF_X27_Y32_N27
\u_lab3|modgen_counter_y_pos_reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx13246z1\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|y_pos_2_\);

-- Location: LCCOMB_X27_Y32_N14
\u_lab3|ix3163z52961\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z72\ = (\u_lab3|y_pos_1_\) # ((\u_lab3|y_pos_2_\) # (\u_lab3|y_pos_3_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|y_pos_1_\,
	datab => \u_lab3|y_pos_2_\,
	datad => \u_lab3|y_pos_3_\,
	combout => \u_lab3|nx3163z72\);

-- Location: LCCOMB_X27_Y32_N0
\u_lab3|nx54084z1~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx54084z1~_wirecell_combout\ = !\u_lab3|nx54084z1\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_lab3|nx54084z1\,
	combout => \u_lab3|nx54084z1~_wirecell_combout\);

-- Location: LCFF_X27_Y32_N1
\u_lab3|reg_i_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx54084z1~_wirecell_combout\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|i_1_\);

-- Location: LCFF_X27_Y32_N31
\u_lab3|reg_i_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_lab3|i_1_\,
	aclr => \u_lab3|nx46973z1\,
	sload => VCC,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|i_2_\);

-- Location: LCCOMB_X27_Y32_N18
\u_lab3|i_2_~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|i_2_~_wirecell_combout\ = !\u_lab3|i_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_lab3|i_2_\,
	combout => \u_lab3|i_2_~_wirecell_combout\);

-- Location: LCFF_X27_Y32_N19
\u_lab3|reg_i_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|i_2_~_wirecell_combout\,
	aclr => \u_lab3|nx46973z1\,
	ena => \u_lab3|nx53087z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|nx54084z1\);

-- Location: LCCOMB_X25_Y31_N8
\u_lab3|ix3163z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z3\ = (\u_lab3|nx54084z1\ & (!\u_lab3|i_2_\ & \u_lab3|i_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datac => \u_lab3|i_2_\,
	datad => \u_lab3|i_1_\,
	combout => \u_lab3|nx3163z3\);

-- Location: LCCOMB_X30_Y30_N12
\u_uw_uart|u_UARTS|not_Rx_r~_wirecell\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout\ = !\u_uw_uart|u_UARTS|not_Rx_r\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|not_Rx_r\,
	combout => \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout\);

-- Location: LCCOMB_X31_Y30_N14
\u_uw_uart|u_UARTS|ix54636z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|nx54636z1\ = (\u_uw_uart|u_UARTS|RxFSM_3_\ & \u_uw_uart|u_UARTS|TopRx\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_uw_uart|u_UARTS|RxFSM_3_\,
	datad => \u_uw_uart|u_UARTS|TopRx\,
	combout => \u_uw_uart|u_UARTS|nx54636z1\);

-- Location: LCFF_X30_Y30_N13
\u_uw_uart|u_UARTS|reg_Rx_Reg_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_7_\);

-- Location: LCCOMB_X30_Y30_N22
\u_uw_uart|u_UARTS|Rx_Reg_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_7_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_7_\,
	combout => \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout\);

-- Location: LCFF_X30_Y30_N23
\u_uw_uart|u_UARTS|reg_Rx_Reg_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_6_\);

-- Location: LCCOMB_X30_Y30_N24
\u_uw_uart|u_UARTS|Rx_Reg_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_6_\,
	combout => \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout\);

-- Location: LCFF_X30_Y30_N25
\u_uw_uart|u_UARTS|reg_Rx_Reg_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_5_\);

-- Location: LCFF_X30_Y30_N11
\u_uw_uart|u_UARTS|reg_Rx_Reg_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Rx_Reg_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_4_\);

-- Location: LCCOMB_X30_Y30_N28
\u_uw_uart|u_UARTS|Rx_Reg_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_4_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_4_\,
	combout => \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout\);

-- Location: LCFF_X30_Y30_N29
\u_uw_uart|u_UARTS|reg_Rx_Reg_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_3_\);

-- Location: LCCOMB_X30_Y30_N30
\u_uw_uart|u_UARTS|Rx_Reg_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_3_\,
	combout => \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout\);

-- Location: LCFF_X30_Y30_N31
\u_uw_uart|u_UARTS|reg_Rx_Reg_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_2_\);

-- Location: LCCOMB_X30_Y30_N0
\u_uw_uart|u_UARTS|Rx_Reg_1_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_2_\,
	combout => \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout\);

-- Location: LCFF_X30_Y30_N1
\u_uw_uart|u_UARTS|reg_Rx_Reg_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_1_\);

-- Location: LCFF_X30_Y30_N3
\u_uw_uart|u_UARTS|reg_Rx_Reg_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Rx_Reg_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|nx54636z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Rx_Reg_0_\);

-- Location: LCCOMB_X29_Y30_N30
\u_uw_uart|u_UARTS|Dout_0_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Dout_0_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_0_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_0_\,
	combout => \u_uw_uart|u_UARTS|Dout_0_~feeder_combout\);

-- Location: LCFF_X29_Y30_N31
\u_uw_uart|u_UARTS|reg_Dout_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Dout_0_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_0_\);

-- Location: LCFF_X29_Y30_N29
\u_uw_uart|reg_RData_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_0_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_0_\);

-- Location: LCCOMB_X29_Y30_N28
\u_uw_uart|ix40426z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_0_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_0_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_0_\,
	combout => \u_uw_uart|datain_0_\);

-- Location: LCFF_X29_Y30_N9
\u_uw_uart|u_UARTS|reg_Dout_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Rx_Reg_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_1_\);

-- Location: LCFF_X29_Y30_N11
\u_uw_uart|reg_RData_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_1_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_1_\);

-- Location: LCCOMB_X29_Y30_N10
\u_uw_uart|ix41423z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_1_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_1_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_1_\,
	combout => \u_uw_uart|datain_1_\);

-- Location: LCCOMB_X29_Y30_N6
\u_uw_uart|u_UARTS|Dout_2_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Dout_2_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_2_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_2_\,
	combout => \u_uw_uart|u_UARTS|Dout_2_~feeder_combout\);

-- Location: LCFF_X29_Y30_N7
\u_uw_uart|u_UARTS|reg_Dout_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Dout_2_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_2_\);

-- Location: LCFF_X29_Y30_N13
\u_uw_uart|reg_RData_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_2_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_2_\);

-- Location: LCCOMB_X29_Y30_N12
\u_uw_uart|ix42420z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_2_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_2_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_2_\,
	combout => \u_uw_uart|datain_2_\);

-- Location: LCCOMB_X29_Y30_N14
\u_uw_uart|u_UARTS|Dout_3_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Dout_3_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_3_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_3_\,
	combout => \u_uw_uart|u_UARTS|Dout_3_~feeder_combout\);

-- Location: LCFF_X29_Y30_N15
\u_uw_uart|u_UARTS|reg_Dout_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Dout_3_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_3_\);

-- Location: LCFF_X29_Y30_N19
\u_uw_uart|reg_RData_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_3_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_3_\);

-- Location: LCCOMB_X29_Y30_N18
\u_uw_uart|ix43417z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_3_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_3_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_3_\,
	combout => \u_uw_uart|datain_3_\);

-- Location: LCFF_X29_Y30_N17
\u_uw_uart|u_UARTS|reg_Dout_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Rx_Reg_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_4_\);

-- Location: LCFF_X29_Y30_N27
\u_uw_uart|reg_RData_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_4_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_4_\);

-- Location: LCCOMB_X29_Y30_N26
\u_uw_uart|ix44414z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_4_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_4_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_4_\,
	combout => \u_uw_uart|datain_4_\);

-- Location: LCCOMB_X29_Y30_N20
\u_uw_uart|u_UARTS|Dout_5_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Dout_5_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_5_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_5_\,
	combout => \u_uw_uart|u_UARTS|Dout_5_~feeder_combout\);

-- Location: LCFF_X29_Y30_N21
\u_uw_uart|u_UARTS|reg_Dout_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Dout_5_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_5_\);

-- Location: LCFF_X29_Y30_N1
\u_uw_uart|reg_RData_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_5_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_5_\);

-- Location: LCCOMB_X29_Y30_N0
\u_uw_uart|ix45411z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_5_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_5_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_5_\,
	combout => \u_uw_uart|datain_5_\);

-- Location: LCCOMB_X29_Y30_N4
\u_uw_uart|u_UARTS|Dout_6_~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|u_UARTS|Dout_6_~feeder_combout\ = \u_uw_uart|u_UARTS|Rx_Reg_6_\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \u_uw_uart|u_UARTS|Rx_Reg_6_\,
	combout => \u_uw_uart|u_UARTS|Dout_6_~feeder_combout\);

-- Location: LCFF_X29_Y30_N5
\u_uw_uart|u_UARTS|reg_Dout_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_uw_uart|u_UARTS|Dout_6_~feeder_combout\,
	aclr => \ALT_INV_nrst~combout\,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_6_\);

-- Location: LCFF_X29_Y30_N3
\u_uw_uart|reg_RData_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_6_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_6_\);

-- Location: LCCOMB_X29_Y30_N2
\u_uw_uart|ix46408z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_6_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_6_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_6_\,
	combout => \u_uw_uart|datain_6_\);

-- Location: LCFF_X29_Y30_N25
\u_uw_uart|u_UARTS|reg_Dout_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Rx_Reg_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|nx30017z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|u_UARTS|Dout_7_\);

-- Location: LCFF_X29_Y30_N23
\u_uw_uart|reg_RData_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \u_uw_uart|u_UARTS|Dout_7_\,
	aclr => \ALT_INV_nrst~combout\,
	sload => VCC,
	ena => \u_uw_uart|u_UARTS|RxRDY\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_uw_uart|RData_7_\);

-- Location: LCCOMB_X29_Y30_N22
\u_uw_uart|ix47405z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_uw_uart|datain_7_\ = (\u_uw_uart|o_pixavail\ & \u_uw_uart|RData_7_\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_uw_uart|RData_7_\,
	combout => \u_uw_uart|datain_7_\);

-- Location: M4K_X26_Y30
\u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "lab3:u_lab3|ram_dq_8_1:mem_0|altsyncram:ix64056z44884|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "old",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 16,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 4,
	port_b_byte_enable_clear => "none",
	port_b_data_in_clear => "none",
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 8,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 15,
	port_b_logical_ram_depth => 16,
	port_b_logical_ram_width => 8,
	port_b_read_enable_write_enable_clear => "none",
	port_b_read_enable_write_enable_clock => "clock1",
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \u_lab3|nx3163z3\,
	portbrewe => VCC,
	clk0 => \clk~clkctrl_outclk\,
	clk1 => \clk~clkctrl_outclk\,
	ena0 => \u_lab3|nx3163z3\,
	portadatain => \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X25_Y31_N6
\u_lab3|ix51243z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx51243z1\ = (!\u_lab3|nx54084z1\ & (!\u_lab3|i_2_\ & !\u_lab3|i_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datac => \u_lab3|i_2_\,
	datad => \u_lab3|i_1_\,
	combout => \u_lab3|nx51243z1\);

-- Location: LCCOMB_X25_Y31_N14
\u_lab3|ix3163z19322|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx37973z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0) & ((GND) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0) & 
-- (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0) $ (GND)))
-- \u_lab3|ix3163z19322|nx44952z22\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(0),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0),
	datad => VCC,
	combout => \u_lab3|ix3163z19322|nx37973z1\,
	cout => \u_lab3|ix3163z19322|nx44952z22\);

-- Location: LCCOMB_X25_Y31_N16
\u_lab3|ix3163z19322|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx38970z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) & (!\u_lab3|ix3163z19322|nx44952z22\)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) & 
-- (\u_lab3|ix3163z19322|nx44952z22\ & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) & ((\u_lab3|ix3163z19322|nx44952z22\) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) 
-- & (!\u_lab3|ix3163z19322|nx44952z22\))))
-- \u_lab3|ix3163z19322|nx44952z19\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1) & !\u_lab3|ix3163z19322|nx44952z22\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & 
-- ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1)) # (!\u_lab3|ix3163z19322|nx44952z22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(1),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z22\,
	combout => \u_lab3|ix3163z19322|nx38970z1\,
	cout => \u_lab3|ix3163z19322|nx44952z19\);

-- Location: LCCOMB_X25_Y31_N18
\u_lab3|ix3163z19322|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx39967z1\ = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) $ (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2) $ (\u_lab3|ix3163z19322|nx44952z19\)))) # (GND)
-- \u_lab3|ix3163z19322|nx44952z16\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) & ((!\u_lab3|ix3163z19322|nx44952z19\) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) & 
-- (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2) & !\u_lab3|ix3163z19322|nx44952z19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(2),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z19\,
	combout => \u_lab3|ix3163z19322|nx39967z1\,
	cout => \u_lab3|ix3163z19322|nx44952z16\);

-- Location: LCCOMB_X25_Y31_N24
\u_lab3|ix3163z19322|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx42958z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) & (!\u_lab3|ix3163z19322|nx44952z10\)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) & 
-- (\u_lab3|ix3163z19322|nx44952z10\ & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) & ((\u_lab3|ix3163z19322|nx44952z10\) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) 
-- & (!\u_lab3|ix3163z19322|nx44952z10\))))
-- \u_lab3|ix3163z19322|nx44952z7\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5) & !\u_lab3|ix3163z19322|nx44952z10\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & 
-- ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5)) # (!\u_lab3|ix3163z19322|nx44952z10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(5),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z10\,
	combout => \u_lab3|ix3163z19322|nx42958z1\,
	cout => \u_lab3|ix3163z19322|nx44952z7\);

-- Location: LCCOMB_X25_Y31_N26
\u_lab3|ix3163z19322|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx43955z1\ = ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6) $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6) $ (\u_lab3|ix3163z19322|nx44952z7\)))) # (GND)
-- \u_lab3|ix3163z19322|nx44952z4\ = CARRY((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6) & (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6) & !\u_lab3|ix3163z19322|nx44952z7\)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6) & 
-- ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6)) # (!\u_lab3|ix3163z19322|nx44952z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6),
	datab => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(6),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z7\,
	combout => \u_lab3|ix3163z19322|nx43955z1\,
	cout => \u_lab3|ix3163z19322|nx44952z4\);

-- Location: LCCOMB_X25_Y31_N28
\u_lab3|ix3163z19322|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx44952z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) & (!\u_lab3|ix3163z19322|nx44952z4\)) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) & 
-- (\u_lab3|ix3163z19322|nx44952z4\ & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) & ((\u_lab3|ix3163z19322|nx44952z4\) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) & 
-- (!\u_lab3|ix3163z19322|nx44952z4\))))
-- \u_lab3|ix3163z19322|nx23445z2\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7) & !\u_lab3|ix3163z19322|nx44952z4\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & 
-- ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7)) # (!\u_lab3|ix3163z19322|nx44952z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(7),
	datab => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7),
	datad => VCC,
	cin => \u_lab3|ix3163z19322|nx44952z4\,
	combout => \u_lab3|ix3163z19322|nx44952z1\,
	cout => \u_lab3|ix3163z19322|nx23445z2\);

-- Location: LCCOMB_X27_Y32_N30
\u_lab3|ix54113z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx54113z1\ = (\u_lab3|nx54084z1\ & (\u_lab3|i_2_\ & !\u_lab3|i_1_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datac => \u_lab3|i_2_\,
	datad => \u_lab3|i_1_\,
	combout => \u_lab3|nx54113z1\);

-- Location: LCCOMB_X27_Y31_N4
\u_lab3|ix3163z19319|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx37973z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0) & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0) $ (VCC))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0) & 
-- ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0)) # (GND)))
-- \u_lab3|ix3163z19319|nx44952z22\ = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(0),
	datab => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(0),
	datad => VCC,
	combout => \u_lab3|ix3163z19319|nx37973z1\,
	cout => \u_lab3|ix3163z19319|nx44952z22\);

-- Location: LCCOMB_X27_Y31_N6
\u_lab3|ix3163z19319|ix44952z52930\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx38970z1\ = (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1) & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & (!\u_lab3|ix3163z19319|nx44952z22\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & 
-- (\u_lab3|ix3163z19319|nx44952z22\ & VCC)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1) & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & ((\u_lab3|ix3163z19319|nx44952z22\) # (GND))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & 
-- (!\u_lab3|ix3163z19319|nx44952z22\))))
-- \u_lab3|ix3163z19319|nx44952z19\ = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1) & (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1) & !\u_lab3|ix3163z19319|nx44952z22\)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1) & 
-- ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(1)) # (!\u_lab3|ix3163z19319|nx44952z22\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(1),
	datab => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(1),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z22\,
	combout => \u_lab3|ix3163z19319|nx38970z1\,
	cout => \u_lab3|ix3163z19319|nx44952z19\);

-- Location: LCCOMB_X27_Y31_N8
\u_lab3|ix3163z19319|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx39967z1\ = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) $ (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2) $ (\u_lab3|ix3163z19319|nx44952z19\)))) # (GND)
-- \u_lab3|ix3163z19319|nx44952z16\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2) & !\u_lab3|ix3163z19319|nx44952z19\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(2) & 
-- ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2)) # (!\u_lab3|ix3163z19319|nx44952z19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(2),
	datab => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(2),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z19\,
	combout => \u_lab3|ix3163z19319|nx39967z1\,
	cout => \u_lab3|ix3163z19319|nx44952z16\);

-- Location: LCCOMB_X27_Y31_N14
\u_lab3|ix3163z19319|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx42958z1\ = (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) & (!\u_lab3|ix3163z19319|nx44952z10\)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) & 
-- ((\u_lab3|ix3163z19319|nx44952z10\) # (GND))))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) & (\u_lab3|ix3163z19319|nx44952z10\ & VCC)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) 
-- & (!\u_lab3|ix3163z19319|nx44952z10\))))
-- \u_lab3|ix3163z19319|nx44952z7\ = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & ((!\u_lab3|ix3163z19319|nx44952z10\) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(5) & 
-- (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5) & !\u_lab3|ix3163z19319|nx44952z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(5),
	datab => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(5),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z10\,
	combout => \u_lab3|ix3163z19319|nx42958z1\,
	cout => \u_lab3|ix3163z19319|nx44952z7\);

-- Location: LCCOMB_X27_Y31_N16
\u_lab3|ix3163z19319|ix44952z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx43955z1\ = ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6) $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6) $ (\u_lab3|ix3163z19319|nx44952z7\)))) # (GND)
-- \u_lab3|ix3163z19319|nx44952z4\ = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6) & ((!\u_lab3|ix3163z19319|nx44952z7\) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6) & 
-- (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(6) & !\u_lab3|ix3163z19319|nx44952z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(6),
	datab => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(6),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z7\,
	combout => \u_lab3|ix3163z19319|nx43955z1\,
	cout => \u_lab3|ix3163z19319|nx44952z4\);

-- Location: LCCOMB_X27_Y31_N18
\u_lab3|ix3163z19319|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx44952z1\ = (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7) & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & (!\u_lab3|ix3163z19319|nx44952z4\)) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & 
-- (\u_lab3|ix3163z19319|nx44952z4\ & VCC)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7) & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & ((\u_lab3|ix3163z19319|nx44952z4\) # (GND))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & 
-- (!\u_lab3|ix3163z19319|nx44952z4\))))
-- \u_lab3|ix3163z19319|nx23445z2\ = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7) & (\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7) & !\u_lab3|ix3163z19319|nx44952z4\)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7) & 
-- ((\u_lab3|mem|ix64056z44883|auto_generated|q_b\(7)) # (!\u_lab3|ix3163z19319|nx44952z4\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(7),
	datab => \u_lab3|mem|ix64056z44883|auto_generated|q_b\(7),
	datad => VCC,
	cin => \u_lab3|ix3163z19319|nx44952z4\,
	combout => \u_lab3|ix3163z19319|nx44952z1\,
	cout => \u_lab3|ix3163z19319|nx23445z2\);

-- Location: LCCOMB_X25_Y31_N0
\u_lab3|ix3163z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z10\ = (\u_lab3|nx51243z1\ & ((\u_lab3|nx54113z1\) # ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7))))) # (!\u_lab3|nx51243z1\ & (!\u_lab3|nx54113z1\ & ((\u_lab3|ix3163z19319|nx44952z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx51243z1\,
	datab => \u_lab3|nx54113z1\,
	datac => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(7),
	datad => \u_lab3|ix3163z19319|nx44952z1\,
	combout => \u_lab3|nx3163z10\);

-- Location: LCCOMB_X25_Y31_N10
\u_lab3|ix3163z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z9\ = (\u_lab3|nx54113z1\ & (\u_lab3|ix3163z19322|nx44952z1\ & !\u_lab3|nx3163z10\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx3163z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|ix3163z19322|nx44952z1\,
	datac => \u_lab3|nx54113z1\,
	datad => \u_lab3|nx3163z10\,
	combout => \u_lab3|nx3163z9\);

-- Location: LCCOMB_X28_Y31_N20
\u_lab3|ix3163z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z14\ = (\u_lab3|nx54113z1\ & (\u_lab3|nx51243z1\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx51243z1\ & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6))) # (!\u_lab3|nx51243z1\ & ((\u_lab3|ix3163z19319|nx43955z1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datab => \u_lab3|nx51243z1\,
	datac => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(6),
	datad => \u_lab3|ix3163z19319|nx43955z1\,
	combout => \u_lab3|nx3163z14\);

-- Location: LCCOMB_X28_Y31_N22
\u_lab3|ix3163z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z13\ = (\u_lab3|nx54113z1\ & (!\u_lab3|nx3163z14\ & \u_lab3|ix3163z19322|nx43955z1\)) # (!\u_lab3|nx54113z1\ & (\u_lab3|nx3163z14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|nx3163z14\,
	datad => \u_lab3|ix3163z19322|nx43955z1\,
	combout => \u_lab3|nx3163z13\);

-- Location: LCCOMB_X28_Y31_N24
\u_lab3|ix3163z52936\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z18\ = (\u_lab3|nx54113z1\ & (\u_lab3|nx51243z1\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx51243z1\ & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5))) # (!\u_lab3|nx51243z1\ & ((\u_lab3|ix3163z19319|nx42958z1\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datab => \u_lab3|nx51243z1\,
	datac => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(5),
	datad => \u_lab3|ix3163z19319|nx42958z1\,
	combout => \u_lab3|nx3163z18\);

-- Location: LCCOMB_X28_Y31_N26
\u_lab3|ix3163z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z17\ = (\u_lab3|nx54113z1\ & (!\u_lab3|nx3163z18\ & \u_lab3|ix3163z19322|nx42958z1\)) # (!\u_lab3|nx54113z1\ & (\u_lab3|nx3163z18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|nx3163z18\,
	datad => \u_lab3|ix3163z19322|nx42958z1\,
	combout => \u_lab3|nx3163z17\);

-- Location: LCCOMB_X29_Y31_N18
\u_lab3|ix3163z52950\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z44\ = (\u_lab3|i_1_\ & (((\u_uw_uart|datain_4_\)))) # (!\u_lab3|i_1_\ & ((\u_lab3|i_2_\ & (\u_uw_uart|datain_4_\)) # (!\u_lab3|i_2_\ & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|i_1_\,
	datab => \u_lab3|i_2_\,
	datac => \u_uw_uart|datain_4_\,
	datad => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(4),
	combout => \u_lab3|nx3163z44\);

-- Location: LCCOMB_X29_Y31_N12
\u_lab3|ix3163z30602|ix45949z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z16\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z44\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z44\,
	combout => \u_lab3|ix3163z30602|nx45949z16\);

-- Location: LCCOMB_X29_Y31_N30
\u_lab3|ix3163z52951\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z45\ = (\u_lab3|i_1_\ & (((\u_uw_uart|datain_3_\)))) # (!\u_lab3|i_1_\ & ((\u_lab3|i_2_\ & (\u_uw_uart|datain_3_\)) # (!\u_lab3|i_2_\ & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|i_1_\,
	datab => \u_lab3|i_2_\,
	datac => \u_uw_uart|datain_3_\,
	datad => \u_lab3|mem_1|ix64056z44885|auto_generated|q_b\(3),
	combout => \u_lab3|nx3163z45\);

-- Location: LCCOMB_X29_Y31_N16
\u_lab3|ix3163z30602|ix45949z52934\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z20\ = \u_lab3|nx54084z1\ $ (!\u_lab3|nx3163z45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|nx3163z45\,
	combout => \u_lab3|ix3163z30602|nx45949z20\);

-- Location: LCCOMB_X27_Y31_N26
\u_lab3|ix3163z52942\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z30\ = (\u_lab3|nx54113z1\ & (\u_lab3|nx51243z1\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx51243z1\ & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2)))) # (!\u_lab3|nx51243z1\ & (\u_lab3|ix3163z19319|nx39967z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datab => \u_lab3|nx51243z1\,
	datac => \u_lab3|ix3163z19319|nx39967z1\,
	datad => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(2),
	combout => \u_lab3|nx3163z30\);

-- Location: LCCOMB_X27_Y31_N28
\u_lab3|ix3163z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z29\ = (\u_lab3|nx54113z1\ & (\u_lab3|ix3163z19322|nx39967z1\ & !\u_lab3|nx3163z30\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx3163z30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|ix3163z19322|nx39967z1\,
	datad => \u_lab3|nx3163z30\,
	combout => \u_lab3|nx3163z29\);

-- Location: LCCOMB_X27_Y31_N22
\u_lab3|ix3163z52944\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z34\ = (\u_lab3|nx51243z1\ & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1)) # ((\u_lab3|nx54113z1\)))) # (!\u_lab3|nx51243z1\ & (((!\u_lab3|nx54113z1\ & \u_lab3|ix3163z19319|nx38970z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(1),
	datab => \u_lab3|nx51243z1\,
	datac => \u_lab3|nx54113z1\,
	datad => \u_lab3|ix3163z19319|nx38970z1\,
	combout => \u_lab3|nx3163z34\);

-- Location: LCCOMB_X28_Y31_N28
\u_lab3|ix3163z52943\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z33\ = (\u_lab3|nx54113z1\ & (\u_lab3|ix3163z19322|nx38970z1\ & !\u_lab3|nx3163z34\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx3163z34\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|ix3163z19322|nx38970z1\,
	datad => \u_lab3|nx3163z34\,
	combout => \u_lab3|nx3163z33\);

-- Location: LCCOMB_X25_Y31_N4
\u_lab3|ix3163z52946\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z38\ = (\u_lab3|nx51243z1\ & ((\u_lab3|nx54113z1\) # ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0))))) # (!\u_lab3|nx51243z1\ & (!\u_lab3|nx54113z1\ & ((\u_lab3|ix3163z19319|nx37973z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx51243z1\,
	datab => \u_lab3|nx54113z1\,
	datac => \u_lab3|mem_0|ix64056z44884|auto_generated|q_b\(0),
	datad => \u_lab3|ix3163z19319|nx37973z1\,
	combout => \u_lab3|nx3163z38\);

-- Location: LCCOMB_X28_Y31_N30
\u_lab3|ix3163z52945\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z37\ = (\u_lab3|nx54113z1\ & (\u_lab3|ix3163z19322|nx37973z1\ & !\u_lab3|nx3163z38\)) # (!\u_lab3|nx54113z1\ & ((\u_lab3|nx3163z38\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx54113z1\,
	datac => \u_lab3|ix3163z19322|nx37973z1\,
	datad => \u_lab3|nx3163z38\,
	combout => \u_lab3|nx3163z37\);

-- Location: LCCOMB_X28_Y31_N0
\u_lab3|ix3163z30602|ix45949z52941\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z35\ = CARRY(!\u_lab3|nx54084z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datad => VCC,
	cout => \u_lab3|ix3163z30602|nx45949z35\);

-- Location: LCCOMB_X28_Y31_N2
\u_lab3|ix3163z30602|ix45949z52939\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx37973z1\ = (\u_lab3|ix3163z30602|nx45949z32\ & ((\u_lab3|nx3163z37\ & (\u_lab3|ix3163z30602|nx45949z35\ & VCC)) # (!\u_lab3|nx3163z37\ & (!\u_lab3|ix3163z30602|nx45949z35\)))) # (!\u_lab3|ix3163z30602|nx45949z32\ & 
-- ((\u_lab3|nx3163z37\ & (!\u_lab3|ix3163z30602|nx45949z35\)) # (!\u_lab3|nx3163z37\ & ((\u_lab3|ix3163z30602|nx45949z35\) # (GND)))))
-- \u_lab3|ix3163z30602|nx45949z31\ = CARRY((\u_lab3|ix3163z30602|nx45949z32\ & (!\u_lab3|nx3163z37\ & !\u_lab3|ix3163z30602|nx45949z35\)) # (!\u_lab3|ix3163z30602|nx45949z32\ & ((!\u_lab3|ix3163z30602|nx45949z35\) # (!\u_lab3|nx3163z37\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z32\,
	datab => \u_lab3|nx3163z37\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z35\,
	combout => \u_lab3|ix3163z30602|nx37973z1\,
	cout => \u_lab3|ix3163z30602|nx45949z31\);

-- Location: LCCOMB_X28_Y31_N4
\u_lab3|ix3163z30602|ix45949z52937\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx38970z1\ = ((\u_lab3|ix3163z30602|nx45949z28\ $ (\u_lab3|nx3163z33\ $ (!\u_lab3|ix3163z30602|nx45949z31\)))) # (GND)
-- \u_lab3|ix3163z30602|nx45949z27\ = CARRY((\u_lab3|ix3163z30602|nx45949z28\ & ((\u_lab3|nx3163z33\) # (!\u_lab3|ix3163z30602|nx45949z31\))) # (!\u_lab3|ix3163z30602|nx45949z28\ & (\u_lab3|nx3163z33\ & !\u_lab3|ix3163z30602|nx45949z31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z28\,
	datab => \u_lab3|nx3163z33\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z31\,
	combout => \u_lab3|ix3163z30602|nx38970z1\,
	cout => \u_lab3|ix3163z30602|nx45949z27\);

-- Location: LCCOMB_X28_Y31_N6
\u_lab3|ix3163z30602|ix45949z52935\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx39967z1\ = (\u_lab3|ix3163z30602|nx45949z24\ & ((\u_lab3|nx3163z29\ & (\u_lab3|ix3163z30602|nx45949z27\ & VCC)) # (!\u_lab3|nx3163z29\ & (!\u_lab3|ix3163z30602|nx45949z27\)))) # (!\u_lab3|ix3163z30602|nx45949z24\ & 
-- ((\u_lab3|nx3163z29\ & (!\u_lab3|ix3163z30602|nx45949z27\)) # (!\u_lab3|nx3163z29\ & ((\u_lab3|ix3163z30602|nx45949z27\) # (GND)))))
-- \u_lab3|ix3163z30602|nx45949z23\ = CARRY((\u_lab3|ix3163z30602|nx45949z24\ & (!\u_lab3|nx3163z29\ & !\u_lab3|ix3163z30602|nx45949z27\)) # (!\u_lab3|ix3163z30602|nx45949z24\ & ((!\u_lab3|ix3163z30602|nx45949z27\) # (!\u_lab3|nx3163z29\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z24\,
	datab => \u_lab3|nx3163z29\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z27\,
	combout => \u_lab3|ix3163z30602|nx39967z1\,
	cout => \u_lab3|ix3163z30602|nx45949z23\);

-- Location: LCCOMB_X28_Y31_N8
\u_lab3|ix3163z30602|ix45949z52933\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx40964z1\ = ((\u_lab3|nx3163z25\ $ (\u_lab3|ix3163z30602|nx45949z20\ $ (!\u_lab3|ix3163z30602|nx45949z23\)))) # (GND)
-- \u_lab3|ix3163z30602|nx45949z19\ = CARRY((\u_lab3|nx3163z25\ & ((\u_lab3|ix3163z30602|nx45949z20\) # (!\u_lab3|ix3163z30602|nx45949z23\))) # (!\u_lab3|nx3163z25\ & (\u_lab3|ix3163z30602|nx45949z20\ & !\u_lab3|ix3163z30602|nx45949z23\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx3163z25\,
	datab => \u_lab3|ix3163z30602|nx45949z20\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z23\,
	combout => \u_lab3|ix3163z30602|nx40964z1\,
	cout => \u_lab3|ix3163z30602|nx45949z19\);

-- Location: LCCOMB_X28_Y31_N10
\u_lab3|ix3163z30602|ix45949z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx41961z1\ = (\u_lab3|nx3163z21\ & ((\u_lab3|ix3163z30602|nx45949z16\ & (\u_lab3|ix3163z30602|nx45949z19\ & VCC)) # (!\u_lab3|ix3163z30602|nx45949z16\ & (!\u_lab3|ix3163z30602|nx45949z19\)))) # (!\u_lab3|nx3163z21\ & 
-- ((\u_lab3|ix3163z30602|nx45949z16\ & (!\u_lab3|ix3163z30602|nx45949z19\)) # (!\u_lab3|ix3163z30602|nx45949z16\ & ((\u_lab3|ix3163z30602|nx45949z19\) # (GND)))))
-- \u_lab3|ix3163z30602|nx45949z15\ = CARRY((\u_lab3|nx3163z21\ & (!\u_lab3|ix3163z30602|nx45949z16\ & !\u_lab3|ix3163z30602|nx45949z19\)) # (!\u_lab3|nx3163z21\ & ((!\u_lab3|ix3163z30602|nx45949z19\) # (!\u_lab3|ix3163z30602|nx45949z16\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx3163z21\,
	datab => \u_lab3|ix3163z30602|nx45949z16\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z19\,
	combout => \u_lab3|ix3163z30602|nx41961z1\,
	cout => \u_lab3|ix3163z30602|nx45949z15\);

-- Location: LCCOMB_X28_Y31_N12
\u_lab3|ix3163z30602|ix45949z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx42958z1\ = ((\u_lab3|ix3163z30602|nx45949z12\ $ (\u_lab3|nx3163z17\ $ (!\u_lab3|ix3163z30602|nx45949z15\)))) # (GND)
-- \u_lab3|ix3163z30602|nx45949z11\ = CARRY((\u_lab3|ix3163z30602|nx45949z12\ & ((\u_lab3|nx3163z17\) # (!\u_lab3|ix3163z30602|nx45949z15\))) # (!\u_lab3|ix3163z30602|nx45949z12\ & (\u_lab3|nx3163z17\ & !\u_lab3|ix3163z30602|nx45949z15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z12\,
	datab => \u_lab3|nx3163z17\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z15\,
	combout => \u_lab3|ix3163z30602|nx42958z1\,
	cout => \u_lab3|ix3163z30602|nx45949z11\);

-- Location: LCCOMB_X28_Y31_N14
\u_lab3|ix3163z30602|ix45949z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx43955z1\ = (\u_lab3|ix3163z30602|nx45949z8\ & ((\u_lab3|nx3163z13\ & (\u_lab3|ix3163z30602|nx45949z11\ & VCC)) # (!\u_lab3|nx3163z13\ & (!\u_lab3|ix3163z30602|nx45949z11\)))) # (!\u_lab3|ix3163z30602|nx45949z8\ & 
-- ((\u_lab3|nx3163z13\ & (!\u_lab3|ix3163z30602|nx45949z11\)) # (!\u_lab3|nx3163z13\ & ((\u_lab3|ix3163z30602|nx45949z11\) # (GND)))))
-- \u_lab3|ix3163z30602|nx45949z7\ = CARRY((\u_lab3|ix3163z30602|nx45949z8\ & (!\u_lab3|nx3163z13\ & !\u_lab3|ix3163z30602|nx45949z11\)) # (!\u_lab3|ix3163z30602|nx45949z8\ & ((!\u_lab3|ix3163z30602|nx45949z11\) # (!\u_lab3|nx3163z13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z8\,
	datab => \u_lab3|nx3163z13\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z11\,
	combout => \u_lab3|ix3163z30602|nx43955z1\,
	cout => \u_lab3|ix3163z30602|nx45949z7\);

-- Location: LCCOMB_X28_Y31_N16
\u_lab3|ix3163z30602|ix45949z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx44952z1\ = ((\u_lab3|ix3163z30602|nx45949z4\ $ (\u_lab3|nx3163z9\ $ (!\u_lab3|ix3163z30602|nx45949z7\)))) # (GND)
-- \u_lab3|ix3163z30602|nx45949z3\ = CARRY((\u_lab3|ix3163z30602|nx45949z4\ & ((\u_lab3|nx3163z9\) # (!\u_lab3|ix3163z30602|nx45949z7\))) # (!\u_lab3|ix3163z30602|nx45949z4\ & (\u_lab3|nx3163z9\ & !\u_lab3|ix3163z30602|nx45949z7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx45949z4\,
	datab => \u_lab3|nx3163z9\,
	datad => VCC,
	cin => \u_lab3|ix3163z30602|nx45949z7\,
	combout => \u_lab3|ix3163z30602|nx44952z1\,
	cout => \u_lab3|ix3163z30602|nx45949z3\);

-- Location: LCCOMB_X28_Y31_N18
\u_lab3|ix3163z30602|ix45949z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z30602|nx45949z1\ = \u_lab3|nx54084z1\ $ (!\u_lab3|ix3163z30602|nx45949z3\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	cin => \u_lab3|ix3163z30602|nx45949z3\,
	combout => \u_lab3|ix3163z30602|nx45949z1\);

-- Location: LCCOMB_X29_Y31_N28
\u_lab3|ix3163z52957\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z58\ = \u_lab3|nx54084z1\ $ (!\u_lab3|ix3163z30602|nx45949z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \u_lab3|nx54084z1\,
	datad => \u_lab3|ix3163z30602|nx45949z1\,
	combout => \u_lab3|nx3163z58\);

-- Location: LCCOMB_X28_Y29_N0
\u_lab3|ix3163z60014|ix44952z52932\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx44952z23\ = CARRY(\u_lab3|ix3163z30602|nx37973z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|ix3163z30602|nx37973z1\,
	datad => VCC,
	cout => \u_lab3|ix3163z60014|nx44952z23\);

-- Location: LCCOMB_X28_Y29_N2
\u_lab3|ix3163z60014|ix44952z52931\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx37973z1\ = (\u_lab3|ix3163z60014|nx44952z23\ & (((!\u_uw_uart|o_pixavail\)) # (!\u_uw_uart|RData_0_\))) # (!\u_lab3|ix3163z60014|nx44952z23\ & (((\u_uw_uart|RData_0_\ & \u_uw_uart|o_pixavail\)) # (GND)))
-- \u_lab3|ix3163z60014|nx44952z22\ = CARRY(((!\u_lab3|ix3163z60014|nx44952z23\) # (!\u_uw_uart|o_pixavail\)) # (!\u_uw_uart|RData_0_\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|RData_0_\,
	datab => \u_uw_uart|o_pixavail\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z23\,
	combout => \u_lab3|ix3163z60014|nx37973z1\,
	cout => \u_lab3|ix3163z60014|nx44952z22\);

-- Location: LCCOMB_X28_Y29_N6
\u_lab3|ix3163z60014|ix44952z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx39967z1\ = (\u_uw_uart|datain_2_\ & ((\u_lab3|ix3163z30602|nx39967z1\ & (\u_lab3|ix3163z60014|nx44952z19\ & VCC)) # (!\u_lab3|ix3163z30602|nx39967z1\ & (!\u_lab3|ix3163z60014|nx44952z19\)))) # (!\u_uw_uart|datain_2_\ & 
-- ((\u_lab3|ix3163z30602|nx39967z1\ & (!\u_lab3|ix3163z60014|nx44952z19\)) # (!\u_lab3|ix3163z30602|nx39967z1\ & ((\u_lab3|ix3163z60014|nx44952z19\) # (GND)))))
-- \u_lab3|ix3163z60014|nx44952z16\ = CARRY((\u_uw_uart|datain_2_\ & (!\u_lab3|ix3163z30602|nx39967z1\ & !\u_lab3|ix3163z60014|nx44952z19\)) # (!\u_uw_uart|datain_2_\ & ((!\u_lab3|ix3163z60014|nx44952z19\) # (!\u_lab3|ix3163z30602|nx39967z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_2_\,
	datab => \u_lab3|ix3163z30602|nx39967z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z19\,
	combout => \u_lab3|ix3163z60014|nx39967z1\,
	cout => \u_lab3|ix3163z60014|nx44952z16\);

-- Location: LCCOMB_X28_Y29_N8
\u_lab3|ix3163z60014|ix44952z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx40964z1\ = ((\u_lab3|ix3163z30602|nx40964z1\ $ (\u_uw_uart|datain_3_\ $ (!\u_lab3|ix3163z60014|nx44952z16\)))) # (GND)
-- \u_lab3|ix3163z60014|nx44952z13\ = CARRY((\u_lab3|ix3163z30602|nx40964z1\ & ((\u_uw_uart|datain_3_\) # (!\u_lab3|ix3163z60014|nx44952z16\))) # (!\u_lab3|ix3163z30602|nx40964z1\ & (\u_uw_uart|datain_3_\ & !\u_lab3|ix3163z60014|nx44952z16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx40964z1\,
	datab => \u_uw_uart|datain_3_\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z16\,
	combout => \u_lab3|ix3163z60014|nx40964z1\,
	cout => \u_lab3|ix3163z60014|nx44952z13\);

-- Location: LCCOMB_X28_Y29_N10
\u_lab3|ix3163z60014|ix44952z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx41961z1\ = (\u_uw_uart|datain_4_\ & ((\u_lab3|ix3163z30602|nx41961z1\ & (\u_lab3|ix3163z60014|nx44952z13\ & VCC)) # (!\u_lab3|ix3163z30602|nx41961z1\ & (!\u_lab3|ix3163z60014|nx44952z13\)))) # (!\u_uw_uart|datain_4_\ & 
-- ((\u_lab3|ix3163z30602|nx41961z1\ & (!\u_lab3|ix3163z60014|nx44952z13\)) # (!\u_lab3|ix3163z30602|nx41961z1\ & ((\u_lab3|ix3163z60014|nx44952z13\) # (GND)))))
-- \u_lab3|ix3163z60014|nx44952z10\ = CARRY((\u_uw_uart|datain_4_\ & (!\u_lab3|ix3163z30602|nx41961z1\ & !\u_lab3|ix3163z60014|nx44952z13\)) # (!\u_uw_uart|datain_4_\ & ((!\u_lab3|ix3163z60014|nx44952z13\) # (!\u_lab3|ix3163z30602|nx41961z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_4_\,
	datab => \u_lab3|ix3163z30602|nx41961z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z13\,
	combout => \u_lab3|ix3163z60014|nx41961z1\,
	cout => \u_lab3|ix3163z60014|nx44952z10\);

-- Location: LCCOMB_X28_Y29_N12
\u_lab3|ix3163z60014|ix44952z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx42958z1\ = ((\u_uw_uart|datain_5_\ $ (\u_lab3|ix3163z30602|nx42958z1\ $ (!\u_lab3|ix3163z60014|nx44952z10\)))) # (GND)
-- \u_lab3|ix3163z60014|nx44952z7\ = CARRY((\u_uw_uart|datain_5_\ & ((\u_lab3|ix3163z30602|nx42958z1\) # (!\u_lab3|ix3163z60014|nx44952z10\))) # (!\u_uw_uart|datain_5_\ & (\u_lab3|ix3163z30602|nx42958z1\ & !\u_lab3|ix3163z60014|nx44952z10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_5_\,
	datab => \u_lab3|ix3163z30602|nx42958z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z10\,
	combout => \u_lab3|ix3163z60014|nx42958z1\,
	cout => \u_lab3|ix3163z60014|nx44952z7\);

-- Location: LCCOMB_X28_Y29_N16
\u_lab3|ix3163z60014|ix44952z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx44952z1\ = ((\u_uw_uart|datain_7_\ $ (\u_lab3|ix3163z30602|nx44952z1\ $ (!\u_lab3|ix3163z60014|nx44952z4\)))) # (GND)
-- \u_lab3|ix3163z60014|nx23445z2\ = CARRY((\u_uw_uart|datain_7_\ & ((\u_lab3|ix3163z30602|nx44952z1\) # (!\u_lab3|ix3163z60014|nx44952z4\))) # (!\u_uw_uart|datain_7_\ & (\u_lab3|ix3163z30602|nx44952z1\ & !\u_lab3|ix3163z60014|nx44952z4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|datain_7_\,
	datab => \u_lab3|ix3163z30602|nx44952z1\,
	datad => VCC,
	cin => \u_lab3|ix3163z60014|nx44952z4\,
	combout => \u_lab3|ix3163z60014|nx44952z1\,
	cout => \u_lab3|ix3163z60014|nx23445z2\);

-- Location: LCCOMB_X29_Y29_N4
\u_lab3|ix3163z52958\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z60\ = (!\u_lab3|ix3163z60014|nx43955z1\ & (!\u_lab3|ix3163z60014|nx44952z1\ & (!\u_lab3|ix3163z60014|nx41961z1\ & !\u_lab3|ix3163z60014|nx42958z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z60014|nx43955z1\,
	datab => \u_lab3|ix3163z60014|nx44952z1\,
	datac => \u_lab3|ix3163z60014|nx41961z1\,
	datad => \u_lab3|ix3163z60014|nx42958z1\,
	combout => \u_lab3|nx3163z60\);

-- Location: LCCOMB_X28_Y29_N28
\u_lab3|ix3163z52959\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z65\ = (!\u_lab3|ix3163z60014|nx38970z1\ & (!\u_lab3|ix3163z60014|nx37973z1\ & (!\u_lab3|ix3163z60014|nx40964z1\ & !\u_lab3|ix3163z60014|nx39967z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z60014|nx38970z1\,
	datab => \u_lab3|ix3163z60014|nx37973z1\,
	datac => \u_lab3|ix3163z60014|nx40964z1\,
	datad => \u_lab3|ix3163z60014|nx39967z1\,
	combout => \u_lab3|nx3163z65\);

-- Location: LCCOMB_X29_Y29_N30
\u_lab3|ix3163z52955\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z56\ = (\u_lab3|nx3163z58\) # ((!\u_lab3|nx3163z57\ & (\u_lab3|nx3163z60\ & \u_lab3|nx3163z65\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx3163z57\,
	datab => \u_lab3|nx3163z58\,
	datac => \u_lab3|nx3163z60\,
	datad => \u_lab3|nx3163z65\,
	combout => \u_lab3|nx3163z56\);

-- Location: LCCOMB_X27_Y31_N20
\u_lab3|ix3163z19319|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19319|nx23445z1\ = !\u_lab3|ix3163z19319|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_lab3|ix3163z19319|nx23445z2\,
	combout => \u_lab3|ix3163z19319|nx23445z1\);

-- Location: LCCOMB_X29_Y31_N8
\u_lab3|ix3163z52956\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z57\ = (\u_lab3|nx54084z1\ & (\u_lab3|i_1_\ $ (\u_lab3|i_2_\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx54084z1\,
	datac => \u_lab3|i_1_\,
	datad => \u_lab3|i_2_\,
	combout => \u_lab3|nx3163z57\);

-- Location: LCCOMB_X29_Y31_N24
\u_lab3|ix3163z52964\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z75\ = (!\u_lab3|ix3163z30602|nx37973z1\ & (!\u_lab3|ix3163z30602|nx39967z1\ & (!\u_lab3|ix3163z30602|nx38970z1\ & !\u_lab3|ix3163z30602|nx40964z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx37973z1\,
	datab => \u_lab3|ix3163z30602|nx39967z1\,
	datac => \u_lab3|ix3163z30602|nx38970z1\,
	datad => \u_lab3|ix3163z30602|nx40964z1\,
	combout => \u_lab3|nx3163z75\);

-- Location: LCCOMB_X29_Y31_N6
\u_lab3|ix3163z52963\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z74\ = (!\u_lab3|ix3163z30602|nx43955z1\ & (!\u_lab3|ix3163z30602|nx44952z1\ & (!\u_lab3|ix3163z30602|nx41961z1\ & !\u_lab3|ix3163z30602|nx42958z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|ix3163z30602|nx43955z1\,
	datab => \u_lab3|ix3163z30602|nx44952z1\,
	datac => \u_lab3|ix3163z30602|nx41961z1\,
	datad => \u_lab3|ix3163z30602|nx42958z1\,
	combout => \u_lab3|nx3163z74\);

-- Location: LCCOMB_X29_Y31_N26
\u_lab3|ix3163z52962\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z73\ = (\u_lab3|nx3163z57\ & (\u_lab3|nx3163z75\ & \u_lab3|nx3163z74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx3163z57\,
	datac => \u_lab3|nx3163z75\,
	datad => \u_lab3|nx3163z74\,
	combout => \u_lab3|nx3163z73\);

-- Location: LCCOMB_X25_Y31_N30
\u_lab3|ix3163z19322|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z19322|nx23445z1\ = !\u_lab3|ix3163z19322|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_lab3|ix3163z19322|nx23445z2\,
	combout => \u_lab3|ix3163z19322|nx23445z1\);

-- Location: LCCOMB_X28_Y29_N18
\u_lab3|ix3163z60014|ix23445z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|ix3163z60014|nx23445z1\ = \u_lab3|ix3163z60014|nx23445z2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \u_lab3|ix3163z60014|nx23445z2\,
	combout => \u_lab3|ix3163z60014|nx23445z1\);

-- Location: LCCOMB_X29_Y29_N0
\u_lab3|ix3163z52927\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z5\ = (\u_lab3|nx51243z1\ & (\u_lab3|ix3163z60014|nx23445z1\ & ((\u_lab3|ix3163z19322|nx23445z1\) # (!\u_lab3|nx54113z1\)))) # (!\u_lab3|nx51243z1\ & (((\u_lab3|ix3163z19322|nx23445z1\)) # (!\u_lab3|nx54113z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx51243z1\,
	datab => \u_lab3|nx54113z1\,
	datac => \u_lab3|ix3163z19322|nx23445z1\,
	datad => \u_lab3|ix3163z60014|nx23445z1\,
	combout => \u_lab3|nx3163z5\);

-- Location: LCCOMB_X29_Y29_N10
\u_lab3|ix3163z52966\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z77\ = (\u_lab3|nx3163z73\) # ((\u_lab3|nx3163z5\ & ((\u_lab3|ix3163z19319|nx23445z1\) # (!\u_lab3|nx3163z3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx3163z3\,
	datab => \u_lab3|ix3163z19319|nx23445z1\,
	datac => \u_lab3|nx3163z73\,
	datad => \u_lab3|nx3163z5\,
	combout => \u_lab3|nx3163z77\);

-- Location: LCCOMB_X29_Y29_N8
\u_lab3|ix3163z52965\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z76\ = (!\u_lab3|nx3163z71\ & (((!\u_lab3|nx3163z56\ & !\u_lab3|nx3163z77\)) # (!\u_lab3|nx3163z72\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|nx3163z71\,
	datab => \u_lab3|nx3163z72\,
	datac => \u_lab3|nx3163z56\,
	datad => \u_lab3|nx3163z77\,
	combout => \u_lab3|nx3163z76\);

-- Location: LCCOMB_X27_Y32_N16
\u_lab3|ix53066z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx53066z1\ = (\u_uw_uart|o_pixavail\) # (\u_lab3|nx3163z71\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datac => \u_lab3|nx3163z71\,
	combout => \u_lab3|nx53066z1\);

-- Location: LCFF_X27_Y32_N17
\u_lab3|reg_new_number_set\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|nx53066z1\,
	aclr => \u_lab3|nx46973z1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|nx3163z71\);

-- Location: LCCOMB_X29_Y31_N14
\u_lab3|ix3163z52960\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z70\ = ((\u_lab3|nx3163z73\) # (!\u_lab3|nx3163z71\)) # (!\u_lab3|nx3163z72\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx3163z72\,
	datac => \u_lab3|nx3163z71\,
	datad => \u_lab3|nx3163z73\,
	combout => \u_lab3|nx3163z70\);

-- Location: LCCOMB_X29_Y29_N2
\u_lab3|ix3163z52924\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z2\ = (\u_lab3|nx3163z5\ & ((\u_lab3|ix3163z19319|nx23445z1\) # (!\u_lab3|nx3163z3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx3163z3\,
	datac => \u_lab3|ix3163z19319|nx23445z1\,
	datad => \u_lab3|nx3163z5\,
	combout => \u_lab3|nx3163z2\);

-- Location: LCCOMB_X29_Y29_N28
\u_lab3|ix3163z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|nx3163z1\ = (\u_uw_uart|o_pixavail\ & ((\u_lab3|nx3163z56\) # ((\u_lab3|nx3163z70\) # (\u_lab3|nx3163z2\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_uw_uart|o_pixavail\,
	datab => \u_lab3|nx3163z56\,
	datac => \u_lab3|nx3163z70\,
	datad => \u_lab3|nx3163z2\,
	combout => \u_lab3|nx3163z1\);

-- Location: LCCOMB_X29_Y29_N6
\u_lab3|modgen_counter_o_output|ix57253z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx57253z3\ = (\u_lab3|nx3163z1\ & ((\u_lab3|nx3163z72\) # (\u_lab3|nx3163z76\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|nx3163z72\,
	datac => \u_lab3|nx3163z76\,
	datad => \u_lab3|nx3163z1\,
	combout => \u_lab3|modgen_counter_o_output|nx57253z3\);

-- Location: LCFF_X29_Y29_N13
\u_lab3|modgen_counter_o_output|reg_q_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx51271z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z15\);

-- Location: LCCOMB_X29_Y29_N16
\u_lab3|modgen_counter_o_output|ix58250z52929\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx53265z1\ = (\u_lab3|modgen_counter_o_output|nx58250z11\ & (\u_lab3|modgen_counter_o_output|nx58250z12\ $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z11\ & (!\u_lab3|modgen_counter_o_output|nx58250z12\ & VCC))
-- \u_lab3|modgen_counter_o_output|nx58250z10\ = CARRY((\u_lab3|modgen_counter_o_output|nx58250z11\ & !\u_lab3|modgen_counter_o_output|nx58250z12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z12\,
	combout => \u_lab3|modgen_counter_o_output|nx53265z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z10\);

-- Location: LCFF_X29_Y29_N17
\u_lab3|modgen_counter_o_output|reg_q_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx53265z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z11\);

-- Location: LCCOMB_X29_Y29_N18
\u_lab3|modgen_counter_o_output|ix58250z52928\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx54262z1\ = (\u_lab3|modgen_counter_o_output|nx58250z9\ & (!\u_lab3|modgen_counter_o_output|nx58250z10\)) # (!\u_lab3|modgen_counter_o_output|nx58250z9\ & ((\u_lab3|modgen_counter_o_output|nx58250z10\) # (GND)))
-- \u_lab3|modgen_counter_o_output|nx58250z8\ = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z10\) # (!\u_lab3|modgen_counter_o_output|nx58250z9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|modgen_counter_o_output|nx58250z9\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z10\,
	combout => \u_lab3|modgen_counter_o_output|nx54262z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z8\);

-- Location: LCFF_X29_Y29_N19
\u_lab3|modgen_counter_o_output|reg_q_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx54262z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z9\);

-- Location: LCCOMB_X1_Y23_N16
ix57590z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx57590z1 = (\u_lab3|modgen_counter_o_output|nx58250z15\ & (!\u_lab3|modgen_counter_o_output|nx58250z9\ & (\u_lab3|modgen_counter_o_output|nx58250z13\ $ (!\u_lab3|modgen_counter_o_output|nx58250z11\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z15\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z13\ & (\u_lab3|modgen_counter_o_output|nx58250z11\ $ (!\u_lab3|modgen_counter_o_output|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx57590z1);

-- Location: LCFF_X1_Y23_N17
\reg_out_o_sevenseg_obuf_0_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx57590z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx41851z1);

-- Location: LCCOMB_X1_Y23_N26
ix58587z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx58587z1 = (\u_lab3|modgen_counter_o_output|nx58250z13\ & (!\u_lab3|modgen_counter_o_output|nx58250z9\ & ((\u_lab3|modgen_counter_o_output|nx58250z15\) # (!\u_lab3|modgen_counter_o_output|nx58250z11\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z13\ & 
-- (\u_lab3|modgen_counter_o_output|nx58250z15\ & (\u_lab3|modgen_counter_o_output|nx58250z11\ $ (!\u_lab3|modgen_counter_o_output|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx58587z1);

-- Location: LCFF_X1_Y23_N27
\reg_out_o_sevenseg_obuf_1_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx58587z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx42848z1);

-- Location: LCCOMB_X1_Y23_N12
ix59584z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx59584z1 = (\u_lab3|modgen_counter_o_output|nx58250z13\ & (((\u_lab3|modgen_counter_o_output|nx58250z15\ & !\u_lab3|modgen_counter_o_output|nx58250z9\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z13\ & ((\u_lab3|modgen_counter_o_output|nx58250z11\ & 
-- ((!\u_lab3|modgen_counter_o_output|nx58250z9\))) # (!\u_lab3|modgen_counter_o_output|nx58250z11\ & (\u_lab3|modgen_counter_o_output|nx58250z15\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx59584z1);

-- Location: LCFF_X1_Y23_N13
\reg_out_o_sevenseg_obuf_2_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx59584z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx43845z1);

-- Location: LCCOMB_X1_Y23_N22
ix60581z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx60581z1 = (\u_lab3|modgen_counter_o_output|nx58250z15\ & (\u_lab3|modgen_counter_o_output|nx58250z13\ $ ((!\u_lab3|modgen_counter_o_output|nx58250z11\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z15\ & ((\u_lab3|modgen_counter_o_output|nx58250z13\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z11\ & \u_lab3|modgen_counter_o_output|nx58250z9\)) # (!\u_lab3|modgen_counter_o_output|nx58250z13\ & (\u_lab3|modgen_counter_o_output|nx58250z11\ & !\u_lab3|modgen_counter_o_output|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx60581z1);

-- Location: LCFF_X1_Y23_N23
\reg_out_o_sevenseg_obuf_3_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx60581z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx44842z1);

-- Location: LCCOMB_X1_Y23_N24
ix61578z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx61578z1 = (\u_lab3|modgen_counter_o_output|nx58250z11\ & (\u_lab3|modgen_counter_o_output|nx58250z9\ & ((\u_lab3|modgen_counter_o_output|nx58250z13\) # (!\u_lab3|modgen_counter_o_output|nx58250z15\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z11\ & 
-- (\u_lab3|modgen_counter_o_output|nx58250z13\ & (!\u_lab3|modgen_counter_o_output|nx58250z15\ & !\u_lab3|modgen_counter_o_output|nx58250z9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx61578z1);

-- Location: LCFF_X1_Y23_N25
\reg_out_o_sevenseg_obuf_4_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx61578z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx45839z1);

-- Location: LCCOMB_X1_Y23_N10
ix62575z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx62575z1 = (\u_lab3|modgen_counter_o_output|nx58250z13\ & ((\u_lab3|modgen_counter_o_output|nx58250z15\ & ((\u_lab3|modgen_counter_o_output|nx58250z9\))) # (!\u_lab3|modgen_counter_o_output|nx58250z15\ & (\u_lab3|modgen_counter_o_output|nx58250z11\)))) # 
-- (!\u_lab3|modgen_counter_o_output|nx58250z13\ & (\u_lab3|modgen_counter_o_output|nx58250z11\ & (\u_lab3|modgen_counter_o_output|nx58250z15\ $ (\u_lab3|modgen_counter_o_output|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx62575z1);

-- Location: LCFF_X1_Y23_N11
\reg_out_o_sevenseg_obuf_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx62575z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx46836z1);

-- Location: LCCOMB_X1_Y23_N28
ix63572z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx63572z1 = (\u_lab3|modgen_counter_o_output|nx58250z11\ & (!\u_lab3|modgen_counter_o_output|nx58250z13\ & (\u_lab3|modgen_counter_o_output|nx58250z15\ $ (!\u_lab3|modgen_counter_o_output|nx58250z9\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z11\ & 
-- (\u_lab3|modgen_counter_o_output|nx58250z15\ & (\u_lab3|modgen_counter_o_output|nx58250z13\ $ (!\u_lab3|modgen_counter_o_output|nx58250z9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z13\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z11\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z15\,
	datad => \u_lab3|modgen_counter_o_output|nx58250z9\,
	combout => nx63572z1);

-- Location: LCFF_X1_Y23_N29
\reg_out_o_sevenseg_obuf_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx63572z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx47833z1);

-- Location: LCCOMB_X29_Y29_N22
\u_lab3|modgen_counter_o_output|ix58250z52926\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx56256z1\ = (\u_lab3|modgen_counter_o_output|nx58250z5\ & (!\u_lab3|modgen_counter_o_output|nx58250z6\)) # (!\u_lab3|modgen_counter_o_output|nx58250z5\ & ((\u_lab3|modgen_counter_o_output|nx58250z6\) # (GND)))
-- \u_lab3|modgen_counter_o_output|nx58250z4\ = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z6\) # (!\u_lab3|modgen_counter_o_output|nx58250z5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z6\,
	combout => \u_lab3|modgen_counter_o_output|nx56256z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z4\);

-- Location: LCFF_X29_Y29_N23
\u_lab3|modgen_counter_o_output|reg_q_5_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx56256z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z5\);

-- Location: LCCOMB_X29_Y29_N24
\u_lab3|modgen_counter_o_output|ix58250z52925\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx57253z1\ = (\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx58250z4\ $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z3\ & (!\u_lab3|modgen_counter_o_output|nx58250z4\ & VCC))
-- \u_lab3|modgen_counter_o_output|nx58250z2\ = CARRY((\u_lab3|modgen_counter_o_output|nx58250z3\ & !\u_lab3|modgen_counter_o_output|nx58250z4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datad => VCC,
	cin => \u_lab3|modgen_counter_o_output|nx58250z4\,
	combout => \u_lab3|modgen_counter_o_output|nx57253z1\,
	cout => \u_lab3|modgen_counter_o_output|nx58250z2\);

-- Location: LCFF_X29_Y29_N25
\u_lab3|modgen_counter_o_output|reg_q_6_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx57253z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx58250z3\);

-- Location: LCCOMB_X29_Y29_N26
\u_lab3|modgen_counter_o_output|ix58250z52923\ : cycloneii_lcell_comb
-- Equation(s):
-- \u_lab3|modgen_counter_o_output|nx58250z1\ = \u_lab3|modgen_counter_o_output|nx58250z2\ $ (\u_lab3|modgen_counter_o_output|nx1041z1\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	cin => \u_lab3|modgen_counter_o_output|nx58250z2\,
	combout => \u_lab3|modgen_counter_o_output|nx58250z1\);

-- Location: LCFF_X29_Y29_N27
\u_lab3|modgen_counter_o_output|reg_q_7_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \u_lab3|modgen_counter_o_output|nx58250z1\,
	aclr => \ALT_INV_nrst~combout\,
	sclr => \u_lab3|nx3163z76\,
	ena => \u_lab3|modgen_counter_o_output|nx57253z3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \u_lab3|modgen_counter_o_output|nx1041z1\);

-- Location: LCCOMB_X1_Y25_N24
ix30z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx30z1 = (\u_lab3|modgen_counter_o_output|nx58250z7\ & (!\u_lab3|modgen_counter_o_output|nx1041z1\ & (\u_lab3|modgen_counter_o_output|nx58250z3\ $ (!\u_lab3|modgen_counter_o_output|nx58250z5\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z7\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z5\ & (\u_lab3|modgen_counter_o_output|nx58250z3\ $ (!\u_lab3|modgen_counter_o_output|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx30z1);

-- Location: LCFF_X1_Y25_N25
\reg_out_o_sevenseg_obuf_8_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx30z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx49827z1);

-- Location: LCCOMB_X1_Y25_N10
ix1027z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx1027z1 = (\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx1041z1\ $ (((\u_lab3|modgen_counter_o_output|nx58250z5\) # (!\u_lab3|modgen_counter_o_output|nx58250z3\))))) # (!\u_lab3|modgen_counter_o_output|nx58250z7\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx58250z5\ & !\u_lab3|modgen_counter_o_output|nx1041z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx1027z1);

-- Location: LCFF_X1_Y25_N11
\reg_out_o_sevenseg_obuf_9_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx1027z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx50824z1);

-- Location: LCCOMB_X1_Y25_N12
ix25683z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx25683z1 = (\u_lab3|modgen_counter_o_output|nx58250z5\ & (\u_lab3|modgen_counter_o_output|nx58250z7\ & ((!\u_lab3|modgen_counter_o_output|nx1041z1\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z5\ & ((\u_lab3|modgen_counter_o_output|nx58250z3\ & 
-- ((!\u_lab3|modgen_counter_o_output|nx1041z1\))) # (!\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx58250z7\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx25683z1);

-- Location: LCFF_X1_Y25_N13
\reg_out_o_sevenseg_obuf_10_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx25683z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx62540z1);

-- Location: LCCOMB_X1_Y25_N22
ix26680z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx26680z1 = (\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx58250z3\ $ ((!\u_lab3|modgen_counter_o_output|nx58250z5\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z7\ & ((\u_lab3|modgen_counter_o_output|nx58250z3\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z5\ & !\u_lab3|modgen_counter_o_output|nx1041z1\)) # (!\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx58250z5\ & \u_lab3|modgen_counter_o_output|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx26680z1);

-- Location: LCFF_X1_Y25_N23
\reg_out_o_sevenseg_obuf_11_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx26680z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx63537z1);

-- Location: LCCOMB_X1_Y25_N16
ix27677z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx27677z1 = (\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx1041z1\ & ((\u_lab3|modgen_counter_o_output|nx58250z5\) # (!\u_lab3|modgen_counter_o_output|nx58250z7\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z3\ & 
-- (!\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx58250z5\ & !\u_lab3|modgen_counter_o_output|nx1041z1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx27677z1);

-- Location: LCFF_X1_Y25_N17
\reg_out_o_sevenseg_obuf_12_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx27677z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx64534z1);

-- Location: LCCOMB_X1_Y25_N26
ix28674z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx28674z1 = (\u_lab3|modgen_counter_o_output|nx58250z5\ & ((\u_lab3|modgen_counter_o_output|nx58250z7\ & ((\u_lab3|modgen_counter_o_output|nx1041z1\))) # (!\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx58250z3\)))) # 
-- (!\u_lab3|modgen_counter_o_output|nx58250z5\ & (\u_lab3|modgen_counter_o_output|nx58250z3\ & (\u_lab3|modgen_counter_o_output|nx58250z7\ $ (\u_lab3|modgen_counter_o_output|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx28674z1);

-- Location: LCFF_X1_Y25_N27
\reg_out_o_sevenseg_obuf_13_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx28674z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx65531z1);

-- Location: LCCOMB_X1_Y25_N28
ix29671z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx29671z1 = (\u_lab3|modgen_counter_o_output|nx58250z3\ & (!\u_lab3|modgen_counter_o_output|nx58250z5\ & (\u_lab3|modgen_counter_o_output|nx58250z7\ $ (!\u_lab3|modgen_counter_o_output|nx1041z1\)))) # (!\u_lab3|modgen_counter_o_output|nx58250z3\ & 
-- (\u_lab3|modgen_counter_o_output|nx58250z7\ & (\u_lab3|modgen_counter_o_output|nx58250z5\ $ (!\u_lab3|modgen_counter_o_output|nx1041z1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \u_lab3|modgen_counter_o_output|nx58250z7\,
	datab => \u_lab3|modgen_counter_o_output|nx58250z3\,
	datac => \u_lab3|modgen_counter_o_output|nx58250z5\,
	datad => \u_lab3|modgen_counter_o_output|nx1041z1\,
	combout => nx29671z1);

-- Location: LCFF_X1_Y25_N29
\reg_out_o_sevenseg_obuf_14_\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => nx29671z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx992z1);

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix21351z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_nx21351z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_txflex);

-- Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ctsflex_obuf : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_ctsflex);

-- Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix41851z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx41851z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(0));

-- Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix42848z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx42848z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(1));

-- Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix43845z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx43845z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(2));

-- Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix44842z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx44842z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(3));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix45839z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx45839z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(4));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix46836z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx46836z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(5));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix47833z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx47833z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(6));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_7_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "register",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \nrst~combout\,
	outclk => \clk~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(7));

-- Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix49827z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx49827z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(8));

-- Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix50824z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx50824z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(9));

-- Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix62540z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx62540z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(10));

-- Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix63537z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx63537z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(11));

-- Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix64534z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx64534z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(12));

-- Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix65531z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx65531z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(13));

-- Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix992z43919 : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => nx992z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(14));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\o_sevenseg_obuf_15_\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_sevenseg(15));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use work.lab3_pkg.all;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity top_lab3 is
  port (
      nrst  : in STD_LOGIC
    ; clk  : in STD_LOGIC
    ; rxflex  : in STD_LOGIC
    ; txflex  : out STD_LOGIC
    ; ctsflex  : out STD_LOGIC
    ; o_sevenseg  : out std_logic_vector (15 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of top_lab3 is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.top_lab3_chip
    port map (
        nrst => nrst
      , clk => clk
      , rxflex => rxflex
      , txflex => txflex
      , ctsflex => ctsflex
      , o_sevenseg(15) => o_sevenseg(15)
      , o_sevenseg(14) => o_sevenseg(14)
      , o_sevenseg(13) => o_sevenseg(13)
      , o_sevenseg(12) => o_sevenseg(12)
      , o_sevenseg(11) => o_sevenseg(11)
      , o_sevenseg(10) => o_sevenseg(10)
      , o_sevenseg(9) => o_sevenseg(9)
      , o_sevenseg(8) => o_sevenseg(8)
      , o_sevenseg(7) => o_sevenseg(7)
      , o_sevenseg(6) => o_sevenseg(6)
      , o_sevenseg(5) => o_sevenseg(5)
      , o_sevenseg(4) => o_sevenseg(4)
      , o_sevenseg(3) => o_sevenseg(3)
      , o_sevenseg(2) => o_sevenseg(2)
      , o_sevenseg(1) => o_sevenseg(1)
      , o_sevenseg(0) => o_sevenseg(0)
    );
end architecture;

