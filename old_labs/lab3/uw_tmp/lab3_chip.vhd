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

-- DATE "02/15/2014 13:18:52"

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
-- o_output[0]	=>  Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[1]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[2]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[3]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[4]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[5]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[6]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- o_output[7]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[5]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[4]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[3]	=>  Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[1]	=>  Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_input[0]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- i_valid	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTADATAIN_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTAADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBADDR_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus : std_logic_vector(7 DOWNTO 0);
SIGNAL i_clock_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL i_reset_aclkctrl_INCLK_bus : std_logic_vector(3 DOWNTO 0);
SIGNAL ix3163z19324_anx40964z1 : std_logic;
SIGNAL ix3163z19324_anx44952z1 : std_logic;
SIGNAL ix3163z19326_anx40964z1 : std_logic;
SIGNAL ix3163z19326_anx44952z1 : std_logic;
SIGNAL nx3163z10 : std_logic;
SIGNAL nx3163z8 : std_logic;
SIGNAL nx3163z42 : std_logic;
SIGNAL ix3163z30599_anx45949z7 : std_logic;
SIGNAL nx3163z43 : std_logic;
SIGNAL ix3163z30599_anx45949z11 : std_logic;
SIGNAL nx3163z44 : std_logic;
SIGNAL ix3163z30599_anx45949z15 : std_logic;
SIGNAL nx3163z27 : std_logic;
SIGNAL nx3163z25 : std_logic;
SIGNAL nx3163z46 : std_logic;
SIGNAL ix3163z30599_anx45949z23 : std_logic;
SIGNAL nx3163z47 : std_logic;
SIGNAL ix3163z30599_anx45949z27 : std_logic;
SIGNAL nx3163z48 : std_logic;
SIGNAL ix3163z30599_anx45949z31 : std_logic;
SIGNAL ix3163z30599_anx41961z1 : std_logic;
SIGNAL ix3163z30599_anx45949z2 : std_logic;
SIGNAL ix3163z60044_anx37973z1 : std_logic;
SIGNAL ix3163z60044_anx43955z1 : std_logic;
SIGNAL ix3163z30599_anx45949z1 : std_logic;
SIGNAL nx3163z68 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z10 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z6 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z4 : std_logic;
SIGNAL i_clock_acombout : std_logic;
SIGNAL i_clock_aclkctrl_outclk : std_logic;
SIGNAL i_reset_acombout : std_logic;
SIGNAL i_reset_aclkctrl_outclk : std_logic;
SIGNAL y_pos_0_a_wirecell_combout : std_logic;
SIGNAL nx13246z1 : std_logic;
SIGNAL x_pos_0_a_wirecell_combout : std_logic;
SIGNAL i_valid_acombout : std_logic;
SIGNAL x_pos_0_a : std_logic;
SIGNAL nx45976z1 : std_logic;
SIGNAL x_pos_1_a : std_logic;
SIGNAL nx44979z1 : std_logic;
SIGNAL x_pos_2_a : std_logic;
SIGNAL nx15240z2 : std_logic;
SIGNAL nx43982z1 : std_logic;
SIGNAL x_pos_3_a : std_logic;
SIGNAL nx15240z1 : std_logic;
SIGNAL y_pos_2_a : std_logic;
SIGNAL nx35397z2 : std_logic;
SIGNAL nx35397z1 : std_logic;
SIGNAL end_of_input : std_logic;
SIGNAL nx53066z2 : std_logic;
SIGNAL y_pos_0_a : std_logic;
SIGNAL nx14243z1 : std_logic;
SIGNAL y_pos_1_a : std_logic;
SIGNAL nx12249z1 : std_logic;
SIGNAL y_pos_3_a : std_logic;
SIGNAL nx3163z75 : std_logic;
SIGNAL nx53066z1 : std_logic;
SIGNAL nx3163z2 : std_logic;
SIGNAL NOT_i_7n5s2_1_a : std_logic;
SIGNAL i_0_a : std_logic;
SIGNAL nx54084z1 : std_logic;
SIGNAL i_1_a : std_logic;
SIGNAL nx3163z7 : std_logic;
SIGNAL ix3163z19324_anx44952z22 : std_logic;
SIGNAL ix3163z19324_anx44952z19 : std_logic;
SIGNAL ix3163z19324_anx44952z16 : std_logic;
SIGNAL ix3163z19324_anx44952z13 : std_logic;
SIGNAL ix3163z19324_anx44952z10 : std_logic;
SIGNAL ix3163z19324_anx44952z7 : std_logic;
SIGNAL ix3163z19324_anx43955z1 : std_logic;
SIGNAL nx3163z11 : std_logic;
SIGNAL ix3163z19326_anx44952z22 : std_logic;
SIGNAL ix3163z19326_anx44952z19 : std_logic;
SIGNAL ix3163z19326_anx44952z16 : std_logic;
SIGNAL ix3163z19326_anx44952z13 : std_logic;
SIGNAL ix3163z19326_anx44952z10 : std_logic;
SIGNAL ix3163z19326_anx44952z7 : std_logic;
SIGNAL ix3163z19326_anx43955z1 : std_logic;
SIGNAL nx3163z15 : std_logic;
SIGNAL nx3163z13 : std_logic;
SIGNAL ix3163z19324_anx42958z1 : std_logic;
SIGNAL ix3163z19326_anx42958z1 : std_logic;
SIGNAL nx3163z19 : std_logic;
SIGNAL nx3163z17 : std_logic;
SIGNAL ix3163z19324_anx41961z1 : std_logic;
SIGNAL ix3163z19326_anx41961z1 : std_logic;
SIGNAL nx3163z23 : std_logic;
SIGNAL nx3163z21 : std_logic;
SIGNAL nx3163z45 : std_logic;
SIGNAL ix3163z30599_anx45949z19 : std_logic;
SIGNAL ix3163z19324_anx39967z1 : std_logic;
SIGNAL ix3163z19326_anx39967z1 : std_logic;
SIGNAL nx3163z31 : std_logic;
SIGNAL nx3163z29 : std_logic;
SIGNAL ix3163z19326_anx38970z1 : std_logic;
SIGNAL nx3163z35 : std_logic;
SIGNAL ix3163z19324_anx38970z1 : std_logic;
SIGNAL nx3163z33 : std_logic;
SIGNAL ix3163z19324_anx37973z1 : std_logic;
SIGNAL ix3163z19326_anx37973z1 : std_logic;
SIGNAL nx3163z39 : std_logic;
SIGNAL nx3163z37 : std_logic;
SIGNAL ix3163z30599_anx45949z34 : std_logic;
SIGNAL ix3163z30599_anx45949z30 : std_logic;
SIGNAL ix3163z30599_anx45949z26 : std_logic;
SIGNAL ix3163z30599_anx45949z22 : std_logic;
SIGNAL ix3163z30599_anx45949z18 : std_logic;
SIGNAL ix3163z30599_anx45949z14 : std_logic;
SIGNAL ix3163z30599_anx45949z10 : std_logic;
SIGNAL ix3163z30599_anx43955z1 : std_logic;
SIGNAL nx3163z41 : std_logic;
SIGNAL ix3163z30599_anx45949z3 : std_logic;
SIGNAL ix3163z30599_anx45949z6 : std_logic;
SIGNAL ix3163z30599_anx44952z1 : std_logic;
SIGNAL ix3163z30599_anx42958z1 : std_logic;
SIGNAL nx3163z5 : std_logic;
SIGNAL ix3163z30599_anx37973z1 : std_logic;
SIGNAL ix3163z30599_anx40964z1 : std_logic;
SIGNAL ix3163z30599_anx38970z1 : std_logic;
SIGNAL nx3163z52 : std_logic;
SIGNAL nx3163z4 : std_logic;
SIGNAL ix3163z19326_anx44952z4 : std_logic;
SIGNAL ix3163z19326_anx23445z2 : std_logic;
SIGNAL ix3163z19326_anx23445z1 : std_logic;
SIGNAL ix3163z30599_anx39967z1 : std_logic;
SIGNAL ix3163z60044_anx44952z22 : std_logic;
SIGNAL ix3163z60044_anx44952z19 : std_logic;
SIGNAL ix3163z60044_anx44952z16 : std_logic;
SIGNAL ix3163z60044_anx44952z13 : std_logic;
SIGNAL ix3163z60044_anx44952z10 : std_logic;
SIGNAL ix3163z60044_anx44952z7 : std_logic;
SIGNAL ix3163z60044_anx44952z4 : std_logic;
SIGNAL ix3163z60044_anx23445z2 : std_logic;
SIGNAL ix3163z60044_anx23445z1 : std_logic;
SIGNAL ix3163z19324_anx44952z4 : std_logic;
SIGNAL ix3163z19324_anx23445z2 : std_logic;
SIGNAL ix3163z19324_anx23445z1 : std_logic;
SIGNAL nx3163z72 : std_logic;
SIGNAL nx3163z70 : std_logic;
SIGNAL ix3163z60044_anx44952z1 : std_logic;
SIGNAL ix3163z60044_anx41961z1 : std_logic;
SIGNAL ix3163z60044_anx42958z1 : std_logic;
SIGNAL nx3163z58 : std_logic;
SIGNAL ix3163z60044_anx39967z1 : std_logic;
SIGNAL ix3163z60044_anx40964z1 : std_logic;
SIGNAL ix3163z60044_anx38970z1 : std_logic;
SIGNAL nx3163z63 : std_logic;
SIGNAL nx3163z57 : std_logic;
SIGNAL nx3163z3 : std_logic;
SIGNAL nx3163z76 : std_logic;
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
SIGNAL modgen_counter_o_output_anx32510z7 : std_logic;
SIGNAL modgen_counter_o_output_anx56256z1 : std_logic;
SIGNAL nx15207z1 : std_logic;
SIGNAL modgen_counter_o_output_anx32510z5 : std_logic;
SIGNAL modgen_counter_o_output_anx57253z1 : std_logic;
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

