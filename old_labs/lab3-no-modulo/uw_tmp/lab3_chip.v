// Copyright (C) 1991-2011 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus II"
// VERSION "Version 10.1 Build 197 01/19/2011 Service Pack 1 SJ Full Version"

// DATE "02/15/2014 13:32:45"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module lab3_chip (	i_clock,
	i_valid,
	i_input,
	i_reset,
	o_output);
input 	i_clock;
input 	i_valid;
input 	[7:0] i_input;
input 	i_reset;
output 	[7:0] o_output;

// Design Ports Information
// o_output[0]	=>  Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[1]	=>  Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[2]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[3]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[4]	=>  Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[5]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[6]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_output[7]	=>  Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// i_clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[5]	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[4]	=>  Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[3]	=>  Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[2]	=>  Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[1]	=>  Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_input[0]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// i_valid	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
assign unknown = 1'bx;

tri1 devclrn;
tri1 devpor;
tri1 devoe;
// synopsys translate_off
initial $sdf_annotate("lab3_v.sdo");
// synopsys translate_on

wire nx3163z72;
wire ix3163z19319_anx38970z1;
wire ix3163z19319_anx23445z2;
wire ix3163z19319_anx23445z1;
wire nx3163z41;
wire ix3163z30602_anx45949z4;
wire ix3163z19322_anx38970z1;
wire ix3163z19322_anx39967z1;
wire nx3163z42;
wire ix3163z30602_anx45949z8;
wire nx3163z43;
wire ix3163z30602_anx45949z12;
wire nx3163z44;
wire ix3163z30602_anx45949z16;
wire nx3163z45;
wire ix3163z30602_anx45949z20;
wire nx3163z46;
wire ix3163z30602_anx45949z24;
wire nx3163z34;
wire nx3163z33;
wire nx3163z48;
wire ix3163z30602_anx45949z32;
wire ix3163z30602_anx39967z1;
wire ix3163z30602_anx45949z3;
wire ix3163z60014_anx39967z1;
wire ix3163z60014_anx41961z1;
wire ix3163z30602_anx45949z1;
wire nx3163z58;
wire modgen_counter_o_output_anx32510z10;
wire modgen_counter_o_output_anx32510z4;
wire nx53087z2;
wire nx35397z2;
wire i_clock_acombout;
wire i_clock_aclkctrl_outclk;
wire i_reset_acombout;
wire i_reset_aclkctrl_outclk;
wire i_valid_acombout;
wire nx53066z1;
wire y_pos_0__a_wirecell_combout;
wire x_pos_0__a_wirecell_combout;
wire x_pos_0_;
wire nx45976z1;
wire x_pos_1_;
wire nx44979z1;
wire x_pos_2_;
wire nx43982z1;
wire x_pos_3_;
wire nx53087z1;
wire y_pos_0_;
wire nx14243z1;
wire y_pos_1_;
wire nx13246z1;
wire y_pos_2_;
wire nx12249z1;
wire y_pos_3_;
wire nx35397z1;
wire end_of_input;
wire nx46973z1;
wire nx3163z71;
wire nx54084z1_a_wirecell_combout;
wire i_1_;
wire i_2_;
wire i_2__a_wirecell_combout;
wire nx54084z1;
wire nx3163z3;
wire nx3163z57;
wire nx51243z1;
wire ix3163z19322_anx37973z1;
wire nx54113z1;
wire ix3163z19319_anx37973z1;
wire nx3163z38;
wire nx3163z37;
wire ix3163z30602_anx45949z35;
wire ix3163z30602_anx37973z1;
wire nx3163z47;
wire ix3163z30602_anx45949z28;
wire ix3163z30602_anx45949z31;
wire ix3163z30602_anx38970z1;
wire ix3163z19322_anx44952z22;
wire ix3163z19322_anx44952z19;
wire ix3163z19322_anx44952z16;
wire ix3163z19322_anx40964z1;
wire ix3163z19319_anx44952z22;
wire ix3163z19319_anx44952z19;
wire ix3163z19319_anx44952z16;
wire ix3163z19319_anx40964z1;
wire nx3163z26;
wire nx3163z25;
wire ix3163z19319_anx39967z1;
wire nx3163z30;
wire nx3163z29;
wire ix3163z30602_anx45949z27;
wire ix3163z30602_anx45949z23;
wire ix3163z30602_anx40964z1;
wire nx3163z75;
wire ix3163z19322_anx44952z13;
wire ix3163z19322_anx41961z1;
wire ix3163z19319_anx44952z13;
wire ix3163z19319_anx41961z1;
wire nx3163z22;
wire nx3163z21;
wire ix3163z30602_anx45949z19;
wire ix3163z30602_anx41961z1;
wire ix3163z19322_anx44952z10;
wire ix3163z19322_anx44952z7;
wire ix3163z19322_anx44952z4;
wire ix3163z19322_anx44952z1;
wire ix3163z19319_anx44952z10;
wire ix3163z19319_anx44952z7;
wire ix3163z19319_anx44952z4;
wire ix3163z19319_anx44952z1;
wire nx3163z10;
wire nx3163z9;
wire ix3163z19322_anx43955z1;
wire ix3163z19319_anx43955z1;
wire nx3163z14;
wire nx3163z13;
wire ix3163z19322_anx42958z1;
wire ix3163z19319_anx42958z1;
wire nx3163z18;
wire nx3163z17;
wire ix3163z30602_anx45949z15;
wire ix3163z30602_anx45949z11;
wire ix3163z30602_anx45949z7;
wire ix3163z30602_anx44952z1;
wire ix3163z30602_anx43955z1;
wire nx3163z74;
wire nx3163z73;
wire ix3163z19322_anx23445z2;
wire ix3163z19322_anx23445z1;
wire ix3163z30602_anx42958z1;
wire ix3163z60014_anx44952z22;
wire ix3163z60014_anx44952z19;
wire ix3163z60014_anx44952z16;
wire ix3163z60014_anx44952z13;
wire ix3163z60014_anx44952z10;
wire ix3163z60014_anx44952z7;
wire ix3163z60014_anx44952z4;
wire ix3163z60014_anx23445z2;
wire ix3163z60014_anx23445z1;
wire nx3163z5;
wire nx3163z77;
wire ix3163z60014_anx37973z1;
wire ix3163z60014_anx38970z1;
wire ix3163z60014_anx40964z1;
wire nx3163z65;
wire ix3163z60014_anx43955z1;
wire ix3163z60014_anx42958z1;
wire ix3163z60014_anx44952z1;
wire nx3163z60;
wire nx3163z56;
wire nx3163z76;
wire nx3163z70;
wire nx3163z2;
wire nx3163z1;
wire modgen_counter_o_output_anx58250z2;
wire modgen_counter_o_output_anx32510z16;
wire modgen_counter_o_output_anx51271z1;
wire nx20192z1;
wire modgen_counter_o_output_anx32510z14;
wire modgen_counter_o_output_anx32510z15;
wire modgen_counter_o_output_anx52268z1;
wire nx19195z1;
wire modgen_counter_o_output_anx32510z12;
wire modgen_counter_o_output_anx32510z13;
wire modgen_counter_o_output_anx53265z1;
wire nx18198z1;
wire modgen_counter_o_output_anx32510z11;
wire modgen_counter_o_output_anx54262z1;
wire nx17201z1;
wire modgen_counter_o_output_anx32510z8;
wire modgen_counter_o_output_anx32510z9;
wire modgen_counter_o_output_anx55259z1;
wire nx16204z1;
wire modgen_counter_o_output_anx32510z6;
wire modgen_counter_o_output_anx32510z7;
wire modgen_counter_o_output_anx56256z1;
wire nx15207z1_afeeder_combout;
wire nx15207z1;
wire modgen_counter_o_output_anx32510z5;
wire modgen_counter_o_output_anx57253z1;
wire nx14210z1_afeeder_combout;
wire nx14210z1;
wire modgen_counter_o_output_anx32510z2;
wire modgen_counter_o_output_anx32510z3;
wire modgen_counter_o_output_anx32510z1;
wire nx13213z1_afeeder_combout;
wire nx13213z1;
wire [7:0] i_input_acombout;
wire [7:0] mem_aix64056z44883_aauto_generated_aq_b;
wire [7:0] mem_1_aix64056z44885_aauto_generated_aq_b;
wire [7:0] mem_0_aix64056z44884_aauto_generated_aq_b;

wire [7:0] mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus;
wire [7:0] mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus;
wire [7:0] mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus;

assign mem_1_aix64056z44885_aauto_generated_aq_b[0] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[0];
assign mem_1_aix64056z44885_aauto_generated_aq_b[1] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[1];
assign mem_1_aix64056z44885_aauto_generated_aq_b[2] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[2];
assign mem_1_aix64056z44885_aauto_generated_aq_b[3] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[3];
assign mem_1_aix64056z44885_aauto_generated_aq_b[4] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[4];
assign mem_1_aix64056z44885_aauto_generated_aq_b[5] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[5];
assign mem_1_aix64056z44885_aauto_generated_aq_b[6] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[6];
assign mem_1_aix64056z44885_aauto_generated_aq_b[7] = mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[7];

assign mem_aix64056z44883_aauto_generated_aq_b[0] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[0];
assign mem_aix64056z44883_aauto_generated_aq_b[1] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[1];
assign mem_aix64056z44883_aauto_generated_aq_b[2] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[2];
assign mem_aix64056z44883_aauto_generated_aq_b[3] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[3];
assign mem_aix64056z44883_aauto_generated_aq_b[4] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[4];
assign mem_aix64056z44883_aauto_generated_aq_b[5] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[5];
assign mem_aix64056z44883_aauto_generated_aq_b[6] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[6];
assign mem_aix64056z44883_aauto_generated_aq_b[7] = mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[7];

assign mem_0_aix64056z44884_aauto_generated_aq_b[0] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[0];
assign mem_0_aix64056z44884_aauto_generated_aq_b[1] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[1];
assign mem_0_aix64056z44884_aauto_generated_aq_b[2] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[2];
assign mem_0_aix64056z44884_aauto_generated_aq_b[3] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[3];
assign mem_0_aix64056z44884_aauto_generated_aq_b[4] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[4];
assign mem_0_aix64056z44884_aauto_generated_aq_b[5] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[5];
assign mem_0_aix64056z44884_aauto_generated_aq_b[6] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[6];
assign mem_0_aix64056z44884_aauto_generated_aq_b[7] = mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus[7];

// Location: LCCOMB_X53_Y28_N10
cycloneii_lcell_comb ix3163z52961(
// Equation(s):
// nx3163z72 = (y_pos_2_) # ((y_pos_1_) # (y_pos_3_))

	.dataa(vcc),
	.datab(y_pos_2_),
	.datac(y_pos_1_),
	.datad(y_pos_3_),
	.cin(gnd),
	.combout(nx3163z72),
	.cout());
// synopsys translate_off
defparam ix3163z52961.lut_mask = 16'hFFFC;
defparam ix3163z52961.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y28
cycloneii_ram_block mem_1_aix64056z44885_aauto_generated_aram_block1a0(
	.portawe(nx54113z1),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(i_clock_aclkctrl_outclk),
	.ena0(nx54113z1),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_input_acombout[7],i_input_acombout[6],i_input_acombout[5],i_input_acombout[4],i_input_acombout[3],i_input_acombout[2],i_input_acombout[1],i_input_acombout[0]}),
	.portaaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(mem_1_aix64056z44885_aauto_generated_aram_block1a0_PORTBDATAOUT_bus));
// synopsys translate_off
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_2:mem_1|altsyncram:ix64056z44885|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.mixed_port_feed_through_mode = "old";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.operation_mode = "dual_port";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_address_width = 4;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_last_address = 15;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 16;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_address_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_address_clock = "clock1";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_address_width = 4;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_byte_enable_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_data_in_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_data_out_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_data_out_clock = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_first_address = 0;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_first_bit_number = 0;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_last_address = 15;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_logical_ram_depth = 16;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_logical_ram_width = 8;
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clear = "none";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clock = "clock1";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_1_aix64056z44885_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: M4K_X52_Y27
cycloneii_ram_block mem_aix64056z44883_aauto_generated_aram_block1a0(
	.portawe(nx51243z1),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(i_clock_aclkctrl_outclk),
	.ena0(nx51243z1),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_input_acombout[7],i_input_acombout[6],i_input_acombout[5],i_input_acombout[4],i_input_acombout[3],i_input_acombout[2],i_input_acombout[1],i_input_acombout[0]}),
	.portaaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(mem_aix64056z44883_aauto_generated_aram_block1a0_PORTBDATAOUT_bus));
// synopsys translate_off
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_0:mem|altsyncram:ix64056z44883|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.mixed_port_feed_through_mode = "old";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.operation_mode = "dual_port";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_address_width = 4;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_last_address = 15;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 16;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_address_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_address_clock = "clock1";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_address_width = 4;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_byte_enable_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_data_in_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_data_out_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_data_out_clock = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_first_address = 0;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_first_bit_number = 0;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_last_address = 15;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_logical_ram_depth = 16;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_logical_ram_width = 8;
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clear = "none";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clock = "clock1";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_aix64056z44883_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N12
cycloneii_lcell_comb ix3163z19319_aix44952z52930(
// Equation(s):
// ix3163z19319_anx38970z1 = (mem_1_aix64056z44885_aauto_generated_aq_b[1] & ((mem_aix64056z44883_aauto_generated_aq_b[1] & (!ix3163z19319_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b[1] & (ix3163z19319_anx44952z22 & VCC)))) # 
// (!mem_1_aix64056z44885_aauto_generated_aq_b[1] & ((mem_aix64056z44883_aauto_generated_aq_b[1] & ((ix3163z19319_anx44952z22) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b[1] & (!ix3163z19319_anx44952z22))))
// ix3163z19319_anx44952z19 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b[1] & (mem_aix64056z44883_aauto_generated_aq_b[1] & !ix3163z19319_anx44952z22)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[1] & ((mem_aix64056z44883_aauto_generated_aq_b[1]) # 
// (!ix3163z19319_anx44952z22))))

	.dataa(mem_1_aix64056z44885_aauto_generated_aq_b[1]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z22),
	.combout(ix3163z19319_anx38970z1),
	.cout(ix3163z19319_anx44952z19));
