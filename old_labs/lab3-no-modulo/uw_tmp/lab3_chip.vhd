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

-- DATE "02/15/2014 13:32:41"

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

ENTITY 	lab3_chip IS
    PORT (
	i_clock : IN std_logic;
	i_valid : IN std_logic;
	i_input : IN std_logic_vector(7 DOWNTO 0);
	i_reset : IN std_logic;
	o_output : OUT std_logic_vector(7 DOWNTO 0)
	);
END lab3_chip;

-- Design Ports Information
-- o_output[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[3]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[5]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[6]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[7]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[5]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab3_chip IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_i_clock : std_logic;
SIGNAL ww_i_valid : std_logic;
SIGNAL ww_i_input : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_i_reset : std_logic;
SIGNAL ww_o_output : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL i_reset_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL nx3163z72 : std_logic;
SIGNAL ix3163z19319_anx38970z1 : std_logic;
SIGNAL ix3163z19319_anx23445z2 : std_logic;
SIGNAL ix3163z19319_anx23445z1 : std_logic;
SIGNAL nx3163z41 : std_logic;
SIGNAL ix3163z30602_anx45949z4 : std_logic;
SIGNAL ix3163z19322_anx38970z1 : std_logic;
SIGNAL ix3163z19322_anx39967z1 : std_logic;
SIGNAL nx3163z42 : std_logic;
SIGNAL ix3163z30602_anx45949z8 : std_logic;
SIGNAL nx3163z43 : std_logic;
SIGNAL ix3163z30602_anx45949z12 : std_logic;
SIGNAL nx3163z44 : std_logic;
SIGNAL ix3163z30602_anx45949z16 : std_logic;
SIGNAL nx3163z45 : std_logic;
SIGNAL ix3163z30602_anx45949z20 : std_logic;
SIGNAL nx3163z46 : std_logic;
SIGNAL ix3163z30602_anx45949z24 : std_logic;
SIGNAL nx3163z34 : std_logic;
SIGNAL nx3163z33 : std_logic;
SIGNAL nx3163z48 : std_logic;
SIGNAL ix3163z30602_anx45949z32 : std_logic;
SIGNAL ix3163z30602_anx39967z1 : std_logic;
SIGNAL ix3163z30602_anx45949z3 : std_logic;
SIGNAL ix3163z60014_anx39967z1 : std_logic;
SIGNAL ix3163z60014_anx41961z1 : std_logic;
SIGNAL ix3163z30602_anx45949z1 : std_logic;
SIGNAL nx3163z58 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z10 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z4 : std_logic;
SIGNAL nx53087z2 : std_logic;
SIGNAL nx35397z2 : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL i_reset_aclkctrl_outclk : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL nx53066z1 : std_logic;
SIGNAL y_pos_0_a_wirecell_combout : std_logic;
SIGNAL x_pos_0_a_wirecell_combout : std_logic;
SIGNAL x_pos_0_a : std_logic;
SIGNAL nx45976z1 : std_logic;
SIGNAL x_pos_1_a : std_logic;
SIGNAL nx44979z1 : std_logic;
SIGNAL x_pos_2_a : std_logic;
SIGNAL nx43982z1 : std_logic;
SIGNAL x_pos_3_a : std_logic;
SIGNAL nx53087z1 : std_logic;
SIGNAL y_pos_0_a : std_logic;
SIGNAL nx14243z1 : std_logic;
SIGNAL y_pos_1_a : std_logic;
SIGNAL nx13246z1 : std_logic;
SIGNAL y_pos_2_a : std_logic;
SIGNAL nx12249z1 : std_logic;
SIGNAL y_pos_3_a : std_logic;
SIGNAL nx35397z1 : std_logic;
SIGNAL end_of_input : std_logic;
SIGNAL nx46973z1 : std_logic;
SIGNAL nx3163z71 : std_logic;
SIGNAL nx54084z1_a_wirecell_combout : std_logic;
SIGNAL i_1_a : std_logic;
SIGNAL i_2_a : std_logic;
SIGNAL i_2_a_wirecell_combout : std_logic;
SIGNAL nx54084z1 : std_logic;
SIGNAL nx3163z3 : std_logic;
SIGNAL nx3163z57 : std_logic;
SIGNAL nx51243z1 : std_logic;
SIGNAL ix3163z19322_anx37973z1 : std_logic;
SIGNAL nx54113z1 : std_logic;
SIGNAL ix3163z19319_anx37973z1 : std_logic;
SIGNAL nx3163z38 : std_logic;
SIGNAL nx3163z37 : std_logic;
SIGNAL ix3163z30602_anx45949z35 : std_logic;
SIGNAL ix3163z30602_anx37973z1 : std_logic;
SIGNAL nx3163z47 : std_logic;
SIGNAL ix3163z30602_anx45949z28 : std_logic;
SIGNAL ix3163z30602_anx45949z31 : std_logic;
SIGNAL ix3163z30602_anx38970z1 : std_logic;
SIGNAL ix3163z19322_anx44952z22 : std_logic;
SIGNAL ix3163z19322_anx44952z19 : std_logic;
SIGNAL ix3163z19322_anx44952z16 : std_logic;
SIGNAL ix3163z19322_anx40964z1 : std_logic;
SIGNAL ix3163z19319_anx44952z22 : std_logic;
SIGNAL ix3163z19319_anx44952z19 : std_logic;
SIGNAL ix3163z19319_anx44952z16 : std_logic;
SIGNAL ix3163z19319_anx40964z1 : std_logic;
SIGNAL nx3163z26 : std_logic;
SIGNAL nx3163z25 : std_logic;
SIGNAL ix3163z19319_anx39967z1 : std_logic;
SIGNAL nx3163z30 : std_logic;
SIGNAL nx3163z29 : std_logic;
SIGNAL ix3163z30602_anx45949z27 : std_logic;
SIGNAL ix3163z30602_anx45949z23 : std_logic;
SIGNAL ix3163z30602_anx40964z1 : std_logic;
SIGNAL nx3163z75 : std_logic;
SIGNAL ix3163z19322_anx44952z13 : std_logic;
SIGNAL ix3163z19322_anx41961z1 : std_logic;
SIGNAL ix3163z19319_anx44952z13 : std_logic;
SIGNAL ix3163z19319_anx41961z1 : std_logic;
SIGNAL nx3163z22 : std_logic;
SIGNAL nx3163z21 : std_logic;
SIGNAL ix3163z30602_anx45949z19 : std_logic;
SIGNAL ix3163z30602_anx41961z1 : std_logic;
SIGNAL ix3163z19322_anx44952z10 : std_logic;
SIGNAL ix3163z19322_anx44952z7 : std_logic;
SIGNAL ix3163z19322_anx44952z4 : std_logic;
SIGNAL ix3163z19322_anx44952z1 : std_logic;
SIGNAL ix3163z19319_anx44952z10 : std_logic;
SIGNAL ix3163z19319_anx44952z7 : std_logic;
SIGNAL ix3163z19319_anx44952z4 : std_logic;
SIGNAL ix3163z19319_anx44952z1 : std_logic;
SIGNAL nx3163z10 : std_logic;
SIGNAL nx3163z9 : std_logic;
SIGNAL ix3163z19322_anx43955z1 : std_logic;
SIGNAL ix3163z19319_anx43955z1 : std_logic;
SIGNAL nx3163z14 : std_logic;
SIGNAL nx3163z13 : std_logic;
SIGNAL ix3163z19322_anx42958z1 : std_logic;
SIGNAL ix3163z19319_anx42958z1 : std_logic;
SIGNAL nx3163z18 : std_logic;
SIGNAL nx3163z17 : std_logic;
SIGNAL ix3163z30602_anx45949z15 : std_logic;
SIGNAL ix3163z30602_anx45949z11 : std_logic;
SIGNAL ix3163z30602_anx45949z7 : std_logic;
SIGNAL ix3163z30602_anx44952z1 : std_logic;
SIGNAL ix3163z30602_anx43955z1 : std_logic;
SIGNAL nx3163z74 : std_logic;
SIGNAL nx3163z73 : std_logic;
SIGNAL ix3163z19322_anx23445z2 : std_logic;
SIGNAL ix3163z19322_anx23445z1 : std_logic;
SIGNAL ix3163z30602_anx42958z1 : std_logic;
SIGNAL ix3163z60014_anx44952z22 : std_logic;
SIGNAL ix3163z60014_anx44952z19 : std_logic;
SIGNAL ix3163z60014_anx44952z16 : std_logic;
SIGNAL ix3163z60014_anx44952z13 : std_logic;
SIGNAL ix3163z60014_anx44952z10 : std_logic;
SIGNAL ix3163z60014_anx44952z7 : std_logic;
SIGNAL ix3163z60014_anx44952z4 : std_logic;
SIGNAL ix3163z60014_anx23445z2 : std_logic;
SIGNAL ix3163z60014_anx23445z1 : std_logic;
SIGNAL nx3163z5 : std_logic;
SIGNAL nx3163z77 : std_logic;
SIGNAL ix3163z60014_anx37973z1 : std_logic;
SIGNAL ix3163z60014_anx38970z1 : std_logic;
SIGNAL ix3163z60014_anx40964z1 : std_logic;
SIGNAL nx3163z65 : std_logic;
SIGNAL ix3163z60014_anx43955z1 : std_logic;
SIGNAL ix3163z60014_anx42958z1 : std_logic;
SIGNAL ix3163z60014_anx44952z1 : std_logic;
SIGNAL nx3163z60 : std_logic;
SIGNAL nx3163z56 : std_logic;
SIGNAL nx3163z76 : std_logic;
SIGNAL nx3163z70 : std_logic;
SIGNAL nx3163z2 : std_logic;
SIGNAL nx3163z1 : std_logic;
SIGNAL modgen_counter_o_output_anx58250z2 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z16 : std_logic;
SIGNAL modgen_counter_o_output_anx51271z1 : std_logic;
SIGNAL nx20192z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z14 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z15 : std_logic;
SIGNAL modgen_counter_o_output_anx52268z1 : std_logic;
SIGNAL nx19195z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z12 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z13 : std_logic;
SIGNAL modgen_counter_o_output_anx53265z1 : std_logic;
SIGNAL nx18198z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z11 : std_logic;
SIGNAL modgen_counter_o_output_anx54262z1 : std_logic;
SIGNAL nx17201z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z8 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z9 : std_logic;
SIGNAL modgen_counter_o_output_anx55259z1 : std_logic;
SIGNAL nx16204z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z6 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z7 : std_logic;
SIGNAL modgen_counter_o_output_anx56256z1 : std_logic;
SIGNAL nx15207z1_afeeder_combout : std_logic;
SIGNAL nx15207z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z5 : std_logic;
SIGNAL modgen_counter_o_output_anx57253z1 : std_logic;
SIGNAL nx14210z1_afeeder_combout : std_logic;
SIGNAL nx14210z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z2 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z3 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z1 : std_logic;
SIGNAL nx13213z1_afeeder_combout : std_logic;
SIGNAL nx13213z1 : std_logic;
SIGNAL i_input_acombout : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aq_b : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aq_b : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aq_b : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_i_clock <= i_clock;
ww_i_valid <= i_valid;
ww_i_input <= i_input;
ww_i_reset <= i_reset;
o_output <= ww_o_output;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_input_acombout(7) & i_input_acombout(6) & i_input_acombout(5) & i_input_acombout(4) & i_input_acombout(3) & i_input_acombout(2) & i_input_acombout(1) & 
i_input_acombout(0));

mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTAADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_1_aix64056z44885_aauto_generated_aq_b(0) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
mem_1_aix64056z44885_aauto_generated_aq_b(1) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
mem_1_aix64056z44885_aauto_generated_aq_b(2) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
mem_1_aix64056z44885_aauto_generated_aq_b(3) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
mem_1_aix64056z44885_aauto_generated_aq_b(4) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
mem_1_aix64056z44885_aauto_generated_aq_b(5) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
mem_1_aix64056z44885_aauto_generated_aq_b(6) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
mem_1_aix64056z44885_aauto_generated_aq_b(7) <= mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

mem_aix64056z44883_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_input_acombout(7) & i_input_acombout(6) & i_input_acombout(5) & i_input_acombout(4) & i_input_acombout(3) & i_input_acombout(2) & i_input_acombout(1) & 
i_input_acombout(0));

mem_aix64056z44883_aauto_generated_aram_block1a0_PORTAADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_aix64056z44883_aauto_generated_aq_b(0) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
mem_aix64056z44883_aauto_generated_aq_b(1) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
mem_aix64056z44883_aauto_generated_aq_b(2) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
mem_aix64056z44883_aauto_generated_aq_b(3) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
mem_aix64056z44883_aauto_generated_aq_b(4) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
mem_aix64056z44883_aauto_generated_aq_b(5) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
mem_aix64056z44883_aauto_generated_aq_b(6) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
mem_aix64056z44883_aauto_generated_aq_b(7) <= mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTADATAIN_bus <= (i_input_acombout(7) & i_input_acombout(6) & i_input_acombout(5) & i_input_acombout(4) & i_input_acombout(3) & i_input_acombout(2) & i_input_acombout(1) & 
i_input_acombout(0));

mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTAADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBADDR_bus <= (x_pos_3_a & x_pos_2_a & x_pos_1_a & x_pos_0_a);

mem_0_aix64056z44884_aauto_generated_aq_b(0) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(0);
mem_0_aix64056z44884_aauto_generated_aq_b(1) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(1);
mem_0_aix64056z44884_aauto_generated_aq_b(2) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(2);
mem_0_aix64056z44884_aauto_generated_aq_b(3) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(3);
mem_0_aix64056z44884_aauto_generated_aq_b(4) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(4);
mem_0_aix64056z44884_aauto_generated_aq_b(5) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(5);
mem_0_aix64056z44884_aauto_generated_aq_b(6) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(6);
mem_0_aix64056z44884_aauto_generated_aq_b(7) <= mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus(7);

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);

i_reset_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_reset_acombout);

-- Location: LCCOMB_X53_Y28_N10
ix3163z52961 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z72 = (y_pos_2_a) # ((y_pos_1_a) # (y_pos_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_2_a,
	datac => y_pos_1_a,
	datad => y_pos_3_a,
	combout => nx3163z72);

-- Location: M4K_X52_Y28
mem_1_aix64056z44885_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_2:mem_1|altsyncram:ix64056z44885|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
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
	portawe => nx54113z1,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx54113z1,
	portadatain => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: M4K_X52_Y27
mem_aix64056z44883_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_0:mem|altsyncram:ix64056z44883|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
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
	portawe => nx51243z1,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx51243z1,
	portadatain => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X53_Y27_N12
ix3163z19319_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx38970z1 = (mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19319_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (ix3163z19319_anx44952z22 & VCC)))) # 
-- (!mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & ((ix3163z19319_anx44952z22) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19319_anx44952z22))))
-- ix3163z19319_anx44952z19 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(1) & (mem_aix64056z44883_aauto_generated_aq_b(1) & !ix3163z19319_anx44952z22)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1)) # 
-- (!ix3163z19319_anx44952z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(1),
	datab => mem_aix64056z44883_aauto_generated_aq_b(1),
	datad => VCC,
	cin => ix3163z19319_anx44952z22,
	combout => ix3163z19319_anx38970z1,
	cout => ix3163z19319_anx44952z19);

-- Location: LCCOMB_X53_Y27_N24
ix3163z19319_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx44952z1 = (mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19319_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & (ix3163z19319_anx44952z4 & VCC)))) # 
-- (!mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & ((ix3163z19319_anx44952z4) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19319_anx44952z4))))
-- ix3163z19319_anx23445z2 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(7) & (mem_aix64056z44883_aauto_generated_aq_b(7) & !ix3163z19319_anx44952z4)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7)) # 
-- (!ix3163z19319_anx44952z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(7),
	datab => mem_aix64056z44883_aauto_generated_aq_b(7),
	datad => VCC,
	cin => ix3163z19319_anx44952z4,
	combout => ix3163z19319_anx44952z1,
	cout => ix3163z19319_anx23445z2);

-- Location: LCCOMB_X53_Y27_N26
ix3163z19319_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx23445z1 = !ix3163z19319_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z19319_anx23445z2,
	combout => ix3163z19319_anx23445z1);

-- Location: LCCOMB_X49_Y27_N2
ix3163z52947 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z41 = (i_1_a & (i_input_acombout(7))) # (!i_1_a & ((i_2_a & (i_input_acombout(7))) # (!i_2_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_input_acombout(7),
	datac => i_2_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(7),
	combout => nx3163z41);

-- Location: LCCOMB_X51_Y27_N28
ix3163z30602_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z4 = nx54084z1 $ (!nx3163z41)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z41,
	combout => ix3163z30602_anx45949z4);

-- Location: M4K_X52_Y26
mem_0_aix64056z44884_aauto_generated_aram_block1a0 : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "ram_dq_8_1:mem_0|altsyncram:ix64056z44884|altsyncram_hsh2:auto_generated|ALTSYNCRAM",
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
	portawe => nx3163z3,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx3163z3,
	portadatain => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X51_Y27_N2
ix3163z19322_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx38970z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19322_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & ((ix3163z19322_anx44952z22) # (GND))))) # 
-- (!mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (ix3163z19322_anx44952z22 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19322_anx44952z22))))
-- ix3163z19322_anx44952z19 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((!ix3163z19322_anx44952z22) # (!mem_aix64056z44883_aauto_generated_aq_b(1)))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(1) & (!mem_aix64056z44883_aauto_generated_aq_b(1) 
-- & !ix3163z19322_anx44952z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(1),
	datab => mem_aix64056z44883_aauto_generated_aq_b(1),
	datad => VCC,
	cin => ix3163z19322_anx44952z22,
	combout => ix3163z19322_anx38970z1,
	cout => ix3163z19322_anx44952z19);

-- Location: LCCOMB_X51_Y27_N4
ix3163z19322_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx39967z1 = ((mem_aix64056z44883_aauto_generated_aq_b(2) $ (mem_0_aix64056z44884_aauto_generated_aq_b(2) $ (ix3163z19322_anx44952z19)))) # (GND)
-- ix3163z19322_anx44952z16 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(2) & ((!ix3163z19322_anx44952z19) # (!mem_0_aix64056z44884_aauto_generated_aq_b(2)))) # (!mem_aix64056z44883_aauto_generated_aq_b(2) & (!mem_0_aix64056z44884_aauto_generated_aq_b(2) 
-- & !ix3163z19322_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(2),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(2),
	datad => VCC,
	cin => ix3163z19322_anx44952z19,
	combout => ix3163z19322_anx39967z1,
	cout => ix3163z19322_anx44952z16);

-- Location: LCCOMB_X51_Y28_N8
ix3163z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z42 = (i_1_a & (i_input_acombout(6))) # (!i_1_a & ((i_2_a & (i_input_acombout(6))) # (!i_2_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(6),
	datab => i_1_a,
	datac => mem_1_aix64056z44885_aauto_generated_aq_b(6),
	datad => i_2_a,
	combout => nx3163z42);