i_clock_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_clock_acombout);

i_reset_aclkctrl_INCLK_bus <= (gnd & gnd & gnd & i_reset_acombout);

-- Location: M4K_X52_Y28
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
	portawe => nx3163z7,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx3163z7,
	portadatain => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: M4K_X52_Y29
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
	portawe => nx54084z1,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx54084z1,
	portadatain => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X53_Y28_N6
ix3163z19324_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx40964z1 = (mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_0_aix64056z44884_aauto_generated_aq_b(3) & (!ix3163z19324_anx44952z16)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(3) & (ix3163z19324_anx44952z16 & VCC)))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_0_aix64056z44884_aauto_generated_aq_b(3) & ((ix3163z19324_anx44952z16) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(3) & (!ix3163z19324_anx44952z16))))
-- ix3163z19324_anx44952z13 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(3) & (mem_0_aix64056z44884_aauto_generated_aq_b(3) & !ix3163z19324_anx44952z16)) # (!mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_0_aix64056z44884_aauto_generated_aq_b(3)) # 
-- (!ix3163z19324_anx44952z16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(3),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(3),
	datad => VCC,
	cin => ix3163z19324_anx44952z16,
	combout => ix3163z19324_anx40964z1,
	cout => ix3163z19324_anx44952z13);

-- Location: LCCOMB_X53_Y28_N14
ix3163z19324_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx44952z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19324_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & ((ix3163z19324_anx44952z4) # (GND))))) # 
-- (!mem_0_aix64056z44884_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & (ix3163z19324_anx44952z4 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19324_anx44952z4))))
-- ix3163z19324_anx23445z2 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b(7) & ((!ix3163z19324_anx44952z4) # (!mem_aix64056z44883_aauto_generated_aq_b(7)))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(7) & (!mem_aix64056z44883_aauto_generated_aq_b(7) & 
-- !ix3163z19324_anx44952z4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(7),
	datab => mem_aix64056z44883_aauto_generated_aq_b(7),
	datad => VCC,
	cin => ix3163z19324_anx44952z4,
	combout => ix3163z19324_anx44952z1,
	cout => ix3163z19324_anx23445z2);

-- Location: M4K_X52_Y30
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
	portawe => nx3163z11,
	portbrewe => VCC,
	clk0 => i_clock_aclkctrl_outclk,
	clk1 => i_clock_aclkctrl_outclk,
	ena0 => nx3163z11,
	portadatain => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTADATAIN_bus,
	portaaddr => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTAADDR_bus,
	portbaddr => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBADDR_bus,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus);

-- Location: LCCOMB_X51_Y28_N6
ix3163z19326_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx40964z1 = (mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_1_aix64056z44885_aauto_generated_aq_b(3) & (!ix3163z19326_anx44952z16)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3) & ((ix3163z19326_anx44952z16) # (GND))))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(3) & ((mem_1_aix64056z44885_aauto_generated_aq_b(3) & (ix3163z19326_anx44952z16 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3) & (!ix3163z19326_anx44952z16))))
-- ix3163z19326_anx44952z13 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(3) & ((!ix3163z19326_anx44952z16) # (!mem_1_aix64056z44885_aauto_generated_aq_b(3)))) # (!mem_aix64056z44883_aauto_generated_aq_b(3) & (!mem_1_aix64056z44885_aauto_generated_aq_b(3) 
-- & !ix3163z19326_anx44952z16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(3),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(3),
	datad => VCC,
	cin => ix3163z19326_anx44952z16,
	combout => ix3163z19326_anx40964z1,
	cout => ix3163z19326_anx44952z13);

-- Location: LCCOMB_X51_Y28_N14
ix3163z19326_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx44952z1 = (mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19326_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & (ix3163z19326_anx44952z4 & VCC)))) # 
-- (!mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7) & ((ix3163z19326_anx44952z4) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b(7) & (!ix3163z19326_anx44952z4))))
-- ix3163z19326_anx23445z2 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(7) & (mem_aix64056z44883_aauto_generated_aq_b(7) & !ix3163z19326_anx44952z4)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(7) & ((mem_aix64056z44883_aauto_generated_aq_b(7)) # 
-- (!ix3163z19326_anx44952z4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(7),
	datab => mem_aix64056z44883_aauto_generated_aq_b(7),
	datad => VCC,
	cin => ix3163z19326_anx44952z4,
	combout => ix3163z19326_anx44952z1,
	cout => ix3163z19326_anx23445z2);

-- Location: LCCOMB_X53_Y28_N26
ix3163z52931 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z10 = (nx3163z7 & ((nx3163z11) # ((mem_0_aix64056z44884_aauto_generated_aq_b(7))))) # (!nx3163z7 & (!nx3163z11 & ((ix3163z19326_anx44952z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z7,
	datab => nx3163z11,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(7),
	datad => ix3163z19326_anx44952z1,
	combout => nx3163z10);

-- Location: LCCOMB_X53_Y28_N28
ix3163z52929 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z8 = (i_0_a & (((nx3163z10)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx44952z1 & !nx3163z10)) # (!i_1_a & ((nx3163z10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx44952z1,
	datad => nx3163z10,
	combout => nx3163z8);

-- Location: LCCOMB_X49_Y28_N0
ix3163z52949 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z42 = (i_1_a & (i_input_acombout(6))) # (!i_1_a & ((i_0_a & (i_input_acombout(6))) # (!i_0_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_input_acombout(6),
	datac => mem_1_aix64056z44885_aauto_generated_aq_b(6),
	datad => i_0_a,
	combout => nx3163z42);

-- Location: LCCOMB_X49_Y28_N26
ix3163z30599_aix45949z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z7 = nx3163z42 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_0_a,
	datad => nx3163z42,
	combout => ix3163z30599_anx45949z7);

-- Location: LCCOMB_X49_Y28_N12
ix3163z52950 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z43 = (i_0_a & (i_input_acombout(5))) # (!i_0_a & ((i_1_a & (i_input_acombout(5))) # (!i_1_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(5),
	datab => i_0_a,
	datac => i_1_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(5),
	combout => nx3163z43);