// synopsys translate_off
defparam ix3163z19319_aix44952z52930.lut_mask = 16'h694D;
defparam ix3163z19319_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N24
cycloneii_lcell_comb ix3163z19319_aix44952z52923(
// Equation(s):
// ix3163z19319_anx44952z1 = (mem_1_aix64056z44885_aauto_generated_aq_b[7] & ((mem_aix64056z44883_aauto_generated_aq_b[7] & (!ix3163z19319_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b[7] & (ix3163z19319_anx44952z4 & VCC)))) # 
// (!mem_1_aix64056z44885_aauto_generated_aq_b[7] & ((mem_aix64056z44883_aauto_generated_aq_b[7] & ((ix3163z19319_anx44952z4) # (GND))) # (!mem_aix64056z44883_aauto_generated_aq_b[7] & (!ix3163z19319_anx44952z4))))
// ix3163z19319_anx23445z2 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b[7] & (mem_aix64056z44883_aauto_generated_aq_b[7] & !ix3163z19319_anx44952z4)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[7] & ((mem_aix64056z44883_aauto_generated_aq_b[7]) # 
// (!ix3163z19319_anx44952z4))))

	.dataa(mem_1_aix64056z44885_aauto_generated_aq_b[7]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z4),
	.combout(ix3163z19319_anx44952z1),
	.cout(ix3163z19319_anx23445z2));
// synopsys translate_off
defparam ix3163z19319_aix44952z52923.lut_mask = 16'h694D;
defparam ix3163z19319_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N26
cycloneii_lcell_comb ix3163z19319_aix23445z52923(
// Equation(s):
// ix3163z19319_anx23445z1 = !ix3163z19319_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx23445z2),
	.combout(ix3163z19319_anx23445z1),
	.cout());
// synopsys translate_off
defparam ix3163z19319_aix23445z52923.lut_mask = 16'h0F0F;
defparam ix3163z19319_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N2
cycloneii_lcell_comb ix3163z52947(
// Equation(s):
// nx3163z41 = (i_1_ & (i_input_acombout[7])) # (!i_1_ & ((i_2_ & (i_input_acombout[7])) # (!i_2_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[7])))))

	.dataa(i_1_),
	.datab(i_input_acombout[7]),
	.datac(i_2_),
	.datad(mem_1_aix64056z44885_aauto_generated_aq_b[7]),
	.cin(gnd),
	.combout(nx3163z41),
	.cout());
// synopsys translate_off
defparam ix3163z52947.lut_mask = 16'hCDC8;
defparam ix3163z52947.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N28
cycloneii_lcell_comb ix3163z30602_aix45949z52926(
// Equation(s):
// ix3163z30602_anx45949z4 = nx54084z1 $ (!nx3163z41)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z41),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z4),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52926.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52926.sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X52_Y26
cycloneii_ram_block mem_0_aix64056z44884_aauto_generated_aram_block1a0(
	.portawe(nx3163z3),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(i_clock_aclkctrl_outclk),
	.clk1(i_clock_aclkctrl_outclk),
	.ena0(nx3163z3),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({i_input_acombout[7],i_input_acombout[6],i_input_acombout[5],i_input_acombout[4],i_input_acombout[3],i_input_acombout[2],i_input_acombout[1],i_input_acombout[0]}),
	.portaaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({x_pos_3_,x_pos_2_,x_pos_1_,x_pos_0_}),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(mem_0_aix64056z44884_aauto_generated_aram_block1a0_PORTBDATAOUT_bus));
// synopsys translate_off
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.data_interleave_offset_in_bits = 1;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.data_interleave_width_in_bits = 1;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.logical_ram_name = "ram_dq_8_1:mem_0|altsyncram:ix64056z44884|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.mixed_port_feed_through_mode = "old";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.operation_mode = "dual_port";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_address_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_address_width = 4;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_byte_enable_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_byte_enable_clock = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_data_in_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_data_out_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_data_out_clock = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_data_width = 8;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_first_address = 0;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_first_bit_number = 0;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_last_address = 15;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_logical_ram_depth = 16;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_logical_ram_width = 8;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_a_write_enable_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_address_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_address_clock = "clock1";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_address_width = 4;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_byte_enable_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_data_in_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_data_out_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_data_out_clock = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_data_width = 8;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_first_address = 0;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_first_bit_number = 0;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_last_address = 15;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_logical_ram_depth = 16;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_logical_ram_width = 8;
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clear = "none";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.port_b_read_enable_write_enable_clock = "clock1";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.ram_block_type = "M4K";
defparam mem_0_aix64056z44884_aauto_generated_aram_block1a0.safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N2
cycloneii_lcell_comb ix3163z19322_aix44952z52930(
// Equation(s):
// ix3163z19322_anx38970z1 = (mem_0_aix64056z44884_aauto_generated_aq_b[1] & ((mem_aix64056z44883_aauto_generated_aq_b[1] & (!ix3163z19322_anx44952z22)) # (!mem_aix64056z44883_aauto_generated_aq_b[1] & ((ix3163z19322_anx44952z22) # (GND))))) # 
// (!mem_0_aix64056z44884_aauto_generated_aq_b[1] & ((mem_aix64056z44883_aauto_generated_aq_b[1] & (ix3163z19322_anx44952z22 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b[1] & (!ix3163z19322_anx44952z22))))
// ix3163z19322_anx44952z19 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b[1] & ((!ix3163z19322_anx44952z22) # (!mem_aix64056z44883_aauto_generated_aq_b[1]))) # (!mem_0_aix64056z44884_aauto_generated_aq_b[1] & (!mem_aix64056z44883_aauto_generated_aq_b[1] 
// & !ix3163z19322_anx44952z22)))

	.dataa(mem_0_aix64056z44884_aauto_generated_aq_b[1]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[1]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z22),
	.combout(ix3163z19322_anx38970z1),
	.cout(ix3163z19322_anx44952z19));
// synopsys translate_off
defparam ix3163z19322_aix44952z52930.lut_mask = 16'h692B;
defparam ix3163z19322_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N4
cycloneii_lcell_comb ix3163z19322_aix44952z52929(
// Equation(s):
// ix3163z19322_anx39967z1 = ((mem_aix64056z44883_aauto_generated_aq_b[2] $ (mem_0_aix64056z44884_aauto_generated_aq_b[2] $ (ix3163z19322_anx44952z19)))) # (GND)
// ix3163z19322_anx44952z16 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[2] & ((!ix3163z19322_anx44952z19) # (!mem_0_aix64056z44884_aauto_generated_aq_b[2]))) # (!mem_aix64056z44883_aauto_generated_aq_b[2] & (!mem_0_aix64056z44884_aauto_generated_aq_b[2] 
// & !ix3163z19322_anx44952z19)))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[2]),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z19),
	.combout(ix3163z19322_anx39967z1),
	.cout(ix3163z19322_anx44952z16));
// synopsys translate_off
defparam ix3163z19322_aix44952z52929.lut_mask = 16'h962B;
defparam ix3163z19322_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N8
cycloneii_lcell_comb ix3163z52948(
// Equation(s):
// nx3163z42 = (i_1_ & (i_input_acombout[6])) # (!i_1_ & ((i_2_ & (i_input_acombout[6])) # (!i_2_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[6])))))

	.dataa(i_input_acombout[6]),
	.datab(i_1_),
	.datac(mem_1_aix64056z44885_aauto_generated_aq_b[6]),
	.datad(i_2_),
	.cin(gnd),
	.combout(nx3163z42),
	.cout());
// synopsys translate_off
defparam ix3163z52948.lut_mask = 16'hAAB8;
defparam ix3163z52948.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N20
cycloneii_lcell_comb ix3163z30602_aix45949z52928(
// Equation(s):
// ix3163z30602_anx45949z8 = nx54084z1 $ (!nx3163z42)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z42),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z8),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52928.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52928.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N28
cycloneii_lcell_comb ix3163z52949(
// Equation(s):
// nx3163z43 = (i_1_ & (((i_input_acombout[5])))) # (!i_1_ & ((i_2_ & ((i_input_acombout[5]))) # (!i_2_ & (mem_1_aix64056z44885_aauto_generated_aq_b[5]))))

	.dataa(i_1_),
	.datab(i_2_),
	.datac(mem_1_aix64056z44885_aauto_generated_aq_b[5]),
	.datad(i_input_acombout[5]),
	.cin(gnd),
	.combout(nx3163z43),
	.cout());
// synopsys translate_off
defparam ix3163z52949.lut_mask = 16'hFE10;
defparam ix3163z52949.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N0
cycloneii_lcell_comb ix3163z30602_aix45949z52930(
// Equation(s):
// ix3163z30602_anx45949z12 = nx54084z1 $ (!nx3163z43)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z43),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z12),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52930.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52930.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N2
cycloneii_lcell_comb ix3163z52950(
// Equation(s):
// nx3163z44 = (i_2_ & (i_input_acombout[4])) # (!i_2_ & ((i_1_ & (i_input_acombout[4])) # (!i_1_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[4])))))

	.dataa(i_2_),
	.datab(i_input_acombout[4]),
	.datac(i_1_),
	.datad(mem_1_aix64056z44885_aauto_generated_aq_b[4]),
	.cin(gnd),
	.combout(nx3163z44),
	.cout());
// synopsys translate_off
defparam ix3163z52950.lut_mask = 16'hCDC8;
defparam ix3163z52950.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N16
cycloneii_lcell_comb ix3163z30602_aix45949z52932(
// Equation(s):
// ix3163z30602_anx45949z16 = nx54084z1 $ (!nx3163z44)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z44),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z16),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52932.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N24
cycloneii_lcell_comb ix3163z52951(
// Equation(s):
// nx3163z45 = (i_2_ & (((i_input_acombout[3])))) # (!i_2_ & ((i_1_ & (i_input_acombout[3])) # (!i_1_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[3])))))

	.dataa(i_2_),
	.datab(i_1_),
	.datac(i_input_acombout[3]),
	.datad(mem_1_aix64056z44885_aauto_generated_aq_b[3]),
	.cin(gnd),
	.combout(nx3163z45),
	.cout());
// synopsys translate_off
defparam ix3163z52951.lut_mask = 16'hF1E0;
defparam ix3163z52951.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y28_N18
cycloneii_lcell_comb ix3163z30602_aix45949z52934(
// Equation(s):
// ix3163z30602_anx45949z20 = nx54084z1 $ (!nx3163z45)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z45),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z20),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52934.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N0
cycloneii_lcell_comb ix3163z52952(
// Equation(s):
// nx3163z46 = (i_1_ & (i_input_acombout[2])) # (!i_1_ & ((i_2_ & (i_input_acombout[2])) # (!i_2_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[2])))))

	.dataa(i_input_acombout[2]),
	.datab(i_1_),
	.datac(mem_1_aix64056z44885_aauto_generated_aq_b[2]),
	.datad(i_2_),
	.cin(gnd),
	.combout(nx3163z46),
	.cout());
// synopsys translate_off
defparam ix3163z52952.lut_mask = 16'hAAB8;
defparam ix3163z52952.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N14
cycloneii_lcell_comb ix3163z30602_aix45949z52936(
// Equation(s):
// ix3163z30602_anx45949z24 = nx54084z1 $ (!nx3163z46)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z46),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z24),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52936.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N4
cycloneii_lcell_comb ix3163z52944(
// Equation(s):
// nx3163z34 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b[1])))) # (!nx51243z1 & (!nx54113z1 & ((ix3163z19319_anx38970z1))))

	.dataa(nx51243z1),
	.datab(nx54113z1),
	.datac(mem_0_aix64056z44884_aauto_generated_aq_b[1]),
	.datad(ix3163z19319_anx38970z1),
	.cin(gnd),
	.combout(nx3163z34),
	.cout());
// synopsys translate_off
defparam ix3163z52944.lut_mask = 16'hB9A8;
defparam ix3163z52944.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N6
cycloneii_lcell_comb ix3163z52943(
// Equation(s):
// nx3163z33 = (nx54113z1 & (ix3163z19322_anx38970z1 & !nx3163z34)) # (!nx54113z1 & ((nx3163z34)))

	.dataa(ix3163z19322_anx38970z1),
	.datab(vcc),
	.datac(nx54113z1),
	.datad(nx3163z34),
	.cin(gnd),
	.combout(nx3163z33),
	.cout());
// synopsys translate_off
defparam ix3163z52943.lut_mask = 16'h0FA0;
defparam ix3163z52943.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N4
cycloneii_lcell_comb ix3163z52954(
// Equation(s):
// nx3163z48 = (i_2_ & (i_input_acombout[0])) # (!i_2_ & ((i_1_ & (i_input_acombout[0])) # (!i_1_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[0])))))

	.dataa(i_2_),
	.datab(i_input_acombout[0]),
	.datac(i_1_),
	.datad(mem_1_aix64056z44885_aauto_generated_aq_b[0]),
	.cin(gnd),
	.combout(nx3163z48),
	.cout());
// synopsys translate_off
defparam ix3163z52954.lut_mask = 16'hCDC8;
defparam ix3163z52954.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N6
cycloneii_lcell_comb ix3163z30602_aix45949z52940(
// Equation(s):
// ix3163z30602_anx45949z32 = nx3163z48 $ (!nx54084z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx3163z48),
	.datad(nx54084z1),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z32),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52940.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N16
cycloneii_lcell_comb ix3163z30602_aix45949z52935(
// Equation(s):
// ix3163z30602_anx39967z1 = (ix3163z30602_anx45949z24 & ((nx3163z29 & (ix3163z30602_anx45949z27 & VCC)) # (!nx3163z29 & (!ix3163z30602_anx45949z27)))) # (!ix3163z30602_anx45949z24 & ((nx3163z29 & (!ix3163z30602_anx45949z27)) # (!nx3163z29 & 
// ((ix3163z30602_anx45949z27) # (GND)))))
// ix3163z30602_anx45949z23 = CARRY((ix3163z30602_anx45949z24 & (!nx3163z29 & !ix3163z30602_anx45949z27)) # (!ix3163z30602_anx45949z24 & ((!ix3163z30602_anx45949z27) # (!nx3163z29))))

	.dataa(ix3163z30602_anx45949z24),
	.datab(nx3163z29),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z27),
	.combout(ix3163z30602_anx39967z1),
	.cout(ix3163z30602_anx45949z23));
// synopsys translate_off
defparam ix3163z30602_aix45949z52935.lut_mask = 16'h9617;
defparam ix3163z30602_aix45949z52935.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N26
cycloneii_lcell_comb ix3163z30602_aix45949z52925(
// Equation(s):
// ix3163z30602_anx44952z1 = ((ix3163z30602_anx45949z4 $ (nx3163z9 $ (!ix3163z30602_anx45949z7)))) # (GND)
// ix3163z30602_anx45949z3 = CARRY((ix3163z30602_anx45949z4 & ((nx3163z9) # (!ix3163z30602_anx45949z7))) # (!ix3163z30602_anx45949z4 & (nx3163z9 & !ix3163z30602_anx45949z7)))

	.dataa(ix3163z30602_anx45949z4),
	.datab(nx3163z9),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z7),
	.combout(ix3163z30602_anx44952z1),
	.cout(ix3163z30602_anx45949z3));
// synopsys translate_off
defparam ix3163z30602_aix45949z52925.lut_mask = 16'h698E;
defparam ix3163z30602_aix45949z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N10
cycloneii_lcell_comb ix3163z60014_aix44952z52929(
// Equation(s):
// ix3163z60014_anx39967z1 = ((ix3163z30602_anx39967z1 $ (i_input_acombout[2] $ (!ix3163z60014_anx44952z19)))) # (GND)
// ix3163z60014_anx44952z16 = CARRY((ix3163z30602_anx39967z1 & ((i_input_acombout[2]) # (!ix3163z60014_anx44952z19))) # (!ix3163z30602_anx39967z1 & (i_input_acombout[2] & !ix3163z60014_anx44952z19)))

	.dataa(ix3163z30602_anx39967z1),
	.datab(i_input_acombout[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z19),
	.combout(ix3163z60014_anx39967z1),
	.cout(ix3163z60014_anx44952z16));
// synopsys translate_off
defparam ix3163z60014_aix44952z52929.lut_mask = 16'h698E;
defparam ix3163z60014_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N14
cycloneii_lcell_comb ix3163z60014_aix44952z52927(
// Equation(s):
// ix3163z60014_anx41961z1 = ((i_input_acombout[4] $ (ix3163z30602_anx41961z1 $ (!ix3163z60014_anx44952z13)))) # (GND)
// ix3163z60014_anx44952z10 = CARRY((i_input_acombout[4] & ((ix3163z30602_anx41961z1) # (!ix3163z60014_anx44952z13))) # (!i_input_acombout[4] & (ix3163z30602_anx41961z1 & !ix3163z60014_anx44952z13)))

	.dataa(i_input_acombout[4]),
	.datab(ix3163z30602_anx41961z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z13),
	.combout(ix3163z60014_anx41961z1),
	.cout(ix3163z60014_anx44952z10));
// synopsys translate_off
defparam ix3163z60014_aix44952z52927.lut_mask = 16'h698E;
defparam ix3163z60014_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N28
cycloneii_lcell_comb ix3163z30602_aix45949z52923(
// Equation(s):
// ix3163z30602_anx45949z1 = nx54084z1 $ (!ix3163z30602_anx45949z3)

	.dataa(nx54084z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z3),
	.combout(ix3163z30602_anx45949z1),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52923.lut_mask = 16'hA5A5;
defparam ix3163z30602_aix45949z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N4
cycloneii_lcell_comb ix3163z52957(
// Equation(s):
// nx3163z58 = nx54084z1 $ (!ix3163z30602_anx45949z1)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(ix3163z30602_anx45949z1),
	.cin(gnd),
	.combout(nx3163z58),
	.cout());
// synopsys translate_off
defparam ix3163z52957.lut_mask = 16'hF00F;
defparam ix3163z52957.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y27_N7
cycloneii_lcell_ff modgen_counter_o_output_areg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx54262z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z10));

// Location: LCFF_X47_Y27_N13
cycloneii_lcell_ff modgen_counter_o_output_areg_q_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx57253z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z4));

// Location: LCCOMB_X53_Y28_N24
cycloneii_lcell_comb ix53087z52925(
// Equation(s):
// nx53087z2 = (x_pos_0_ & x_pos_1_)

	.dataa(vcc),
	.datab(x_pos_0_),
	.datac(vcc),
	.datad(x_pos_1_),
	.cin(gnd),
	.combout(nx53087z2),
	.cout());
// synopsys translate_off
defparam ix53087z52925.lut_mask = 16'hCC00;
defparam ix53087z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y28_N20
cycloneii_lcell_comb ix35397z52924(
// Equation(s):
// nx35397z2 = (y_pos_0_ & (y_pos_1_ & y_pos_2_))

	.dataa(vcc),
	.datab(y_pos_0_),
	.datac(y_pos_1_),
	.datad(y_pos_2_),
	.cin(gnd),
	.combout(nx35397z2),
	.cout());
// synopsys translate_off
defparam ix35397z52924.lut_mask = 16'hC000;
defparam ix35397z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_clock_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_clock_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_clock));
// synopsys translate_off
defparam i_clock_ibuf.input_async_reset = "none";
defparam i_clock_ibuf.input_power_up = "low";
defparam i_clock_ibuf.input_register_mode = "none";
defparam i_clock_ibuf.input_sync_reset = "none";
defparam i_clock_ibuf.oe_async_reset = "none";
defparam i_clock_ibuf.oe_power_up = "low";
defparam i_clock_ibuf.oe_register_mode = "none";
defparam i_clock_ibuf.oe_sync_reset = "none";
defparam i_clock_ibuf.operation_mode = "input";
defparam i_clock_ibuf.output_async_reset = "none";
defparam i_clock_ibuf.output_power_up = "low";
defparam i_clock_ibuf.output_register_mode = "none";
defparam i_clock_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G3
cycloneii_clkctrl i_clock_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_clock_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_clock_aclkctrl_outclk));
// synopsys translate_off
defparam i_clock_aclkctrl.clock_type = "global clock";
defparam i_clock_aclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_reset_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_reset_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_reset));
// synopsys translate_off
defparam i_reset_ibuf.input_async_reset = "none";
defparam i_reset_ibuf.input_power_up = "low";
defparam i_reset_ibuf.input_register_mode = "none";
defparam i_reset_ibuf.input_sync_reset = "none";
defparam i_reset_ibuf.oe_async_reset = "none";
defparam i_reset_ibuf.oe_power_up = "low";
defparam i_reset_ibuf.oe_register_mode = "none";
defparam i_reset_ibuf.oe_sync_reset = "none";
defparam i_reset_ibuf.operation_mode = "input";
defparam i_reset_ibuf.output_async_reset = "none";
defparam i_reset_ibuf.output_power_up = "low";
defparam i_reset_ibuf.output_register_mode = "none";
defparam i_reset_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G1
cycloneii_clkctrl i_reset_aclkctrl(
	.ena(vcc),
	.inclk({gnd,gnd,gnd,i_reset_acombout}),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(i_reset_aclkctrl_outclk));