-- Location: LCCOMB_X51_Y27_N20
ix3163z30602_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z8 = nx54084z1 $ (!nx3163z42)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z42,
	combout => ix3163z30602_anx45949z8);

-- Location: LCCOMB_X49_Y27_N28
ix3163z52949 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z43 = (i_1_a & (((i_input_acombout(5))))) # (!i_1_a & ((i_2_a & ((i_input_acombout(5)))) # (!i_2_a & (mem_1_aix64056z44885_aauto_generated_aq_b(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_2_a,
	datac => mem_1_aix64056z44885_aauto_generated_aq_b(5),
	datad => i_input_acombout(5),
	combout => nx3163z43);

-- Location: LCCOMB_X49_Y27_N0
ix3163z30602_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z12 = nx54084z1 $ (!nx3163z43)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z43,
	combout => ix3163z30602_anx45949z12);

-- Location: LCCOMB_X51_Y28_N2
ix3163z52950 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z44 = (i_2_a & (i_input_acombout(4))) # (!i_2_a & ((i_1_a & (i_input_acombout(4))) # (!i_1_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_2_a,
	datab => i_input_acombout(4),
	datac => i_1_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(4),
	combout => nx3163z44);

-- Location: LCCOMB_X50_Y28_N16
ix3163z30602_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z16 = nx54084z1 $ (!nx3163z44)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z44,
	combout => ix3163z30602_anx45949z16);

-- Location: LCCOMB_X51_Y28_N24
ix3163z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z45 = (i_2_a & (((i_input_acombout(3))))) # (!i_2_a & ((i_1_a & (i_input_acombout(3))) # (!i_1_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_2_a,
	datab => i_1_a,
	datac => i_input_acombout(3),
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(3),
	combout => nx3163z45);

-- Location: LCCOMB_X50_Y28_N18
ix3163z30602_aix45949z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z20 = nx54084z1 $ (!nx3163z45)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z45,
	combout => ix3163z30602_anx45949z20);

-- Location: LCCOMB_X51_Y28_N0
ix3163z52952 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z46 = (i_1_a & (i_input_acombout(2))) # (!i_1_a & ((i_2_a & (i_input_acombout(2))) # (!i_2_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(2),
	datab => i_1_a,
	datac => mem_1_aix64056z44885_aauto_generated_aq_b(2),
	datad => i_2_a,
	combout => nx3163z46);

-- Location: LCCOMB_X51_Y28_N14
ix3163z30602_aix45949z52936 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z24 = nx54084z1 $ (!nx3163z46)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z46,
	combout => ix3163z30602_anx45949z24);

-- Location: LCCOMB_X53_Y27_N4
ix3163z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z34 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b(1))))) # (!nx51243z1 & (!nx54113z1 & ((ix3163z19319_anx38970z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51243z1,
	datab => nx54113z1,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(1),
	datad => ix3163z19319_anx38970z1,
	combout => nx3163z34);

-- Location: LCCOMB_X50_Y27_N6
ix3163z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z33 = (nx54113z1 & (ix3163z19322_anx38970z1 & !nx3163z34)) # (!nx54113z1 & ((nx3163z34)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z19322_anx38970z1,
	datac => nx54113z1,
	datad => nx3163z34,
	combout => nx3163z33);

-- Location: LCCOMB_X51_Y28_N4
ix3163z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z48 = (i_2_a & (i_input_acombout(0))) # (!i_2_a & ((i_1_a & (i_input_acombout(0))) # (!i_1_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_2_a,
	datab => i_input_acombout(0),
	datac => i_1_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(0),
	combout => nx3163z48);

-- Location: LCCOMB_X51_Y28_N6
ix3163z30602_aix45949z52940 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z32 = nx3163z48 $ (!nx54084z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx3163z48,
	datad => nx54084z1,
	combout => ix3163z30602_anx45949z32);

-- Location: LCCOMB_X50_Y27_N16
ix3163z30602_aix45949z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx39967z1 = (ix3163z30602_anx45949z24 & ((nx3163z29 & (ix3163z30602_anx45949z27 & VCC)) # (!nx3163z29 & (!ix3163z30602_anx45949z27)))) # (!ix3163z30602_anx45949z24 & ((nx3163z29 & (!ix3163z30602_anx45949z27)) # (!nx3163z29 & 
-- ((ix3163z30602_anx45949z27) # (GND)))))
-- ix3163z30602_anx45949z23 = CARRY((ix3163z30602_anx45949z24 & (!nx3163z29 & !ix3163z30602_anx45949z27)) # (!ix3163z30602_anx45949z24 & ((!ix3163z30602_anx45949z27) # (!nx3163z29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z24,
	datab => nx3163z29,
	datad => VCC,
	cin => ix3163z30602_anx45949z27,
	combout => ix3163z30602_anx39967z1,
	cout => ix3163z30602_anx45949z23);

-- Location: LCCOMB_X50_Y27_N26
ix3163z30602_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx44952z1 = ((ix3163z30602_anx45949z4 $ (nx3163z9 $ (!ix3163z30602_anx45949z7)))) # (GND)
-- ix3163z30602_anx45949z3 = CARRY((ix3163z30602_anx45949z4 & ((nx3163z9) # (!ix3163z30602_anx45949z7))) # (!ix3163z30602_anx45949z4 & (nx3163z9 & !ix3163z30602_anx45949z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z4,
	datab => nx3163z9,
	datad => VCC,
	cin => ix3163z30602_anx45949z7,
	combout => ix3163z30602_anx44952z1,
	cout => ix3163z30602_anx45949z3);

-- Location: LCCOMB_X49_Y27_N10
ix3163z60014_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx39967z1 = ((ix3163z30602_anx39967z1 $ (i_input_acombout(2) $ (!ix3163z60014_anx44952z19)))) # (GND)
-- ix3163z60014_anx44952z16 = CARRY((ix3163z30602_anx39967z1 & ((i_input_acombout(2)) # (!ix3163z60014_anx44952z19))) # (!ix3163z30602_anx39967z1 & (i_input_acombout(2) & !ix3163z60014_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx39967z1,
	datab => i_input_acombout(2),
	datad => VCC,
	cin => ix3163z60014_anx44952z19,
	combout => ix3163z60014_anx39967z1,
	cout => ix3163z60014_anx44952z16);

-- Location: LCCOMB_X49_Y27_N14
ix3163z60014_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx41961z1 = ((i_input_acombout(4) $ (ix3163z30602_anx41961z1 $ (!ix3163z60014_anx44952z13)))) # (GND)
-- ix3163z60014_anx44952z10 = CARRY((i_input_acombout(4) & ((ix3163z30602_anx41961z1) # (!ix3163z60014_anx44952z13))) # (!i_input_acombout(4) & (ix3163z30602_anx41961z1 & !ix3163z60014_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(4),
	datab => ix3163z30602_anx41961z1,
	datad => VCC,
	cin => ix3163z60014_anx44952z13,
	combout => ix3163z60014_anx41961z1,
	cout => ix3163z60014_anx44952z10);

-- Location: LCCOMB_X50_Y27_N28
ix3163z30602_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z1 = nx54084z1 $ (!ix3163z30602_anx45949z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx54084z1,
	cin => ix3163z30602_anx45949z3,
	combout => ix3163z30602_anx45949z1);

-- Location: LCCOMB_X49_Y27_N4
ix3163z52957 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z58 = nx54084z1 $ (!ix3163z30602_anx45949z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => ix3163z30602_anx45949z1,
	combout => nx3163z58);

-- Location: LCFF_X47_Y27_N7
modgen_counter_o_output_areg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx54262z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z10);

-- Location: LCFF_X47_Y27_N13
modgen_counter_o_output_areg_q_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx57253z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z4);

-- Location: LCCOMB_X53_Y28_N24
ix53087z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx53087z2 = (x_pos_0_a & x_pos_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_pos_0_a,
	datad => x_pos_1_a,
	combout => nx53087z2);

-- Location: LCCOMB_X53_Y28_N20
ix35397z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx35397z2 = (y_pos_0_a & (y_pos_1_a & y_pos_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_0_a,
	datac => y_pos_1_a,
	datad => y_pos_2_a,
	combout => nx35397z2);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_clock_ibuf : cycloneii_io
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
	padio => ww_i_clock,
	combout => i_clock_acombout);

-- Location: CLKCTRL_G3
i_clock_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => i_clock_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_clock_aclkctrl_outclk);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_reset_ibuf : cycloneii_io
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
	padio => ww_i_reset,
	combout => i_reset_acombout);

-- Location: CLKCTRL_G1
i_reset_aclkctrl : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => i_reset_aclkctrl_INCLK_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => i_reset_aclkctrl_outclk);

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_valid_ibuf : cycloneii_io
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
	padio => ww_i_valid,
	combout => i_valid_acombout);

-- Location: LCCOMB_X53_Y28_N8
ix53066z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx53066z1 = (i_valid_acombout) # (nx3163z71)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_valid_acombout,
	datac => nx3163z71,
	combout => nx53066z1);

-- Location: LCCOMB_X51_Y28_N10
y_pos_0_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- y_pos_0_a_wirecell_combout = !y_pos_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_pos_0_a,
	combout => y_pos_0_a_wirecell_combout);

-- Location: LCCOMB_X53_Y28_N22
x_pos_0_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- x_pos_0_a_wirecell_combout = !x_pos_0_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_pos_0_a,
	combout => x_pos_0_a_wirecell_combout);