-- Location: LCCOMB_X49_Y28_N30
ix3163z30599_aix45949z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z11 = nx3163z43 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_0_a,
	datad => nx3163z43,
	combout => ix3163z30599_anx45949z11);

-- Location: LCCOMB_X47_Y28_N0
ix3163z52951 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z44 = (i_1_a & (i_input_acombout(4))) # (!i_1_a & ((i_0_a & (i_input_acombout(4))) # (!i_0_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_input_acombout(4),
	datac => i_0_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(4),
	combout => nx3163z44);

-- Location: LCCOMB_X47_Y28_N2
ix3163z30599_aix45949z52932 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z15 = nx3163z44 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datac => i_0_a,
	datad => nx3163z44,
	combout => ix3163z30599_anx45949z15);

-- Location: LCCOMB_X51_Y28_N30
ix3163z52941 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z27 = (nx3163z11 & (((nx3163z7)))) # (!nx3163z11 & ((nx3163z7 & (mem_0_aix64056z44884_aauto_generated_aq_b(3))) # (!nx3163z7 & ((ix3163z19326_anx40964z1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z11,
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(3),
	datac => nx3163z7,
	datad => ix3163z19326_anx40964z1,
	combout => nx3163z27);

-- Location: LCCOMB_X51_Y28_N24
ix3163z52940 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z25 = (i_0_a & (((nx3163z27)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx40964z1 & !nx3163z27)) # (!i_1_a & ((nx3163z27)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx40964z1,
	datad => nx3163z27,
	combout => nx3163z25);

-- Location: LCCOMB_X47_Y28_N28
ix3163z52953 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z46 = (i_1_a & (i_input_acombout(2))) # (!i_1_a & ((i_0_a & (i_input_acombout(2))) # (!i_0_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_input_acombout(2),
	datac => i_0_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(2),
	combout => nx3163z46);

-- Location: LCCOMB_X47_Y28_N30
ix3163z30599_aix45949z52936 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z23 = nx3163z46 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datac => i_0_a,
	datad => nx3163z46,
	combout => ix3163z30599_anx45949z23);

-- Location: LCCOMB_X48_Y29_N14
ix3163z52954 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z47 = (i_1_a & (i_input_acombout(1))) # (!i_1_a & ((i_0_a & (i_input_acombout(1))) # (!i_0_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(1),
	datab => i_1_a,
	datac => i_0_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(1),
	combout => nx3163z47);

-- Location: LCCOMB_X48_Y29_N16
ix3163z30599_aix45949z52938 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z27 = nx3163z47 $ (((!i_0_a & !i_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_0_a,
	datac => nx3163z47,
	datad => i_1_a,
	combout => ix3163z30599_anx45949z27);

-- Location: LCCOMB_X48_Y29_N2
ix3163z52955 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z48 = (i_1_a & (i_input_acombout(0))) # (!i_1_a & ((i_0_a & (i_input_acombout(0))) # (!i_0_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(0),
	datab => i_1_a,
	datac => i_0_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(0),
	combout => nx3163z48);

-- Location: LCCOMB_X48_Y29_N12
ix3163z30599_aix45949z52940 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z31 = nx3163z48 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_1_a,
	datac => i_0_a,
	datad => nx3163z48,
	combout => ix3163z30599_anx45949z31);

-- Location: LCCOMB_X48_Y28_N16
ix3163z30599_aix45949z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx41961z1 = (ix3163z30599_anx45949z15 & ((nx3163z21 & (ix3163z30599_anx45949z18 & VCC)) # (!nx3163z21 & (!ix3163z30599_anx45949z18)))) # (!ix3163z30599_anx45949z15 & ((nx3163z21 & (!ix3163z30599_anx45949z18)) # (!nx3163z21 & 
-- ((ix3163z30599_anx45949z18) # (GND)))))
-- ix3163z30599_anx45949z14 = CARRY((ix3163z30599_anx45949z15 & (!nx3163z21 & !ix3163z30599_anx45949z18)) # (!ix3163z30599_anx45949z15 & ((!ix3163z30599_anx45949z18) # (!nx3163z21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z15,
	datab => nx3163z21,
	datad => VCC,
	cin => ix3163z30599_anx45949z18,
	combout => ix3163z30599_anx41961z1,
	cout => ix3163z30599_anx45949z14);

-- Location: LCCOMB_X48_Y28_N22
ix3163z30599_aix45949z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx44952z1 = ((nx3163z8 $ (ix3163z30599_anx45949z3 $ (!ix3163z30599_anx45949z6)))) # (GND)
-- ix3163z30599_anx45949z2 = CARRY((nx3163z8 & ((ix3163z30599_anx45949z3) # (!ix3163z30599_anx45949z6))) # (!nx3163z8 & (ix3163z30599_anx45949z3 & !ix3163z30599_anx45949z6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z8,
	datab => ix3163z30599_anx45949z3,
	datad => VCC,
	cin => ix3163z30599_anx45949z6,
	combout => ix3163z30599_anx44952z1,
	cout => ix3163z30599_anx45949z2);

-- Location: LCCOMB_X47_Y28_N10
ix3163z60044_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx37973z1 = (i_input_acombout(0) & (ix3163z30599_anx37973z1 $ (VCC))) # (!i_input_acombout(0) & (ix3163z30599_anx37973z1 & VCC))
-- ix3163z60044_anx44952z22 = CARRY((i_input_acombout(0) & ix3163z30599_anx37973z1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(0),
	datab => ix3163z30599_anx37973z1,
	datad => VCC,
	combout => ix3163z60044_anx37973z1,
	cout => ix3163z60044_anx44952z22);

-- Location: LCCOMB_X47_Y28_N22
ix3163z60044_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx43955z1 = ((i_input_acombout(6) $ (ix3163z30599_anx43955z1 $ (!ix3163z60044_anx44952z7)))) # (GND)
-- ix3163z60044_anx44952z4 = CARRY((i_input_acombout(6) & ((ix3163z30599_anx43955z1) # (!ix3163z60044_anx44952z7))) # (!i_input_acombout(6) & (ix3163z30599_anx43955z1 & !ix3163z60044_anx44952z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(6),
	datab => ix3163z30599_anx43955z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z7,
	combout => ix3163z60044_anx43955z1,
	cout => ix3163z60044_anx44952z4);

-- Location: LCCOMB_X48_Y28_N24
ix3163z30599_aix45949z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z1 = ix3163z30599_anx45949z2 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i_1_a,
	datad => i_0_a,
	cin => ix3163z30599_anx45949z2,
	combout => ix3163z30599_anx45949z1);

-- Location: LCCOMB_X49_Y28_N4
ix3163z52961 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z68 = ix3163z30599_anx45949z1 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datab => i_0_a,
	datad => ix3163z30599_anx45949z1,
	combout => nx3163z68);

-- Location: LCFF_X46_Y27_N7
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

-- Location: LCFF_X46_Y27_N11
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

-- Location: LCFF_X46_Y27_N13
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

-- Location: LCCOMB_X48_Y29_N28
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

-- Location: LCCOMB_X48_Y29_N24
ix13246z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx13246z1 = y_pos_2_a $ (((y_pos_0_a & y_pos_1_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_0_a,
	datac => y_pos_2_a,
	datad => y_pos_1_a,
	combout => nx13246z1);

-- Location: LCCOMB_X51_Y29_N22
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

-- Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X51_Y29_N23
modgen_counter_x_pos_reg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => x_pos_0_a_wirecell_combout,
	aclr => nx53066z2,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_0_a);

-- Location: LCCOMB_X51_Y29_N12
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

-- Location: LCFF_X51_Y29_N13
modgen_counter_x_pos_reg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx45976z1,
	aclr => nx53066z2,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_1_a);

-- Location: LCCOMB_X51_Y29_N2
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

-- Location: LCFF_X51_Y29_N3
modgen_counter_x_pos_reg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx44979z1,
	aclr => nx53066z2,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_2_a);

-- Location: LCCOMB_X51_Y29_N24
ix15240z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx15240z2 = (x_pos_0_a & x_pos_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => x_pos_0_a,
	datad => x_pos_1_a,
	combout => nx15240z2);

-- Location: LCCOMB_X51_Y29_N16
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

-- Location: LCFF_X51_Y29_N17
modgen_counter_x_pos_reg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx43982z1,
	aclr => nx53066z2,
	ena => i_valid_acombout,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => x_pos_3_a);

-- Location: LCCOMB_X48_Y29_N10
ix15240z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx15240z1 = (i_valid_acombout & (x_pos_2_a & (nx15240z2 & x_pos_3_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => x_pos_2_a,
	datac => nx15240z2,
	datad => x_pos_3_a,
	combout => nx15240z1);

-- Location: LCFF_X48_Y29_N25
modgen_counter_y_pos_reg_q_2_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx13246z1,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_2_a);

-- Location: LCCOMB_X48_Y29_N22
ix35397z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx35397z2 = (y_pos_0_a & (y_pos_2_a & y_pos_1_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_0_a,
	datac => y_pos_2_a,
	datad => y_pos_1_a,
	combout => nx35397z2);

-- Location: LCCOMB_X48_Y29_N30
ix35397z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx35397z1 = (end_of_input) # ((y_pos_3_a & (nx35397z2 & nx15240z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_pos_3_a,
	datab => nx35397z2,
	datac => end_of_input,
	datad => nx15240z1,
	combout => nx35397z1);

-- Location: LCFF_X48_Y29_N31
reg_end_of_input : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx35397z1,
	aclr => nx53066z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => end_of_input);

-- Location: LCCOMB_X48_Y29_N8
ix53066z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx53066z2 = (i_reset_acombout) # (end_of_input)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_reset_acombout,
	datad => end_of_input,
	combout => nx53066z2);

-- Location: LCFF_X48_Y29_N29
modgen_counter_y_pos_reg_q_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => y_pos_0_a_wirecell_combout,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_0_a);

-- Location: LCCOMB_X48_Y29_N18
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

-- Location: LCFF_X48_Y29_N19
modgen_counter_y_pos_reg_q_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx14243z1,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_1_a);

-- Location: LCCOMB_X48_Y29_N6
ix12249z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx12249z1 = y_pos_3_a $ (((y_pos_2_a & (y_pos_0_a & y_pos_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => y_pos_2_a,
	datab => y_pos_0_a,
	datac => y_pos_3_a,
	datad => y_pos_1_a,
	combout => nx12249z1);

-- Location: LCFF_X48_Y29_N7
modgen_counter_y_pos_reg_q_3_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx12249z1,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => y_pos_3_a);

-- Location: LCCOMB_X48_Y29_N20
ix3163z52964 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z75 = (y_pos_1_a) # ((y_pos_2_a) # (y_pos_3_a))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => y_pos_1_a,
	datac => y_pos_2_a,
	datad => y_pos_3_a,
	combout => nx3163z75);

-- Location: LCCOMB_X48_Y29_N0
ix53066z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx53066z1 = (nx3163z2) # (i_valid_acombout)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => nx3163z2,
	datad => i_valid_acombout,
	combout => nx53066z1);

-- Location: LCFF_X48_Y29_N1
reg_new_number_set : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx53066z1,
	aclr => nx53066z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx3163z2);