// synopsys translate_off
defparam i_reset_aclkctrl.clock_type = "global clock";
defparam i_reset_aclkctrl.ena_register_mode = "none";
// synopsys translate_on

// Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_valid_ibuf(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_valid_acombout),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_valid));
// synopsys translate_off
defparam i_valid_ibuf.input_async_reset = "none";
defparam i_valid_ibuf.input_power_up = "low";
defparam i_valid_ibuf.input_register_mode = "none";
defparam i_valid_ibuf.input_sync_reset = "none";
defparam i_valid_ibuf.oe_async_reset = "none";
defparam i_valid_ibuf.oe_power_up = "low";
defparam i_valid_ibuf.oe_register_mode = "none";
defparam i_valid_ibuf.oe_sync_reset = "none";
defparam i_valid_ibuf.operation_mode = "input";
defparam i_valid_ibuf.output_async_reset = "none";
defparam i_valid_ibuf.output_power_up = "low";
defparam i_valid_ibuf.output_register_mode = "none";
defparam i_valid_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X53_Y28_N8
cycloneii_lcell_comb ix53066z52923(
// Equation(s):
// nx53066z1 = (i_valid_acombout) # (nx3163z71)

	.dataa(vcc),
	.datab(i_valid_acombout),
	.datac(nx3163z71),
	.datad(vcc),
	.cin(gnd),
	.combout(nx53066z1),
	.cout());
// synopsys translate_off
defparam ix53066z52923.lut_mask = 16'hFCFC;
defparam ix53066z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N10
cycloneii_lcell_comb y_pos_0__a_wirecell(
// Equation(s):
// y_pos_0__a_wirecell_combout = !y_pos_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(y_pos_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(y_pos_0__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam y_pos_0__a_wirecell.lut_mask = 16'h0F0F;
defparam y_pos_0__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y28_N22
cycloneii_lcell_comb x_pos_0__a_wirecell(
// Equation(s):
// x_pos_0__a_wirecell_combout = !x_pos_0_

	.dataa(vcc),
	.datab(vcc),
	.datac(x_pos_0_),
	.datad(vcc),
	.cin(gnd),
	.combout(x_pos_0__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam x_pos_0__a_wirecell.lut_mask = 16'h0F0F;
defparam x_pos_0__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N23
cycloneii_lcell_ff modgen_counter_x_pos_reg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(x_pos_0__a_wirecell_combout),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_pos_0_));

// Location: LCCOMB_X53_Y28_N12
cycloneii_lcell_comb ix45976z52923(
// Equation(s):
// nx45976z1 = x_pos_1_ $ (x_pos_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(x_pos_1_),
	.datad(x_pos_0_),
	.cin(gnd),
	.combout(nx45976z1),
	.cout());
// synopsys translate_off
defparam ix45976z52923.lut_mask = 16'h0FF0;
defparam ix45976z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N13
cycloneii_lcell_ff modgen_counter_x_pos_reg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx45976z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_pos_1_));

// Location: LCCOMB_X53_Y28_N18
cycloneii_lcell_comb ix44979z52923(
// Equation(s):
// nx44979z1 = x_pos_2_ $ (((x_pos_0_ & x_pos_1_)))

	.dataa(vcc),
	.datab(x_pos_0_),
	.datac(x_pos_2_),
	.datad(x_pos_1_),
	.cin(gnd),
	.combout(nx44979z1),
	.cout());
// synopsys translate_off
defparam ix44979z52923.lut_mask = 16'h3CF0;
defparam ix44979z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N19
cycloneii_lcell_ff modgen_counter_x_pos_reg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx44979z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_pos_2_));

// Location: LCCOMB_X53_Y28_N0
cycloneii_lcell_comb ix43982z52923(
// Equation(s):
// nx43982z1 = x_pos_3_ $ (((x_pos_1_ & (x_pos_0_ & x_pos_2_))))

	.dataa(x_pos_1_),
	.datab(x_pos_0_),
	.datac(x_pos_3_),
	.datad(x_pos_2_),
	.cin(gnd),
	.combout(nx43982z1),
	.cout());
// synopsys translate_off
defparam ix43982z52923.lut_mask = 16'h78F0;
defparam ix43982z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N1
cycloneii_lcell_ff modgen_counter_x_pos_reg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx43982z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(i_valid_acombout),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(x_pos_3_));

// Location: LCCOMB_X53_Y28_N26
cycloneii_lcell_comb ix53087z52924(
// Equation(s):
// nx53087z1 = (nx53087z2 & (x_pos_2_ & (i_valid_acombout & x_pos_3_)))

	.dataa(nx53087z2),
	.datab(x_pos_2_),
	.datac(i_valid_acombout),
	.datad(x_pos_3_),
	.cin(gnd),
	.combout(nx53087z1),
	.cout());
// synopsys translate_off
defparam ix53087z52924.lut_mask = 16'h8000;
defparam ix53087z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N11
cycloneii_lcell_ff modgen_counter_y_pos_reg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(y_pos_0__a_wirecell_combout),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(y_pos_0_));

// Location: LCCOMB_X51_Y28_N18
cycloneii_lcell_comb ix14243z52923(
// Equation(s):
// nx14243z1 = y_pos_1_ $ (y_pos_0_)

	.dataa(vcc),
	.datab(vcc),
	.datac(y_pos_1_),
	.datad(y_pos_0_),
	.cin(gnd),
	.combout(nx14243z1),
	.cout());
// synopsys translate_off
defparam ix14243z52923.lut_mask = 16'h0FF0;
defparam ix14243z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N19
cycloneii_lcell_ff modgen_counter_y_pos_reg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx14243z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(y_pos_1_));

// Location: LCCOMB_X51_Y28_N30
cycloneii_lcell_comb ix13246z52923(
// Equation(s):
// nx13246z1 = y_pos_2_ $ (((y_pos_1_ & y_pos_0_)))

	.dataa(vcc),
	.datab(y_pos_1_),
	.datac(y_pos_2_),
	.datad(y_pos_0_),
	.cin(gnd),
	.combout(nx13246z1),
	.cout());
// synopsys translate_off
defparam ix13246z52923.lut_mask = 16'h3CF0;
defparam ix13246z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N31
cycloneii_lcell_ff modgen_counter_y_pos_reg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx13246z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(y_pos_2_));

// Location: LCCOMB_X51_Y28_N20
cycloneii_lcell_comb ix12249z52923(
// Equation(s):
// nx12249z1 = y_pos_3_ $ (((y_pos_0_ & (y_pos_1_ & y_pos_2_))))

	.dataa(y_pos_0_),
	.datab(y_pos_1_),
	.datac(y_pos_3_),
	.datad(y_pos_2_),
	.cin(gnd),
	.combout(nx12249z1),
	.cout());
// synopsys translate_off
defparam ix12249z52923.lut_mask = 16'h78F0;
defparam ix12249z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N21
cycloneii_lcell_ff modgen_counter_y_pos_reg_q_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx12249z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(y_pos_3_));

// Location: LCCOMB_X53_Y28_N28
cycloneii_lcell_comb ix35397z52923(
// Equation(s):
// nx35397z1 = (end_of_input) # ((nx35397z2 & (y_pos_3_ & nx53087z1)))

	.dataa(nx35397z2),
	.datab(y_pos_3_),
	.datac(end_of_input),
	.datad(nx53087z1),
	.cin(gnd),
	.combout(nx35397z1),
	.cout());
// synopsys translate_off
defparam ix35397z52923.lut_mask = 16'hF8F0;
defparam ix35397z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N29
cycloneii_lcell_ff reg_end_of_input(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx35397z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(end_of_input));

// Location: LCCOMB_X53_Y28_N6
cycloneii_lcell_comb ix46973z52924(
// Equation(s):
// nx46973z1 = (i_reset_acombout) # (end_of_input)

	.dataa(vcc),
	.datab(vcc),
	.datac(i_reset_acombout),
	.datad(end_of_input),
	.cin(gnd),
	.combout(nx46973z1),
	.cout());