-- Location: LCFF_X53_Y28_N23
modgen_counter_x_pos_reg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_pos_0_a_wirecell_combout,
	aclr => nx46973z1,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_0_a);

-- Location: LCCOMB_X53_Y28_N12
ix45976z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx45976z1 = x_pos_1_a $ (x_pos_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => x_pos_1_a,
	datad => x_pos_0_a,
	combout => nx45976z1);

-- Location: LCFF_X53_Y28_N13
modgen_counter_x_pos_reg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45976z1,
	aclr => nx46973z1,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_1_a);

-- Location: LCCOMB_X53_Y28_N18
ix44979z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx44979z1 = x_pos_2_a $ (((x_pos_0_a & x_pos_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_pos_0_a,
	datac => x_pos_2_a,
	datad => x_pos_1_a,
	combout => nx44979z1);

-- Location: LCFF_X53_Y28_N19
modgen_counter_x_pos_reg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44979z1,
	aclr => nx46973z1,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_2_a);

-- Location: LCCOMB_X53_Y28_N0
ix43982z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx43982z1 = x_pos_3_a $ (((x_pos_1_a & (x_pos_0_a & x_pos_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => x_pos_1_a,
	datab => x_pos_0_a,
	datac => x_pos_3_a,
	datad => x_pos_2_a,
	combout => nx43982z1);

-- Location: LCFF_X53_Y28_N1
modgen_counter_x_pos_reg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43982z1,
	aclr => nx46973z1,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_3_a);

-- Location: LCCOMB_X53_Y28_N26
ix53087z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx53087z1 = (nx53087z2 & (x_pos_2_a & (i_valid_acombout & x_pos_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx53087z2,
	datab => x_pos_2_a,
	datac => i_valid_acombout,
	datad => x_pos_3_a,
	combout => nx53087z1);

-- Location: LCFF_X51_Y28_N11
modgen_counter_y_pos_reg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => y_pos_0_a_wirecell_combout,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_0_a);

-- Location: LCCOMB_X51_Y28_N18
ix14243z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx14243z1 = y_pos_1_a $ (y_pos_0_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => y_pos_1_a,
	datad => y_pos_0_a,
	combout => nx14243z1);

-- Location: LCFF_X51_Y28_N19
modgen_counter_y_pos_reg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx14243z1,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_1_a);

-- Location: LCCOMB_X51_Y28_N30
ix13246z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx13246z1 = y_pos_2_a $ (((y_pos_1_a & y_pos_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_1_a,
	datac => y_pos_2_a,
	datad => y_pos_0_a,
	combout => nx13246z1);

-- Location: LCFF_X51_Y28_N31
modgen_counter_y_pos_reg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx13246z1,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_2_a);

-- Location: LCCOMB_X51_Y28_N20
ix12249z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx12249z1 = y_pos_3_a $ (((y_pos_0_a & (y_pos_1_a & y_pos_2_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_pos_0_a,
	datab => y_pos_1_a,
	datac => y_pos_3_a,
	datad => y_pos_2_a,
	combout => nx12249z1);

-- Location: LCFF_X51_Y28_N21
modgen_counter_y_pos_reg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx12249z1,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_3_a);

-- Location: LCCOMB_X53_Y28_N28
ix35397z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35397z1 = (end_of_input) # ((nx35397z2 & (y_pos_3_a & nx53087z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx35397z2,
	datab => y_pos_3_a,
	datac => end_of_input,
	datad => nx53087z1,
	combout => nx35397z1);

-- Location: LCFF_X53_Y28_N29
reg_end_of_input : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35397z1,
	aclr => nx46973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => end_of_input);

-- Location: LCCOMB_X53_Y28_N6
ix46973z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx46973z1 = (i_reset_acombout) # (end_of_input)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_reset_acombout,
	datad => end_of_input,
	combout => nx46973z1);

-- Location: LCFF_X53_Y28_N9
reg_new_number_set : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53066z1,
	aclr => nx46973z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx3163z71);

-- Location: LCCOMB_X51_Y28_N22
nx54084z1_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- nx54084z1_a_wirecell_combout = !nx54084z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	combout => nx54084z1_a_wirecell_combout);

-- Location: LCFF_X51_Y28_N23
reg_i_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54084z1_a_wirecell_combout,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_1_a);

-- Location: LCFF_X51_Y28_N17
reg_i_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => i_1_a,
	aclr => nx46973z1,
	sload => VCC,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_2_a);

-- Location: LCCOMB_X51_Y28_N12
i_2_a_wirecell : cycloneii_lcell_comb
-- Equation(s):
-- i_2_a_wirecell_combout = !i_2_a

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_2_a,
	combout => i_2_a_wirecell_combout);

-- Location: LCFF_X51_Y28_N13
reg_i_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => i_2_a_wirecell_combout,
	aclr => nx46973z1,
	ena => nx53087z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx54084z1);

-- Location: LCCOMB_X51_Y27_N26
ix3163z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z3 = (nx54084z1 & (i_1_a & !i_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54084z1,
	datac => i_1_a,
	datad => i_2_a,
	combout => nx3163z3);

-- Location: LCCOMB_X49_Y27_N24
ix3163z52956 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z57 = (nx54084z1 & (i_2_a $ (i_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54084z1,
	datab => i_2_a,
	datad => i_1_a,
	combout => nx3163z57);

-- Location: LCCOMB_X51_Y27_N30
ix51243z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx51243z1 = (!nx54084z1 & (!i_1_a & !i_2_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54084z1,
	datac => i_1_a,
	datad => i_2_a,
	combout => nx51243z1);

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_0_a : cycloneii_io
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
	padio => ww_i_input(0),
	combout => i_input_acombout(0));

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_1_a : cycloneii_io
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
	padio => ww_i_input(1),
	combout => i_input_acombout(1));

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_2_a : cycloneii_io
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
	padio => ww_i_input(2),
	combout => i_input_acombout(2));

-- Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_3_a : cycloneii_io
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
	padio => ww_i_input(3),
	combout => i_input_acombout(3));

-- Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_4_a : cycloneii_io
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
	padio => ww_i_input(4),
	combout => i_input_acombout(4));

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_5_a : cycloneii_io
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
	padio => ww_i_input(5),
	combout => i_input_acombout(5));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_6_a : cycloneii_io
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
	padio => ww_i_input(6),
	combout => i_input_acombout(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
i_input_ibuf_7_a : cycloneii_io
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
	padio => ww_i_input(7),
	combout => i_input_acombout(7));

-- Location: LCCOMB_X51_Y27_N0
ix3163z19322_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx37973z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(0) & (mem_aix64056z44883_aauto_generated_aq_b(0) $ (VCC))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(0) & ((mem_aix64056z44883_aauto_generated_aq_b(0)) # (GND)))
-- ix3163z19322_anx44952z22 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(0)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(0),
	datab => mem_aix64056z44883_aauto_generated_aq_b(0),
	datad => VCC,
	combout => ix3163z19322_anx37973z1,
	cout => ix3163z19322_anx44952z22);

-- Location: LCCOMB_X51_Y28_N16
ix54113z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54113z1 = (!i_1_a & (i_2_a & nx54084z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_1_a,
	datac => i_2_a,
	datad => nx54084z1,
	combout => nx54113z1);

-- Location: LCCOMB_X53_Y27_N10
ix3163z19319_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx37973z1 = (mem_aix64056z44883_aauto_generated_aq_b(0) & (mem_1_aix64056z44885_aauto_generated_aq_b(0) $ (VCC))) # (!mem_aix64056z44883_aauto_generated_aq_b(0) & ((mem_1_aix64056z44885_aauto_generated_aq_b(0)) # (GND)))
-- ix3163z19319_anx44952z22 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(0)) # (!mem_aix64056z44883_aauto_generated_aq_b(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(0),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(0),
	datad => VCC,
	combout => ix3163z19319_anx37973z1,
	cout => ix3163z19319_anx44952z22);

-- Location: LCCOMB_X53_Y27_N6
ix3163z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z38 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b(0))))) # (!nx51243z1 & (!nx54113z1 & ((ix3163z19319_anx37973z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51243z1,
	datab => nx54113z1,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(0),
	datad => ix3163z19319_anx37973z1,
	combout => nx3163z38);

-- Location: LCCOMB_X51_Y27_N22
ix3163z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z37 = (nx54113z1 & (ix3163z19322_anx37973z1 & !nx3163z38)) # (!nx54113z1 & ((nx3163z38)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54113z1,
	datac => ix3163z19322_anx37973z1,
	datad => nx3163z38,
	combout => nx3163z37);

-- Location: LCCOMB_X50_Y27_N10
ix3163z30602_aix45949z52941 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z35 = CARRY(!nx54084z1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54084z1,
	datad => VCC,
	cout => ix3163z30602_anx45949z35);