-- Location: LCCOMB_X48_Y29_N4
ix53087z52923 : cycloneii_lcell_comb
-- Equation(s):
-- NOT_i_7n5s2_1_a = i_0_a $ (!i_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i_0_a,
	datad => i_1_a,
	combout => NOT_i_7n5s2_1_a);

-- Location: LCFF_X48_Y29_N5
reg_i_0_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => NOT_i_7n5s2_1_a,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_0_a);

-- Location: LCCOMB_X48_Y29_N26
ix54084z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx54084z1 = (i_0_a & !i_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_0_a,
	datac => i_1_a,
	combout => nx54084z1);

-- Location: LCFF_X48_Y29_N27
reg_i_1_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	datain => nx54084z1,
	aclr => nx53066z2,
	ena => nx15240z1,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => i_1_a);

-- Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_D19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X53_Y28_N24
ix3163z52928 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z7 = (!i_0_a & !i_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_0_a,
	datad => i_1_a,
	combout => nx3163z7);

-- Location: LCCOMB_X53_Y28_N0
ix3163z19324_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx37973z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(0) & (mem_aix64056z44883_aauto_generated_aq_b(0) $ (VCC))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(0) & ((mem_aix64056z44883_aauto_generated_aq_b(0)) # (GND)))
-- ix3163z19324_anx44952z22 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(0)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(0),
	datab => mem_aix64056z44883_aauto_generated_aq_b(0),
	datad => VCC,
	combout => ix3163z19324_anx37973z1,
	cout => ix3163z19324_anx44952z22);

-- Location: LCCOMB_X53_Y28_N2
ix3163z19324_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx38970z1 = (mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19324_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & ((ix3163z19324_anx44952z22) # (GND))))) # 
-- (!mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (ix3163z19324_anx44952z22 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19324_anx44952z22))))
-- ix3163z19324_anx44952z19 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b(1) & ((!ix3163z19324_anx44952z22) # (!mem_aix64056z44883_aauto_generated_aq_b(1)))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(1) & (!mem_aix64056z44883_aauto_generated_aq_b(1) 
-- & !ix3163z19324_anx44952z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(1),
	datab => mem_aix64056z44883_aauto_generated_aq_b(1),
	datad => VCC,
	cin => ix3163z19324_anx44952z22,
	combout => ix3163z19324_anx38970z1,
	cout => ix3163z19324_anx44952z19);

-- Location: LCCOMB_X53_Y28_N4
ix3163z19324_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx39967z1 = ((mem_aix64056z44883_aauto_generated_aq_b(2) $ (mem_0_aix64056z44884_aauto_generated_aq_b(2) $ (ix3163z19324_anx44952z19)))) # (GND)
-- ix3163z19324_anx44952z16 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(2) & ((!ix3163z19324_anx44952z19) # (!mem_0_aix64056z44884_aauto_generated_aq_b(2)))) # (!mem_aix64056z44883_aauto_generated_aq_b(2) & (!mem_0_aix64056z44884_aauto_generated_aq_b(2) 
-- & !ix3163z19324_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(2),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(2),
	datad => VCC,
	cin => ix3163z19324_anx44952z19,
	combout => ix3163z19324_anx39967z1,
	cout => ix3163z19324_anx44952z16);

-- Location: LCCOMB_X53_Y28_N8
ix3163z19324_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx41961z1 = ((mem_0_aix64056z44884_aauto_generated_aq_b(4) $ (mem_aix64056z44883_aauto_generated_aq_b(4) $ (ix3163z19324_anx44952z13)))) # (GND)
-- ix3163z19324_anx44952z10 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b(4) & (mem_aix64056z44883_aauto_generated_aq_b(4) & !ix3163z19324_anx44952z13)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(4) & ((mem_aix64056z44883_aauto_generated_aq_b(4)) # 
-- (!ix3163z19324_anx44952z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_0_aix64056z44884_aauto_generated_aq_b(4),
	datab => mem_aix64056z44883_aauto_generated_aq_b(4),
	datad => VCC,
	cin => ix3163z19324_anx44952z13,
	combout => ix3163z19324_anx41961z1,
	cout => ix3163z19324_anx44952z10);

-- Location: LCCOMB_X53_Y28_N10
ix3163z19324_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5) & (!ix3163z19324_anx44952z10)) # (!mem_0_aix64056z44884_aauto_generated_aq_b(5) & (ix3163z19324_anx44952z10 & VCC)))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5) & ((ix3163z19324_anx44952z10) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b(5) & (!ix3163z19324_anx44952z10))))
-- ix3163z19324_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(5) & (mem_0_aix64056z44884_aauto_generated_aq_b(5) & !ix3163z19324_anx44952z10)) # (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_0_aix64056z44884_aauto_generated_aq_b(5)) # 
-- (!ix3163z19324_anx44952z10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(5),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(5),
	datad => VCC,
	cin => ix3163z19324_anx44952z10,
	combout => ix3163z19324_anx42958z1,
	cout => ix3163z19324_anx44952z7);