// synopsys translate_off
defparam ix46973z52924.lut_mask = 16'hFFF0;
defparam ix46973z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X53_Y28_N9
cycloneii_lcell_ff reg_new_number_set(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx53066z1),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx3163z71));

// Location: LCCOMB_X51_Y28_N22
cycloneii_lcell_comb nx54084z1_a_wirecell(
// Equation(s):
// nx54084z1_a_wirecell_combout = !nx54084z1

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx54084z1_a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam nx54084z1_a_wirecell.lut_mask = 16'h0F0F;
defparam nx54084z1_a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N23
cycloneii_lcell_ff reg_i_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx54084z1_a_wirecell_combout),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_1_));

// Location: LCFF_X51_Y28_N17
cycloneii_lcell_ff reg_i_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(i_1_),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(vcc),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(i_2_));

// Location: LCCOMB_X51_Y28_N12
cycloneii_lcell_comb i_2__a_wirecell(
// Equation(s):
// i_2__a_wirecell_combout = !i_2_

	.dataa(vcc),
	.datab(vcc),
	.datac(i_2_),
	.datad(vcc),
	.cin(gnd),
	.combout(i_2__a_wirecell_combout),
	.cout());
// synopsys translate_off
defparam i_2__a_wirecell.lut_mask = 16'h0F0F;
defparam i_2__a_wirecell.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X51_Y28_N13
cycloneii_lcell_ff reg_i_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(i_2__a_wirecell_combout),
	.sdata(gnd),
	.aclr(nx46973z1),
	.sclr(gnd),
	.sload(gnd),
	.ena(nx53087z1),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx54084z1));

// Location: LCCOMB_X51_Y27_N26
cycloneii_lcell_comb ix3163z52925(
// Equation(s):
// nx3163z3 = (nx54084z1 & (i_1_ & !i_2_))

	.dataa(vcc),
	.datab(nx54084z1),
	.datac(i_1_),
	.datad(i_2_),
	.cin(gnd),
	.combout(nx3163z3),
	.cout());
// synopsys translate_off
defparam ix3163z52925.lut_mask = 16'h00C0;
defparam ix3163z52925.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N24
cycloneii_lcell_comb ix3163z52956(
// Equation(s):
// nx3163z57 = (nx54084z1 & (i_2_ $ (i_1_)))

	.dataa(nx54084z1),
	.datab(i_2_),
	.datac(vcc),
	.datad(i_1_),
	.cin(gnd),
	.combout(nx3163z57),
	.cout());
// synopsys translate_off
defparam ix3163z52956.lut_mask = 16'h2288;
defparam ix3163z52956.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N30
cycloneii_lcell_comb ix51243z52923(
// Equation(s):
// nx51243z1 = (!nx54084z1 & (!i_1_ & !i_2_))

	.dataa(vcc),
	.datab(nx54084z1),
	.datac(i_1_),
	.datad(i_2_),
	.cin(gnd),
	.combout(nx51243z1),
	.cout());
// synopsys translate_off
defparam ix51243z52923.lut_mask = 16'h0003;
defparam ix51243z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_0_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[0]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[0]));
// synopsys translate_off
defparam i_input_ibuf_0_.input_async_reset = "none";
defparam i_input_ibuf_0_.input_power_up = "low";
defparam i_input_ibuf_0_.input_register_mode = "none";
defparam i_input_ibuf_0_.input_sync_reset = "none";
defparam i_input_ibuf_0_.oe_async_reset = "none";
defparam i_input_ibuf_0_.oe_power_up = "low";
defparam i_input_ibuf_0_.oe_register_mode = "none";
defparam i_input_ibuf_0_.oe_sync_reset = "none";
defparam i_input_ibuf_0_.operation_mode = "input";
defparam i_input_ibuf_0_.output_async_reset = "none";
defparam i_input_ibuf_0_.output_power_up = "low";
defparam i_input_ibuf_0_.output_register_mode = "none";
defparam i_input_ibuf_0_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_1_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[1]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[1]));
// synopsys translate_off
defparam i_input_ibuf_1_.input_async_reset = "none";
defparam i_input_ibuf_1_.input_power_up = "low";
defparam i_input_ibuf_1_.input_register_mode = "none";
defparam i_input_ibuf_1_.input_sync_reset = "none";
defparam i_input_ibuf_1_.oe_async_reset = "none";
defparam i_input_ibuf_1_.oe_power_up = "low";
defparam i_input_ibuf_1_.oe_register_mode = "none";
defparam i_input_ibuf_1_.oe_sync_reset = "none";
defparam i_input_ibuf_1_.operation_mode = "input";
defparam i_input_ibuf_1_.output_async_reset = "none";
defparam i_input_ibuf_1_.output_power_up = "low";
defparam i_input_ibuf_1_.output_register_mode = "none";
defparam i_input_ibuf_1_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_2_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[2]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[2]));
// synopsys translate_off
defparam i_input_ibuf_2_.input_async_reset = "none";
defparam i_input_ibuf_2_.input_power_up = "low";
defparam i_input_ibuf_2_.input_register_mode = "none";
defparam i_input_ibuf_2_.input_sync_reset = "none";
defparam i_input_ibuf_2_.oe_async_reset = "none";
defparam i_input_ibuf_2_.oe_power_up = "low";
defparam i_input_ibuf_2_.oe_register_mode = "none";
defparam i_input_ibuf_2_.oe_sync_reset = "none";
defparam i_input_ibuf_2_.operation_mode = "input";
defparam i_input_ibuf_2_.output_async_reset = "none";
defparam i_input_ibuf_2_.output_power_up = "low";
defparam i_input_ibuf_2_.output_register_mode = "none";
defparam i_input_ibuf_2_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_3_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[3]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[3]));
// synopsys translate_off
defparam i_input_ibuf_3_.input_async_reset = "none";
defparam i_input_ibuf_3_.input_power_up = "low";
defparam i_input_ibuf_3_.input_register_mode = "none";
defparam i_input_ibuf_3_.input_sync_reset = "none";
defparam i_input_ibuf_3_.oe_async_reset = "none";
defparam i_input_ibuf_3_.oe_power_up = "low";
defparam i_input_ibuf_3_.oe_register_mode = "none";
defparam i_input_ibuf_3_.oe_sync_reset = "none";
defparam i_input_ibuf_3_.operation_mode = "input";
defparam i_input_ibuf_3_.output_async_reset = "none";
defparam i_input_ibuf_3_.output_power_up = "low";
defparam i_input_ibuf_3_.output_register_mode = "none";
defparam i_input_ibuf_3_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_4_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[4]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[4]));
// synopsys translate_off
defparam i_input_ibuf_4_.input_async_reset = "none";
defparam i_input_ibuf_4_.input_power_up = "low";
defparam i_input_ibuf_4_.input_register_mode = "none";
defparam i_input_ibuf_4_.input_sync_reset = "none";
defparam i_input_ibuf_4_.oe_async_reset = "none";
defparam i_input_ibuf_4_.oe_power_up = "low";
defparam i_input_ibuf_4_.oe_register_mode = "none";
defparam i_input_ibuf_4_.oe_sync_reset = "none";
defparam i_input_ibuf_4_.operation_mode = "input";
defparam i_input_ibuf_4_.output_async_reset = "none";
defparam i_input_ibuf_4_.output_power_up = "low";
defparam i_input_ibuf_4_.output_register_mode = "none";
defparam i_input_ibuf_4_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_5_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[5]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[5]));
// synopsys translate_off
defparam i_input_ibuf_5_.input_async_reset = "none";
defparam i_input_ibuf_5_.input_power_up = "low";
defparam i_input_ibuf_5_.input_register_mode = "none";
defparam i_input_ibuf_5_.input_sync_reset = "none";
defparam i_input_ibuf_5_.oe_async_reset = "none";
defparam i_input_ibuf_5_.oe_power_up = "low";
defparam i_input_ibuf_5_.oe_register_mode = "none";
defparam i_input_ibuf_5_.oe_sync_reset = "none";
defparam i_input_ibuf_5_.operation_mode = "input";
defparam i_input_ibuf_5_.output_async_reset = "none";
defparam i_input_ibuf_5_.output_power_up = "low";
defparam i_input_ibuf_5_.output_register_mode = "none";
defparam i_input_ibuf_5_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_6_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[6]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[6]));
// synopsys translate_off
defparam i_input_ibuf_6_.input_async_reset = "none";
defparam i_input_ibuf_6_.input_power_up = "low";
defparam i_input_ibuf_6_.input_register_mode = "none";
defparam i_input_ibuf_6_.input_sync_reset = "none";
defparam i_input_ibuf_6_.oe_async_reset = "none";
defparam i_input_ibuf_6_.oe_power_up = "low";
defparam i_input_ibuf_6_.oe_register_mode = "none";
defparam i_input_ibuf_6_.oe_sync_reset = "none";
defparam i_input_ibuf_6_.operation_mode = "input";
defparam i_input_ibuf_6_.output_async_reset = "none";
defparam i_input_ibuf_6_.output_power_up = "low";
defparam i_input_ibuf_6_.output_register_mode = "none";
defparam i_input_ibuf_6_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io i_input_ibuf_7_(
	.datain(gnd),
	.oe(gnd),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(i_input_acombout[7]),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(i_input[7]));