-- Location: LCCOMB_X50_Y27_N12
ix3163z30602_aix45949z52939 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx37973z1 = (ix3163z30602_anx45949z32 & ((nx3163z37 & (ix3163z30602_anx45949z35 & VCC)) # (!nx3163z37 & (!ix3163z30602_anx45949z35)))) # (!ix3163z30602_anx45949z32 & ((nx3163z37 & (!ix3163z30602_anx45949z35)) # (!nx3163z37 & 
-- ((ix3163z30602_anx45949z35) # (GND)))))
-- ix3163z30602_anx45949z31 = CARRY((ix3163z30602_anx45949z32 & (!nx3163z37 & !ix3163z30602_anx45949z35)) # (!ix3163z30602_anx45949z32 & ((!ix3163z30602_anx45949z35) # (!nx3163z37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z32,
	datab => nx3163z37,
	datad => VCC,
	cin => ix3163z30602_anx45949z35,
	combout => ix3163z30602_anx37973z1,
	cout => ix3163z30602_anx45949z31);

-- Location: LCCOMB_X51_Y28_N26
ix3163z52953 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z47 = (i_1_a & (i_input_acombout(1))) # (!i_1_a & ((i_2_a & (i_input_acombout(1))) # (!i_2_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(1),
	datab => i_1_a,
	datac => i_2_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(1),
	combout => nx3163z47);

-- Location: LCCOMB_X51_Y28_N28
ix3163z30602_aix45949z52938 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx45949z28 = nx54084z1 $ (!nx3163z47)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx54084z1,
	datad => nx3163z47,
	combout => ix3163z30602_anx45949z28);

-- Location: LCCOMB_X50_Y27_N14
ix3163z30602_aix45949z52937 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx38970z1 = ((nx3163z33 $ (ix3163z30602_anx45949z28 $ (!ix3163z30602_anx45949z31)))) # (GND)
-- ix3163z30602_anx45949z27 = CARRY((nx3163z33 & ((ix3163z30602_anx45949z28) # (!ix3163z30602_anx45949z31))) # (!nx3163z33 & (ix3163z30602_anx45949z28 & !ix3163z30602_anx45949z31)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z33,
	datab => ix3163z30602_anx45949z28,
	datad => VCC,
	cin => ix3163z30602_anx45949z31,
	combout => ix3163z30602_anx38970z1,
	cout => ix3163z30602_anx45949z27);

-- Location: LCCOMB_X51_Y27_N6
ix3163z19322_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx40964z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(3) & ((mem_aix64056z44883_aauto_generated_aq_b(3) & (!ix3163z19322_anx44952z16)) # (!mem_aix64056z44883_aauto_generated_aq_b(3) & ((ix3163z19322_anx44952z16) # (GND))))) # 
-- (!mem_0_aix64056z44884_aauto_generated_aq_b(3) & ((mem_aix64056z44883_aauto_generated_aq_b(3) & (ix3163z19322_anx44952z16 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b(3) & (!ix3163z19322_anx44952z16))))
-- ix3163z19322_anx44952z13 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b(3) & ((!ix3163z19322_anx44952z16) # (!mem_aix64056z44883_aauto_generated_aq_b(3)))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(3) & (!mem_aix64056z44883_aauto_generated_aq_b(3) 
-- & !ix3163z19322_anx44952z16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(3),
	datab => mem_aix64056z44883_aauto_generated_aq_b(3),
	datad => VCC,
	cin => ix3163z19322_anx44952z16,
	combout => ix3163z19322_anx40964z1,
	cout => ix3163z19322_anx44952z13);

-- Location: LCCOMB_X53_Y27_N14
ix3163z19319_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx39967z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b(2) $ (mem_aix64056z44883_aauto_generated_aq_b(2) $ (ix3163z19319_anx44952z19)))) # (GND)
-- ix3163z19319_anx44952z16 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(2) & ((!ix3163z19319_anx44952z19) # (!mem_aix64056z44883_aauto_generated_aq_b(2)))) # (!mem_1_aix64056z44885_aauto_generated_aq_b(2) & (!mem_aix64056z44883_aauto_generated_aq_b(2) 
-- & !ix3163z19319_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(2),
	datab => mem_aix64056z44883_aauto_generated_aq_b(2),
	datad => VCC,
	cin => ix3163z19319_anx44952z19,
	combout => ix3163z19319_anx39967z1,
	cout => ix3163z19319_anx44952z16);

-- Location: LCCOMB_X53_Y27_N16
ix3163z19319_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx40964z1 = (mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_1_aix64056z44885_aauto_generated_aq_b(3) & (!ix3163z19319_anx44952z16)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3) & ((ix3163z19319_anx44952z16) # (GND))))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_1_aix64056z44885_aauto_generated_aq_b(3) & (ix3163z19319_anx44952z16 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3) & (!ix3163z19319_anx44952z16))))
-- ix3163z19319_anx44952z13 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(3) & ((!ix3163z19319_anx44952z16) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3)))) # (!mem_aix64056z44883_aauto_generated_aq_b(3) & (!mem_1_aix64056z44885_aauto_generated_aq_b(3) 
-- & !ix3163z19319_anx44952z16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(3),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(3),
	datad => VCC,
	cin => ix3163z19319_anx44952z16,
	combout => ix3163z19319_anx40964z1,
	cout => ix3163z19319_anx44952z13);

-- Location: LCCOMB_X53_Y27_N30
ix3163z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z26 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b(3))))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx40964z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51243z1,
	datab => nx54113z1,
	datac => ix3163z19319_anx40964z1,
	datad => mem_0_aix64056z44884_aauto_generated_aq_b(3),
	combout => nx3163z26);

-- Location: LCCOMB_X50_Y27_N30
ix3163z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z25 = (nx54113z1 & (ix3163z19322_anx40964z1 & !nx3163z26)) # (!nx54113z1 & ((nx3163z26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54113z1,
	datac => ix3163z19322_anx40964z1,
	datad => nx3163z26,
	combout => nx3163z25);

-- Location: LCCOMB_X53_Y27_N8
ix3163z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z30 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b(2))))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx39967z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51243z1,
	datab => nx54113z1,
	datac => ix3163z19319_anx39967z1,
	datad => mem_0_aix64056z44884_aauto_generated_aq_b(2),
	combout => nx3163z30);

-- Location: LCCOMB_X50_Y27_N8
ix3163z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z29 = (nx54113z1 & (ix3163z19322_anx39967z1 & !nx3163z30)) # (!nx54113z1 & ((nx3163z30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z19322_anx39967z1,
	datac => nx54113z1,
	datad => nx3163z30,
	combout => nx3163z29);

-- Location: LCCOMB_X50_Y27_N18
ix3163z30602_aix45949z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx40964z1 = ((ix3163z30602_anx45949z20 $ (nx3163z25 $ (!ix3163z30602_anx45949z23)))) # (GND)
-- ix3163z30602_anx45949z19 = CARRY((ix3163z30602_anx45949z20 & ((nx3163z25) # (!ix3163z30602_anx45949z23))) # (!ix3163z30602_anx45949z20 & (nx3163z25 & !ix3163z30602_anx45949z23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z20,
	datab => nx3163z25,
	datad => VCC,
	cin => ix3163z30602_anx45949z23,
	combout => ix3163z30602_anx40964z1,
	cout => ix3163z30602_anx45949z19);

-- Location: LCCOMB_X49_Y27_N26
ix3163z52964 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z75 = (!ix3163z30602_anx39967z1 & (!ix3163z30602_anx37973z1 & (!ix3163z30602_anx38970z1 & !ix3163z30602_anx40964z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx39967z1,
	datab => ix3163z30602_anx37973z1,
	datac => ix3163z30602_anx38970z1,
	datad => ix3163z30602_anx40964z1,
	combout => nx3163z75);

-- Location: LCCOMB_X51_Y27_N8
ix3163z19322_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx41961z1 = ((mem_aix64056z44883_aauto_generated_aq_b(4) $ (mem_0_aix64056z44884_aauto_generated_aq_b(4) $ (ix3163z19322_anx44952z13)))) # (GND)
-- ix3163z19322_anx44952z10 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(4) & ((!ix3163z19322_anx44952z13) # (!mem_0_aix64056z44884_aauto_generated_aq_b(4)))) # (!mem_aix64056z44883_aauto_generated_aq_b(4) & (!mem_0_aix64056z44884_aauto_generated_aq_b(4) 
-- & !ix3163z19322_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(4),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(4),
	datad => VCC,
	cin => ix3163z19322_anx44952z13,
	combout => ix3163z19322_anx41961z1,
	cout => ix3163z19322_anx44952z10);

-- Location: LCCOMB_X53_Y27_N18
ix3163z19319_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx41961z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b(4) $ (mem_aix64056z44883_aauto_generated_aq_b(4) $ (ix3163z19319_anx44952z13)))) # (GND)
-- ix3163z19319_anx44952z10 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(4) & ((!ix3163z19319_anx44952z13) # (!mem_aix64056z44883_aauto_generated_aq_b(4)))) # (!mem_1_aix64056z44885_aauto_generated_aq_b(4) & (!mem_aix64056z44883_aauto_generated_aq_b(4) 
-- & !ix3163z19319_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(4),
	datab => mem_aix64056z44883_aauto_generated_aq_b(4),
	datad => VCC,
	cin => ix3163z19319_anx44952z13,
	combout => ix3163z19319_anx41961z1,
	cout => ix3163z19319_anx44952z10);

-- Location: LCCOMB_X53_Y27_N28
ix3163z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z22 = (nx54113z1 & (((nx51243z1)))) # (!nx54113z1 & ((nx51243z1 & (mem_0_aix64056z44884_aauto_generated_aq_b(4))) # (!nx51243z1 & ((ix3163z19319_anx41961z1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54113z1,
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(4),
	datac => nx51243z1,
	datad => ix3163z19319_anx41961z1,
	combout => nx3163z22);

-- Location: LCCOMB_X50_Y27_N4
ix3163z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z21 = (nx54113z1 & (ix3163z19322_anx41961z1 & !nx3163z22)) # (!nx54113z1 & ((nx3163z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54113z1,
	datac => ix3163z19322_anx41961z1,
	datad => nx3163z22,
	combout => nx3163z21);