-- Location: LCCOMB_X53_Y28_N12
ix3163z19324_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b(6) $ (mem_0_aix64056z44884_aauto_generated_aq_b(6) $ (ix3163z19324_anx44952z7)))) # (GND)
-- ix3163z19324_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(6) & ((!ix3163z19324_anx44952z7) # (!mem_0_aix64056z44884_aauto_generated_aq_b(6)))) # (!mem_aix64056z44883_aauto_generated_aq_b(6) & (!mem_0_aix64056z44884_aauto_generated_aq_b(6) & 
-- !ix3163z19324_anx44952z7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(6),
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(6),
	datad => VCC,
	cin => ix3163z19324_anx44952z7,
	combout => ix3163z19324_anx43955z1,
	cout => ix3163z19324_anx44952z4);

-- Location: LCCOMB_X53_Y28_N30
ix3163z52932 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z11 = (!i_0_a & i_1_a)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_0_a,
	datad => i_1_a,
	combout => nx3163z11);

-- Location: LCCOMB_X51_Y28_N0
ix3163z19326_aix44952z52931 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx37973z1 = (mem_aix64056z44883_aauto_generated_aq_b(0) & (mem_1_aix64056z44885_aauto_generated_aq_b(0) $ (VCC))) # (!mem_aix64056z44883_aauto_generated_aq_b(0) & ((mem_1_aix64056z44885_aauto_generated_aq_b(0)) # (GND)))
-- ix3163z19326_anx44952z22 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(0)) # (!mem_aix64056z44883_aauto_generated_aq_b(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(0),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(0),
	datad => VCC,
	combout => ix3163z19326_anx37973z1,
	cout => ix3163z19326_anx44952z22);

-- Location: LCCOMB_X51_Y28_N2
ix3163z19326_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx38970z1 = (mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19326_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (ix3163z19326_anx44952z22 & VCC)))) # 
-- (!mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1) & ((ix3163z19326_anx44952z22) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b(1) & (!ix3163z19326_anx44952z22))))
-- ix3163z19326_anx44952z19 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(1) & (mem_aix64056z44883_aauto_generated_aq_b(1) & !ix3163z19326_anx44952z22)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(1) & ((mem_aix64056z44883_aauto_generated_aq_b(1)) # 
-- (!ix3163z19326_anx44952z22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(1),
	datab => mem_aix64056z44883_aauto_generated_aq_b(1),
	datad => VCC,
	cin => ix3163z19326_anx44952z22,
	combout => ix3163z19326_anx38970z1,
	cout => ix3163z19326_anx44952z19);

-- Location: LCCOMB_X51_Y28_N4
ix3163z19326_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx39967z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b(2) $ (mem_aix64056z44883_aauto_generated_aq_b(2) $ (ix3163z19326_anx44952z19)))) # (GND)
-- ix3163z19326_anx44952z16 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(2) & ((!ix3163z19326_anx44952z19) # (!mem_aix64056z44883_aauto_generated_aq_b(2)))) # (!mem_1_aix64056z44885_aauto_generated_aq_b(2) & (!mem_aix64056z44883_aauto_generated_aq_b(2) 
-- & !ix3163z19326_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(2),
	datab => mem_aix64056z44883_aauto_generated_aq_b(2),
	datad => VCC,
	cin => ix3163z19326_anx44952z19,
	combout => ix3163z19326_anx39967z1,
	cout => ix3163z19326_anx44952z16);

-- Location: LCCOMB_X51_Y28_N8
ix3163z19326_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx41961z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b(4) $ (mem_aix64056z44883_aauto_generated_aq_b(4) $ (ix3163z19326_anx44952z13)))) # (GND)
-- ix3163z19326_anx44952z10 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b(4) & ((!ix3163z19326_anx44952z13) # (!mem_aix64056z44883_aauto_generated_aq_b(4)))) # (!mem_1_aix64056z44885_aauto_generated_aq_b(4) & (!mem_aix64056z44883_aauto_generated_aq_b(4) 
-- & !ix3163z19326_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(4),
	datab => mem_aix64056z44883_aauto_generated_aq_b(4),
	datad => VCC,
	cin => ix3163z19326_anx44952z13,
	combout => ix3163z19326_anx41961z1,
	cout => ix3163z19326_anx44952z10);

-- Location: LCCOMB_X51_Y28_N10
ix3163z19326_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_1_aix64056z44885_aauto_generated_aq_b(5) & (!ix3163z19326_anx44952z10)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5) & ((ix3163z19326_anx44952z10) # (GND))))) # 
-- (!mem_aix64056z44883_aauto_generated_aq_b(5) & ((mem_1_aix64056z44885_aauto_generated_aq_b(5) & (ix3163z19326_anx44952z10 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5) & (!ix3163z19326_anx44952z10))))
-- ix3163z19326_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(5) & ((!ix3163z19326_anx44952z10) # (!mem_1_aix64056z44885_aauto_generated_aq_b(5)))) # (!mem_aix64056z44883_aauto_generated_aq_b(5) & (!mem_1_aix64056z44885_aauto_generated_aq_b(5) 
-- & !ix3163z19326_anx44952z10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(5),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(5),
	datad => VCC,
	cin => ix3163z19326_anx44952z10,
	combout => ix3163z19326_anx42958z1,
	cout => ix3163z19326_anx44952z7);

-- Location: LCCOMB_X51_Y28_N12
ix3163z19326_aix44952z52925 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b(6) $ (mem_1_aix64056z44885_aauto_generated_aq_b(6) $ (ix3163z19326_anx44952z7)))) # (GND)
-- ix3163z19326_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b(6) & (mem_1_aix64056z44885_aauto_generated_aq_b(6) & !ix3163z19326_anx44952z7)) # (!mem_aix64056z44883_aauto_generated_aq_b(6) & ((mem_1_aix64056z44885_aauto_generated_aq_b(6)) # 
-- (!ix3163z19326_anx44952z7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => mem_aix64056z44883_aauto_generated_aq_b(6),
	datab => mem_1_aix64056z44885_aauto_generated_aq_b(6),
	datad => VCC,
	cin => ix3163z19326_anx44952z7,
	combout => ix3163z19326_anx43955z1,
	cout => ix3163z19326_anx44952z4);

-- Location: LCCOMB_X48_Y28_N0
ix3163z52935 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z15 = (nx3163z11 & (nx3163z7)) # (!nx3163z11 & ((nx3163z7 & (mem_0_aix64056z44884_aauto_generated_aq_b(6))) # (!nx3163z7 & ((ix3163z19326_anx43955z1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z11,
	datab => nx3163z7,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(6),
	datad => ix3163z19326_anx43955z1,
	combout => nx3163z15);

-- Location: LCCOMB_X48_Y28_N2
ix3163z52934 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z13 = (i_0_a & (((nx3163z15)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx43955z1 & !nx3163z15)) # (!i_1_a & ((nx3163z15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx43955z1,
	datad => nx3163z15,
	combout => nx3163z13);

-- Location: LCCOMB_X48_Y28_N28
ix3163z52937 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z19 = (nx3163z11 & (nx3163z7)) # (!nx3163z11 & ((nx3163z7 & (mem_0_aix64056z44884_aauto_generated_aq_b(5))) # (!nx3163z7 & ((ix3163z19326_anx42958z1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z11,
	datab => nx3163z7,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(5),
	datad => ix3163z19326_anx42958z1,
	combout => nx3163z19);

-- Location: LCCOMB_X48_Y28_N26
ix3163z52936 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z17 = (i_0_a & (((nx3163z19)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx42958z1 & !nx3163z19)) # (!i_1_a & ((nx3163z19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx42958z1,
	datad => nx3163z19,
	combout => nx3163z17);