// synopsys translate_off
defparam i_input_ibuf_7_.input_async_reset = "none";
defparam i_input_ibuf_7_.input_power_up = "low";
defparam i_input_ibuf_7_.input_register_mode = "none";
defparam i_input_ibuf_7_.input_sync_reset = "none";
defparam i_input_ibuf_7_.oe_async_reset = "none";
defparam i_input_ibuf_7_.oe_power_up = "low";
defparam i_input_ibuf_7_.oe_register_mode = "none";
defparam i_input_ibuf_7_.oe_sync_reset = "none";
defparam i_input_ibuf_7_.operation_mode = "input";
defparam i_input_ibuf_7_.output_async_reset = "none";
defparam i_input_ibuf_7_.output_power_up = "low";
defparam i_input_ibuf_7_.output_register_mode = "none";
defparam i_input_ibuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N0
cycloneii_lcell_comb ix3163z19322_aix44952z52931(
// Equation(s):
// ix3163z19322_anx37973z1 = (mem_0_aix64056z44884_aauto_generated_aq_b[0] & (mem_aix64056z44883_aauto_generated_aq_b[0] $ (VCC))) # (!mem_0_aix64056z44884_aauto_generated_aq_b[0] & ((mem_aix64056z44883_aauto_generated_aq_b[0]) # (GND)))
// ix3163z19322_anx44952z22 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[0]) # (!mem_0_aix64056z44884_aauto_generated_aq_b[0]))

	.dataa(mem_0_aix64056z44884_aauto_generated_aq_b[0]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(ix3163z19322_anx37973z1),
	.cout(ix3163z19322_anx44952z22));
// synopsys translate_off
defparam ix3163z19322_aix44952z52931.lut_mask = 16'h66DD;
defparam ix3163z19322_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N16
cycloneii_lcell_comb ix54113z52923(
// Equation(s):
// nx54113z1 = (!i_1_ & (i_2_ & nx54084z1))

	.dataa(vcc),
	.datab(i_1_),
	.datac(i_2_),
	.datad(nx54084z1),
	.cin(gnd),
	.combout(nx54113z1),
	.cout());
// synopsys translate_off
defparam ix54113z52923.lut_mask = 16'h3000;
defparam ix54113z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N10
cycloneii_lcell_comb ix3163z19319_aix44952z52931(
// Equation(s):
// ix3163z19319_anx37973z1 = (mem_aix64056z44883_aauto_generated_aq_b[0] & (mem_1_aix64056z44885_aauto_generated_aq_b[0] $ (VCC))) # (!mem_aix64056z44883_aauto_generated_aq_b[0] & ((mem_1_aix64056z44885_aauto_generated_aq_b[0]) # (GND)))
// ix3163z19319_anx44952z22 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b[0]) # (!mem_aix64056z44883_aauto_generated_aq_b[0]))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[0]),
	.datab(mem_1_aix64056z44885_aauto_generated_aq_b[0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(ix3163z19319_anx37973z1),
	.cout(ix3163z19319_anx44952z22));
// synopsys translate_off
defparam ix3163z19319_aix44952z52931.lut_mask = 16'h66DD;
defparam ix3163z19319_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N6
cycloneii_lcell_comb ix3163z52946(
// Equation(s):
// nx3163z38 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b[0])))) # (!nx51243z1 & (!nx54113z1 & ((ix3163z19319_anx37973z1))))

	.dataa(nx51243z1),
	.datab(nx54113z1),
	.datac(mem_0_aix64056z44884_aauto_generated_aq_b[0]),
	.datad(ix3163z19319_anx37973z1),
	.cin(gnd),
	.combout(nx3163z38),
	.cout());
// synopsys translate_off
defparam ix3163z52946.lut_mask = 16'hB9A8;
defparam ix3163z52946.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N22
cycloneii_lcell_comb ix3163z52945(
// Equation(s):
// nx3163z37 = (nx54113z1 & (ix3163z19322_anx37973z1 & !nx3163z38)) # (!nx54113z1 & ((nx3163z38)))

	.dataa(nx54113z1),
	.datab(vcc),
	.datac(ix3163z19322_anx37973z1),
	.datad(nx3163z38),
	.cin(gnd),
	.combout(nx3163z37),
	.cout());
// synopsys translate_off
defparam ix3163z52945.lut_mask = 16'h55A0;
defparam ix3163z52945.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N10
cycloneii_lcell_comb ix3163z30602_aix45949z52941(
// Equation(s):
// ix3163z30602_anx45949z35 = CARRY(!nx54084z1)

	.dataa(nx54084z1),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(ix3163z30602_anx45949z35));
// synopsys translate_off
defparam ix3163z30602_aix45949z52941.lut_mask = 16'h0055;
defparam ix3163z30602_aix45949z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N12
cycloneii_lcell_comb ix3163z30602_aix45949z52939(
// Equation(s):
// ix3163z30602_anx37973z1 = (ix3163z30602_anx45949z32 & ((nx3163z37 & (ix3163z30602_anx45949z35 & VCC)) # (!nx3163z37 & (!ix3163z30602_anx45949z35)))) # (!ix3163z30602_anx45949z32 & ((nx3163z37 & (!ix3163z30602_anx45949z35)) # (!nx3163z37 & 
// ((ix3163z30602_anx45949z35) # (GND)))))
// ix3163z30602_anx45949z31 = CARRY((ix3163z30602_anx45949z32 & (!nx3163z37 & !ix3163z30602_anx45949z35)) # (!ix3163z30602_anx45949z32 & ((!ix3163z30602_anx45949z35) # (!nx3163z37))))

	.dataa(ix3163z30602_anx45949z32),
	.datab(nx3163z37),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z35),
	.combout(ix3163z30602_anx37973z1),
	.cout(ix3163z30602_anx45949z31));
// synopsys translate_off
defparam ix3163z30602_aix45949z52939.lut_mask = 16'h9617;
defparam ix3163z30602_aix45949z52939.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N26
cycloneii_lcell_comb ix3163z52953(
// Equation(s):
// nx3163z47 = (i_1_ & (i_input_acombout[1])) # (!i_1_ & ((i_2_ & (i_input_acombout[1])) # (!i_2_ & ((mem_1_aix64056z44885_aauto_generated_aq_b[1])))))

	.dataa(i_input_acombout[1]),
	.datab(i_1_),
	.datac(i_2_),
	.datad(mem_1_aix64056z44885_aauto_generated_aq_b[1]),
	.cin(gnd),
	.combout(nx3163z47),
	.cout());
// synopsys translate_off
defparam ix3163z52953.lut_mask = 16'hABA8;
defparam ix3163z52953.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y28_N28
cycloneii_lcell_comb ix3163z30602_aix45949z52938(
// Equation(s):
// ix3163z30602_anx45949z28 = nx54084z1 $ (!nx3163z47)

	.dataa(vcc),
	.datab(vcc),
	.datac(nx54084z1),
	.datad(nx3163z47),
	.cin(gnd),
	.combout(ix3163z30602_anx45949z28),
	.cout());
// synopsys translate_off
defparam ix3163z30602_aix45949z52938.lut_mask = 16'hF00F;
defparam ix3163z30602_aix45949z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N14
cycloneii_lcell_comb ix3163z30602_aix45949z52937(
// Equation(s):
// ix3163z30602_anx38970z1 = ((nx3163z33 $ (ix3163z30602_anx45949z28 $ (!ix3163z30602_anx45949z31)))) # (GND)
// ix3163z30602_anx45949z27 = CARRY((nx3163z33 & ((ix3163z30602_anx45949z28) # (!ix3163z30602_anx45949z31))) # (!nx3163z33 & (ix3163z30602_anx45949z28 & !ix3163z30602_anx45949z31)))

	.dataa(nx3163z33),
	.datab(ix3163z30602_anx45949z28),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z31),
	.combout(ix3163z30602_anx38970z1),
	.cout(ix3163z30602_anx45949z27));
// synopsys translate_off
defparam ix3163z30602_aix45949z52937.lut_mask = 16'h698E;
defparam ix3163z30602_aix45949z52937.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N6
cycloneii_lcell_comb ix3163z19322_aix44952z52928(
// Equation(s):
// ix3163z19322_anx40964z1 = (mem_0_aix64056z44884_aauto_generated_aq_b[3] & ((mem_aix64056z44883_aauto_generated_aq_b[3] & (!ix3163z19322_anx44952z16)) # (!mem_aix64056z44883_aauto_generated_aq_b[3] & ((ix3163z19322_anx44952z16) # (GND))))) # 
// (!mem_0_aix64056z44884_aauto_generated_aq_b[3] & ((mem_aix64056z44883_aauto_generated_aq_b[3] & (ix3163z19322_anx44952z16 & VCC)) # (!mem_aix64056z44883_aauto_generated_aq_b[3] & (!ix3163z19322_anx44952z16))))
// ix3163z19322_anx44952z13 = CARRY((mem_0_aix64056z44884_aauto_generated_aq_b[3] & ((!ix3163z19322_anx44952z16) # (!mem_aix64056z44883_aauto_generated_aq_b[3]))) # (!mem_0_aix64056z44884_aauto_generated_aq_b[3] & (!mem_aix64056z44883_aauto_generated_aq_b[3] 
// & !ix3163z19322_anx44952z16)))

	.dataa(mem_0_aix64056z44884_aauto_generated_aq_b[3]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z16),
	.combout(ix3163z19322_anx40964z1),
	.cout(ix3163z19322_anx44952z13));
// synopsys translate_off
defparam ix3163z19322_aix44952z52928.lut_mask = 16'h692B;
defparam ix3163z19322_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N14
cycloneii_lcell_comb ix3163z19319_aix44952z52929(
// Equation(s):
// ix3163z19319_anx39967z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b[2] $ (mem_aix64056z44883_aauto_generated_aq_b[2] $ (ix3163z19319_anx44952z19)))) # (GND)
// ix3163z19319_anx44952z16 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b[2] & ((!ix3163z19319_anx44952z19) # (!mem_aix64056z44883_aauto_generated_aq_b[2]))) # (!mem_1_aix64056z44885_aauto_generated_aq_b[2] & (!mem_aix64056z44883_aauto_generated_aq_b[2] 
// & !ix3163z19319_anx44952z19)))

	.dataa(mem_1_aix64056z44885_aauto_generated_aq_b[2]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[2]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z19),
	.combout(ix3163z19319_anx39967z1),
	.cout(ix3163z19319_anx44952z16));
// synopsys translate_off
defparam ix3163z19319_aix44952z52929.lut_mask = 16'h962B;
defparam ix3163z19319_aix44952z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N16
cycloneii_lcell_comb ix3163z19319_aix44952z52928(
// Equation(s):
// ix3163z19319_anx40964z1 = (mem_aix64056z44883_aauto_generated_aq_b[3] & ((mem_1_aix64056z44885_aauto_generated_aq_b[3] & (!ix3163z19319_anx44952z16)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[3] & ((ix3163z19319_anx44952z16) # (GND))))) # 
// (!mem_aix64056z44883_aauto_generated_aq_b[3] & ((mem_1_aix64056z44885_aauto_generated_aq_b[3] & (ix3163z19319_anx44952z16 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[3] & (!ix3163z19319_anx44952z16))))
// ix3163z19319_anx44952z13 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[3] & ((!ix3163z19319_anx44952z16) # (!mem_1_aix64056z44885_aauto_generated_aq_b[3]))) # (!mem_aix64056z44883_aauto_generated_aq_b[3] & (!mem_1_aix64056z44885_aauto_generated_aq_b[3] 
// & !ix3163z19319_anx44952z16)))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[3]),
	.datab(mem_1_aix64056z44885_aauto_generated_aq_b[3]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z16),
	.combout(ix3163z19319_anx40964z1),
	.cout(ix3163z19319_anx44952z13));
// synopsys translate_off
defparam ix3163z19319_aix44952z52928.lut_mask = 16'h692B;
defparam ix3163z19319_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N30
cycloneii_lcell_comb ix3163z52940(
// Equation(s):
// nx3163z26 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b[3])))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx40964z1)))

	.dataa(nx51243z1),
	.datab(nx54113z1),
	.datac(ix3163z19319_anx40964z1),
	.datad(mem_0_aix64056z44884_aauto_generated_aq_b[3]),
	.cin(gnd),
	.combout(nx3163z26),
	.cout());
// synopsys translate_off
defparam ix3163z52940.lut_mask = 16'hBA98;
defparam ix3163z52940.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N30
cycloneii_lcell_comb ix3163z52939(
// Equation(s):
// nx3163z25 = (nx54113z1 & (ix3163z19322_anx40964z1 & !nx3163z26)) # (!nx54113z1 & ((nx3163z26)))

	.dataa(vcc),
	.datab(nx54113z1),
	.datac(ix3163z19322_anx40964z1),
	.datad(nx3163z26),
	.cin(gnd),
	.combout(nx3163z25),
	.cout());
// synopsys translate_off
defparam ix3163z52939.lut_mask = 16'h33C0;
defparam ix3163z52939.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N8
cycloneii_lcell_comb ix3163z52942(
// Equation(s):
// nx3163z30 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b[2])))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx39967z1)))

	.dataa(nx51243z1),
	.datab(nx54113z1),
	.datac(ix3163z19319_anx39967z1),
	.datad(mem_0_aix64056z44884_aauto_generated_aq_b[2]),
	.cin(gnd),
	.combout(nx3163z30),
	.cout());
// synopsys translate_off
defparam ix3163z52942.lut_mask = 16'hBA98;
defparam ix3163z52942.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N8
cycloneii_lcell_comb ix3163z52941(
// Equation(s):
// nx3163z29 = (nx54113z1 & (ix3163z19322_anx39967z1 & !nx3163z30)) # (!nx54113z1 & ((nx3163z30)))

	.dataa(ix3163z19322_anx39967z1),
	.datab(vcc),
	.datac(nx54113z1),
	.datad(nx3163z30),
	.cin(gnd),
	.combout(nx3163z29),
	.cout());
// synopsys translate_off
defparam ix3163z52941.lut_mask = 16'h0FA0;
defparam ix3163z52941.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N18
cycloneii_lcell_comb ix3163z30602_aix45949z52933(
// Equation(s):
// ix3163z30602_anx40964z1 = ((ix3163z30602_anx45949z20 $ (nx3163z25 $ (!ix3163z30602_anx45949z23)))) # (GND)
// ix3163z30602_anx45949z19 = CARRY((ix3163z30602_anx45949z20 & ((nx3163z25) # (!ix3163z30602_anx45949z23))) # (!ix3163z30602_anx45949z20 & (nx3163z25 & !ix3163z30602_anx45949z23)))

	.dataa(ix3163z30602_anx45949z20),
	.datab(nx3163z25),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z23),
	.combout(ix3163z30602_anx40964z1),
	.cout(ix3163z30602_anx45949z19));
// synopsys translate_off
defparam ix3163z30602_aix45949z52933.lut_mask = 16'h698E;
defparam ix3163z30602_aix45949z52933.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N26
cycloneii_lcell_comb ix3163z52964(
// Equation(s):
// nx3163z75 = (!ix3163z30602_anx39967z1 & (!ix3163z30602_anx37973z1 & (!ix3163z30602_anx38970z1 & !ix3163z30602_anx40964z1)))

	.dataa(ix3163z30602_anx39967z1),
	.datab(ix3163z30602_anx37973z1),
	.datac(ix3163z30602_anx38970z1),
	.datad(ix3163z30602_anx40964z1),
	.cin(gnd),
	.combout(nx3163z75),
	.cout());
// synopsys translate_off
defparam ix3163z52964.lut_mask = 16'h0001;
defparam ix3163z52964.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N8
cycloneii_lcell_comb ix3163z19322_aix44952z52927(
// Equation(s):
// ix3163z19322_anx41961z1 = ((mem_aix64056z44883_aauto_generated_aq_b[4] $ (mem_0_aix64056z44884_aauto_generated_aq_b[4] $ (ix3163z19322_anx44952z13)))) # (GND)
// ix3163z19322_anx44952z10 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[4] & ((!ix3163z19322_anx44952z13) # (!mem_0_aix64056z44884_aauto_generated_aq_b[4]))) # (!mem_aix64056z44883_aauto_generated_aq_b[4] & (!mem_0_aix64056z44884_aauto_generated_aq_b[4] 
// & !ix3163z19322_anx44952z13)))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[4]),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z13),
	.combout(ix3163z19322_anx41961z1),
	.cout(ix3163z19322_anx44952z10));
// synopsys translate_off
defparam ix3163z19322_aix44952z52927.lut_mask = 16'h962B;
defparam ix3163z19322_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N18
cycloneii_lcell_comb ix3163z19319_aix44952z52927(
// Equation(s):
// ix3163z19319_anx41961z1 = ((mem_1_aix64056z44885_aauto_generated_aq_b[4] $ (mem_aix64056z44883_aauto_generated_aq_b[4] $ (ix3163z19319_anx44952z13)))) # (GND)
// ix3163z19319_anx44952z10 = CARRY((mem_1_aix64056z44885_aauto_generated_aq_b[4] & ((!ix3163z19319_anx44952z13) # (!mem_aix64056z44883_aauto_generated_aq_b[4]))) # (!mem_1_aix64056z44885_aauto_generated_aq_b[4] & (!mem_aix64056z44883_aauto_generated_aq_b[4] 
// & !ix3163z19319_anx44952z13)))

	.dataa(mem_1_aix64056z44885_aauto_generated_aq_b[4]),
	.datab(mem_aix64056z44883_aauto_generated_aq_b[4]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z13),
	.combout(ix3163z19319_anx41961z1),
	.cout(ix3163z19319_anx44952z10));
// synopsys translate_off
defparam ix3163z19319_aix44952z52927.lut_mask = 16'h962B;
defparam ix3163z19319_aix44952z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N28
cycloneii_lcell_comb ix3163z52938(
// Equation(s):
// nx3163z22 = (nx54113z1 & (((nx51243z1)))) # (!nx54113z1 & ((nx51243z1 & (mem_0_aix64056z44884_aauto_generated_aq_b[4])) # (!nx51243z1 & ((ix3163z19319_anx41961z1)))))

	.dataa(nx54113z1),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[4]),
	.datac(nx51243z1),
	.datad(ix3163z19319_anx41961z1),
	.cin(gnd),
	.combout(nx3163z22),
	.cout());
// synopsys translate_off
defparam ix3163z52938.lut_mask = 16'hE5E0;
defparam ix3163z52938.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N4
cycloneii_lcell_comb ix3163z52937(
// Equation(s):
// nx3163z21 = (nx54113z1 & (ix3163z19322_anx41961z1 & !nx3163z22)) # (!nx54113z1 & ((nx3163z22)))

	.dataa(vcc),
	.datab(nx54113z1),
	.datac(ix3163z19322_anx41961z1),
	.datad(nx3163z22),
	.cin(gnd),
	.combout(nx3163z21),
	.cout());
// synopsys translate_off
defparam ix3163z52937.lut_mask = 16'h33C0;
defparam ix3163z52937.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N20
cycloneii_lcell_comb ix3163z30602_aix45949z52931(
// Equation(s):
// ix3163z30602_anx41961z1 = (ix3163z30602_anx45949z16 & ((nx3163z21 & (ix3163z30602_anx45949z19 & VCC)) # (!nx3163z21 & (!ix3163z30602_anx45949z19)))) # (!ix3163z30602_anx45949z16 & ((nx3163z21 & (!ix3163z30602_anx45949z19)) # (!nx3163z21 & 
// ((ix3163z30602_anx45949z19) # (GND)))))
// ix3163z30602_anx45949z15 = CARRY((ix3163z30602_anx45949z16 & (!nx3163z21 & !ix3163z30602_anx45949z19)) # (!ix3163z30602_anx45949z16 & ((!ix3163z30602_anx45949z19) # (!nx3163z21))))

	.dataa(ix3163z30602_anx45949z16),
	.datab(nx3163z21),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z19),
	.combout(ix3163z30602_anx41961z1),
	.cout(ix3163z30602_anx45949z15));