-- Location: LCCOMB_X50_Y27_N20
ix3163z30602_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx41961z1 = (ix3163z30602_anx45949z16 & ((nx3163z21 & (ix3163z30602_anx45949z19 & VCC)) # (!nx3163z21 & (!ix3163z30602_anx45949z19)))) # (!ix3163z30602_anx45949z16 & ((nx3163z21 & (!ix3163z30602_anx45949z19)) # (!nx3163z21 & 
-- ((ix3163z30602_anx45949z19) # (GND)))))
-- ix3163z30602_anx45949z15 = CARRY((ix3163z30602_anx45949z16 & (!nx3163z21 & !ix3163z30602_anx45949z19)) # (!ix3163z30602_anx45949z16 & ((!ix3163z30602_anx45949z19) # (!nx3163z21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z16,
	datab => nx3163z21,
	datad => VCC,
	cin => ix3163z30602_anx45949z19,
	combout => ix3163z30602_anx41961z1,
	cout => ix3163z30602_anx45949z15);

-- Location: LCCOMB_X51_Y27_N10
ix3163z19322_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5) & (!ix3163z19322_anx44952z10)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(5) & (ix3163z19322_anx44952z10 & VCC)))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5) & ((ix3163z19322_anx44952z10) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(5) & (!ix3163z19322_anx44952z10))))
-- ix3163z19322_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(5) & (mem_0_aix64056z44884_aauto_generated_aq_b(5) & !ix3163z19322_anx44952z10)) # (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5)) # 
-- (!ix3163z19322_anx44952z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(5),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(5),
	datad => VCC,
	cin => ix3163z19322_anx44952z10,
	combout => ix3163z19322_anx42958z1,
	cout => ix3163z19322_anx44952z7);

-- Location: LCCOMB_X51_Y27_N12
ix3163z19322_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b(6) $ (mem_0_aix64056z44884_aauto_generated_aq_b(6) $ (ix3163z19322_anx44952z7)))) # (GND)
-- ix3163z19322_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(6) & ((!ix3163z19322_anx44952z7) # (!mem_0_aix64056z44884_aauto_generated_aq_b(6)))) # (!mem_aix64056z44883_aauto_generated_aq_b(6) & (!mem_0_aix64056z44884_aauto_generated_aq_b(6) & 
-- !ix3163z19322_anx44952z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(6),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(6),
	datad => VCC,
	cin => ix3163z19322_anx44952z7,
	combout => ix3163z19322_anx43955z1,
	cout => ix3163z19322_anx44952z4);

-- Location: LCCOMB_X51_Y27_N14
ix3163z19322_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx44952z1 = (mem_aix64056z44883_aauto_generated_aq_b(7) & ((mem_0_aix64056z44884_aauto_generated_aq_b(7) & (!ix3163z19322_anx44952z4)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(7) & (ix3163z19322_anx44952z4 & VCC)))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(7) & ((mem_0_aix64056z44884_aauto_generated_aq_b(7) & ((ix3163z19322_anx44952z4) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(7) & (!ix3163z19322_anx44952z4))))
-- ix3163z19322_anx23445z2 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(7) & (mem_0_aix64056z44884_aauto_generated_aq_b(7) & !ix3163z19322_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & ((mem_0_aix64056z44884_aauto_generated_aq_b(7)) # 
-- (!ix3163z19322_anx44952z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(7),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(7),
	datad => VCC,
	cin => ix3163z19322_anx44952z4,
	combout => ix3163z19322_anx44952z1,
	cout => ix3163z19322_anx23445z2);

-- Location: LCCOMB_X53_Y27_N20
ix3163z19319_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_1_aix64056z44885_aauto_generated_aq_b(5) & (!ix3163z19319_anx44952z10)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5) & ((ix3163z19319_anx44952z10) # (GND))))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_1_aix64056z44885_aauto_generated_aq_b(5) & (ix3163z19319_anx44952z10 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5) & (!ix3163z19319_anx44952z10))))
-- ix3163z19319_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(5) & ((!ix3163z19319_anx44952z10) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5)))) # (!mem_aix64056z44883_aauto_generated_aq_b(5) & (!mem_1_aix64056z44885_aauto_generated_aq_b(5) 
-- & !ix3163z19319_anx44952z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(5),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(5),
	datad => VCC,
	cin => ix3163z19319_anx44952z10,
	combout => ix3163z19319_anx42958z1,
	cout => ix3163z19319_anx44952z7);

-- Location: LCCOMB_X53_Y27_N22
ix3163z19319_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19319_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b(6) $ (mem_1_aix64056z44885_aauto_generated_aq_b(6) $ (ix3163z19319_anx44952z7)))) # (GND)
-- ix3163z19319_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(6) & (mem_1_aix64056z44885_aauto_generated_aq_b(6) & !ix3163z19319_anx44952z7)) # (!mem_aix64056z44883_aauto_generated_aq_b(6) & ((mem_1_aix64056z44885_aauto_generated_aq_b(6)) # 
-- (!ix3163z19319_anx44952z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(6),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(6),
	datad => VCC,
	cin => ix3163z19319_anx44952z7,
	combout => ix3163z19319_anx43955z1,
	cout => ix3163z19319_anx44952z4);

-- Location: LCCOMB_X51_Y27_N24
ix3163z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z10 = (nx54113z1 & (nx51243z1)) # (!nx54113z1 & ((nx51243z1 & (mem_0_aix64056z44884_aauto_generated_aq_b(7))) # (!nx51243z1 & ((ix3163z19319_anx44952z1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54113z1,
	datab => nx51243z1,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(7),
	datad => ix3163z19319_anx44952z1,
	combout => nx3163z10);

-- Location: LCCOMB_X51_Y27_N18
ix3163z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z9 = (nx3163z10 & ((!nx54113z1))) # (!nx3163z10 & (ix3163z19322_anx44952z1 & nx54113z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => ix3163z19322_anx44952z1,
	datac => nx3163z10,
	datad => nx54113z1,
	combout => nx3163z9);

-- Location: LCCOMB_X50_Y27_N0
ix3163z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z14 = (nx51243z1 & ((mem_0_aix64056z44884_aauto_generated_aq_b(6)) # ((nx54113z1)))) # (!nx51243z1 & (((!nx54113z1 & ix3163z19319_anx43955z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(6),
	datab => nx51243z1,
	datac => nx54113z1,
	datad => ix3163z19319_anx43955z1,
	combout => nx3163z14);

-- Location: LCCOMB_X50_Y27_N2
ix3163z52933 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z13 = (nx54113z1 & (ix3163z19322_anx43955z1 & !nx3163z14)) # (!nx54113z1 & ((nx3163z14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54113z1,
	datac => ix3163z19322_anx43955z1,
	datad => nx3163z14,
	combout => nx3163z13);

-- Location: LCCOMB_X53_Y27_N0
ix3163z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z18 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b(5))))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx42958z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx51243z1,
	datab => nx54113z1,
	datac => ix3163z19319_anx42958z1,
	datad => mem_0_aix64056z44884_aauto_generated_aq_b(5),
	combout => nx3163z18);

-- Location: LCCOMB_X53_Y27_N2
ix3163z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z17 = (nx54113z1 & (ix3163z19322_anx42958z1 & !nx3163z18)) # (!nx54113z1 & ((nx3163z18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx54113z1,
	datac => ix3163z19322_anx42958z1,
	datad => nx3163z18,
	combout => nx3163z17);