-- Location: LCCOMB_X51_Y28_N18
ix3163z52939 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z23 = (nx3163z11 & (nx3163z7)) # (!nx3163z11 & ((nx3163z7 & ((mem_0_aix64056z44884_aauto_generated_aq_b(4)))) # (!nx3163z7 & (ix3163z19326_anx41961z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z11,
	datab => nx3163z7,
	datac => ix3163z19326_anx41961z1,
	datad => mem_0_aix64056z44884_aauto_generated_aq_b(4),
	combout => nx3163z23);

-- Location: LCCOMB_X51_Y28_N28
ix3163z52938 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z21 = (i_0_a & (((nx3163z23)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx41961z1 & !nx3163z23)) # (!i_1_a & ((nx3163z23)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx41961z1,
	datad => nx3163z23,
	combout => nx3163z21);

-- Location: LCCOMB_X49_Y28_N24
ix3163z52952 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z45 = (i_0_a & (i_input_acombout(3))) # (!i_0_a & ((i_1_a & (i_input_acombout(3))) # (!i_1_a & ((mem_1_aix64056z44885_aauto_generated_aq_b(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_input_acombout(3),
	datac => i_1_a,
	datad => mem_1_aix64056z44885_aauto_generated_aq_b(3),
	combout => nx3163z45);

-- Location: LCCOMB_X49_Y28_N10
ix3163z30599_aix45949z52934 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z19 = nx3163z45 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_1_a,
	datac => nx3163z45,
	datad => i_0_a,
	combout => ix3163z30599_anx45949z19);

-- Location: LCCOMB_X51_Y28_N26
ix3163z52943 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z31 = (nx3163z11 & (nx3163z7)) # (!nx3163z11 & ((nx3163z7 & ((mem_0_aix64056z44884_aauto_generated_aq_b(2)))) # (!nx3163z7 & (ix3163z19326_anx39967z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z11,
	datab => nx3163z7,
	datac => ix3163z19326_anx39967z1,
	datad => mem_0_aix64056z44884_aauto_generated_aq_b(2),
	combout => nx3163z31);

-- Location: LCCOMB_X51_Y28_N20
ix3163z52942 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z29 = (i_0_a & (((nx3163z31)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx39967z1 & !nx3163z31)) # (!i_1_a & ((nx3163z31)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx39967z1,
	datad => nx3163z31,
	combout => nx3163z29);

-- Location: LCCOMB_X51_Y28_N22
ix3163z52945 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z35 = (nx3163z7 & ((mem_0_aix64056z44884_aauto_generated_aq_b(1)) # ((nx3163z11)))) # (!nx3163z7 & (((!nx3163z11 & ix3163z19326_anx38970z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z7,
	datab => mem_0_aix64056z44884_aauto_generated_aq_b(1),
	datac => nx3163z11,
	datad => ix3163z19326_anx38970z1,
	combout => nx3163z35);

-- Location: LCCOMB_X48_Y28_N4
ix3163z52944 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z33 = (i_0_a & (((nx3163z35)))) # (!i_0_a & ((i_1_a & (!nx3163z35 & ix3163z19324_anx38970z1)) # (!i_1_a & (nx3163z35))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => nx3163z35,
	datad => ix3163z19324_anx38970z1,
	combout => nx3163z33);

-- Location: LCCOMB_X53_Y28_N22
ix3163z52947 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z39 = (nx3163z7 & ((nx3163z11) # ((mem_0_aix64056z44884_aauto_generated_aq_b(0))))) # (!nx3163z7 & (!nx3163z11 & ((ix3163z19326_anx37973z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z7,
	datab => nx3163z11,
	datac => mem_0_aix64056z44884_aauto_generated_aq_b(0),
	datad => ix3163z19326_anx37973z1,
	combout => nx3163z39);

-- Location: LCCOMB_X48_Y28_N30
ix3163z52946 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z37 = (i_0_a & (((nx3163z39)))) # (!i_0_a & ((i_1_a & (ix3163z19324_anx37973z1 & !nx3163z39)) # (!i_1_a & ((nx3163z39)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19324_anx37973z1,
	datad => nx3163z39,
	combout => nx3163z37);

-- Location: LCCOMB_X48_Y28_N6
ix3163z30599_aix45949z52941 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z34 = CARRY(nx3163z7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx3163z7,
	datad => VCC,
	cout => ix3163z30599_anx45949z34);