// synopsys translate_off
defparam ix3163z30602_aix45949z52931.lut_mask = 16'h9617;
defparam ix3163z30602_aix45949z52931.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N10
cycloneii_lcell_comb ix3163z19322_aix44952z52926(
// Equation(s):
// ix3163z19322_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b[5] & ((mem_0_aix64056z44884_aauto_generated_aq_b[5] & (!ix3163z19322_anx44952z10)) # (!mem_0_aix64056z44884_aauto_generated_aq_b[5] & (ix3163z19322_anx44952z10 & VCC)))) # 
// (!mem_aix64056z44883_aauto_generated_aq_b[5] & ((mem_0_aix64056z44884_aauto_generated_aq_b[5] & ((ix3163z19322_anx44952z10) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b[5] & (!ix3163z19322_anx44952z10))))
// ix3163z19322_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[5] & (mem_0_aix64056z44884_aauto_generated_aq_b[5] & !ix3163z19322_anx44952z10)) # (!mem_aix64056z44883_aauto_generated_aq_b[5] & ((mem_0_aix64056z44884_aauto_generated_aq_b[5]) # 
// (!ix3163z19322_anx44952z10))))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[5]),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z10),
	.combout(ix3163z19322_anx42958z1),
	.cout(ix3163z19322_anx44952z7));
// synopsys translate_off
defparam ix3163z19322_aix44952z52926.lut_mask = 16'h694D;
defparam ix3163z19322_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N12
cycloneii_lcell_comb ix3163z19322_aix44952z52925(
// Equation(s):
// ix3163z19322_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b[6] $ (mem_0_aix64056z44884_aauto_generated_aq_b[6] $ (ix3163z19322_anx44952z7)))) # (GND)
// ix3163z19322_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[6] & ((!ix3163z19322_anx44952z7) # (!mem_0_aix64056z44884_aauto_generated_aq_b[6]))) # (!mem_aix64056z44883_aauto_generated_aq_b[6] & (!mem_0_aix64056z44884_aauto_generated_aq_b[6] & 
// !ix3163z19322_anx44952z7)))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[6]),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z7),
	.combout(ix3163z19322_anx43955z1),
	.cout(ix3163z19322_anx44952z4));
// synopsys translate_off
defparam ix3163z19322_aix44952z52925.lut_mask = 16'h962B;
defparam ix3163z19322_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N14
cycloneii_lcell_comb ix3163z19322_aix44952z52923(
// Equation(s):
// ix3163z19322_anx44952z1 = (mem_aix64056z44883_aauto_generated_aq_b[7] & ((mem_0_aix64056z44884_aauto_generated_aq_b[7] & (!ix3163z19322_anx44952z4)) # (!mem_0_aix64056z44884_aauto_generated_aq_b[7] & (ix3163z19322_anx44952z4 & VCC)))) # 
// (!mem_aix64056z44883_aauto_generated_aq_b[7] & ((mem_0_aix64056z44884_aauto_generated_aq_b[7] & ((ix3163z19322_anx44952z4) # (GND))) # (!mem_0_aix64056z44884_aauto_generated_aq_b[7] & (!ix3163z19322_anx44952z4))))
// ix3163z19322_anx23445z2 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[7] & (mem_0_aix64056z44884_aauto_generated_aq_b[7] & !ix3163z19322_anx44952z4)) # (!mem_aix64056z44883_aauto_generated_aq_b[7] & ((mem_0_aix64056z44884_aauto_generated_aq_b[7]) # 
// (!ix3163z19322_anx44952z4))))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[7]),
	.datab(mem_0_aix64056z44884_aauto_generated_aq_b[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx44952z4),
	.combout(ix3163z19322_anx44952z1),
	.cout(ix3163z19322_anx23445z2));
// synopsys translate_off
defparam ix3163z19322_aix44952z52923.lut_mask = 16'h694D;
defparam ix3163z19322_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N20
cycloneii_lcell_comb ix3163z19319_aix44952z52926(
// Equation(s):
// ix3163z19319_anx42958z1 = (mem_aix64056z44883_aauto_generated_aq_b[5] & ((mem_1_aix64056z44885_aauto_generated_aq_b[5] & (!ix3163z19319_anx44952z10)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[5] & ((ix3163z19319_anx44952z10) # (GND))))) # 
// (!mem_aix64056z44883_aauto_generated_aq_b[5] & ((mem_1_aix64056z44885_aauto_generated_aq_b[5] & (ix3163z19319_anx44952z10 & VCC)) # (!mem_1_aix64056z44885_aauto_generated_aq_b[5] & (!ix3163z19319_anx44952z10))))
// ix3163z19319_anx44952z7 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[5] & ((!ix3163z19319_anx44952z10) # (!mem_1_aix64056z44885_aauto_generated_aq_b[5]))) # (!mem_aix64056z44883_aauto_generated_aq_b[5] & (!mem_1_aix64056z44885_aauto_generated_aq_b[5] 
// & !ix3163z19319_anx44952z10)))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[5]),
	.datab(mem_1_aix64056z44885_aauto_generated_aq_b[5]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z10),
	.combout(ix3163z19319_anx42958z1),
	.cout(ix3163z19319_anx44952z7));
// synopsys translate_off
defparam ix3163z19319_aix44952z52926.lut_mask = 16'h692B;
defparam ix3163z19319_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N22
cycloneii_lcell_comb ix3163z19319_aix44952z52925(
// Equation(s):
// ix3163z19319_anx43955z1 = ((mem_aix64056z44883_aauto_generated_aq_b[6] $ (mem_1_aix64056z44885_aauto_generated_aq_b[6] $ (ix3163z19319_anx44952z7)))) # (GND)
// ix3163z19319_anx44952z4 = CARRY((mem_aix64056z44883_aauto_generated_aq_b[6] & (mem_1_aix64056z44885_aauto_generated_aq_b[6] & !ix3163z19319_anx44952z7)) # (!mem_aix64056z44883_aauto_generated_aq_b[6] & ((mem_1_aix64056z44885_aauto_generated_aq_b[6]) # 
// (!ix3163z19319_anx44952z7))))

	.dataa(mem_aix64056z44883_aauto_generated_aq_b[6]),
	.datab(mem_1_aix64056z44885_aauto_generated_aq_b[6]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19319_anx44952z7),
	.combout(ix3163z19319_anx43955z1),
	.cout(ix3163z19319_anx44952z4));
// synopsys translate_off
defparam ix3163z19319_aix44952z52925.lut_mask = 16'h964D;
defparam ix3163z19319_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N24
cycloneii_lcell_comb ix3163z52932(
// Equation(s):
// nx3163z10 = (nx54113z1 & (nx51243z1)) # (!nx54113z1 & ((nx51243z1 & (mem_0_aix64056z44884_aauto_generated_aq_b[7])) # (!nx51243z1 & ((ix3163z19319_anx44952z1)))))

	.dataa(nx54113z1),
	.datab(nx51243z1),
	.datac(mem_0_aix64056z44884_aauto_generated_aq_b[7]),
	.datad(ix3163z19319_anx44952z1),
	.cin(gnd),
	.combout(nx3163z10),
	.cout());
// synopsys translate_off
defparam ix3163z52932.lut_mask = 16'hD9C8;
defparam ix3163z52932.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N18
cycloneii_lcell_comb ix3163z52931(
// Equation(s):
// nx3163z9 = (nx3163z10 & ((!nx54113z1))) # (!nx3163z10 & (ix3163z19322_anx44952z1 & nx54113z1))

	.dataa(vcc),
	.datab(ix3163z19322_anx44952z1),
	.datac(nx3163z10),
	.datad(nx54113z1),
	.cin(gnd),
	.combout(nx3163z9),
	.cout());
// synopsys translate_off
defparam ix3163z52931.lut_mask = 16'h0CF0;
defparam ix3163z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N0
cycloneii_lcell_comb ix3163z52934(
// Equation(s):
// nx3163z14 = (nx51243z1 & ((mem_0_aix64056z44884_aauto_generated_aq_b[6]) # ((nx54113z1)))) # (!nx51243z1 & (((!nx54113z1 & ix3163z19319_anx43955z1))))

	.dataa(mem_0_aix64056z44884_aauto_generated_aq_b[6]),
	.datab(nx51243z1),
	.datac(nx54113z1),
	.datad(ix3163z19319_anx43955z1),
	.cin(gnd),
	.combout(nx3163z14),
	.cout());
// synopsys translate_off
defparam ix3163z52934.lut_mask = 16'hCBC8;
defparam ix3163z52934.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N2
cycloneii_lcell_comb ix3163z52933(
// Equation(s):
// nx3163z13 = (nx54113z1 & (ix3163z19322_anx43955z1 & !nx3163z14)) # (!nx54113z1 & ((nx3163z14)))

	.dataa(vcc),
	.datab(nx54113z1),
	.datac(ix3163z19322_anx43955z1),
	.datad(nx3163z14),
	.cin(gnd),
	.combout(nx3163z13),
	.cout());
// synopsys translate_off
defparam ix3163z52933.lut_mask = 16'h33C0;
defparam ix3163z52933.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N0
cycloneii_lcell_comb ix3163z52936(
// Equation(s):
// nx3163z18 = (nx51243z1 & ((nx54113z1) # ((mem_0_aix64056z44884_aauto_generated_aq_b[5])))) # (!nx51243z1 & (!nx54113z1 & (ix3163z19319_anx42958z1)))

	.dataa(nx51243z1),
	.datab(nx54113z1),
	.datac(ix3163z19319_anx42958z1),
	.datad(mem_0_aix64056z44884_aauto_generated_aq_b[5]),
	.cin(gnd),
	.combout(nx3163z18),
	.cout());
// synopsys translate_off
defparam ix3163z52936.lut_mask = 16'hBA98;
defparam ix3163z52936.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X53_Y27_N2
cycloneii_lcell_comb ix3163z52935(
// Equation(s):
// nx3163z17 = (nx54113z1 & (ix3163z19322_anx42958z1 & !nx3163z18)) # (!nx54113z1 & ((nx3163z18)))

	.dataa(vcc),
	.datab(nx54113z1),
	.datac(ix3163z19322_anx42958z1),
	.datad(nx3163z18),
	.cin(gnd),
	.combout(nx3163z17),
	.cout());
// synopsys translate_off
defparam ix3163z52935.lut_mask = 16'h33C0;
defparam ix3163z52935.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N22
cycloneii_lcell_comb ix3163z30602_aix45949z52929(
// Equation(s):
// ix3163z30602_anx42958z1 = ((ix3163z30602_anx45949z12 $ (nx3163z17 $ (!ix3163z30602_anx45949z15)))) # (GND)
// ix3163z30602_anx45949z11 = CARRY((ix3163z30602_anx45949z12 & ((nx3163z17) # (!ix3163z30602_anx45949z15))) # (!ix3163z30602_anx45949z12 & (nx3163z17 & !ix3163z30602_anx45949z15)))

	.dataa(ix3163z30602_anx45949z12),
	.datab(nx3163z17),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z15),
	.combout(ix3163z30602_anx42958z1),
	.cout(ix3163z30602_anx45949z11));
// synopsys translate_off
defparam ix3163z30602_aix45949z52929.lut_mask = 16'h698E;
defparam ix3163z30602_aix45949z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X50_Y27_N24
cycloneii_lcell_comb ix3163z30602_aix45949z52927(
// Equation(s):
// ix3163z30602_anx43955z1 = (ix3163z30602_anx45949z8 & ((nx3163z13 & (ix3163z30602_anx45949z11 & VCC)) # (!nx3163z13 & (!ix3163z30602_anx45949z11)))) # (!ix3163z30602_anx45949z8 & ((nx3163z13 & (!ix3163z30602_anx45949z11)) # (!nx3163z13 & 
// ((ix3163z30602_anx45949z11) # (GND)))))
// ix3163z30602_anx45949z7 = CARRY((ix3163z30602_anx45949z8 & (!nx3163z13 & !ix3163z30602_anx45949z11)) # (!ix3163z30602_anx45949z8 & ((!ix3163z30602_anx45949z11) # (!nx3163z13))))

	.dataa(ix3163z30602_anx45949z8),
	.datab(nx3163z13),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z30602_anx45949z11),
	.combout(ix3163z30602_anx43955z1),
	.cout(ix3163z30602_anx45949z7));
// synopsys translate_off
defparam ix3163z30602_aix45949z52927.lut_mask = 16'h9617;
defparam ix3163z30602_aix45949z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N10
cycloneii_lcell_comb ix3163z52963(
// Equation(s):
// nx3163z74 = (!ix3163z30602_anx42958z1 & (!ix3163z30602_anx41961z1 & (!ix3163z30602_anx44952z1 & !ix3163z30602_anx43955z1)))

	.dataa(ix3163z30602_anx42958z1),
	.datab(ix3163z30602_anx41961z1),
	.datac(ix3163z30602_anx44952z1),
	.datad(ix3163z30602_anx43955z1),
	.cin(gnd),
	.combout(nx3163z74),
	.cout());
// synopsys translate_off
defparam ix3163z52963.lut_mask = 16'h0001;
defparam ix3163z52963.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N20
cycloneii_lcell_comb ix3163z52962(
// Equation(s):
// nx3163z73 = (nx3163z57 & (nx3163z75 & nx3163z74))

	.dataa(vcc),
	.datab(nx3163z57),
	.datac(nx3163z75),
	.datad(nx3163z74),
	.cin(gnd),
	.combout(nx3163z73),
	.cout());
// synopsys translate_off
defparam ix3163z52962.lut_mask = 16'hC000;
defparam ix3163z52962.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X51_Y27_N16
cycloneii_lcell_comb ix3163z19322_aix23445z52923(
// Equation(s):
// ix3163z19322_anx23445z1 = !ix3163z19322_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z19322_anx23445z2),
	.combout(ix3163z19322_anx23445z1),
	.cout());