-- Location: LCCOMB_X50_Y27_N22
ix3163z30602_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx42958z1 = ((ix3163z30602_anx45949z12 $ (nx3163z17 $ (!ix3163z30602_anx45949z15)))) # (GND)
-- ix3163z30602_anx45949z11 = CARRY((ix3163z30602_anx45949z12 & ((nx3163z17) # (!ix3163z30602_anx45949z15))) # (!ix3163z30602_anx45949z12 & (nx3163z17 & !ix3163z30602_anx45949z15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z12,
	datab => nx3163z17,
	datad => VCC,
	cin => ix3163z30602_anx45949z15,
	combout => ix3163z30602_anx42958z1,
	cout => ix3163z30602_anx45949z11);

-- Location: LCCOMB_X50_Y27_N24
ix3163z30602_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30602_anx43955z1 = (ix3163z30602_anx45949z8 & ((nx3163z13 & (ix3163z30602_anx45949z11 & VCC)) # (!nx3163z13 & (!ix3163z30602_anx45949z11)))) # (!ix3163z30602_anx45949z8 & ((nx3163z13 & (!ix3163z30602_anx45949z11)) # (!nx3163z13 & 
-- ((ix3163z30602_anx45949z11) # (GND)))))
-- ix3163z30602_anx45949z7 = CARRY((ix3163z30602_anx45949z8 & (!nx3163z13 & !ix3163z30602_anx45949z11)) # (!ix3163z30602_anx45949z8 & ((!ix3163z30602_anx45949z11) # (!nx3163z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx45949z8,
	datab => nx3163z13,
	datad => VCC,
	cin => ix3163z30602_anx45949z11,
	combout => ix3163z30602_anx43955z1,
	cout => ix3163z30602_anx45949z7);

-- Location: LCCOMB_X48_Y27_N10
ix3163z52963 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z74 = (!ix3163z30602_anx42958z1 & (!ix3163z30602_anx41961z1 & (!ix3163z30602_anx44952z1 & !ix3163z30602_anx43955z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx42958z1,
	datab => ix3163z30602_anx41961z1,
	datac => ix3163z30602_anx44952z1,
	datad => ix3163z30602_anx43955z1,
	combout => nx3163z74);

-- Location: LCCOMB_X48_Y27_N20
ix3163z52962 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z73 = (nx3163z57 & (nx3163z75 & nx3163z74))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx3163z57,
	datac => nx3163z75,
	datad => nx3163z74,
	combout => nx3163z73);

-- Location: LCCOMB_X51_Y27_N16
ix3163z19322_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19322_anx23445z1 = !ix3163z19322_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z19322_anx23445z2,
	combout => ix3163z19322_anx23445z1);

-- Location: LCCOMB_X49_Y27_N6
ix3163z60014_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx37973z1 = (i_input_acombout(0) & (ix3163z30602_anx37973z1 $ (VCC))) # (!i_input_acombout(0) & (ix3163z30602_anx37973z1 & VCC))
-- ix3163z60014_anx44952z22 = CARRY((i_input_acombout(0) & ix3163z30602_anx37973z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(0),
	datab => ix3163z30602_anx37973z1,
	datad => VCC,
	combout => ix3163z60014_anx37973z1,
	cout => ix3163z60014_anx44952z22);

-- Location: LCCOMB_X49_Y27_N8
ix3163z60014_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx38970z1 = (i_input_acombout(1) & ((ix3163z30602_anx38970z1 & (ix3163z60014_anx44952z22 & VCC)) # (!ix3163z30602_anx38970z1 & (!ix3163z60014_anx44952z22)))) # (!i_input_acombout(1) & ((ix3163z30602_anx38970z1 & (!ix3163z60014_anx44952z22)) 
-- # (!ix3163z30602_anx38970z1 & ((ix3163z60014_anx44952z22) # (GND)))))
-- ix3163z60014_anx44952z19 = CARRY((i_input_acombout(1) & (!ix3163z30602_anx38970z1 & !ix3163z60014_anx44952z22)) # (!i_input_acombout(1) & ((!ix3163z60014_anx44952z22) # (!ix3163z30602_anx38970z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(1),
	datab => ix3163z30602_anx38970z1,
	datad => VCC,
	cin => ix3163z60014_anx44952z22,
	combout => ix3163z60014_anx38970z1,
	cout => ix3163z60014_anx44952z19);

-- Location: LCCOMB_X49_Y27_N12
ix3163z60014_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx40964z1 = (i_input_acombout(3) & ((ix3163z30602_anx40964z1 & (ix3163z60014_anx44952z16 & VCC)) # (!ix3163z30602_anx40964z1 & (!ix3163z60014_anx44952z16)))) # (!i_input_acombout(3) & ((ix3163z30602_anx40964z1 & (!ix3163z60014_anx44952z16)) 
-- # (!ix3163z30602_anx40964z1 & ((ix3163z60014_anx44952z16) # (GND)))))
-- ix3163z60014_anx44952z13 = CARRY((i_input_acombout(3) & (!ix3163z30602_anx40964z1 & !ix3163z60014_anx44952z16)) # (!i_input_acombout(3) & ((!ix3163z60014_anx44952z16) # (!ix3163z30602_anx40964z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(3),
	datab => ix3163z30602_anx40964z1,
	datad => VCC,
	cin => ix3163z60014_anx44952z16,
	combout => ix3163z60014_anx40964z1,
	cout => ix3163z60014_anx44952z13);

-- Location: LCCOMB_X49_Y27_N16
ix3163z60014_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx42958z1 = (i_input_acombout(5) & ((ix3163z30602_anx42958z1 & (ix3163z60014_anx44952z10 & VCC)) # (!ix3163z30602_anx42958z1 & (!ix3163z60014_anx44952z10)))) # (!i_input_acombout(5) & ((ix3163z30602_anx42958z1 & (!ix3163z60014_anx44952z10)) 
-- # (!ix3163z30602_anx42958z1 & ((ix3163z60014_anx44952z10) # (GND)))))
-- ix3163z60014_anx44952z7 = CARRY((i_input_acombout(5) & (!ix3163z30602_anx42958z1 & !ix3163z60014_anx44952z10)) # (!i_input_acombout(5) & ((!ix3163z60014_anx44952z10) # (!ix3163z30602_anx42958z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(5),
	datab => ix3163z30602_anx42958z1,
	datad => VCC,
	cin => ix3163z60014_anx44952z10,
	combout => ix3163z60014_anx42958z1,
	cout => ix3163z60014_anx44952z7);

-- Location: LCCOMB_X49_Y27_N18
ix3163z60014_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx43955z1 = ((i_input_acombout(6) $ (ix3163z30602_anx43955z1 $ (!ix3163z60014_anx44952z7)))) # (GND)
-- ix3163z60014_anx44952z4 = CARRY((i_input_acombout(6) & ((ix3163z30602_anx43955z1) # (!ix3163z60014_anx44952z7))) # (!i_input_acombout(6) & (ix3163z30602_anx43955z1 & !ix3163z60014_anx44952z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(6),
	datab => ix3163z30602_anx43955z1,
	datad => VCC,
	cin => ix3163z60014_anx44952z7,
	combout => ix3163z60014_anx43955z1,
	cout => ix3163z60014_anx44952z4);

-- Location: LCCOMB_X49_Y27_N20
ix3163z60014_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx44952z1 = (ix3163z30602_anx44952z1 & ((i_input_acombout(7) & (ix3163z60014_anx44952z4 & VCC)) # (!i_input_acombout(7) & (!ix3163z60014_anx44952z4)))) # (!ix3163z30602_anx44952z1 & ((i_input_acombout(7) & (!ix3163z60014_anx44952z4)) # 
-- (!i_input_acombout(7) & ((ix3163z60014_anx44952z4) # (GND)))))
-- ix3163z60014_anx23445z2 = CARRY((ix3163z30602_anx44952z1 & (!i_input_acombout(7) & !ix3163z60014_anx44952z4)) # (!ix3163z30602_anx44952z1 & ((!ix3163z60014_anx44952z4) # (!i_input_acombout(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30602_anx44952z1,
	datab => i_input_acombout(7),
	datad => VCC,
	cin => ix3163z60014_anx44952z4,
	combout => ix3163z60014_anx44952z1,
	cout => ix3163z60014_anx23445z2);

-- Location: LCCOMB_X49_Y27_N22
ix3163z60014_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60014_anx23445z1 = !ix3163z60014_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z60014_anx23445z2,
	combout => ix3163z60014_anx23445z1);

-- Location: LCCOMB_X48_Y27_N22
ix3163z52927 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z5 = (nx54113z1 & (ix3163z19322_anx23445z1 & ((ix3163z60014_anx23445z1) # (!nx51243z1)))) # (!nx54113z1 & (((ix3163z60014_anx23445z1)) # (!nx51243z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx54113z1,
	datab => nx51243z1,
	datac => ix3163z19322_anx23445z1,
	datad => ix3163z60014_anx23445z1,
	combout => nx3163z5);

-- Location: LCCOMB_X48_Y27_N24
ix3163z52966 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z77 = (nx3163z73) # ((nx3163z5 & ((ix3163z19319_anx23445z1) # (!nx3163z3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z19319_anx23445z1,
	datab => nx3163z3,
	datac => nx3163z73,
	datad => nx3163z5,
	combout => nx3163z77);

-- Location: LCCOMB_X49_Y27_N30
ix3163z52959 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z65 = (!ix3163z60014_anx39967z1 & (!ix3163z60014_anx37973z1 & (!ix3163z60014_anx38970z1 & !ix3163z60014_anx40964z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z60014_anx39967z1,
	datab => ix3163z60014_anx37973z1,
	datac => ix3163z60014_anx38970z1,
	datad => ix3163z60014_anx40964z1,
	combout => nx3163z65);

-- Location: LCCOMB_X48_Y27_N26
ix3163z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z60 = (!ix3163z60014_anx41961z1 & (!ix3163z60014_anx43955z1 & (!ix3163z60014_anx42958z1 & !ix3163z60014_anx44952z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z60014_anx41961z1,
	datab => ix3163z60014_anx43955z1,
	datac => ix3163z60014_anx42958z1,
	datad => ix3163z60014_anx44952z1,
	combout => nx3163z60);

-- Location: LCCOMB_X48_Y27_N4
ix3163z52955 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z56 = (nx3163z58) # ((nx3163z65 & (!nx3163z57 & nx3163z60)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z58,
	datab => nx3163z65,
	datac => nx3163z57,
	datad => nx3163z60,
	combout => nx3163z56);

-- Location: LCCOMB_X48_Y27_N14
ix3163z52965 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z76 = (!nx3163z71 & (((!nx3163z77 & !nx3163z56)) # (!nx3163z72)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z72,
	datab => nx3163z71,
	datac => nx3163z77,
	datad => nx3163z56,
	combout => nx3163z76);

-- Location: LCCOMB_X48_Y27_N18
ix3163z52960 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z70 = ((nx3163z73) # (!nx3163z71)) # (!nx3163z72)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z72,
	datac => nx3163z73,
	datad => nx3163z71,
	combout => nx3163z70);

-- Location: LCCOMB_X48_Y27_N0
ix3163z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z2 = (nx3163z5 & ((ix3163z19319_anx23445z1) # (!nx3163z3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z19319_anx23445z1,
	datac => nx3163z3,
	datad => nx3163z5,
	combout => nx3163z2);

-- Location: LCCOMB_X48_Y27_N12
ix3163z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z1 = (i_valid_acombout & ((nx3163z70) # ((nx3163z56) # (nx3163z2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx3163z70,
	datac => nx3163z56,
	datad => nx3163z2,
	combout => nx3163z1);

-- Location: LCCOMB_X48_Y27_N30
modgen_counter_o_output_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx58250z2 = (nx3163z1 & ((nx3163z72) # (nx3163z76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z72,
	datac => nx3163z76,
	datad => nx3163z1,
	combout => modgen_counter_o_output_anx58250z2);

-- Location: LCFF_X47_Y27_N1
modgen_counter_o_output_areg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx51271z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z16);

-- Location: LCCOMB_X47_Y27_N0
modgen_counter_o_output_aix32510z52931 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx51271z1 = modgen_counter_o_output_anx32510z16 $ (VCC)
-- modgen_counter_o_output_anx32510z15 = CARRY(modgen_counter_o_output_anx32510z16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z16,
	datad => VCC,
	combout => modgen_counter_o_output_anx51271z1,
	cout => modgen_counter_o_output_anx32510z15);

-- Location: LCFF_X48_Y27_N17
reg_out_o_output_obuf_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx51271z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx20192z1);

-- Location: LCFF_X47_Y27_N3
modgen_counter_o_output_areg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx52268z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z14);

-- Location: LCCOMB_X47_Y27_N2
modgen_counter_o_output_aix32510z52930 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx52268z1 = (modgen_counter_o_output_anx32510z14 & (!modgen_counter_o_output_anx32510z15)) # (!modgen_counter_o_output_anx32510z14 & ((modgen_counter_o_output_anx32510z15) # (GND)))
-- modgen_counter_o_output_anx32510z13 = CARRY((!modgen_counter_o_output_anx32510z15) # (!modgen_counter_o_output_anx32510z14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z14,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z15,
	combout => modgen_counter_o_output_anx52268z1,
	cout => modgen_counter_o_output_anx32510z13);

-- Location: LCFF_X48_Y27_N3
reg_out_o_output_obuf_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx52268z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx19195z1);

-- Location: LCFF_X47_Y27_N5
modgen_counter_o_output_areg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx53265z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z12);

-- Location: LCCOMB_X47_Y27_N4
modgen_counter_o_output_aix32510z52929 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx53265z1 = (modgen_counter_o_output_anx32510z12 & (modgen_counter_o_output_anx32510z13 $ (GND))) # (!modgen_counter_o_output_anx32510z12 & (!modgen_counter_o_output_anx32510z13 & VCC))
-- modgen_counter_o_output_anx32510z11 = CARRY((modgen_counter_o_output_anx32510z12 & !modgen_counter_o_output_anx32510z13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z12,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z13,
	combout => modgen_counter_o_output_anx53265z1,
	cout => modgen_counter_o_output_anx32510z11);

-- Location: LCFF_X48_Y27_N29
reg_out_o_output_obuf_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx53265z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx18198z1);

-- Location: LCCOMB_X47_Y27_N6
modgen_counter_o_output_aix32510z52928 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx54262z1 = (modgen_counter_o_output_anx32510z10 & (!modgen_counter_o_output_anx32510z11)) # (!modgen_counter_o_output_anx32510z10 & ((modgen_counter_o_output_anx32510z11) # (GND)))
-- modgen_counter_o_output_anx32510z9 = CARRY((!modgen_counter_o_output_anx32510z11) # (!modgen_counter_o_output_anx32510z10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_output_anx32510z10,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z11,
	combout => modgen_counter_o_output_anx54262z1,
	cout => modgen_counter_o_output_anx32510z9);

-- Location: LCFF_X48_Y27_N7
reg_out_o_output_obuf_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx54262z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx17201z1);

-- Location: LCFF_X47_Y27_N9
modgen_counter_o_output_areg_q_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx55259z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z8);

-- Location: LCCOMB_X47_Y27_N8
modgen_counter_o_output_aix32510z52927 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx55259z1 = (modgen_counter_o_output_anx32510z8 & (modgen_counter_o_output_anx32510z9 $ (GND))) # (!modgen_counter_o_output_anx32510z8 & (!modgen_counter_o_output_anx32510z9 & VCC))
-- modgen_counter_o_output_anx32510z7 = CARRY((modgen_counter_o_output_anx32510z8 & !modgen_counter_o_output_anx32510z9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z8,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z9,
	combout => modgen_counter_o_output_anx55259z1,
	cout => modgen_counter_o_output_anx32510z7);

-- Location: LCFF_X48_Y27_N9
reg_out_o_output_obuf_4_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx55259z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx16204z1);

-- Location: LCFF_X47_Y27_N11
modgen_counter_o_output_areg_q_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx56256z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z6);

-- Location: LCCOMB_X47_Y27_N10
modgen_counter_o_output_aix32510z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx56256z1 = (modgen_counter_o_output_anx32510z6 & (!modgen_counter_o_output_anx32510z7)) # (!modgen_counter_o_output_anx32510z6 & ((modgen_counter_o_output_anx32510z7) # (GND)))
-- modgen_counter_o_output_anx32510z5 = CARRY((!modgen_counter_o_output_anx32510z7) # (!modgen_counter_o_output_anx32510z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z6,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z7,
	combout => modgen_counter_o_output_anx56256z1,
	cout => modgen_counter_o_output_anx32510z5);

-- Location: LCCOMB_X47_Y27_N24
nx15207z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx15207z1_afeeder_combout = modgen_counter_o_output_anx56256z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_output_anx56256z1,
	combout => nx15207z1_afeeder_combout);

-- Location: LCFF_X47_Y27_N25
reg_out_o_output_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx15207z1_afeeder_combout,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx15207z1);

-- Location: LCCOMB_X47_Y27_N12
modgen_counter_o_output_aix32510z52925 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx57253z1 = (modgen_counter_o_output_anx32510z4 & (modgen_counter_o_output_anx32510z5 $ (GND))) # (!modgen_counter_o_output_anx32510z4 & (!modgen_counter_o_output_anx32510z5 & VCC))
-- modgen_counter_o_output_anx32510z3 = CARRY((modgen_counter_o_output_anx32510z4 & !modgen_counter_o_output_anx32510z5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_output_anx32510z4,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z5,
	combout => modgen_counter_o_output_anx57253z1,
	cout => modgen_counter_o_output_anx32510z3);

-- Location: LCCOMB_X47_Y27_N26
nx14210z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx14210z1_afeeder_combout = modgen_counter_o_output_anx57253z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => modgen_counter_o_output_anx57253z1,
	combout => nx14210z1_afeeder_combout);

-- Location: LCFF_X47_Y27_N27
reg_out_o_output_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx14210z1_afeeder_combout,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx14210z1);

-- Location: LCFF_X47_Y27_N15
modgen_counter_o_output_areg_q_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => modgen_counter_o_output_anx32510z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => modgen_counter_o_output_anx32510z2);

-- Location: LCCOMB_X47_Y27_N14
modgen_counter_o_output_aix32510z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx32510z1 = modgen_counter_o_output_anx32510z2 $ (modgen_counter_o_output_anx32510z3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => modgen_counter_o_output_anx32510z2,
	cin => modgen_counter_o_output_anx32510z3,
	combout => modgen_counter_o_output_anx32510z1);

-- Location: LCCOMB_X47_Y27_N28
nx13213z1_afeeder : cycloneii_lcell_comb
-- Equation(s):
-- nx13213z1_afeeder_combout = modgen_counter_o_output_anx32510z1

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => modgen_counter_o_output_anx32510z1,
	combout => nx13213z1_afeeder_combout);

-- Location: LCFF_X47_Y27_N29
reg_out_o_output_obuf_7_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx13213z1_afeeder_combout,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx13213z1);

-- Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix20192z43919 : cycloneii_io
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
	datain => nx20192z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(0));

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix19195z43919 : cycloneii_io
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
	datain => nx19195z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(1));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix18198z43919 : cycloneii_io
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
	datain => nx18198z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(2));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix17201z43919 : cycloneii_io
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
	datain => nx17201z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(3));

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix16204z43919 : cycloneii_io
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
	datain => nx16204z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(4));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix15207z43919 : cycloneii_io
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
	datain => nx15207z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(5));

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix14210z43919 : cycloneii_io
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
	datain => nx14210z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(6));

-- Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
ix13213z43919 : cycloneii_io
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
	datain => nx13213z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_o_output(7));
END structure;


------------------------------------------------------------------------
-- begin uw-generated entity
-- upper-level of shim 
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;
entity lab3 is
  port (
      i_clock  : in STD_LOGIC
    ; i_valid  : in STD_LOGIC
    ; i_input  : in std_logic_vector (7 downto 0)
    ; i_reset  : in STD_LOGIC
    ; o_output  : out std_logic_vector (7 downto 0)
  );
end entity;

------------------------------------------------------------------------
-- begin uw-generated architecture
-- lower-level of shim 
------------------------------------------------------------------------

architecture shim of lab3 is
  signal VDD, VSS : std_logic; 
begin
  chip : entity work.lab3_chip
    port map (
        i_clock => i_clock
      , i_valid => i_valid
      , i_input(7) => i_input(7)
      , i_input(6) => i_input(6)
      , i_input(5) => i_input(5)
      , i_input(4) => i_input(4)
      , i_input(3) => i_input(3)
      , i_input(2) => i_input(2)
      , i_input(1) => i_input(1)
      , i_input(0) => i_input(0)
      , i_reset => i_reset
      , o_output(7) => o_output(7)
      , o_output(6) => o_output(6)
      , o_output(5) => o_output(5)
      , o_output(4) => o_output(4)
      , o_output(3) => o_output(3)
      , o_output(2) => o_output(2)
      , o_output(1) => o_output(1)
      , o_output(0) => o_output(0)
    );
end architecture;