-- Location: LCCOMB_X48_Y28_N8
ix3163z30599_aix45949z52939 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx37973z1 = (ix3163z30599_anx45949z31 & ((nx3163z37 & (ix3163z30599_anx45949z34 & VCC)) # (!nx3163z37 & (!ix3163z30599_anx45949z34)))) # (!ix3163z30599_anx45949z31 & ((nx3163z37 & (!ix3163z30599_anx45949z34)) # (!nx3163z37 & 
-- ((ix3163z30599_anx45949z34) # (GND)))))
-- ix3163z30599_anx45949z30 = CARRY((ix3163z30599_anx45949z31 & (!nx3163z37 & !ix3163z30599_anx45949z34)) # (!ix3163z30599_anx45949z31 & ((!ix3163z30599_anx45949z34) # (!nx3163z37))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z31,
	datab => nx3163z37,
	datad => VCC,
	cin => ix3163z30599_anx45949z34,
	combout => ix3163z30599_anx37973z1,
	cout => ix3163z30599_anx45949z30);

-- Location: LCCOMB_X48_Y28_N10
ix3163z30599_aix45949z52937 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx38970z1 = ((ix3163z30599_anx45949z27 $ (nx3163z33 $ (!ix3163z30599_anx45949z30)))) # (GND)
-- ix3163z30599_anx45949z26 = CARRY((ix3163z30599_anx45949z27 & ((nx3163z33) # (!ix3163z30599_anx45949z30))) # (!ix3163z30599_anx45949z27 & (nx3163z33 & !ix3163z30599_anx45949z30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z27,
	datab => nx3163z33,
	datad => VCC,
	cin => ix3163z30599_anx45949z30,
	combout => ix3163z30599_anx38970z1,
	cout => ix3163z30599_anx45949z26);

-- Location: LCCOMB_X48_Y28_N12
ix3163z30599_aix45949z52935 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx39967z1 = (ix3163z30599_anx45949z23 & ((nx3163z29 & (ix3163z30599_anx45949z26 & VCC)) # (!nx3163z29 & (!ix3163z30599_anx45949z26)))) # (!ix3163z30599_anx45949z23 & ((nx3163z29 & (!ix3163z30599_anx45949z26)) # (!nx3163z29 & 
-- ((ix3163z30599_anx45949z26) # (GND)))))
-- ix3163z30599_anx45949z22 = CARRY((ix3163z30599_anx45949z23 & (!nx3163z29 & !ix3163z30599_anx45949z26)) # (!ix3163z30599_anx45949z23 & ((!ix3163z30599_anx45949z26) # (!nx3163z29))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z23,
	datab => nx3163z29,
	datad => VCC,
	cin => ix3163z30599_anx45949z26,
	combout => ix3163z30599_anx39967z1,
	cout => ix3163z30599_anx45949z22);

-- Location: LCCOMB_X48_Y28_N14
ix3163z30599_aix45949z52933 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx40964z1 = ((nx3163z25 $ (ix3163z30599_anx45949z19 $ (!ix3163z30599_anx45949z22)))) # (GND)
-- ix3163z30599_anx45949z18 = CARRY((nx3163z25 & ((ix3163z30599_anx45949z19) # (!ix3163z30599_anx45949z22))) # (!nx3163z25 & (ix3163z30599_anx45949z19 & !ix3163z30599_anx45949z22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z25,
	datab => ix3163z30599_anx45949z19,
	datad => VCC,
	cin => ix3163z30599_anx45949z22,
	combout => ix3163z30599_anx40964z1,
	cout => ix3163z30599_anx45949z18);

-- Location: LCCOMB_X48_Y28_N18
ix3163z30599_aix45949z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx42958z1 = ((ix3163z30599_anx45949z11 $ (nx3163z17 $ (!ix3163z30599_anx45949z14)))) # (GND)
-- ix3163z30599_anx45949z10 = CARRY((ix3163z30599_anx45949z11 & ((nx3163z17) # (!ix3163z30599_anx45949z14))) # (!ix3163z30599_anx45949z11 & (nx3163z17 & !ix3163z30599_anx45949z14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z11,
	datab => nx3163z17,
	datad => VCC,
	cin => ix3163z30599_anx45949z14,
	combout => ix3163z30599_anx42958z1,
	cout => ix3163z30599_anx45949z10);

-- Location: LCCOMB_X48_Y28_N20
ix3163z30599_aix45949z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx43955z1 = (ix3163z30599_anx45949z7 & ((nx3163z13 & (ix3163z30599_anx45949z10 & VCC)) # (!nx3163z13 & (!ix3163z30599_anx45949z10)))) # (!ix3163z30599_anx45949z7 & ((nx3163z13 & (!ix3163z30599_anx45949z10)) # (!nx3163z13 & 
-- ((ix3163z30599_anx45949z10) # (GND)))))
-- ix3163z30599_anx45949z6 = CARRY((ix3163z30599_anx45949z7 & (!nx3163z13 & !ix3163z30599_anx45949z10)) # (!ix3163z30599_anx45949z7 & ((!ix3163z30599_anx45949z10) # (!nx3163z13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx45949z7,
	datab => nx3163z13,
	datad => VCC,
	cin => ix3163z30599_anx45949z10,
	combout => ix3163z30599_anx43955z1,
	cout => ix3163z30599_anx45949z6);

-- Location: LCCOMB_X53_Y28_N18
ix3163z52948 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z41 = (i_0_a & (((i_input_acombout(7))))) # (!i_0_a & ((i_1_a & ((i_input_acombout(7)))) # (!i_1_a & (mem_1_aix64056z44885_aauto_generated_aq_b(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => mem_1_aix64056z44885_aauto_generated_aq_b(7),
	datab => i_0_a,
	datac => i_input_acombout(7),
	datad => i_1_a,
	combout => nx3163z41);

-- Location: LCCOMB_X53_Y28_N20
ix3163z30599_aix45949z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z30599_anx45949z3 = nx3163z41 $ (((!i_1_a & !i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i_1_a,
	datac => i_0_a,
	datad => nx3163z41,
	combout => ix3163z30599_anx45949z3);

-- Location: LCCOMB_X47_Y28_N8
ix3163z52926 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z5 = (!ix3163z30599_anx41961z1 & (!ix3163z30599_anx43955z1 & (!ix3163z30599_anx44952z1 & !ix3163z30599_anx42958z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx41961z1,
	datab => ix3163z30599_anx43955z1,
	datac => ix3163z30599_anx44952z1,
	datad => ix3163z30599_anx42958z1,
	combout => nx3163z5);

-- Location: LCCOMB_X47_Y28_N4
ix3163z52956 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z52 = (!ix3163z30599_anx39967z1 & (!ix3163z30599_anx37973z1 & (!ix3163z30599_anx40964z1 & !ix3163z30599_anx38970z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx39967z1,
	datab => ix3163z30599_anx37973z1,
	datac => ix3163z30599_anx40964z1,
	datad => ix3163z30599_anx38970z1,
	combout => nx3163z52);

-- Location: LCCOMB_X46_Y29_N30
ix3163z52925 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z4 = (nx3163z5 & (nx3163z52 & (i_0_a $ (i_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => nx3163z5,
	datad => nx3163z52,
	combout => nx3163z4);

-- Location: LCCOMB_X51_Y28_N16
ix3163z19326_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19326_anx23445z1 = !ix3163z19326_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z19326_anx23445z2,
	combout => ix3163z19326_anx23445z1);

-- Location: LCCOMB_X47_Y28_N12
ix3163z60044_aix44952z52930 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx38970z1 = (i_input_acombout(1) & ((ix3163z30599_anx38970z1 & (ix3163z60044_anx44952z22 & VCC)) # (!ix3163z30599_anx38970z1 & (!ix3163z60044_anx44952z22)))) # (!i_input_acombout(1) & ((ix3163z30599_anx38970z1 & (!ix3163z60044_anx44952z22)) 
-- # (!ix3163z30599_anx38970z1 & ((ix3163z60044_anx44952z22) # (GND)))))
-- ix3163z60044_anx44952z19 = CARRY((i_input_acombout(1) & (!ix3163z30599_anx38970z1 & !ix3163z60044_anx44952z22)) # (!i_input_acombout(1) & ((!ix3163z60044_anx44952z22) # (!ix3163z30599_anx38970z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(1),
	datab => ix3163z30599_anx38970z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z22,
	combout => ix3163z60044_anx38970z1,
	cout => ix3163z60044_anx44952z19);

-- Location: LCCOMB_X47_Y28_N14
ix3163z60044_aix44952z52929 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx39967z1 = ((i_input_acombout(2) $ (ix3163z30599_anx39967z1 $ (!ix3163z60044_anx44952z19)))) # (GND)
-- ix3163z60044_anx44952z16 = CARRY((i_input_acombout(2) & ((ix3163z30599_anx39967z1) # (!ix3163z60044_anx44952z19))) # (!i_input_acombout(2) & (ix3163z30599_anx39967z1 & !ix3163z60044_anx44952z19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(2),
	datab => ix3163z30599_anx39967z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z19,
	combout => ix3163z60044_anx39967z1,
	cout => ix3163z60044_anx44952z16);

-- Location: LCCOMB_X47_Y28_N16
ix3163z60044_aix44952z52928 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx40964z1 = (i_input_acombout(3) & ((ix3163z30599_anx40964z1 & (ix3163z60044_anx44952z16 & VCC)) # (!ix3163z30599_anx40964z1 & (!ix3163z60044_anx44952z16)))) # (!i_input_acombout(3) & ((ix3163z30599_anx40964z1 & (!ix3163z60044_anx44952z16)) 
-- # (!ix3163z30599_anx40964z1 & ((ix3163z60044_anx44952z16) # (GND)))))
-- ix3163z60044_anx44952z13 = CARRY((i_input_acombout(3) & (!ix3163z30599_anx40964z1 & !ix3163z60044_anx44952z16)) # (!i_input_acombout(3) & ((!ix3163z60044_anx44952z16) # (!ix3163z30599_anx40964z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(3),
	datab => ix3163z30599_anx40964z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z16,
	combout => ix3163z60044_anx40964z1,
	cout => ix3163z60044_anx44952z13);

-- Location: LCCOMB_X47_Y28_N18
ix3163z60044_aix44952z52927 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx41961z1 = ((ix3163z30599_anx41961z1 $ (i_input_acombout(4) $ (!ix3163z60044_anx44952z13)))) # (GND)
-- ix3163z60044_anx44952z10 = CARRY((ix3163z30599_anx41961z1 & ((i_input_acombout(4)) # (!ix3163z60044_anx44952z13))) # (!ix3163z30599_anx41961z1 & (i_input_acombout(4) & !ix3163z60044_anx44952z13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z30599_anx41961z1,
	datab => i_input_acombout(4),
	datad => VCC,
	cin => ix3163z60044_anx44952z13,
	combout => ix3163z60044_anx41961z1,
	cout => ix3163z60044_anx44952z10);

-- Location: LCCOMB_X47_Y28_N20
ix3163z60044_aix44952z52926 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx42958z1 = (i_input_acombout(5) & ((ix3163z30599_anx42958z1 & (ix3163z60044_anx44952z10 & VCC)) # (!ix3163z30599_anx42958z1 & (!ix3163z60044_anx44952z10)))) # (!i_input_acombout(5) & ((ix3163z30599_anx42958z1 & (!ix3163z60044_anx44952z10)) 
-- # (!ix3163z30599_anx42958z1 & ((ix3163z60044_anx44952z10) # (GND)))))
-- ix3163z60044_anx44952z7 = CARRY((i_input_acombout(5) & (!ix3163z30599_anx42958z1 & !ix3163z60044_anx44952z10)) # (!i_input_acombout(5) & ((!ix3163z60044_anx44952z10) # (!ix3163z30599_anx42958z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(5),
	datab => ix3163z30599_anx42958z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z10,
	combout => ix3163z60044_anx42958z1,
	cout => ix3163z60044_anx44952z7);

-- Location: LCCOMB_X47_Y28_N24
ix3163z60044_aix44952z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx44952z1 = (i_input_acombout(7) & ((ix3163z30599_anx44952z1 & (ix3163z60044_anx44952z4 & VCC)) # (!ix3163z30599_anx44952z1 & (!ix3163z60044_anx44952z4)))) # (!i_input_acombout(7) & ((ix3163z30599_anx44952z1 & (!ix3163z60044_anx44952z4)) # 
-- (!ix3163z30599_anx44952z1 & ((ix3163z60044_anx44952z4) # (GND)))))
-- ix3163z60044_anx23445z2 = CARRY((i_input_acombout(7) & (!ix3163z30599_anx44952z1 & !ix3163z60044_anx44952z4)) # (!i_input_acombout(7) & ((!ix3163z60044_anx44952z4) # (!ix3163z30599_anx44952z1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i_input_acombout(7),
	datab => ix3163z30599_anx44952z1,
	datad => VCC,
	cin => ix3163z60044_anx44952z4,
	combout => ix3163z60044_anx44952z1,
	cout => ix3163z60044_anx23445z2);

-- Location: LCCOMB_X47_Y28_N26
ix3163z60044_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z60044_anx23445z1 = !ix3163z60044_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z60044_anx23445z2,
	combout => ix3163z60044_anx23445z1);

-- Location: LCCOMB_X53_Y28_N16
ix3163z19324_aix23445z52923 : cycloneii_lcell_comb
-- Equation(s):
-- ix3163z19324_anx23445z1 = !ix3163z19324_anx23445z2

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => ix3163z19324_anx23445z2,
	combout => ix3163z19324_anx23445z1);

-- Location: LCCOMB_X46_Y29_N12
ix3163z52963 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z72 = (i_0_a) # ((i_1_a & ((ix3163z19324_anx23445z1))) # (!i_1_a & (ix3163z60044_anx23445z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z60044_anx23445z1,
	datad => ix3163z19324_anx23445z1,
	combout => nx3163z72);

-- Location: LCCOMB_X46_Y29_N14
ix3163z52962 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z70 = (nx3163z72 & (((i_1_a) # (ix3163z19326_anx23445z1)) # (!i_0_a)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => ix3163z19326_anx23445z1,
	datad => nx3163z72,
	combout => nx3163z70);

-- Location: LCCOMB_X46_Y29_N16
ix3163z52958 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z58 = (!ix3163z60044_anx43955z1 & (!ix3163z60044_anx44952z1 & (!ix3163z60044_anx41961z1 & !ix3163z60044_anx42958z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z60044_anx43955z1,
	datab => ix3163z60044_anx44952z1,
	datac => ix3163z60044_anx41961z1,
	datad => ix3163z60044_anx42958z1,
	combout => nx3163z58);

-- Location: LCCOMB_X47_Y28_N6
ix3163z52960 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z63 = (!ix3163z60044_anx37973z1 & (!ix3163z60044_anx39967z1 & (!ix3163z60044_anx40964z1 & !ix3163z60044_anx38970z1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => ix3163z60044_anx37973z1,
	datab => ix3163z60044_anx39967z1,
	datac => ix3163z60044_anx40964z1,
	datad => ix3163z60044_anx38970z1,
	combout => nx3163z63);

-- Location: LCCOMB_X46_Y29_N2
ix3163z52957 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z57 = (nx3163z58 & (nx3163z63 & (i_0_a $ (!i_1_a))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_0_a,
	datab => i_1_a,
	datac => nx3163z58,
	datad => nx3163z63,
	combout => nx3163z57);

-- Location: LCCOMB_X46_Y29_N0
ix3163z52924 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z3 = (nx3163z68) # ((nx3163z4) # ((nx3163z70) # (nx3163z57)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => nx3163z68,
	datab => nx3163z4,
	datac => nx3163z70,
	datad => nx3163z57,
	combout => nx3163z3);

-- Location: LCCOMB_X46_Y29_N18
ix3163z52965 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z76 = (!nx3163z2 & ((!nx3163z3) # (!nx3163z75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx3163z75,
	datac => nx3163z2,
	datad => nx3163z3,
	combout => nx3163z76);

-- Location: LCCOMB_X46_Y29_N20
ix3163z52923 : cycloneii_lcell_comb
-- Equation(s):
-- nx3163z1 = (i_valid_acombout & (((nx3163z3) # (!nx3163z2)) # (!nx3163z75)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i_valid_acombout,
	datab => nx3163z75,
	datac => nx3163z2,
	datad => nx3163z3,
	combout => nx3163z1);

-- Location: LCCOMB_X46_Y29_N22
modgen_counter_o_output_aix58250z52923 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx58250z2 = (nx3163z1 & ((nx3163z75) # (nx3163z76)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => nx3163z75,
	datac => nx3163z1,
	datad => nx3163z76,
	combout => modgen_counter_o_output_anx58250z2);

-- Location: LCFF_X46_Y27_N1
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

-- Location: LCCOMB_X46_Y27_N0
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

-- Location: LCFF_X46_Y29_N25
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

-- Location: LCFF_X46_Y27_N3
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

-- Location: LCCOMB_X46_Y27_N2
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

-- Location: LCFF_X46_Y29_N11
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

-- Location: LCFF_X46_Y27_N5
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

-- Location: LCCOMB_X46_Y27_N4
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

-- Location: LCFF_X46_Y29_N5
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

-- Location: LCCOMB_X46_Y27_N6
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

-- Location: LCFF_X46_Y29_N7
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

-- Location: LCFF_X46_Y27_N9
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

-- Location: LCCOMB_X46_Y27_N8
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

-- Location: LCFF_X46_Y29_N9
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

-- Location: LCCOMB_X46_Y27_N10
modgen_counter_o_output_aix32510z52926 : cycloneii_lcell_comb
-- Equation(s):
-- modgen_counter_o_output_anx56256z1 = (modgen_counter_o_output_anx32510z6 & (!modgen_counter_o_output_anx32510z7)) # (!modgen_counter_o_output_anx32510z6 & ((modgen_counter_o_output_anx32510z7) # (GND)))
-- modgen_counter_o_output_anx32510z5 = CARRY((!modgen_counter_o_output_anx32510z7) # (!modgen_counter_o_output_anx32510z6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => modgen_counter_o_output_anx32510z6,
	datad => VCC,
	cin => modgen_counter_o_output_anx32510z7,
	combout => modgen_counter_o_output_anx56256z1,
	cout => modgen_counter_o_output_anx32510z5);

-- Location: LCFF_X46_Y29_N27
reg_out_o_output_obuf_5_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx56256z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx15207z1);

-- Location: LCCOMB_X46_Y27_N12
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

-- Location: LCFF_X46_Y29_N29
reg_out_o_output_obuf_6_a : cycloneii_lcell_ff
PORT MAP (
	clk => i_clock_aclkctrl_outclk,
	sdata => modgen_counter_o_output_anx57253z1,
	aclr => i_reset_aclkctrl_outclk,
	sclr => nx3163z76,
	sload => VCC,
	ena => modgen_counter_o_output_anx58250z2,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => nx14210z1);

-- Location: LCFF_X46_Y27_N15
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

-- Location: LCCOMB_X46_Y27_N14
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

-- Location: LCCOMB_X46_Y27_N24
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

-- Location: LCFF_X46_Y27_N25
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

-- Location: PIN_A18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

-- Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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