// synopsys translate_off
defparam ix3163z19322_aix23445z52923.lut_mask = 16'h0F0F;
defparam ix3163z19322_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N6
cycloneii_lcell_comb ix3163z60014_aix44952z52931(
// Equation(s):
// ix3163z60014_anx37973z1 = (i_input_acombout[0] & (ix3163z30602_anx37973z1 $ (VCC))) # (!i_input_acombout[0] & (ix3163z30602_anx37973z1 & VCC))
// ix3163z60014_anx44952z22 = CARRY((i_input_acombout[0] & ix3163z30602_anx37973z1))

	.dataa(i_input_acombout[0]),
	.datab(ix3163z30602_anx37973z1),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(ix3163z60014_anx37973z1),
	.cout(ix3163z60014_anx44952z22));
// synopsys translate_off
defparam ix3163z60014_aix44952z52931.lut_mask = 16'h6688;
defparam ix3163z60014_aix44952z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N8
cycloneii_lcell_comb ix3163z60014_aix44952z52930(
// Equation(s):
// ix3163z60014_anx38970z1 = (i_input_acombout[1] & ((ix3163z30602_anx38970z1 & (ix3163z60014_anx44952z22 & VCC)) # (!ix3163z30602_anx38970z1 & (!ix3163z60014_anx44952z22)))) # (!i_input_acombout[1] & ((ix3163z30602_anx38970z1 & (!ix3163z60014_anx44952z22)) 
// # (!ix3163z30602_anx38970z1 & ((ix3163z60014_anx44952z22) # (GND)))))
// ix3163z60014_anx44952z19 = CARRY((i_input_acombout[1] & (!ix3163z30602_anx38970z1 & !ix3163z60014_anx44952z22)) # (!i_input_acombout[1] & ((!ix3163z60014_anx44952z22) # (!ix3163z30602_anx38970z1))))

	.dataa(i_input_acombout[1]),
	.datab(ix3163z30602_anx38970z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z22),
	.combout(ix3163z60014_anx38970z1),
	.cout(ix3163z60014_anx44952z19));
// synopsys translate_off
defparam ix3163z60014_aix44952z52930.lut_mask = 16'h9617;
defparam ix3163z60014_aix44952z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N12
cycloneii_lcell_comb ix3163z60014_aix44952z52928(
// Equation(s):
// ix3163z60014_anx40964z1 = (i_input_acombout[3] & ((ix3163z30602_anx40964z1 & (ix3163z60014_anx44952z16 & VCC)) # (!ix3163z30602_anx40964z1 & (!ix3163z60014_anx44952z16)))) # (!i_input_acombout[3] & ((ix3163z30602_anx40964z1 & (!ix3163z60014_anx44952z16)) 
// # (!ix3163z30602_anx40964z1 & ((ix3163z60014_anx44952z16) # (GND)))))
// ix3163z60014_anx44952z13 = CARRY((i_input_acombout[3] & (!ix3163z30602_anx40964z1 & !ix3163z60014_anx44952z16)) # (!i_input_acombout[3] & ((!ix3163z60014_anx44952z16) # (!ix3163z30602_anx40964z1))))

	.dataa(i_input_acombout[3]),
	.datab(ix3163z30602_anx40964z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z16),
	.combout(ix3163z60014_anx40964z1),
	.cout(ix3163z60014_anx44952z13));
// synopsys translate_off
defparam ix3163z60014_aix44952z52928.lut_mask = 16'h9617;
defparam ix3163z60014_aix44952z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N16
cycloneii_lcell_comb ix3163z60014_aix44952z52926(
// Equation(s):
// ix3163z60014_anx42958z1 = (i_input_acombout[5] & ((ix3163z30602_anx42958z1 & (ix3163z60014_anx44952z10 & VCC)) # (!ix3163z30602_anx42958z1 & (!ix3163z60014_anx44952z10)))) # (!i_input_acombout[5] & ((ix3163z30602_anx42958z1 & (!ix3163z60014_anx44952z10)) 
// # (!ix3163z30602_anx42958z1 & ((ix3163z60014_anx44952z10) # (GND)))))
// ix3163z60014_anx44952z7 = CARRY((i_input_acombout[5] & (!ix3163z30602_anx42958z1 & !ix3163z60014_anx44952z10)) # (!i_input_acombout[5] & ((!ix3163z60014_anx44952z10) # (!ix3163z30602_anx42958z1))))

	.dataa(i_input_acombout[5]),
	.datab(ix3163z30602_anx42958z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z10),
	.combout(ix3163z60014_anx42958z1),
	.cout(ix3163z60014_anx44952z7));
// synopsys translate_off
defparam ix3163z60014_aix44952z52926.lut_mask = 16'h9617;
defparam ix3163z60014_aix44952z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N18
cycloneii_lcell_comb ix3163z60014_aix44952z52925(
// Equation(s):
// ix3163z60014_anx43955z1 = ((i_input_acombout[6] $ (ix3163z30602_anx43955z1 $ (!ix3163z60014_anx44952z7)))) # (GND)
// ix3163z60014_anx44952z4 = CARRY((i_input_acombout[6] & ((ix3163z30602_anx43955z1) # (!ix3163z60014_anx44952z7))) # (!i_input_acombout[6] & (ix3163z30602_anx43955z1 & !ix3163z60014_anx44952z7)))

	.dataa(i_input_acombout[6]),
	.datab(ix3163z30602_anx43955z1),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z7),
	.combout(ix3163z60014_anx43955z1),
	.cout(ix3163z60014_anx44952z4));
// synopsys translate_off
defparam ix3163z60014_aix44952z52925.lut_mask = 16'h698E;
defparam ix3163z60014_aix44952z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N20
cycloneii_lcell_comb ix3163z60014_aix44952z52923(
// Equation(s):
// ix3163z60014_anx44952z1 = (ix3163z30602_anx44952z1 & ((i_input_acombout[7] & (ix3163z60014_anx44952z4 & VCC)) # (!i_input_acombout[7] & (!ix3163z60014_anx44952z4)))) # (!ix3163z30602_anx44952z1 & ((i_input_acombout[7] & (!ix3163z60014_anx44952z4)) # 
// (!i_input_acombout[7] & ((ix3163z60014_anx44952z4) # (GND)))))
// ix3163z60014_anx23445z2 = CARRY((ix3163z30602_anx44952z1 & (!i_input_acombout[7] & !ix3163z60014_anx44952z4)) # (!ix3163z30602_anx44952z1 & ((!ix3163z60014_anx44952z4) # (!i_input_acombout[7]))))

	.dataa(ix3163z30602_anx44952z1),
	.datab(i_input_acombout[7]),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx44952z4),
	.combout(ix3163z60014_anx44952z1),
	.cout(ix3163z60014_anx23445z2));
// synopsys translate_off
defparam ix3163z60014_aix44952z52923.lut_mask = 16'h9617;
defparam ix3163z60014_aix44952z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N22
cycloneii_lcell_comb ix3163z60014_aix23445z52923(
// Equation(s):
// ix3163z60014_anx23445z1 = !ix3163z60014_anx23445z2

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(ix3163z60014_anx23445z2),
	.combout(ix3163z60014_anx23445z1),
	.cout());
// synopsys translate_off
defparam ix3163z60014_aix23445z52923.lut_mask = 16'h0F0F;
defparam ix3163z60014_aix23445z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N22
cycloneii_lcell_comb ix3163z52927(
// Equation(s):
// nx3163z5 = (nx54113z1 & (ix3163z19322_anx23445z1 & ((ix3163z60014_anx23445z1) # (!nx51243z1)))) # (!nx54113z1 & (((ix3163z60014_anx23445z1)) # (!nx51243z1)))

	.dataa(nx54113z1),
	.datab(nx51243z1),
	.datac(ix3163z19322_anx23445z1),
	.datad(ix3163z60014_anx23445z1),
	.cin(gnd),
	.combout(nx3163z5),
	.cout());
// synopsys translate_off
defparam ix3163z52927.lut_mask = 16'hF531;
defparam ix3163z52927.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N24
cycloneii_lcell_comb ix3163z52966(
// Equation(s):
// nx3163z77 = (nx3163z73) # ((nx3163z5 & ((ix3163z19319_anx23445z1) # (!nx3163z3))))

	.dataa(ix3163z19319_anx23445z1),
	.datab(nx3163z3),
	.datac(nx3163z73),
	.datad(nx3163z5),
	.cin(gnd),
	.combout(nx3163z77),
	.cout());
// synopsys translate_off
defparam ix3163z52966.lut_mask = 16'hFBF0;
defparam ix3163z52966.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X49_Y27_N30
cycloneii_lcell_comb ix3163z52959(
// Equation(s):
// nx3163z65 = (!ix3163z60014_anx39967z1 & (!ix3163z60014_anx37973z1 & (!ix3163z60014_anx38970z1 & !ix3163z60014_anx40964z1)))

	.dataa(ix3163z60014_anx39967z1),
	.datab(ix3163z60014_anx37973z1),
	.datac(ix3163z60014_anx38970z1),
	.datad(ix3163z60014_anx40964z1),
	.cin(gnd),
	.combout(nx3163z65),
	.cout());
// synopsys translate_off
defparam ix3163z52959.lut_mask = 16'h0001;
defparam ix3163z52959.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N26
cycloneii_lcell_comb ix3163z52958(
// Equation(s):
// nx3163z60 = (!ix3163z60014_anx41961z1 & (!ix3163z60014_anx43955z1 & (!ix3163z60014_anx42958z1 & !ix3163z60014_anx44952z1)))

	.dataa(ix3163z60014_anx41961z1),
	.datab(ix3163z60014_anx43955z1),
	.datac(ix3163z60014_anx42958z1),
	.datad(ix3163z60014_anx44952z1),
	.cin(gnd),
	.combout(nx3163z60),
	.cout());
// synopsys translate_off
defparam ix3163z52958.lut_mask = 16'h0001;
defparam ix3163z52958.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N4
cycloneii_lcell_comb ix3163z52955(
// Equation(s):
// nx3163z56 = (nx3163z58) # ((nx3163z65 & (!nx3163z57 & nx3163z60)))

	.dataa(nx3163z58),
	.datab(nx3163z65),
	.datac(nx3163z57),
	.datad(nx3163z60),
	.cin(gnd),
	.combout(nx3163z56),
	.cout());
// synopsys translate_off
defparam ix3163z52955.lut_mask = 16'hAEAA;
defparam ix3163z52955.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N14
cycloneii_lcell_comb ix3163z52965(
// Equation(s):
// nx3163z76 = (!nx3163z71 & (((!nx3163z77 & !nx3163z56)) # (!nx3163z72)))

	.dataa(nx3163z72),
	.datab(nx3163z71),
	.datac(nx3163z77),
	.datad(nx3163z56),
	.cin(gnd),
	.combout(nx3163z76),
	.cout());
// synopsys translate_off
defparam ix3163z52965.lut_mask = 16'h1113;
defparam ix3163z52965.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N18
cycloneii_lcell_comb ix3163z52960(
// Equation(s):
// nx3163z70 = ((nx3163z73) # (!nx3163z71)) # (!nx3163z72)

	.dataa(nx3163z72),
	.datab(vcc),
	.datac(nx3163z73),
	.datad(nx3163z71),
	.cin(gnd),
	.combout(nx3163z70),
	.cout());
// synopsys translate_off
defparam ix3163z52960.lut_mask = 16'hF5FF;
defparam ix3163z52960.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N0
cycloneii_lcell_comb ix3163z52924(
// Equation(s):
// nx3163z2 = (nx3163z5 & ((ix3163z19319_anx23445z1) # (!nx3163z3)))

	.dataa(ix3163z19319_anx23445z1),
	.datab(vcc),
	.datac(nx3163z3),
	.datad(nx3163z5),
	.cin(gnd),
	.combout(nx3163z2),
	.cout());
// synopsys translate_off
defparam ix3163z52924.lut_mask = 16'hAF00;
defparam ix3163z52924.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N12
cycloneii_lcell_comb ix3163z52923(
// Equation(s):
// nx3163z1 = (i_valid_acombout & ((nx3163z70) # ((nx3163z56) # (nx3163z2))))

	.dataa(i_valid_acombout),
	.datab(nx3163z70),
	.datac(nx3163z56),
	.datad(nx3163z2),
	.cin(gnd),
	.combout(nx3163z1),
	.cout());
// synopsys translate_off
defparam ix3163z52923.lut_mask = 16'hAAA8;
defparam ix3163z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X48_Y27_N30
cycloneii_lcell_comb modgen_counter_o_output_aix58250z52923(
// Equation(s):
// modgen_counter_o_output_anx58250z2 = (nx3163z1 & ((nx3163z72) # (nx3163z76)))

	.dataa(nx3163z72),
	.datab(vcc),
	.datac(nx3163z76),
	.datad(nx3163z1),
	.cin(gnd),
	.combout(modgen_counter_o_output_anx58250z2),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_output_aix58250z52923.lut_mask = 16'hFA00;
defparam modgen_counter_o_output_aix58250z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y27_N1
cycloneii_lcell_ff modgen_counter_o_output_areg_q_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx51271z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z16));

// Location: LCCOMB_X47_Y27_N0
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52931(
// Equation(s):
// modgen_counter_o_output_anx51271z1 = modgen_counter_o_output_anx32510z16 $ (VCC)
// modgen_counter_o_output_anx32510z15 = CARRY(modgen_counter_o_output_anx32510z16)

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z16),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(modgen_counter_o_output_anx51271z1),
	.cout(modgen_counter_o_output_anx32510z15));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52931.lut_mask = 16'h33CC;
defparam modgen_counter_o_output_aix32510z52931.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X48_Y27_N17
cycloneii_lcell_ff reg_out_o_output_obuf_0_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_output_anx51271z1),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(vcc),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx20192z1));

// Location: LCFF_X47_Y27_N3
cycloneii_lcell_ff modgen_counter_o_output_areg_q_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx52268z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z14));

// Location: LCCOMB_X47_Y27_N2
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52930(
// Equation(s):
// modgen_counter_o_output_anx52268z1 = (modgen_counter_o_output_anx32510z14 & (!modgen_counter_o_output_anx32510z15)) # (!modgen_counter_o_output_anx32510z14 & ((modgen_counter_o_output_anx32510z15) # (GND)))
// modgen_counter_o_output_anx32510z13 = CARRY((!modgen_counter_o_output_anx32510z15) # (!modgen_counter_o_output_anx32510z14))

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z14),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z15),
	.combout(modgen_counter_o_output_anx52268z1),
	.cout(modgen_counter_o_output_anx32510z13));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52930.lut_mask = 16'h3C3F;
defparam modgen_counter_o_output_aix32510z52930.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y27_N3
cycloneii_lcell_ff reg_out_o_output_obuf_1_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_output_anx52268z1),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(vcc),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx19195z1));

// Location: LCFF_X47_Y27_N5
cycloneii_lcell_ff modgen_counter_o_output_areg_q_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx53265z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z12));

// Location: LCCOMB_X47_Y27_N4
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52929(
// Equation(s):
// modgen_counter_o_output_anx53265z1 = (modgen_counter_o_output_anx32510z12 & (modgen_counter_o_output_anx32510z13 $ (GND))) # (!modgen_counter_o_output_anx32510z12 & (!modgen_counter_o_output_anx32510z13 & VCC))
// modgen_counter_o_output_anx32510z11 = CARRY((modgen_counter_o_output_anx32510z12 & !modgen_counter_o_output_anx32510z13))

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z12),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z13),
	.combout(modgen_counter_o_output_anx53265z1),
	.cout(modgen_counter_o_output_anx32510z11));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52929.lut_mask = 16'hC30C;
defparam modgen_counter_o_output_aix32510z52929.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y27_N29
cycloneii_lcell_ff reg_out_o_output_obuf_2_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_output_anx53265z1),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(vcc),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx18198z1));

// Location: LCCOMB_X47_Y27_N6
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52928(
// Equation(s):
// modgen_counter_o_output_anx54262z1 = (modgen_counter_o_output_anx32510z10 & (!modgen_counter_o_output_anx32510z11)) # (!modgen_counter_o_output_anx32510z10 & ((modgen_counter_o_output_anx32510z11) # (GND)))
// modgen_counter_o_output_anx32510z9 = CARRY((!modgen_counter_o_output_anx32510z11) # (!modgen_counter_o_output_anx32510z10))

	.dataa(modgen_counter_o_output_anx32510z10),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z11),
	.combout(modgen_counter_o_output_anx54262z1),
	.cout(modgen_counter_o_output_anx32510z9));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52928.lut_mask = 16'h5A5F;
defparam modgen_counter_o_output_aix32510z52928.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y27_N7
cycloneii_lcell_ff reg_out_o_output_obuf_3_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_output_anx54262z1),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(vcc),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx17201z1));

// Location: LCFF_X47_Y27_N9
cycloneii_lcell_ff modgen_counter_o_output_areg_q_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx55259z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z8));

// Location: LCCOMB_X47_Y27_N8
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52927(
// Equation(s):
// modgen_counter_o_output_anx55259z1 = (modgen_counter_o_output_anx32510z8 & (modgen_counter_o_output_anx32510z9 $ (GND))) # (!modgen_counter_o_output_anx32510z8 & (!modgen_counter_o_output_anx32510z9 & VCC))
// modgen_counter_o_output_anx32510z7 = CARRY((modgen_counter_o_output_anx32510z8 & !modgen_counter_o_output_anx32510z9))

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z8),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z9),
	.combout(modgen_counter_o_output_anx55259z1),
	.cout(modgen_counter_o_output_anx32510z7));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52927.lut_mask = 16'hC30C;
defparam modgen_counter_o_output_aix32510z52927.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X48_Y27_N9
cycloneii_lcell_ff reg_out_o_output_obuf_4_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(gnd),
	.sdata(modgen_counter_o_output_anx55259z1),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(vcc),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx16204z1));

// Location: LCFF_X47_Y27_N11
cycloneii_lcell_ff modgen_counter_o_output_areg_q_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx56256z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z6));

// Location: LCCOMB_X47_Y27_N10
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52926(
// Equation(s):
// modgen_counter_o_output_anx56256z1 = (modgen_counter_o_output_anx32510z6 & (!modgen_counter_o_output_anx32510z7)) # (!modgen_counter_o_output_anx32510z6 & ((modgen_counter_o_output_anx32510z7) # (GND)))
// modgen_counter_o_output_anx32510z5 = CARRY((!modgen_counter_o_output_anx32510z7) # (!modgen_counter_o_output_anx32510z6))

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z6),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z7),
	.combout(modgen_counter_o_output_anx56256z1),
	.cout(modgen_counter_o_output_anx32510z5));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52926.lut_mask = 16'h3C3F;
defparam modgen_counter_o_output_aix32510z52926.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y27_N24
cycloneii_lcell_comb nx15207z1_afeeder(
// Equation(s):
// nx15207z1_afeeder_combout = modgen_counter_o_output_anx56256z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_output_anx56256z1),
	.cin(gnd),
	.combout(nx15207z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx15207z1_afeeder.lut_mask = 16'hFF00;
defparam nx15207z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y27_N25
cycloneii_lcell_ff reg_out_o_output_obuf_5_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx15207z1_afeeder_combout),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx15207z1));

// Location: LCCOMB_X47_Y27_N12
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52925(
// Equation(s):
// modgen_counter_o_output_anx57253z1 = (modgen_counter_o_output_anx32510z4 & (modgen_counter_o_output_anx32510z5 $ (GND))) # (!modgen_counter_o_output_anx32510z4 & (!modgen_counter_o_output_anx32510z5 & VCC))
// modgen_counter_o_output_anx32510z3 = CARRY((modgen_counter_o_output_anx32510z4 & !modgen_counter_o_output_anx32510z5))

	.dataa(modgen_counter_o_output_anx32510z4),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z5),
	.combout(modgen_counter_o_output_anx57253z1),
	.cout(modgen_counter_o_output_anx32510z3));
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52925.lut_mask = 16'hA50A;
defparam modgen_counter_o_output_aix32510z52925.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y27_N26
cycloneii_lcell_comb nx14210z1_afeeder(
// Equation(s):
// nx14210z1_afeeder_combout = modgen_counter_o_output_anx57253z1

	.dataa(vcc),
	.datab(vcc),
	.datac(modgen_counter_o_output_anx57253z1),
	.datad(vcc),
	.cin(gnd),
	.combout(nx14210z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx14210z1_afeeder.lut_mask = 16'hF0F0;
defparam nx14210z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y27_N27
cycloneii_lcell_ff reg_out_o_output_obuf_6_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx14210z1_afeeder_combout),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx14210z1));

// Location: LCFF_X47_Y27_N15
cycloneii_lcell_ff modgen_counter_o_output_areg_q_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(modgen_counter_o_output_anx32510z1),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(modgen_counter_o_output_anx32510z2));

// Location: LCCOMB_X47_Y27_N14
cycloneii_lcell_comb modgen_counter_o_output_aix32510z52923(
// Equation(s):
// modgen_counter_o_output_anx32510z1 = modgen_counter_o_output_anx32510z2 $ (modgen_counter_o_output_anx32510z3)

	.dataa(vcc),
	.datab(modgen_counter_o_output_anx32510z2),
	.datac(vcc),
	.datad(vcc),
	.cin(modgen_counter_o_output_anx32510z3),
	.combout(modgen_counter_o_output_anx32510z1),
	.cout());
// synopsys translate_off
defparam modgen_counter_o_output_aix32510z52923.lut_mask = 16'h3C3C;
defparam modgen_counter_o_output_aix32510z52923.sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X47_Y27_N28
cycloneii_lcell_comb nx13213z1_afeeder(
// Equation(s):
// nx13213z1_afeeder_combout = modgen_counter_o_output_anx32510z1

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(modgen_counter_o_output_anx32510z1),
	.cin(gnd),
	.combout(nx13213z1_afeeder_combout),
	.cout());
// synopsys translate_off
defparam nx13213z1_afeeder.lut_mask = 16'hFF00;
defparam nx13213z1_afeeder.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X47_Y27_N29
cycloneii_lcell_ff reg_out_o_output_obuf_7_(
	.clk(i_clock_aclkctrl_outclk),
	.datain(nx13213z1_afeeder_combout),
	.sdata(gnd),
	.aclr(i_reset_aclkctrl_outclk),
	.sclr(nx3163z76),
	.sload(gnd),
	.ena(modgen_counter_o_output_anx58250z2),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx13213z1));

// Location: PIN_B18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix20192z43919(
	.datain(nx20192z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[0]));
// synopsys translate_off
defparam ix20192z43919.input_async_reset = "none";
defparam ix20192z43919.input_power_up = "low";
defparam ix20192z43919.input_register_mode = "none";
defparam ix20192z43919.input_sync_reset = "none";
defparam ix20192z43919.oe_async_reset = "none";
defparam ix20192z43919.oe_power_up = "low";
defparam ix20192z43919.oe_register_mode = "none";
defparam ix20192z43919.oe_sync_reset = "none";
defparam ix20192z43919.operation_mode = "output";
defparam ix20192z43919.output_async_reset = "none";
defparam ix20192z43919.output_power_up = "low";
defparam ix20192z43919.output_register_mode = "none";
defparam ix20192z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_G17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix19195z43919(
	.datain(nx19195z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[1]));
// synopsys translate_off
defparam ix19195z43919.input_async_reset = "none";
defparam ix19195z43919.input_power_up = "low";
defparam ix19195z43919.input_register_mode = "none";
defparam ix19195z43919.input_sync_reset = "none";
defparam ix19195z43919.oe_async_reset = "none";
defparam ix19195z43919.oe_power_up = "low";
defparam ix19195z43919.oe_register_mode = "none";
defparam ix19195z43919.oe_sync_reset = "none";
defparam ix19195z43919.operation_mode = "output";
defparam ix19195z43919.output_async_reset = "none";
defparam ix19195z43919.output_power_up = "low";
defparam ix19195z43919.output_register_mode = "none";
defparam ix19195z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix18198z43919(
	.datain(nx18198z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[2]));
// synopsys translate_off
defparam ix18198z43919.input_async_reset = "none";
defparam ix18198z43919.input_power_up = "low";
defparam ix18198z43919.input_register_mode = "none";
defparam ix18198z43919.input_sync_reset = "none";
defparam ix18198z43919.oe_async_reset = "none";
defparam ix18198z43919.oe_power_up = "low";
defparam ix18198z43919.oe_register_mode = "none";
defparam ix18198z43919.oe_sync_reset = "none";
defparam ix18198z43919.operation_mode = "output";
defparam ix18198z43919.output_async_reset = "none";
defparam ix18198z43919.output_power_up = "low";
defparam ix18198z43919.output_register_mode = "none";
defparam ix18198z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix17201z43919(
	.datain(nx17201z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[3]));
// synopsys translate_off
defparam ix17201z43919.input_async_reset = "none";
defparam ix17201z43919.input_power_up = "low";
defparam ix17201z43919.input_register_mode = "none";
defparam ix17201z43919.input_sync_reset = "none";
defparam ix17201z43919.oe_async_reset = "none";
defparam ix17201z43919.oe_power_up = "low";
defparam ix17201z43919.oe_register_mode = "none";
defparam ix17201z43919.oe_sync_reset = "none";
defparam ix17201z43919.operation_mode = "output";
defparam ix17201z43919.output_async_reset = "none";
defparam ix17201z43919.output_power_up = "low";
defparam ix17201z43919.output_register_mode = "none";
defparam ix17201z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix16204z43919(
	.datain(nx16204z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[4]));
// synopsys translate_off
defparam ix16204z43919.input_async_reset = "none";
defparam ix16204z43919.input_power_up = "low";
defparam ix16204z43919.input_register_mode = "none";
defparam ix16204z43919.input_sync_reset = "none";
defparam ix16204z43919.oe_async_reset = "none";
defparam ix16204z43919.oe_power_up = "low";
defparam ix16204z43919.oe_register_mode = "none";
defparam ix16204z43919.oe_sync_reset = "none";
defparam ix16204z43919.operation_mode = "output";
defparam ix16204z43919.output_async_reset = "none";
defparam ix16204z43919.output_power_up = "low";
defparam ix16204z43919.output_register_mode = "none";
defparam ix16204z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix15207z43919(
	.datain(nx15207z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[5]));
// synopsys translate_off
defparam ix15207z43919.input_async_reset = "none";
defparam ix15207z43919.input_power_up = "low";
defparam ix15207z43919.input_register_mode = "none";
defparam ix15207z43919.input_sync_reset = "none";
defparam ix15207z43919.oe_async_reset = "none";
defparam ix15207z43919.oe_power_up = "low";
defparam ix15207z43919.oe_register_mode = "none";
defparam ix15207z43919.oe_sync_reset = "none";
defparam ix15207z43919.operation_mode = "output";
defparam ix15207z43919.output_async_reset = "none";
defparam ix15207z43919.output_power_up = "low";
defparam ix15207z43919.output_register_mode = "none";
defparam ix15207z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix14210z43919(
	.datain(nx14210z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[6]));
// synopsys translate_off
defparam ix14210z43919.input_async_reset = "none";
defparam ix14210z43919.input_power_up = "low";
defparam ix14210z43919.input_register_mode = "none";
defparam ix14210z43919.input_sync_reset = "none";
defparam ix14210z43919.oe_async_reset = "none";
defparam ix14210z43919.oe_power_up = "low";
defparam ix14210z43919.oe_register_mode = "none";
defparam ix14210z43919.oe_sync_reset = "none";
defparam ix14210z43919.operation_mode = "output";
defparam ix14210z43919.output_async_reset = "none";
defparam ix14210z43919.output_power_up = "low";
defparam ix14210z43919.output_register_mode = "none";
defparam ix14210z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_C17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix13213z43919(
	.datain(nx13213z1),
	.oe(vcc),
	.outclk(gnd),
	.outclkena(vcc),
	.inclk(gnd),
	.inclkena(vcc),
	.areset(gnd),
	.sreset(gnd),
	.differentialin(gnd),
	.linkin(gnd),
	.devclrn(devclrn),
	.devpor(devpor),
	.devoe(devoe),
	.combout(),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(o_output[7]));
// synopsys translate_off
defparam ix13213z43919.input_async_reset = "none";
defparam ix13213z43919.input_power_up = "low";
defparam ix13213z43919.input_register_mode = "none";
defparam ix13213z43919.input_sync_reset = "none";
defparam ix13213z43919.oe_async_reset = "none";
defparam ix13213z43919.oe_power_up = "low";
defparam ix13213z43919.oe_register_mode = "none";
defparam ix13213z43919.oe_sync_reset = "none";
defparam ix13213z43919.operation_mode = "output";
defparam ix13213z43919.output_async_reset = "none";
defparam ix13213z43919.output_power_up = "low";
defparam ix13213z43919.output_register_mode = "none";
defparam ix13213z43919.output_sync_reset = "none";
// synopsys translate_on

endmodule
