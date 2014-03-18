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

// DATE "02/15/2014 13:30:25"

// 
// Device: Altera EP2C35F672C7 Package FBGA672
// 

// 
// This Verilog file should be used for ModelSim (Verilog) only
// 

`timescale 1 ps/ 1 ps

module top_lab3_chip (	nrst,
	clk,
	rxflex,
	txflex,
	ctsflex,
	o_sevenseg);
input 	nrst;
input 	clk;
input 	rxflex;
output 	txflex;
output 	ctsflex;
output 	[15:0] o_sevenseg;

// Design Ports Information
// txflex	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// ctsflex	=>  Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[0]	=>  Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[1]	=>  Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[2]	=>  Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[3]	=>  Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[4]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[5]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[6]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[7]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[8]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[9]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[10]	=>  Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[11]	=>  Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[12]	=>  Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[13]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[14]	=>  Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// o_sevenseg[15]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
// nrst	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// clk	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
// rxflex	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
initial $sdf_annotate("top_lab3_v.sdo");
// synopsys translate_on

wire \u_lab3|modgen_counter_o_output|nx58250z13 ;
wire \u_lab3|modgen_counter_o_output|nx58250z7 ;
wire \u_uw_uart|sdout_3_ ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 ;
wire \u_uw_uart|u_UARTS|nx32400z3 ;
wire \u_uw_uart|u_UARTS|nx32400z4 ;
wire \u_uw_uart|u_UARTS|nx32400z5 ;
wire \u_uw_uart|u_UARTS|nx32400z2 ;
wire \u_lab3|modgen_counter_o_output|nx52268z1 ;
wire \u_lab3|ix3163z19319|nx40964z1 ;
wire \u_lab3|ix3163z19319|nx41961z1 ;
wire \u_lab3|nx3163z41 ;
wire \u_lab3|ix3163z30602|nx45949z4 ;
wire \u_lab3|ix3163z19322|nx40964z1 ;
wire \u_lab3|ix3163z19322|nx41961z1 ;
wire \u_lab3|nx3163z42 ;
wire \u_lab3|ix3163z30602|nx45949z8 ;
wire \u_lab3|nx3163z43 ;
wire \u_lab3|ix3163z30602|nx45949z12 ;
wire \u_lab3|nx3163z22 ;
wire \u_lab3|nx3163z21 ;
wire \u_lab3|nx3163z26 ;
wire \u_lab3|nx3163z25 ;
wire \u_lab3|nx3163z46 ;
wire \u_lab3|ix3163z30602|nx45949z24 ;
wire \u_lab3|nx3163z47 ;
wire \u_lab3|ix3163z30602|nx45949z28 ;
wire \u_lab3|nx3163z48 ;
wire \u_lab3|ix3163z30602|nx45949z32 ;
wire \u_lab3|ix3163z60014|nx38970z1 ;
wire \u_lab3|ix3163z60014|nx43955z1 ;
wire \u_lab3|modgen_counter_o_output|nx55259z1 ;
wire \u_uw_uart|mdata_3_ ;
wire \u_uw_uart|nx42856z1 ;
wire \u_uw_uart|u_UARTS|nx29621z2 ;
wire \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_ ;
wire \u_uw_uart|u_UARTS|nx51917z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z21 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z25 ;
wire \u_uw_uart|nx46385z5 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1 ;
wire \u_lab3|y_pos_0_ ;
wire \u_uw_uart|nx36748z2 ;
wire \u_uw_uart|nx36748z1 ;
wire \u_uw_uart|u_UARTS|nx30618z2 ;
wire \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_ ;
wire \u_uw_uart|u_UARTS|nx30618z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx54262z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx56256z1 ;
wire \u_lab3|nx35397z2 ;
wire \u_uw_uart|u_UARTS|nx31615z1 ;
wire \u_uw_uart|u_UARTS|nx15541z3 ;
wire \u_uw_uart|u_UARTS|nx34394z4 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ;
wire \u_uw_uart|u_UARTS|nx34394z8 ;
wire \u_uw_uart|u_UARTS|RxBitCnt_3_ ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1 ;
wire \u_uw_uart|u_UARTS|nx8373z2 ;
wire \u_uw_uart|u_UARTS|nx8373z1 ;
wire \u_uw_uart|u_UARTS|nx9370z2 ;
wire \u_lab3|y_pos_0_~_wirecell_combout ;
wire \clk~combout ;
wire \clk~clkctrl_outclk ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1 ;
wire \nrst~combout ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ;
wire \u_uw_uart|u_UARTS|nx32400z7 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3 ;
wire \u_uw_uart|u_UARTS|nx32400z9 ;
wire \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout ;
wire \u_uw_uart|u_UARTS|TxDivisor_5_ ;
wire \u_uw_uart|u_UARTS|nx32400z8 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ;
wire \u_uw_uart|u_UARTS|nx32400z6 ;
wire \u_uw_uart|u_UARTS|nx32400z1 ;
wire \u_uw_uart|u_UARTS|TopTx ;
wire \u_uw_uart|u_UARTS|nx50920z2 ;
wire \u_uw_uart|u_UARTS|nx48926z1 ;
wire \u_uw_uart|u_UARTS|TxBitCnt_0_ ;
wire \u_uw_uart|u_UARTS|nx49923z1 ;
wire \u_uw_uart|u_UARTS|TxBitCnt_1_ ;
wire \u_uw_uart|u_UARTS|nx50920z3 ;
wire \u_uw_uart|u_UARTS|nx50920z1 ;
wire \u_uw_uart|u_UARTS|TxBitCnt_2_ ;
wire \u_uw_uart|u_UARTS|nx51917z3 ;
wire \u_uw_uart|u_UARTS|nx51917z4 ;
wire \u_uw_uart|u_UARTS|nx51917z1 ;
wire \u_uw_uart|u_UARTS|TxBitCnt_3_ ;
wire \u_uw_uart|u_UARTS|nx4608z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx51271z1 ;
wire \u_uw_uart|nx33354z2 ;
wire \rxflex~combout ;
wire \u_uw_uart|u_UARTS|NOT_Rx ;
wire \u_uw_uart|u_UARTS|not_Rx_r ;
wire \u_uw_uart|u_UARTS|nx14544z1 ;
wire \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout ;
wire \u_uw_uart|u_UARTS|RxFSM_1_ ;
wire \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout ;
wire \u_uw_uart|u_UARTS|RxFSM_6_ ;
wire \u_uw_uart|u_UARTS|nx16538z1 ;
wire \u_uw_uart|u_UARTS|nx34394z2 ;
wire \u_uw_uart|RawRx ;
wire \u_uw_uart|u_UARTS|nx15541z2 ;
wire \u_uw_uart|u_UARTS|nx15541z1 ;
wire \u_uw_uart|u_UARTS|RxFSM_2_ ;
wire \u_uw_uart|u_UARTS|nx13547z1 ;
wire \u_uw_uart|u_UARTS|RxFSM_3_ ;
wire \u_uw_uart|u_UARTS|nx11364z1 ;
wire \u_uw_uart|u_UARTS|RxBitCnt_0_ ;
wire \u_uw_uart|u_UARTS|nx10367z1 ;
wire \u_uw_uart|u_UARTS|RxBitCnt_1_ ;
wire \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360 ;
wire \u_uw_uart|u_UARTS|nx9370z1 ;
wire \u_uw_uart|u_UARTS|RxBitCnt_2_ ;
wire \u_uw_uart|u_UARTS|nx13547z2 ;
wire \u_uw_uart|u_UARTS|nx11553z1 ;
wire \u_uw_uart|u_UARTS|RxFSM_5_ ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1 ;
wire \u_uw_uart|u_UARTS|nx65151z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 ;
wire \u_uw_uart|u_UARTS|nx34394z10 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ;
wire \u_uw_uart|u_UARTS|nx34394z9 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1 ;
wire \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 ;
wire \u_uw_uart|u_UARTS|nx34394z6 ;
wire \u_uw_uart|u_UARTS|nx34394z7 ;
wire \u_uw_uart|u_UARTS|nx34394z5 ;
wire \u_uw_uart|u_UARTS|nx34394z3 ;
wire \u_uw_uart|u_UARTS|nx34394z1 ;
wire \u_uw_uart|u_UARTS|TopRx ;
wire \u_uw_uart|u_UARTS|nx30017z1 ;
wire \u_uw_uart|u_UARTS|RxRDY ;
wire \u_uw_uart|nx33468z1 ;
wire \u_uw_uart|o_pixavail ;
wire \u_uw_uart|nx39480z1 ;
wire \u_uw_uart|ack ;
wire \u_uw_uart|nx33354z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z31 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z30 ;
wire \u_uw_uart|modgen_counter_waitcount|nx52268z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z29 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z28 ;
wire \u_uw_uart|modgen_counter_waitcount|nx53265z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z27 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z26 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z24 ;
wire \u_uw_uart|modgen_counter_waitcount|nx55259z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z23 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z22 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z20 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z18 ;
wire \u_uw_uart|modgen_counter_waitcount|nx58250z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z17 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z16 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z14 ;
wire \u_uw_uart|modgen_counter_waitcount|nx60244z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z13 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z12 ;
wire \u_uw_uart|modgen_counter_waitcount|nx17096z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z11 ;
wire \u_uw_uart|modgen_counter_waitcount|nx59247z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z15 ;
wire \u_uw_uart|nx46385z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z10 ;
wire \u_uw_uart|modgen_counter_waitcount|nx18093z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z9 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z8 ;
wire \u_uw_uart|modgen_counter_waitcount|nx19090z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z7 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z6 ;
wire \u_uw_uart|modgen_counter_waitcount|nx20087z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z5 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z4 ;
wire \u_uw_uart|modgen_counter_waitcount|nx21084z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z3 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx64508z1 ;
wire \u_uw_uart|nx46385z2 ;
wire \u_uw_uart|modgen_counter_waitcount|nx57253z1 ;
wire \u_uw_uart|modgen_counter_waitcount|nx22081z19 ;
wire \u_uw_uart|nx46385z4 ;
wire \u_uw_uart|nx46385z1 ;
wire \u_uw_uart|dsend~feeder_combout ;
wire \u_uw_uart|u_UARTS|nx15376z1 ;
wire \u_uw_uart|u_UARTS|RxErr ;
wire \u_uw_uart|nx46385z6 ;
wire \u_uw_uart|dsend ;
wire \u_uw_uart|nx42856z2 ;
wire \u_uw_uart|State ;
wire \u_uw_uart|nx54369z1 ;
wire \u_uw_uart|LD_SDOUT ;
wire \u_uw_uart|u_UARTS|nx4608z2 ;
wire \u_uw_uart|u_UARTS|nx4608z1 ;
wire \u_uw_uart|u_UARTS|TxFSM_0_ ;
wire \u_uw_uart|u_UARTS|nx5605z1 ;
wire \u_uw_uart|u_UARTS|TxFSM_1_ ;
wire \u_uw_uart|u_UARTS|nx31615z2 ;
wire \u_uw_uart|u_UARTS|nx29621z1 ;
wire \u_uw_uart|u_UARTS|nx28624z2 ;
wire \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_ ;
wire \u_uw_uart|u_UARTS|nx28624z1 ;
wire \u_uw_uart|u_UARTS|nx61140z1 ;
wire \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_ ;
wire \u_uw_uart|u_UARTS|nx61812z1 ;
wire nx21351z2;
wire \u_lab3|modgen_counter_o_output|nx51271z1 ;
wire \u_lab3|nx14243z1 ;
wire \u_lab3|nx45976z1 ;
wire \u_lab3|x_pos_1_ ;
wire \u_lab3|nx44979z1 ;
wire \u_lab3|x_pos_2_ ;
wire \u_lab3|nx43982z1 ;
wire \u_lab3|x_pos_3_ ;
wire \u_lab3|x_pos_0_~_wirecell_combout ;
wire \u_lab3|x_pos_0_ ;
wire \u_lab3|nx53087z2 ;
wire \u_lab3|nx53087z1 ;
wire \u_lab3|nx12249z1 ;
wire \u_lab3|y_pos_3_ ;
wire \u_lab3|nx35397z1 ;
wire \u_lab3|end_of_input ;
wire \u_lab3|nx46973z1 ;
wire \u_lab3|y_pos_1_ ;
wire \u_lab3|nx13246z1 ;
wire \u_lab3|y_pos_2_ ;
wire \u_lab3|nx3163z72 ;
wire \u_lab3|nx54084z1~_wirecell_combout ;
wire \u_lab3|i_1_ ;
wire \u_lab3|i_2_ ;
wire \u_lab3|i_2_~_wirecell_combout ;
wire \u_lab3|nx54084z1 ;
wire \u_lab3|nx3163z3 ;
wire \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout ;
wire \u_uw_uart|u_UARTS|nx54636z1 ;
wire \u_uw_uart|u_UARTS|Rx_Reg_7_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Rx_Reg_6_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Rx_Reg_5_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_4_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Rx_Reg_3_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Rx_Reg_2_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Rx_Reg_1_ ;
wire \u_uw_uart|u_UARTS|Rx_Reg_0_ ;
wire \u_uw_uart|u_UARTS|Dout_0_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Dout_0_ ;
wire \u_uw_uart|RData_0_ ;
wire \u_uw_uart|datain_0_ ;
wire \u_uw_uart|u_UARTS|Dout_1_ ;
wire \u_uw_uart|RData_1_ ;
wire \u_uw_uart|datain_1_ ;
wire \u_uw_uart|u_UARTS|Dout_2_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Dout_2_ ;
wire \u_uw_uart|RData_2_ ;
wire \u_uw_uart|datain_2_ ;
wire \u_uw_uart|u_UARTS|Dout_3_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Dout_3_ ;
wire \u_uw_uart|RData_3_ ;
wire \u_uw_uart|datain_3_ ;
wire \u_uw_uart|u_UARTS|Dout_4_ ;
wire \u_uw_uart|RData_4_ ;
wire \u_uw_uart|datain_4_ ;
wire \u_uw_uart|u_UARTS|Dout_5_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Dout_5_ ;
wire \u_uw_uart|RData_5_ ;
wire \u_uw_uart|datain_5_ ;
wire \u_uw_uart|u_UARTS|Dout_6_~feeder_combout ;
wire \u_uw_uart|u_UARTS|Dout_6_ ;
wire \u_uw_uart|RData_6_ ;
wire \u_uw_uart|datain_6_ ;
wire \u_uw_uart|u_UARTS|Dout_7_ ;
wire \u_uw_uart|RData_7_ ;
wire \u_uw_uart|datain_7_ ;
wire \u_lab3|nx51243z1 ;
wire \u_lab3|ix3163z19322|nx44952z22 ;
wire \u_lab3|ix3163z19322|nx44952z19 ;
wire \u_lab3|ix3163z19322|nx44952z16 ;
wire \u_lab3|ix3163z19322|nx44952z13 ;
wire \u_lab3|ix3163z19322|nx44952z10 ;
wire \u_lab3|ix3163z19322|nx44952z7 ;
wire \u_lab3|ix3163z19322|nx44952z4 ;
wire \u_lab3|ix3163z19322|nx44952z1 ;
wire \u_lab3|nx54113z1 ;
wire \u_lab3|ix3163z19319|nx44952z22 ;
wire \u_lab3|ix3163z19319|nx44952z19 ;
wire \u_lab3|ix3163z19319|nx44952z16 ;
wire \u_lab3|ix3163z19319|nx44952z13 ;
wire \u_lab3|ix3163z19319|nx44952z10 ;
wire \u_lab3|ix3163z19319|nx44952z7 ;
wire \u_lab3|ix3163z19319|nx44952z4 ;
wire \u_lab3|ix3163z19319|nx44952z1 ;
wire \u_lab3|nx3163z10 ;
wire \u_lab3|nx3163z9 ;
wire \u_lab3|ix3163z19319|nx43955z1 ;
wire \u_lab3|nx3163z14 ;
wire \u_lab3|ix3163z19322|nx43955z1 ;
wire \u_lab3|nx3163z13 ;
wire \u_lab3|ix3163z19319|nx42958z1 ;
wire \u_lab3|nx3163z18 ;
wire \u_lab3|ix3163z19322|nx42958z1 ;
wire \u_lab3|nx3163z17 ;
wire \u_lab3|nx3163z44 ;
wire \u_lab3|ix3163z30602|nx45949z16 ;
wire \u_lab3|nx3163z45 ;
wire \u_lab3|ix3163z30602|nx45949z20 ;
wire \u_lab3|ix3163z19322|nx39967z1 ;
wire \u_lab3|ix3163z19319|nx39967z1 ;
wire \u_lab3|nx3163z30 ;
wire \u_lab3|nx3163z29 ;
wire \u_lab3|ix3163z19322|nx38970z1 ;
wire \u_lab3|ix3163z19319|nx38970z1 ;
wire \u_lab3|nx3163z34 ;
wire \u_lab3|nx3163z33 ;
wire \u_lab3|ix3163z19322|nx37973z1 ;
wire \u_lab3|ix3163z19319|nx37973z1 ;
wire \u_lab3|nx3163z38 ;
wire \u_lab3|nx3163z37 ;
wire \u_lab3|ix3163z30602|nx45949z35 ;
wire \u_lab3|ix3163z30602|nx45949z31 ;
wire \u_lab3|ix3163z30602|nx45949z27 ;
wire \u_lab3|ix3163z30602|nx45949z23 ;
wire \u_lab3|ix3163z30602|nx45949z19 ;
wire \u_lab3|ix3163z30602|nx45949z15 ;
wire \u_lab3|ix3163z30602|nx45949z11 ;
wire \u_lab3|ix3163z30602|nx45949z7 ;
wire \u_lab3|ix3163z30602|nx45949z3 ;
wire \u_lab3|ix3163z30602|nx45949z1 ;
wire \u_lab3|nx3163z58 ;
wire \u_lab3|ix3163z30602|nx44952z1 ;
wire \u_lab3|ix3163z30602|nx43955z1 ;
wire \u_lab3|ix3163z30602|nx42958z1 ;
wire \u_lab3|ix3163z30602|nx41961z1 ;
wire \u_lab3|ix3163z30602|nx39967z1 ;
wire \u_lab3|ix3163z30602|nx38970z1 ;
wire \u_lab3|ix3163z30602|nx37973z1 ;
wire \u_lab3|ix3163z60014|nx44952z23 ;
wire \u_lab3|ix3163z60014|nx44952z22 ;
wire \u_lab3|ix3163z60014|nx44952z19 ;
wire \u_lab3|ix3163z60014|nx44952z16 ;
wire \u_lab3|ix3163z60014|nx44952z13 ;
wire \u_lab3|ix3163z60014|nx44952z10 ;
wire \u_lab3|ix3163z60014|nx44952z7 ;
wire \u_lab3|ix3163z60014|nx44952z4 ;
wire \u_lab3|ix3163z60014|nx44952z1 ;
wire \u_lab3|ix3163z60014|nx41961z1 ;
wire \u_lab3|ix3163z60014|nx42958z1 ;
wire \u_lab3|nx3163z60 ;
wire \u_lab3|ix3163z60014|nx37973z1 ;
wire \u_lab3|ix3163z60014|nx40964z1 ;
wire \u_lab3|ix3163z60014|nx39967z1 ;
wire \u_lab3|nx3163z65 ;
wire \u_lab3|nx3163z56 ;
wire \u_lab3|ix3163z19319|nx23445z2 ;
wire \u_lab3|ix3163z19319|nx23445z1 ;
wire \u_lab3|nx3163z57 ;
wire \u_lab3|ix3163z30602|nx40964z1 ;
wire \u_lab3|nx3163z75 ;
wire \u_lab3|nx3163z74 ;
wire \u_lab3|nx3163z73 ;
wire \u_lab3|ix3163z19322|nx23445z2 ;
wire \u_lab3|ix3163z19322|nx23445z1 ;
wire \u_lab3|ix3163z60014|nx23445z2 ;
wire \u_lab3|ix3163z60014|nx23445z1 ;
wire \u_lab3|nx3163z5 ;
wire \u_lab3|nx3163z77 ;
wire \u_lab3|nx3163z76 ;
wire \u_lab3|nx53066z1 ;
wire \u_lab3|nx3163z71 ;
wire \u_lab3|nx3163z70 ;
wire \u_lab3|nx3163z2 ;
wire \u_lab3|nx3163z1 ;
wire \u_lab3|modgen_counter_o_output|nx57253z3 ;
wire \u_lab3|modgen_counter_o_output|nx58250z15 ;
wire \u_lab3|modgen_counter_o_output|nx58250z14 ;
wire \u_lab3|modgen_counter_o_output|nx58250z12 ;
wire \u_lab3|modgen_counter_o_output|nx53265z1 ;
wire \u_lab3|modgen_counter_o_output|nx58250z11 ;
wire \u_lab3|modgen_counter_o_output|nx58250z10 ;
wire \u_lab3|modgen_counter_o_output|nx54262z1 ;
wire \u_lab3|modgen_counter_o_output|nx58250z9 ;
wire nx57590z1;
wire nx41851z1;
wire nx58587z1;
wire nx42848z1;
wire nx59584z1;
wire nx43845z1;
wire nx60581z1;
wire nx44842z1;
wire nx61578z1;
wire nx45839z1;
wire nx62575z1;
wire nx46836z1;
wire nx63572z1;
wire nx47833z1;
wire \u_lab3|modgen_counter_o_output|nx58250z8 ;
wire \u_lab3|modgen_counter_o_output|nx58250z6 ;
wire \u_lab3|modgen_counter_o_output|nx56256z1 ;
wire \u_lab3|modgen_counter_o_output|nx58250z5 ;
wire \u_lab3|modgen_counter_o_output|nx58250z4 ;
wire \u_lab3|modgen_counter_o_output|nx57253z1 ;
wire \u_lab3|modgen_counter_o_output|nx58250z3 ;
wire \u_lab3|modgen_counter_o_output|nx58250z2 ;
wire \u_lab3|modgen_counter_o_output|nx58250z1 ;
wire \u_lab3|modgen_counter_o_output|nx1041z1 ;
wire nx30z1;
wire nx49827z1;
wire nx1027z1;
wire nx50824z1;
wire nx25683z1;
wire nx62540z1;
wire nx26680z1;
wire nx63537z1;
wire nx27677z1;
wire nx64534z1;
wire nx28674z1;
wire nx65531z1;
wire nx29671z1;
wire nx992z1;
wire [7:0] \u_lab3|mem|ix64056z44883|auto_generated|q_b ;
wire [7:0] \u_lab3|mem_1|ix64056z44885|auto_generated|q_b ;
wire [7:0] \u_lab3|mem_0|ix64056z44884|auto_generated|q_b ;

wire [7:0] \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;
wire [7:0] \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;
wire [7:0] \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus ;

assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [1];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [2];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [3];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [4];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [5];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [6];
assign \u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7] = \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus [7];

assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [0] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [1] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [1];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [2] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [2];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [3] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [3];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [4] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [4];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [5] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [5];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [6] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [6];
assign \u_lab3|mem|ix64056z44883|auto_generated|q_b [7] = \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus [7];

assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [0];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [1];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [2];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [3];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [4];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [5];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [6];
assign \u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] = \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus [7];

// Location: LCFF_X29_Y29_N15
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z13 ));

// Location: LCFF_X29_Y29_N21
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z7 ));

// Location: LCFF_X31_Y28_N11
cycloneii_lcell_ff \u_uw_uart|reg_sdout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx42856z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|sdout_3_ ));

// Location: LCFF_X32_Y29_N23
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 ));

// Location: LCCOMB_X33_Y29_N2
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z3  = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3  & \u_uw_uart|u_UARTS|TxDivisor_5_ )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3 ),
	.datad(\u_uw_uart|u_UARTS|TxDivisor_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52925 .lut_mask = 16'h0100;
defparam \u_uw_uart|u_UARTS|ix32400z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z4  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11  & \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52926 .lut_mask = 16'h0800;
defparam \u_uw_uart|u_UARTS|ix32400z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52927 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z5  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52927 .lut_mask = 16'h0002;
defparam \u_uw_uart|u_UARTS|ix32400z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z2  = (\u_uw_uart|u_UARTS|nx32400z4  & (\u_uw_uart|u_UARTS|nx32400z5  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23  & \u_uw_uart|u_UARTS|nx32400z3 )))

	.dataa(\u_uw_uart|u_UARTS|nx32400z4 ),
	.datab(\u_uw_uart|u_UARTS|nx32400z5 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|u_UARTS|nx32400z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52924 .lut_mask = 16'h8000;
defparam \u_uw_uart|u_UARTS|ix32400z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N14
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52930 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx52268z1  = (\u_lab3|modgen_counter_o_output|nx58250z13  & (!\u_lab3|modgen_counter_o_output|nx58250z14 )) # (!\u_lab3|modgen_counter_o_output|nx58250z13  & ((\u_lab3|modgen_counter_o_output|nx58250z14 ) # (GND)))
// \u_lab3|modgen_counter_o_output|nx58250z12  = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z14 ) # (!\u_lab3|modgen_counter_o_output|nx58250z13 ))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z14 ),
	.combout(\u_lab3|modgen_counter_o_output|nx52268z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z12 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52930 .lut_mask = 16'h5A5F;
defparam \u_lab3|modgen_counter_o_output|ix58250z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: M4K_X26_Y32
cycloneii_ram_block \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 (
	.portawe(\u_lab3|nx54113z1 ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(\clk~clkctrl_outclk ),
	.ena0(\u_lab3|nx54113z1 ),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(\u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0_PORTBDATAOUT_bus ));
// synopsys translate_off
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .logical_ram_name = "lab3:u_lab3|ram_dq_8_2:mem_1|altsyncram:ix64056z44885|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .mixed_port_feed_through_mode = "old";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .operation_mode = "dual_port";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_address_width = 4;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_last_address = 15;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 16;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_address_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_address_clock = "clock1";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_address_width = 4;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_byte_enable_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_data_in_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_data_out_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_data_out_clock = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_first_address = 0;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_first_bit_number = 0;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_last_address = 15;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_logical_ram_depth = 16;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_logical_ram_width = 8;
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clear = "none";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clock = "clock1";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_lab3|mem_1|ix64056z44885|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: M4K_X26_Y31
cycloneii_ram_block \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 (
	.portawe(\u_lab3|nx51243z1 ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(\clk~clkctrl_outclk ),
	.ena0(\u_lab3|nx51243z1 ),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(\u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0_PORTBDATAOUT_bus ));
// synopsys translate_off
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .logical_ram_name = "lab3:u_lab3|ram_dq_8_0:mem|altsyncram:ix64056z44883|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .mixed_port_feed_through_mode = "old";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .operation_mode = "dual_port";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_address_width = 4;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_last_address = 15;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 16;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_address_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_address_clock = "clock1";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_address_width = 4;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_byte_enable_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_data_in_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_data_out_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_data_out_clock = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_first_address = 0;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_first_bit_number = 0;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_last_address = 15;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_logical_ram_depth = 16;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_logical_ram_width = 8;
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clear = "none";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clock = "clock1";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_lab3|mem|ix64056z44883|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N10
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52928 (
// Equation(s):
// \u_lab3|ix3163z19319|nx40964z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] & (!\u_lab3|ix3163z19319|nx44952z16 )) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] & 
// ((\u_lab3|ix3163z19319|nx44952z16 ) # (GND))))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] & (\u_lab3|ix3163z19319|nx44952z16  & VCC)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] 
// & (!\u_lab3|ix3163z19319|nx44952z16 ))))
// \u_lab3|ix3163z19319|nx44952z13  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & ((!\u_lab3|ix3163z19319|nx44952z16 ) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3]))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & 
// (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3] & !\u_lab3|ix3163z19319|nx44952z16 )))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [3]),
	.datab(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z16 ),
	.combout(\u_lab3|ix3163z19319|nx40964z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z13 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52928 .lut_mask = 16'h692B;
defparam \u_lab3|ix3163z19319|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N12
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52927 (
// Equation(s):
// \u_lab3|ix3163z19319|nx41961z1  = ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4] $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b [4] $ (\u_lab3|ix3163z19319|nx44952z13 )))) # (GND)
// \u_lab3|ix3163z19319|nx44952z10  = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4] & ((!\u_lab3|ix3163z19319|nx44952z13 ) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [4]))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4] & 
// (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [4] & !\u_lab3|ix3163z19319|nx44952z13 )))

	.dataa(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4]),
	.datab(\u_lab3|mem|ix64056z44883|auto_generated|q_b [4]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z13 ),
	.combout(\u_lab3|ix3163z19319|nx41961z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z10 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52927 .lut_mask = 16'h962B;
defparam \u_lab3|ix3163z19319|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N2
cycloneii_lcell_comb \u_lab3|ix3163z52947 (
// Equation(s):
// \u_lab3|nx3163z41  = (\u_lab3|i_2_  & (((\u_uw_uart|datain_7_ )))) # (!\u_lab3|i_2_  & ((\u_lab3|i_1_  & ((\u_uw_uart|datain_7_ ))) # (!\u_lab3|i_1_  & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7]))))

	.dataa(\u_lab3|i_2_ ),
	.datab(\u_lab3|i_1_ ),
	.datac(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7]),
	.datad(\u_uw_uart|datain_7_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z41 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52947 .lut_mask = 16'hFE10;
defparam \u_lab3|ix3163z52947 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N12
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52926 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z4  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z41 )

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(vcc),
	.datad(\u_lab3|nx3163z41 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z4 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52926 .lut_mask = 16'hCC33;
defparam \u_lab3|ix3163z30602|ix45949z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N20
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52928 (
// Equation(s):
// \u_lab3|ix3163z19322|nx40964z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] & (!\u_lab3|ix3163z19322|nx44952z16 )) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] & 
// (\u_lab3|ix3163z19322|nx44952z16  & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] & ((\u_lab3|ix3163z19322|nx44952z16 ) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] 
// & (!\u_lab3|ix3163z19322|nx44952z16 ))))
// \u_lab3|ix3163z19322|nx44952z13  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3] & !\u_lab3|ix3163z19322|nx44952z16 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [3] & 
// ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3]) # (!\u_lab3|ix3163z19322|nx44952z16 ))))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [3]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z16 ),
	.combout(\u_lab3|ix3163z19322|nx40964z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z13 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52928 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19322|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N22
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52927 (
// Equation(s):
// \u_lab3|ix3163z19322|nx41961z1  = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [4] $ (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4] $ (\u_lab3|ix3163z19322|nx44952z13 )))) # (GND)
// \u_lab3|ix3163z19322|nx44952z10  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [4] & ((!\u_lab3|ix3163z19322|nx44952z13 ) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4]))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [4] & 
// (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4] & !\u_lab3|ix3163z19322|nx44952z13 )))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [4]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z13 ),
	.combout(\u_lab3|ix3163z19322|nx41961z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z10 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52927 .lut_mask = 16'h962B;
defparam \u_lab3|ix3163z19322|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N10
cycloneii_lcell_comb \u_lab3|ix3163z52948 (
// Equation(s):
// \u_lab3|nx3163z42  = (\u_lab3|i_1_  & (((\u_uw_uart|datain_6_ )))) # (!\u_lab3|i_1_  & ((\u_lab3|i_2_  & ((\u_uw_uart|datain_6_ ))) # (!\u_lab3|i_2_  & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6]))))

	.dataa(\u_lab3|i_1_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6]),
	.datad(\u_uw_uart|datain_6_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z42 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52948 .lut_mask = 16'hFE10;
defparam \u_lab3|ix3163z52948 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N20
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52928 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z8  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z42 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z42 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z8 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52928 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N22
cycloneii_lcell_comb \u_lab3|ix3163z52949 (
// Equation(s):
// \u_lab3|nx3163z43  = (\u_lab3|i_1_  & (((\u_uw_uart|datain_5_ )))) # (!\u_lab3|i_1_  & ((\u_lab3|i_2_  & ((\u_uw_uart|datain_5_ ))) # (!\u_lab3|i_2_  & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5]))))

	.dataa(\u_lab3|i_1_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5]),
	.datad(\u_uw_uart|datain_5_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z43 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52949 .lut_mask = 16'hFE10;
defparam \u_lab3|ix3163z52949 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N0
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52930 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z12  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z43 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z43 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z12 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52930 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N24
cycloneii_lcell_comb \u_lab3|ix3163z52938 (
// Equation(s):
// \u_lab3|nx3163z22  = (\u_lab3|nx51243z1  & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4]) # ((\u_lab3|nx54113z1 )))) # (!\u_lab3|nx51243z1  & (((!\u_lab3|nx54113z1  & \u_lab3|ix3163z19319|nx41961z1 ))))

	.dataa(\u_lab3|nx51243z1 ),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [4]),
	.datac(\u_lab3|nx54113z1 ),
	.datad(\u_lab3|ix3163z19319|nx41961z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z22 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52938 .lut_mask = 16'hADA8;
defparam \u_lab3|ix3163z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N2
cycloneii_lcell_comb \u_lab3|ix3163z52937 (
// Equation(s):
// \u_lab3|nx3163z21  = (\u_lab3|nx54113z1  & (!\u_lab3|nx3163z22  & \u_lab3|ix3163z19322|nx41961z1 )) # (!\u_lab3|nx54113z1  & (\u_lab3|nx3163z22 ))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|nx3163z22 ),
	.datad(\u_lab3|ix3163z19322|nx41961z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z21 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52937 .lut_mask = 16'h5A50;
defparam \u_lab3|ix3163z52937 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N30
cycloneii_lcell_comb \u_lab3|ix3163z52940 (
// Equation(s):
// \u_lab3|nx3163z26  = (\u_lab3|nx54113z1  & (\u_lab3|nx51243z1 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx51243z1  & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3])) # (!\u_lab3|nx51243z1  & ((\u_lab3|ix3163z19319|nx40964z1 )))))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(\u_lab3|nx51243z1 ),
	.datac(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [3]),
	.datad(\u_lab3|ix3163z19319|nx40964z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z26 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52940 .lut_mask = 16'hD9C8;
defparam \u_lab3|ix3163z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N0
cycloneii_lcell_comb \u_lab3|ix3163z52939 (
// Equation(s):
// \u_lab3|nx3163z25  = (\u_lab3|nx54113z1  & (\u_lab3|ix3163z19322|nx40964z1  & !\u_lab3|nx3163z26 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx3163z26 )))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|ix3163z19322|nx40964z1 ),
	.datad(\u_lab3|nx3163z26 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z25 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52939 .lut_mask = 16'h55A0;
defparam \u_lab3|ix3163z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N2
cycloneii_lcell_comb \u_lab3|ix3163z52952 (
// Equation(s):
// \u_lab3|nx3163z46  = (\u_lab3|i_2_  & (\u_uw_uart|datain_2_ )) # (!\u_lab3|i_2_  & ((\u_lab3|i_1_  & (\u_uw_uart|datain_2_ )) # (!\u_lab3|i_1_  & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2])))))

	.dataa(\u_uw_uart|datain_2_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_lab3|i_1_ ),
	.datad(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2]),
	.cin(gnd),
	.combout(\u_lab3|nx3163z46 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52952 .lut_mask = 16'hABA8;
defparam \u_lab3|ix3163z52952 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N4
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52936 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z24  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z46 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z46 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z24 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52936 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N2
cycloneii_lcell_comb \u_lab3|ix3163z52953 (
// Equation(s):
// \u_lab3|nx3163z47  = (\u_lab3|i_2_  & (\u_uw_uart|datain_1_ )) # (!\u_lab3|i_2_  & ((\u_lab3|i_1_  & (\u_uw_uart|datain_1_ )) # (!\u_lab3|i_1_  & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1])))))

	.dataa(\u_uw_uart|datain_1_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1]),
	.datad(\u_lab3|i_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z47 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52953 .lut_mask = 16'hAAB8;
defparam \u_lab3|ix3163z52953 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y32_N16
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52938 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z28  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z47 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z47 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z28 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52938 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52938 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N4
cycloneii_lcell_comb \u_lab3|ix3163z52954 (
// Equation(s):
// \u_lab3|nx3163z48  = (\u_lab3|i_1_  & (\u_uw_uart|datain_0_ )) # (!\u_lab3|i_1_  & ((\u_lab3|i_2_  & (\u_uw_uart|datain_0_ )) # (!\u_lab3|i_2_  & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0])))))

	.dataa(\u_uw_uart|datain_0_ ),
	.datab(\u_lab3|i_1_ ),
	.datac(\u_lab3|i_2_ ),
	.datad(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0]),
	.cin(gnd),
	.combout(\u_lab3|nx3163z48 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52954 .lut_mask = 16'hABA8;
defparam \u_lab3|ix3163z52954 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N8
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52940 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z32  = \u_lab3|nx3163z48  $ (!\u_lab3|nx54084z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx3163z48 ),
	.datad(\u_lab3|nx54084z1 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z32 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52940 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52940 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N4
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52930 (
// Equation(s):
// \u_lab3|ix3163z60014|nx38970z1  = ((\u_uw_uart|datain_1_  $ (\u_lab3|ix3163z30602|nx38970z1  $ (!\u_lab3|ix3163z60014|nx44952z22 )))) # (GND)
// \u_lab3|ix3163z60014|nx44952z19  = CARRY((\u_uw_uart|datain_1_  & ((\u_lab3|ix3163z30602|nx38970z1 ) # (!\u_lab3|ix3163z60014|nx44952z22 ))) # (!\u_uw_uart|datain_1_  & (\u_lab3|ix3163z30602|nx38970z1  & !\u_lab3|ix3163z60014|nx44952z22 )))

	.dataa(\u_uw_uart|datain_1_ ),
	.datab(\u_lab3|ix3163z30602|nx38970z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z22 ),
	.combout(\u_lab3|ix3163z60014|nx38970z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z19 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52930 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z60014|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N14
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52925 (
// Equation(s):
// \u_lab3|ix3163z60014|nx43955z1  = (\u_uw_uart|datain_6_  & ((\u_lab3|ix3163z30602|nx43955z1  & (\u_lab3|ix3163z60014|nx44952z7  & VCC)) # (!\u_lab3|ix3163z30602|nx43955z1  & (!\u_lab3|ix3163z60014|nx44952z7 )))) # (!\u_uw_uart|datain_6_  & 
// ((\u_lab3|ix3163z30602|nx43955z1  & (!\u_lab3|ix3163z60014|nx44952z7 )) # (!\u_lab3|ix3163z30602|nx43955z1  & ((\u_lab3|ix3163z60014|nx44952z7 ) # (GND)))))
// \u_lab3|ix3163z60014|nx44952z4  = CARRY((\u_uw_uart|datain_6_  & (!\u_lab3|ix3163z30602|nx43955z1  & !\u_lab3|ix3163z60014|nx44952z7 )) # (!\u_uw_uart|datain_6_  & ((!\u_lab3|ix3163z60014|nx44952z7 ) # (!\u_lab3|ix3163z30602|nx43955z1 ))))

	.dataa(\u_uw_uart|datain_6_ ),
	.datab(\u_lab3|ix3163z30602|nx43955z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z7 ),
	.combout(\u_lab3|ix3163z60014|nx43955z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z4 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52925 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z60014|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N20
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52927 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx55259z1  = (\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx58250z8  $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z7  & (!\u_lab3|modgen_counter_o_output|nx58250z8  & VCC))
// \u_lab3|modgen_counter_o_output|nx58250z6  = CARRY((\u_lab3|modgen_counter_o_output|nx58250z7  & !\u_lab3|modgen_counter_o_output|nx58250z8 ))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z8 ),
	.combout(\u_lab3|modgen_counter_o_output|nx55259z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z6 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52927 .lut_mask = 16'hA50A;
defparam \u_lab3|modgen_counter_o_output|ix58250z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X31_Y28_N31
cycloneii_lcell_ff \u_uw_uart|reg_mdata_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx36748z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|mdata_3_ ));

// Location: LCCOMB_X31_Y28_N10
cycloneii_lcell_comb \u_uw_uart|ix42856z52923 (
// Equation(s):
// \u_uw_uart|nx42856z1  = (\u_uw_uart|nx42856z2  & ((\nrst~combout  & ((\u_uw_uart|mdata_3_ ))) # (!\nrst~combout  & (\u_uw_uart|sdout_3_ )))) # (!\u_uw_uart|nx42856z2  & (((\u_uw_uart|sdout_3_ ))))

	.dataa(\u_uw_uart|nx42856z2 ),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|sdout_3_ ),
	.datad(\u_uw_uart|mdata_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|nx42856z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42856z52923 .lut_mask = 16'hF870;
defparam \u_uw_uart|ix42856z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N9
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Tx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx30618z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|nx29621z2 ));

// Location: LCCOMB_X32_Y28_N10
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix29621z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_  = (\u_uw_uart|u_UARTS|TxFSM_1_  & ((!\u_uw_uart|u_UARTS|nx29621z2 ))) # (!\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|sdout_3_ ))

	.dataa(\u_uw_uart|sdout_3_ ),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|nx29621z2 ),
	.datad(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix29621z52924 .lut_mask = 16'h0FAA;
defparam \u_uw_uart|u_UARTS|ix29621z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix51917z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx51917z2  = (\u_uw_uart|u_UARTS|TopTx  & (\u_uw_uart|u_UARTS|TxFSM_1_  $ (\u_uw_uart|u_UARTS|TxFSM_0_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datad(\u_uw_uart|u_UARTS|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx51917z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix51917z52924 .lut_mask = 16'h3C00;
defparam \u_uw_uart|u_UARTS|ix51917z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y28_N11
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ));

// Location: LCFF_X30_Y28_N7
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ));

// Location: LCCOMB_X31_Y28_N6
cycloneii_lcell_comb \u_uw_uart|ix46385z52927 (
// Equation(s):
// \u_uw_uart|nx46385z5  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z31  & (\u_uw_uart|modgen_counter_waitcount|nx22081z27  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z25  & !\u_uw_uart|modgen_counter_waitcount|nx22081z29 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52927 .lut_mask = 16'h0004;
defparam \u_uw_uart|ix46385z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52925 .lut_mask = 16'hA50A;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1  = \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2  $ (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 ),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z2 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X27_Y32_N21
cycloneii_lcell_ff \u_lab3|modgen_counter_y_pos_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|y_pos_0_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|y_pos_0_ ));

// Location: LCCOMB_X31_Y28_N8
cycloneii_lcell_comb \u_uw_uart|ix36748z52924 (
// Equation(s):
// \u_uw_uart|nx36748z2  = (\u_uw_uart|o_pixavail  & (\u_uw_uart|nx46385z1 )) # (!\u_uw_uart|o_pixavail  & ((\u_uw_uart|ack  & (\u_uw_uart|nx46385z1 )) # (!\u_uw_uart|ack  & ((\u_uw_uart|u_UARTS|RxErr )))))

	.dataa(\u_uw_uart|nx46385z1 ),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_uw_uart|u_UARTS|RxErr ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx36748z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix36748z52924 .lut_mask = 16'hAAB8;
defparam \u_uw_uart|ix36748z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y28_N30
cycloneii_lcell_comb \u_uw_uart|ix36748z52923 (
// Equation(s):
// \u_uw_uart|nx36748z1  = (\u_uw_uart|nx36748z2  & ((\nrst~combout  & ((!\u_uw_uart|nx46385z6 ))) # (!\nrst~combout  & (\u_uw_uart|mdata_3_ )))) # (!\u_uw_uart|nx36748z2  & (((\u_uw_uart|mdata_3_ ))))

	.dataa(\u_uw_uart|nx36748z2 ),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|mdata_3_ ),
	.datad(\u_uw_uart|nx46385z6 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx36748z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix36748z52923 .lut_mask = 16'h70F8;
defparam \u_uw_uart|ix36748z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y28_N19
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Tx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx31615z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|nx30618z2 ));

// Location: LCCOMB_X32_Y28_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix30618z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_  = (\u_uw_uart|u_UARTS|TxFSM_1_  & ((!\u_uw_uart|u_UARTS|nx30618z2 ))) # (!\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|sdout_3_ ))

	.dataa(\u_uw_uart|sdout_3_ ),
	.datab(\u_uw_uart|u_UARTS|nx30618z2 ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix30618z52924 .lut_mask = 16'h33AA;
defparam \u_uw_uart|u_UARTS|ix30618z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix30618z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx30618z1  = (\u_uw_uart|u_UARTS|nx31615z2  & (!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_ )) # (!\u_uw_uart|u_UARTS|nx31615z2  & ((\u_uw_uart|u_UARTS|nx29621z2 )))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_3_ ),
	.datac(\u_uw_uart|u_UARTS|nx29621z2 ),
	.datad(\u_uw_uart|u_UARTS|nx31615z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx30618z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix30618z52923 .lut_mask = 16'h33F0;
defparam \u_uw_uart|u_UARTS|ix30618z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N6
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52936 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx54262z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z25  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z26 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z26 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z24  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z26 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z25 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z25 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx54262z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52936 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N10
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52934 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx56256z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z21  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z22 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z22 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z20  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z22 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z21 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx56256z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N10
cycloneii_lcell_comb \u_lab3|ix35397z52924 (
// Equation(s):
// \u_lab3|nx35397z2  = (\u_lab3|y_pos_1_  & (\u_lab3|y_pos_0_  & \u_lab3|y_pos_2_ ))

	.dataa(\u_lab3|y_pos_1_ ),
	.datab(vcc),
	.datac(\u_lab3|y_pos_0_ ),
	.datad(\u_lab3|y_pos_2_ ),
	.cin(gnd),
	.combout(\u_lab3|nx35397z2 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix35397z52924 .lut_mask = 16'hA000;
defparam \u_lab3|ix35397z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y28_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix31615z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx31615z1  = (\u_uw_uart|u_UARTS|nx31615z2  & (!\u_uw_uart|sdout_3_  & (!\u_uw_uart|u_UARTS|TxFSM_1_ ))) # (!\u_uw_uart|u_UARTS|nx31615z2  & (((\u_uw_uart|u_UARTS|nx30618z2 ))))

	.dataa(\u_uw_uart|sdout_3_ ),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(\u_uw_uart|u_UARTS|nx30618z2 ),
	.datad(\u_uw_uart|u_UARTS|nx31615z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx31615z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix31615z52923 .lut_mask = 16'h11F0;
defparam \u_uw_uart|u_UARTS|ix31615z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N10
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix15541z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx15541z3  = ((\nrst~combout  & \rxflex~combout )) # (!\u_uw_uart|u_UARTS|RxFSM_6_ )

	.dataa(\nrst~combout ),
	.datab(\u_uw_uart|u_UARTS|RxFSM_6_ ),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx15541z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix15541z52926 .lut_mask = 16'hBB33;
defparam \u_uw_uart|u_UARTS|ix15541z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N10
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z4  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5  & \u_uw_uart|u_UARTS|TxDivisor_5_ )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5 ),
	.datad(\u_uw_uart|u_UARTS|TxDivisor_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52925 .lut_mask = 16'h0100;
defparam \u_uw_uart|u_UARTS|ix34394z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y29_N21
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ));

// Location: LCFF_X34_Y29_N13
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ));

// Location: LCCOMB_X34_Y29_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52929 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z8  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|u_UARTS|ix34394z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N21
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx8373z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxBitCnt_3_ ));

// Location: LCCOMB_X34_Y29_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52933 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 )) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 ) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx52268z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52933 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X34_Y29_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52929 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 )) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 ) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx56256z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52929 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix8373z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx8373z2  = \u_uw_uart|u_UARTS|RxBitCnt_3_  $ (((\u_uw_uart|u_UARTS|RxBitCnt_1_  & (\u_uw_uart|u_UARTS|RxBitCnt_0_  & \u_uw_uart|u_UARTS|RxBitCnt_2_ ))))

	.dataa(\u_uw_uart|u_UARTS|RxBitCnt_3_ ),
	.datab(\u_uw_uart|u_UARTS|RxBitCnt_1_ ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_0_ ),
	.datad(\u_uw_uart|u_UARTS|RxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx8373z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix8373z52925 .lut_mask = 16'h6AAA;
defparam \u_uw_uart|u_UARTS|ix8373z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix8373z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx8373z1  = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & (\u_uw_uart|u_UARTS|nx8373z2  & ((\u_uw_uart|u_UARTS|nx34394z2 )))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & (((\u_uw_uart|u_UARTS|RxBitCnt_3_ ))))

	.dataa(\u_uw_uart|u_UARTS|nx8373z2 ),
	.datab(\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_3_ ),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx8373z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix8373z52923 .lut_mask = 16'hB830;
defparam \u_uw_uart|u_UARTS|ix8373z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix9370z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx9370z2  = (\u_uw_uart|u_UARTS|RxBitCnt_0_  & \u_uw_uart|u_UARTS|RxBitCnt_1_ )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|RxBitCnt_0_ ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx9370z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix9370z52924 .lut_mask = 16'hC0C0;
defparam \u_uw_uart|u_UARTS|ix9370z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N20
cycloneii_lcell_comb \u_lab3|y_pos_0_~_wirecell (
// Equation(s):
// \u_lab3|y_pos_0_~_wirecell_combout  = !\u_lab3|y_pos_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|y_pos_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|y_pos_0_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_lab3|y_pos_0_~_wirecell .lut_mask = 16'h0F0F;
defparam \u_lab3|y_pos_0_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io clk_ibuf(
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
	.combout(\clk~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(clk));
// synopsys translate_off
defparam clk_ibuf.input_async_reset = "none";
defparam clk_ibuf.input_power_up = "low";
defparam clk_ibuf.input_register_mode = "none";
defparam clk_ibuf.input_sync_reset = "none";
defparam clk_ibuf.oe_async_reset = "none";
defparam clk_ibuf.oe_power_up = "low";
defparam clk_ibuf.oe_register_mode = "none";
defparam clk_ibuf.oe_sync_reset = "none";
defparam clk_ibuf.operation_mode = "input";
defparam clk_ibuf.output_async_reset = "none";
defparam clk_ibuf.output_power_up = "low";
defparam clk_ibuf.output_register_mode = "none";
defparam clk_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: CLKCTRL_G2
cycloneii_clkctrl \clk~clkctrl (
	.ena(vcc),
	.inclk({gnd,gnd,gnd,\clk~combout }),
	.clkselect(2'b00),
	.devclrn(devclrn),
	.devpor(devpor),
	.outclk(\clk~clkctrl_outclk ));
// synopsys translate_off
defparam \clk~clkctrl .clock_type = "global clock";
defparam \clk~clkctrl .ena_register_mode = "none";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52935 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1  = \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23  $ (VCC)
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22  = CARRY(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52935 .lut_mask = 16'h33CC;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io nrst_ibuf(
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
	.combout(\nrst~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(nrst));
// synopsys translate_off
defparam nrst_ibuf.input_async_reset = "none";
defparam nrst_ibuf.input_power_up = "low";
defparam nrst_ibuf.input_register_mode = "none";
defparam nrst_ibuf.input_sync_reset = "none";
defparam nrst_ibuf.oe_async_reset = "none";
defparam nrst_ibuf.oe_power_up = "low";
defparam nrst_ibuf.oe_register_mode = "none";
defparam nrst_ibuf.oe_sync_reset = "none";
defparam nrst_ibuf.operation_mode = "input";
defparam nrst_ibuf.output_async_reset = "none";
defparam nrst_ibuf.output_power_up = "low";
defparam nrst_ibuf.output_register_mode = "none";
defparam nrst_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCFF_X32_Y29_N1
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 ));

// Location: LCCOMB_X32_Y29_N2
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52934 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 )) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 ) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z22 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52934 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52934 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N3
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx52268z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ));

// Location: LCCOMB_X32_Y29_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52933 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z20 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52933 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N5
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19 ));

// Location: LCCOMB_X32_Y29_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52932 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 )) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 ) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z18 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52932 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N7
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ));

// Location: LCCOMB_X33_Y29_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52929 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z7  = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z17 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z19 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52929 .lut_mask = 16'h0001;
defparam \u_uw_uart|u_UARTS|ix32400z52929 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52931 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z16 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52931 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N9
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z15 ));

// Location: LCCOMB_X32_Y29_N10
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52930 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 )) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 ) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z14 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52930 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52929 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z12 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52928 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 )) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 ) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z10 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N15
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ));

// Location: LCCOMB_X32_Y29_N16
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52927 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7  & (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z8 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1  = (\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 )) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 ) # (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z6 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z4 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|u_UARTS|modgen_counter_TxDiv|ix18093z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X32_Y29_N19
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ));

// Location: LCFF_X32_Y29_N21
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3 ));

// Location: LCCOMB_X33_Y29_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52931 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z9  = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z3 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52931 .lut_mask = 16'h000F;
defparam \u_uw_uart|u_UARTS|ix32400z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|TxDivisor_5_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout  = VCC

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|TxDivisor_5_~feeder .lut_mask = 16'hFFFF;
defparam \u_uw_uart|u_UARTS|TxDivisor_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y29_N1
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_TxDivisor_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|TxDivisor_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxDivisor_5_ ));

// Location: LCCOMB_X33_Y29_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52930 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z8  = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1  & (\u_uw_uart|u_UARTS|nx32400z9  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23  & !\u_uw_uart|u_UARTS|TxDivisor_5_ )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx2960z1 ),
	.datab(\u_uw_uart|u_UARTS|nx32400z9 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z23 ),
	.datad(\u_uw_uart|u_UARTS|TxDivisor_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z8 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52930 .lut_mask = 16'h0004;
defparam \u_uw_uart|u_UARTS|ix32400z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y29_N17
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7 ));

// Location: LCFF_X32_Y29_N13
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11 ));

// Location: LCFF_X32_Y29_N11
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxDiv|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ));

// Location: LCCOMB_X33_Y29_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52928 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z6  = (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7  & (!\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11  & !\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z9 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z7 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z11 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_TxDiv|nx18093z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|u_UARTS|ix32400z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix32400z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx32400z1  = (\u_uw_uart|u_UARTS|nx32400z2 ) # ((\u_uw_uart|u_UARTS|nx32400z7  & (\u_uw_uart|u_UARTS|nx32400z8  & \u_uw_uart|u_UARTS|nx32400z6 )))

	.dataa(\u_uw_uart|u_UARTS|nx32400z2 ),
	.datab(\u_uw_uart|u_UARTS|nx32400z7 ),
	.datac(\u_uw_uart|u_UARTS|nx32400z8 ),
	.datad(\u_uw_uart|u_UARTS|nx32400z6 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx32400z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix32400z52923 .lut_mask = 16'hEAAA;
defparam \u_uw_uart|u_UARTS|ix32400z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y29_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_TopTx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx32400z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TopTx ));

// Location: LCCOMB_X32_Y28_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix50920z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx50920z2  = (!\u_uw_uart|u_UARTS|TxFSM_1_  & \u_uw_uart|u_UARTS|TopTx )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx50920z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix50920z52924 .lut_mask = 16'h3300;
defparam \u_uw_uart|u_UARTS|ix50920z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix48926z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx48926z1  = (\u_uw_uart|u_UARTS|TopTx  & ((\u_uw_uart|u_UARTS|TxFSM_0_  & ((\u_uw_uart|u_UARTS|TxBitCnt_0_ ) # (!\u_uw_uart|u_UARTS|TxFSM_1_ ))) # (!\u_uw_uart|u_UARTS|TxFSM_0_  & (\u_uw_uart|u_UARTS|TxBitCnt_0_  $ 
// (\u_uw_uart|u_UARTS|TxFSM_1_ ))))) # (!\u_uw_uart|u_UARTS|TopTx  & (((\u_uw_uart|u_UARTS|TxBitCnt_0_ ))))

	.dataa(\u_uw_uart|u_UARTS|TopTx ),
	.datab(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_0_ ),
	.datad(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx48926z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix48926z52923 .lut_mask = 16'hD2F8;
defparam \u_uw_uart|u_UARTS|ix48926z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N5
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx48926z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxBitCnt_0_ ));

// Location: LCCOMB_X32_Y28_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix49923z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx49923z1  = (\u_uw_uart|u_UARTS|nx51917z2  & (!\u_uw_uart|u_UARTS|nx50920z2  & (\u_uw_uart|u_UARTS|TxBitCnt_1_  $ (!\u_uw_uart|u_UARTS|TxBitCnt_0_ )))) # (!\u_uw_uart|u_UARTS|nx51917z2  & (((\u_uw_uart|u_UARTS|TxBitCnt_1_ ))))

	.dataa(\u_uw_uart|u_UARTS|nx51917z2 ),
	.datab(\u_uw_uart|u_UARTS|nx50920z2 ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_1_ ),
	.datad(\u_uw_uart|u_UARTS|TxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx49923z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix49923z52923 .lut_mask = 16'h7052;
defparam \u_uw_uart|u_UARTS|ix49923z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx49923z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxBitCnt_1_ ));

// Location: LCCOMB_X32_Y28_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix50920z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx50920z3  = (\u_uw_uart|u_UARTS|TxBitCnt_0_ ) # (\u_uw_uart|u_UARTS|TxBitCnt_1_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_0_ ),
	.datad(\u_uw_uart|u_UARTS|TxBitCnt_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx50920z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix50920z52925 .lut_mask = 16'hFFF0;
defparam \u_uw_uart|u_UARTS|ix50920z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N16
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix50920z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx50920z1  = (\u_uw_uart|u_UARTS|nx51917z2  & (!\u_uw_uart|u_UARTS|nx50920z2  & (\u_uw_uart|u_UARTS|TxBitCnt_2_  $ (!\u_uw_uart|u_UARTS|nx50920z3 )))) # (!\u_uw_uart|u_UARTS|nx51917z2  & (((\u_uw_uart|u_UARTS|TxBitCnt_2_ ))))

	.dataa(\u_uw_uart|u_UARTS|nx51917z2 ),
	.datab(\u_uw_uart|u_UARTS|nx50920z2 ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_2_ ),
	.datad(\u_uw_uart|u_UARTS|nx50920z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx50920z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix50920z52923 .lut_mask = 16'h7052;
defparam \u_uw_uart|u_UARTS|ix50920z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N17
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx50920z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxBitCnt_2_ ));

// Location: LCCOMB_X32_Y28_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix51917z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx51917z3  = (\u_uw_uart|u_UARTS|TxBitCnt_1_ ) # ((\u_uw_uart|u_UARTS|TxBitCnt_2_ ) # (\u_uw_uart|u_UARTS|TxBitCnt_0_ ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|TxBitCnt_1_ ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_2_ ),
	.datad(\u_uw_uart|u_UARTS|TxBitCnt_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx51917z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix51917z52925 .lut_mask = 16'hFFFC;
defparam \u_uw_uart|u_UARTS|ix51917z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix51917z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx51917z4  = (\u_uw_uart|u_UARTS|nx50920z2 ) # ((!\u_uw_uart|u_UARTS|TxBitCnt_3_  & (!\u_uw_uart|u_UARTS|nx50920z3  & !\u_uw_uart|u_UARTS|TxBitCnt_2_ )))

	.dataa(\u_uw_uart|u_UARTS|TxBitCnt_3_ ),
	.datab(\u_uw_uart|u_UARTS|nx50920z3 ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_2_ ),
	.datad(\u_uw_uart|u_UARTS|nx50920z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx51917z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix51917z52926 .lut_mask = 16'hFF01;
defparam \u_uw_uart|u_UARTS|ix51917z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix51917z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx51917z1  = (\u_uw_uart|u_UARTS|nx51917z2  & ((\u_uw_uart|u_UARTS|nx51917z4 ) # ((\u_uw_uart|u_UARTS|nx51917z3  & \u_uw_uart|u_UARTS|TxBitCnt_3_ )))) # (!\u_uw_uart|u_UARTS|nx51917z2  & (((\u_uw_uart|u_UARTS|TxBitCnt_3_ ))))

	.dataa(\u_uw_uart|u_UARTS|nx51917z2 ),
	.datab(\u_uw_uart|u_UARTS|nx51917z3 ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_3_ ),
	.datad(\u_uw_uart|u_UARTS|nx51917z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx51917z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix51917z52923 .lut_mask = 16'hFAD0;
defparam \u_uw_uart|u_UARTS|ix51917z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N7
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_TxBitCnt_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx51917z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxBitCnt_3_ ));

// Location: LCCOMB_X33_Y29_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix4608z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx4608z3  = ((\u_uw_uart|u_UARTS|TxBitCnt_1_ ) # ((\u_uw_uart|u_UARTS|TxBitCnt_3_ ) # (\u_uw_uart|u_UARTS|TxBitCnt_2_ ))) # (!\u_uw_uart|u_UARTS|TxBitCnt_0_ )

	.dataa(\u_uw_uart|u_UARTS|TxBitCnt_0_ ),
	.datab(\u_uw_uart|u_UARTS|TxBitCnt_1_ ),
	.datac(\u_uw_uart|u_UARTS|TxBitCnt_3_ ),
	.datad(\u_uw_uart|u_UARTS|TxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx4608z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix4608z52925 .lut_mask = 16'hFFFD;
defparam \u_uw_uart|u_UARTS|ix4608z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N0
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52939 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx51271z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z31  $ (VCC)
// \u_uw_uart|modgen_counter_waitcount|nx22081z30  = CARRY(\u_uw_uart|modgen_counter_waitcount|nx22081z31 )

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .lut_mask = 16'h33CC;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52939 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y28_N4
cycloneii_lcell_comb \u_uw_uart|ix33354z52924 (
// Equation(s):
// \u_uw_uart|nx33354z2  = (\u_uw_uart|nx46385z1 ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(\u_uw_uart|nx46385z1 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52924 .lut_mask = 16'hF3F3;
defparam \u_uw_uart|ix33354z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
cycloneii_io rxflex_ibuf(
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
	.combout(\rxflex~combout ),
	.regout(),
	.differentialout(),
	.linkout(),
	.padio(rxflex));
// synopsys translate_off
defparam rxflex_ibuf.input_async_reset = "none";
defparam rxflex_ibuf.input_power_up = "low";
defparam rxflex_ibuf.input_register_mode = "none";
defparam rxflex_ibuf.input_sync_reset = "none";
defparam rxflex_ibuf.oe_async_reset = "none";
defparam rxflex_ibuf.oe_power_up = "low";
defparam rxflex_ibuf.oe_register_mode = "none";
defparam rxflex_ibuf.oe_sync_reset = "none";
defparam rxflex_ibuf.operation_mode = "input";
defparam rxflex_ibuf.output_async_reset = "none";
defparam rxflex_ibuf.output_power_up = "low";
defparam rxflex_ibuf.output_register_mode = "none";
defparam rxflex_ibuf.output_sync_reset = "none";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix57064z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|NOT_Rx  = (!\nrst~combout ) # (!\rxflex~combout )

	.dataa(vcc),
	.datab(\rxflex~combout ),
	.datac(vcc),
	.datad(\nrst~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|NOT_Rx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix57064z52923 .lut_mask = 16'h33FF;
defparam \u_uw_uart|u_UARTS|ix57064z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_r (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|NOT_Rx ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|not_Rx_r ));

// Location: LCCOMB_X31_Y30_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix14544z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx14544z1  = (\u_uw_uart|u_UARTS|RxFSM_3_ ) # ((\u_uw_uart|u_UARTS|RxFSM_1_  & \u_uw_uart|u_UARTS|not_Rx_r ))

	.dataa(\u_uw_uart|u_UARTS|RxFSM_1_ ),
	.datab(\u_uw_uart|u_UARTS|not_Rx_r ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|RxFSM_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx14544z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix14544z52923 .lut_mask = 16'hFF88;
defparam \u_uw_uart|u_UARTS|ix14544z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|nx34394z2~_wirecell (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout  = !\u_uw_uart|u_UARTS|nx34394z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|nx34394z2~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|u_UARTS|nx34394z2~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N7
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx34394z2~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxFSM_1_ ));

// Location: LCCOMB_X31_Y30_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|RxFSM_6_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout  = \u_uw_uart|u_UARTS|RxFSM_1_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|RxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|RxFSM_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|RxFSM_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N29
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|RxFSM_6_~feeder_combout ),
	.sdata(\u_uw_uart|u_UARTS|RxFSM_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(\u_uw_uart|u_UARTS|not_Rx_r ),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxFSM_6_ ));

// Location: LCCOMB_X31_Y30_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix16538z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx16538z1  = (!\u_uw_uart|u_UARTS|RxFSM_6_  & ((\u_uw_uart|u_UARTS|not_Rx_r ) # (!\u_uw_uart|u_UARTS|RxFSM_5_ )))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|not_Rx_r ),
	.datac(\u_uw_uart|u_UARTS|RxFSM_5_ ),
	.datad(\u_uw_uart|u_UARTS|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx16538z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix16538z52923 .lut_mask = 16'h00CF;
defparam \u_uw_uart|u_UARTS|ix16538z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N19
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx16538z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|nx34394z2 ));

// Location: LCCOMB_X31_Y30_N2
cycloneii_lcell_comb \u_uw_uart|ix29443z52923 (
// Equation(s):
// \u_uw_uart|RawRx  = (\nrst~combout  & \rxflex~combout )

	.dataa(\nrst~combout ),
	.datab(vcc),
	.datac(vcc),
	.datad(\rxflex~combout ),
	.cin(gnd),
	.combout(\u_uw_uart|RawRx ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix29443z52923 .lut_mask = 16'hAA00;
defparam \u_uw_uart|ix29443z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix15541z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx15541z2  = (\u_uw_uart|u_UARTS|nx34394z2  & ((\u_uw_uart|u_UARTS|RxFSM_6_  & ((\u_uw_uart|RawRx ))) # (!\u_uw_uart|u_UARTS|RxFSM_6_  & (\u_uw_uart|u_UARTS|TopRx ))))

	.dataa(\u_uw_uart|u_UARTS|TopRx ),
	.datab(\u_uw_uart|u_UARTS|nx34394z2 ),
	.datac(\u_uw_uart|RawRx ),
	.datad(\u_uw_uart|u_UARTS|RxFSM_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx15541z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix15541z52925 .lut_mask = 16'hC088;
defparam \u_uw_uart|u_UARTS|ix15541z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix15541z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx15541z1  = (\u_uw_uart|u_UARTS|nx15541z2 ) # ((\u_uw_uart|u_UARTS|nx15541z3  & (\u_uw_uart|u_UARTS|not_Rx_r  & !\u_uw_uart|u_UARTS|nx34394z2 )))

	.dataa(\u_uw_uart|u_UARTS|nx15541z3 ),
	.datab(\u_uw_uart|u_UARTS|not_Rx_r ),
	.datac(\u_uw_uart|u_UARTS|nx15541z2 ),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx15541z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix15541z52924 .lut_mask = 16'hF0F8;
defparam \u_uw_uart|u_UARTS|ix15541z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx14544z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxFSM_2_ ));

// Location: LCCOMB_X31_Y30_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix13547z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx13547z1  = (!\u_uw_uart|u_UARTS|nx13547z2  & \u_uw_uart|u_UARTS|RxFSM_2_ )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|nx13547z2 ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx13547z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix13547z52923 .lut_mask = 16'h3300;
defparam \u_uw_uart|u_UARTS|ix13547z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N1
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx13547z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxFSM_3_ ));

// Location: LCCOMB_X31_Y30_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix11364z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx11364z1  = (\u_uw_uart|u_UARTS|TopRx  & (\u_uw_uart|u_UARTS|nx34394z2  & (\u_uw_uart|u_UARTS|RxFSM_3_  $ (\u_uw_uart|u_UARTS|RxBitCnt_0_ )))) # (!\u_uw_uart|u_UARTS|TopRx  & (\u_uw_uart|u_UARTS|RxBitCnt_0_  & 
// ((\u_uw_uart|u_UARTS|RxFSM_3_ ) # (\u_uw_uart|u_UARTS|nx34394z2 ))))

	.dataa(\u_uw_uart|u_UARTS|TopRx ),
	.datab(\u_uw_uart|u_UARTS|RxFSM_3_ ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_0_ ),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx11364z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix11364z52923 .lut_mask = 16'h7840;
defparam \u_uw_uart|u_UARTS|ix11364z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N9
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx11364z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxBitCnt_0_ ));

// Location: LCCOMB_X30_Y30_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix10367z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx10367z1  = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & (\u_uw_uart|u_UARTS|nx34394z2  & (\u_uw_uart|u_UARTS|RxBitCnt_0_  $ (\u_uw_uart|u_UARTS|RxBitCnt_1_ )))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & 
// (((\u_uw_uart|u_UARTS|RxBitCnt_1_ ))))

	.dataa(\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360 ),
	.datab(\u_uw_uart|u_UARTS|RxBitCnt_0_ ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_1_ ),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx10367z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix10367z52923 .lut_mask = 16'h7850;
defparam \u_uw_uart|u_UARTS|ix10367z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N9
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx10367z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxBitCnt_1_ ));

// Location: LCCOMB_X31_Y30_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix8373z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  = (\u_uw_uart|u_UARTS|RxFSM_3_  & (\u_uw_uart|u_UARTS|TopRx )) # (!\u_uw_uart|u_UARTS|RxFSM_3_  & ((!\u_uw_uart|u_UARTS|nx34394z2 )))

	.dataa(\u_uw_uart|u_UARTS|TopRx ),
	.datab(\u_uw_uart|u_UARTS|RxFSM_3_ ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix8373z52924 .lut_mask = 16'h88BB;
defparam \u_uw_uart|u_UARTS|ix8373z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix9370z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx9370z1  = (\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & (\u_uw_uart|u_UARTS|nx34394z2  & (\u_uw_uart|u_UARTS|nx9370z2  $ (\u_uw_uart|u_UARTS|RxBitCnt_2_ )))) # (!\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360  & (((\u_uw_uart|u_UARTS|RxBitCnt_2_ 
// ))))

	.dataa(\u_uw_uart|u_UARTS|nx9370z2 ),
	.datab(\u_uw_uart|u_UARTS|not_rtlc17_X_0_n360 ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_2_ ),
	.datad(\u_uw_uart|u_UARTS|nx34394z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx9370z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix9370z52923 .lut_mask = 16'h7830;
defparam \u_uw_uart|u_UARTS|ix9370z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N7
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxBitCnt_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx9370z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxBitCnt_2_ ));

// Location: LCCOMB_X30_Y30_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix13547z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx13547z2  = (\u_uw_uart|u_UARTS|RxBitCnt_3_  & (!\u_uw_uart|u_UARTS|RxBitCnt_1_  & (!\u_uw_uart|u_UARTS|RxBitCnt_0_  & !\u_uw_uart|u_UARTS|RxBitCnt_2_ )))

	.dataa(\u_uw_uart|u_UARTS|RxBitCnt_3_ ),
	.datab(\u_uw_uart|u_UARTS|RxBitCnt_1_ ),
	.datac(\u_uw_uart|u_UARTS|RxBitCnt_0_ ),
	.datad(\u_uw_uart|u_UARTS|RxBitCnt_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx13547z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix13547z52924 .lut_mask = 16'h0002;
defparam \u_uw_uart|u_UARTS|ix13547z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix11553z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx11553z1  = (\u_uw_uart|u_UARTS|nx13547z2  & \u_uw_uart|u_UARTS|RxFSM_2_ )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|nx13547z2 ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|RxFSM_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx11553z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix11553z52923 .lut_mask = 16'hCC00;
defparam \u_uw_uart|u_UARTS|ix11553z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N25
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxFSM_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx11553z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx15541z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxFSM_5_ ));

// Location: LCCOMB_X34_Y29_N10
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52934 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1  = \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21  $ (VCC)
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20  = CARRY(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 )

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z20 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52934 .lut_mask = 16'h55AA;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y29_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52932 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z18 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52932 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N16
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix65151z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx65151z1  = (\u_uw_uart|u_UARTS|nx34394z3 ) # (!\u_uw_uart|u_UARTS|nx34394z2 )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|nx34394z2 ),
	.datac(\u_uw_uart|u_UARTS|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx65151z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix65151z52923 .lut_mask = 16'hF3F3;
defparam \u_uw_uart|u_UARTS|ix65151z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X34_Y29_N15
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17 ));

// Location: LCCOMB_X34_Y29_N16
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52931 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 )) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 ) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z16 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52931 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N17
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ));

// Location: LCFF_X34_Y29_N11
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 ));

// Location: LCCOMB_X34_Y29_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52931 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z10  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z19 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z17 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z15 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z21 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z10 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52931 .lut_mask = 16'h0010;
defparam \u_uw_uart|u_UARTS|ix34394z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y29_N18
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52930 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z14 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z12 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52930 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N19
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx55259z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 ));

// Location: LCCOMB_X34_Y29_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52928 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z10 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52928 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N23
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9 ));

// Location: LCCOMB_X34_Y29_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52927 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 )) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 ) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z8 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52927 .lut_mask = 16'h5A5F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N25
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ));

// Location: LCCOMB_X34_Y29_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52930 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z9  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7  & \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z9 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52930 .lut_mask = 16'h4000;
defparam \u_uw_uart|u_UARTS|ix34394z52930 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y29_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5  & (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6  $ (GND))) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5  & 
// (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6  & VCC))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4  = CARRY((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z6 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52926 .lut_mask = 16'hC30C;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx59247z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5 ));

// Location: LCCOMB_X34_Y29_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52925 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1  = (\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 )) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3  & 
// ((\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 ) # (GND)))
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2  = CARRY((!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 ) # (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z4 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1 ),
	.cout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2 ));
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52925 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N29
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx60244z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ));

// Location: LCCOMB_X34_Y29_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1  = \u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2  $ (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 ),
	.cin(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z2 ),
	.combout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52923 .lut_mask = 16'hF00F;
defparam \u_uw_uart|u_UARTS|modgen_counter_RxDiv|ix17096z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X34_Y29_N31
cycloneii_lcell_ff \u_uw_uart|u_UARTS|modgen_counter_RxDiv|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_uw_uart|u_UARTS|nx65151z1 ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 ));

// Location: LCCOMB_X34_Y29_N8
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52927 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z6  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3  & (!\u_uw_uart|u_UARTS|TxDivisor_5_  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z5 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z3 ),
	.datac(\u_uw_uart|u_UARTS|TxDivisor_5_ ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx3957z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52927 .lut_mask = 16'h0001;
defparam \u_uw_uart|u_UARTS|ix34394z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X34_Y29_N2
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52928 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z7  = (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9  & (!\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7  & !\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 )))

	.dataa(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z11 ),
	.datab(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z9 ),
	.datac(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z7 ),
	.datad(\u_uw_uart|u_UARTS|modgen_counter_RxDiv|nx17096z13 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z7 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52928 .lut_mask = 16'h0001;
defparam \u_uw_uart|u_UARTS|ix34394z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52926 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z5  = (\u_uw_uart|u_UARTS|nx34394z8  & (\u_uw_uart|u_UARTS|nx34394z6  & \u_uw_uart|u_UARTS|nx34394z7 ))

	.dataa(\u_uw_uart|u_UARTS|nx34394z8 ),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|nx34394z6 ),
	.datad(\u_uw_uart|u_UARTS|nx34394z7 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z5 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52926 .lut_mask = 16'hA000;
defparam \u_uw_uart|u_UARTS|ix34394z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z3  = (\u_uw_uart|u_UARTS|nx34394z5 ) # ((\u_uw_uart|u_UARTS|nx34394z4  & (\u_uw_uart|u_UARTS|nx34394z10  & \u_uw_uart|u_UARTS|nx34394z9 )))

	.dataa(\u_uw_uart|u_UARTS|nx34394z4 ),
	.datab(\u_uw_uart|u_UARTS|nx34394z10 ),
	.datac(\u_uw_uart|u_UARTS|nx34394z9 ),
	.datad(\u_uw_uart|u_UARTS|nx34394z5 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52924 .lut_mask = 16'hFF80;
defparam \u_uw_uart|u_UARTS|ix34394z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix34394z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx34394z1  = (\u_uw_uart|u_UARTS|nx34394z2  & \u_uw_uart|u_UARTS|nx34394z3 )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|nx34394z2 ),
	.datac(\u_uw_uart|u_UARTS|nx34394z3 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx34394z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix34394z52923 .lut_mask = 16'hC0C0;
defparam \u_uw_uart|u_UARTS|ix34394z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N13
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_TopRx (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx34394z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TopRx ));

// Location: LCCOMB_X31_Y30_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix30017z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx30017z1  = (!\u_uw_uart|u_UARTS|not_Rx_r  & (\u_uw_uart|u_UARTS|RxFSM_5_  & \u_uw_uart|u_UARTS|TopRx ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|not_Rx_r ),
	.datac(\u_uw_uart|u_UARTS|RxFSM_5_ ),
	.datad(\u_uw_uart|u_UARTS|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx30017z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix30017z52923 .lut_mask = 16'h3000;
defparam \u_uw_uart|u_UARTS|ix30017z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y30_N31
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxRDYi (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx30017z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxRDY ));

// Location: LCCOMB_X30_Y30_N16
cycloneii_lcell_comb \u_uw_uart|ix33468z52923 (
// Equation(s):
// \u_uw_uart|nx33468z1  = (!\u_uw_uart|o_pixavail  & \u_uw_uart|u_UARTS|RxRDY )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|u_UARTS|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33468z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33468z52923 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix33468z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N17
cycloneii_lcell_ff \u_uw_uart|reg_CharAvail (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx33468z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|o_pixavail ));

// Location: LCCOMB_X31_Y28_N20
cycloneii_lcell_comb \u_uw_uart|ix39480z52923 (
// Equation(s):
// \u_uw_uart|nx39480z1  = (!\u_uw_uart|nx46385z1  & ((\u_uw_uart|o_pixavail ) # (\u_uw_uart|ack )))

	.dataa(\u_uw_uart|nx46385z1 ),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\u_uw_uart|ack ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|nx39480z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix39480z52923 .lut_mask = 16'h5454;
defparam \u_uw_uart|ix39480z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y28_N21
cycloneii_lcell_ff \u_uw_uart|reg_ack (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx39480z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|ack ));

// Location: LCCOMB_X31_Y28_N14
cycloneii_lcell_comb \u_uw_uart|ix33354z52923 (
// Equation(s):
// \u_uw_uart|nx33354z1  = (\u_uw_uart|o_pixavail ) # ((\u_uw_uart|ack ) # (!\nrst~combout ))

	.dataa(vcc),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(\nrst~combout ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx33354z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix33354z52923 .lut_mask = 16'hFFCF;
defparam \u_uw_uart|ix33354z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y28_N1
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx51271z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z31 ));

// Location: LCCOMB_X30_Y28_N2
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52938 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx52268z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z29  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z30 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z30 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z28  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z30 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z29 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z30 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52938 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N3
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx52268z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z29 ));

// Location: LCCOMB_X30_Y28_N4
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52937 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx53265z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z27  & (\u_uw_uart|modgen_counter_waitcount|nx22081z28  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z27  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z28  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z26  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z27  & !\u_uw_uart|modgen_counter_waitcount|nx22081z28 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z28 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z26 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N5
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx53265z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z27 ));

// Location: LCCOMB_X30_Y28_N8
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52935 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx55259z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z23  & (\u_uw_uart|modgen_counter_waitcount|nx22081z24  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z23  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z24  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z22  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z23  & !\u_uw_uart|modgen_counter_waitcount|nx22081z24 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z24 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z22 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N9
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx55259z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ));

// Location: LCCOMB_X30_Y28_N12
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52933 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx57253z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z19  & (\u_uw_uart|modgen_counter_waitcount|nx22081z20  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z19  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z20  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z18  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z19  & !\u_uw_uart|modgen_counter_waitcount|nx22081z20 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z20 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N14
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52932 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx58250z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z17  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z18 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z18 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z16  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z18 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z17 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z18 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52932 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N15
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx58250z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ));

// Location: LCCOMB_X30_Y28_N16
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52931 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx59247z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z15  & (\u_uw_uart|modgen_counter_waitcount|nx22081z16  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z15  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z16  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z14  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z15  & !\u_uw_uart|modgen_counter_waitcount|nx22081z16 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z16 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N18
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52930 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx60244z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z14 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z14 
// ) # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z12  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z14 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z13 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z14 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N19
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_9_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx60244z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ));

// Location: LCCOMB_X30_Y28_N20
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52929 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx17096z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z11  & (\u_uw_uart|modgen_counter_waitcount|nx22081z12  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z11  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z12  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z10  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z12 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z12 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N21
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_10_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx17096z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ));

// Location: LCFF_X30_Y28_N17
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_8_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx59247z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ));

// Location: LCCOMB_X31_Y28_N2
cycloneii_lcell_comb \u_uw_uart|ix46385z52925 (
// Equation(s):
// \u_uw_uart|nx46385z3  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z9  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z13  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z11  & !\u_uw_uart|modgen_counter_waitcount|nx22081z15 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z13 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z11 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z15 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z3 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52925 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix46385z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y28_N22
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52928 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx18093z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z9  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z10 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z10 ) 
// # (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z8  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z10 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z9 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z10 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N23
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_11_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx18093z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z9 ));

// Location: LCCOMB_X30_Y28_N24
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52927 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx19090z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z7  & (\u_uw_uart|modgen_counter_waitcount|nx22081z8  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z7  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z8  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z6  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z7  & !\u_uw_uart|modgen_counter_waitcount|nx22081z8 ))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z8 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .lut_mask = 16'hA50A;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N25
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_12_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx19090z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ));

// Location: LCCOMB_X30_Y28_N26
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52926 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx20087z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z5  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z6 )) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5  & ((\u_uw_uart|modgen_counter_waitcount|nx22081z6 ) # 
// (GND)))
// \u_uw_uart|modgen_counter_waitcount|nx22081z4  = CARRY((!\u_uw_uart|modgen_counter_waitcount|nx22081z6 ) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z5 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z6 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .lut_mask = 16'h3C3F;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N27
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_13_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx20087z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ));

// Location: LCCOMB_X30_Y28_N28
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52925 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx21084z1  = (\u_uw_uart|modgen_counter_waitcount|nx22081z3  & (\u_uw_uart|modgen_counter_waitcount|nx22081z4  $ (GND))) # (!\u_uw_uart|modgen_counter_waitcount|nx22081z3  & 
// (!\u_uw_uart|modgen_counter_waitcount|nx22081z4  & VCC))
// \u_uw_uart|modgen_counter_waitcount|nx22081z2  = CARRY((\u_uw_uart|modgen_counter_waitcount|nx22081z3  & !\u_uw_uart|modgen_counter_waitcount|nx22081z4 ))

	.dataa(vcc),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z4 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.cout(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ));
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .lut_mask = 16'hC30C;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N29
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_14_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx21084z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ));

// Location: LCCOMB_X30_Y28_N30
cycloneii_lcell_comb \u_uw_uart|modgen_counter_waitcount|ix22081z52923 (
// Equation(s):
// \u_uw_uart|modgen_counter_waitcount|nx22081z1  = \u_uw_uart|modgen_counter_waitcount|nx22081z2  $ (\u_uw_uart|modgen_counter_waitcount|nx64508z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.cin(\u_uw_uart|modgen_counter_waitcount|nx22081z2 ),
	.combout(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .lut_mask = 16'h0FF0;
defparam \u_uw_uart|modgen_counter_waitcount|ix22081z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X30_Y28_N31
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_15_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx22081z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ));

// Location: LCCOMB_X31_Y28_N24
cycloneii_lcell_comb \u_uw_uart|ix46385z52924 (
// Equation(s):
// \u_uw_uart|nx46385z2  = (!\u_uw_uart|modgen_counter_waitcount|nx22081z5  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z7  & (!\u_uw_uart|modgen_counter_waitcount|nx64508z1  & !\u_uw_uart|modgen_counter_waitcount|nx22081z3 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z5 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z7 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx64508z1 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z3 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52924 .lut_mask = 16'h0001;
defparam \u_uw_uart|ix46385z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y28_N13
cycloneii_lcell_ff \u_uw_uart|modgen_counter_waitcount|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|modgen_counter_waitcount|nx57253z1 ),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(\u_uw_uart|nx33354z2 ),
	.sload(gnd),
	.ena(\u_uw_uart|nx33354z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ));

// Location: LCCOMB_X31_Y28_N28
cycloneii_lcell_comb \u_uw_uart|ix46385z52926 (
// Equation(s):
// \u_uw_uart|nx46385z4  = (\u_uw_uart|modgen_counter_waitcount|nx22081z21  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z17  & (!\u_uw_uart|modgen_counter_waitcount|nx22081z23  & \u_uw_uart|modgen_counter_waitcount|nx22081z19 )))

	.dataa(\u_uw_uart|modgen_counter_waitcount|nx22081z21 ),
	.datab(\u_uw_uart|modgen_counter_waitcount|nx22081z17 ),
	.datac(\u_uw_uart|modgen_counter_waitcount|nx22081z23 ),
	.datad(\u_uw_uart|modgen_counter_waitcount|nx22081z19 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z4 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52926 .lut_mask = 16'h0200;
defparam \u_uw_uart|ix46385z52926 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y28_N16
cycloneii_lcell_comb \u_uw_uart|ix46385z52923 (
// Equation(s):
// \u_uw_uart|nx46385z1  = (\u_uw_uart|nx46385z5  & (\u_uw_uart|nx46385z3  & (\u_uw_uart|nx46385z2  & \u_uw_uart|nx46385z4 )))

	.dataa(\u_uw_uart|nx46385z5 ),
	.datab(\u_uw_uart|nx46385z3 ),
	.datac(\u_uw_uart|nx46385z2 ),
	.datad(\u_uw_uart|nx46385z4 ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52923 .lut_mask = 16'h8000;
defparam \u_uw_uart|ix46385z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N30
cycloneii_lcell_comb \u_uw_uart|dsend~feeder (
// Equation(s):
// \u_uw_uart|dsend~feeder_combout  = \u_uw_uart|nx46385z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|nx46385z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|dsend~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|dsend~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|dsend~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y28_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix15376z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx15376z1  = (\u_uw_uart|u_UARTS|RxFSM_6_ ) # ((\u_uw_uart|u_UARTS|RxErr  & !\u_uw_uart|u_UARTS|RxRDY ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|RxFSM_6_ ),
	.datac(\u_uw_uart|u_UARTS|RxErr ),
	.datad(\u_uw_uart|u_UARTS|RxRDY ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx15376z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix15376z52923 .lut_mask = 16'hCCFC;
defparam \u_uw_uart|u_UARTS|ix15376z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y28_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_RxErr (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx15376z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|RxErr ));

// Location: LCCOMB_X31_Y28_N22
cycloneii_lcell_comb \u_uw_uart|ix46385z52928 (
// Equation(s):
// \u_uw_uart|nx46385z6  = (!\u_uw_uart|o_pixavail  & !\u_uw_uart|ack )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|o_pixavail ),
	.datad(\u_uw_uart|ack ),
	.cin(gnd),
	.combout(\u_uw_uart|nx46385z6 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46385z52928 .lut_mask = 16'h000F;
defparam \u_uw_uart|ix46385z52928 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N31
cycloneii_lcell_ff \u_uw_uart|reg_dsend (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|dsend~feeder_combout ),
	.sdata(\u_uw_uart|u_UARTS|RxErr ),
	.aclr(gnd),
	.sclr(!\nrst~combout ),
	.sload(\u_uw_uart|nx46385z6 ),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|dsend ));

// Location: LCCOMB_X31_Y28_N12
cycloneii_lcell_comb \u_uw_uart|ix42856z52924 (
// Equation(s):
// \u_uw_uart|nx42856z2  = (!\u_uw_uart|State  & \u_uw_uart|dsend )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_uw_uart|State ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx42856z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42856z52924 .lut_mask = 16'h0F00;
defparam \u_uw_uart|ix42856z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y28_N13
cycloneii_lcell_ff \u_uw_uart|reg_State (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx42856z2 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|State ));

// Location: LCCOMB_X31_Y28_N0
cycloneii_lcell_comb \u_uw_uart|ix54369z52923 (
// Equation(s):
// \u_uw_uart|nx54369z1  = (!\u_uw_uart|State  & ((\u_uw_uart|LD_SDOUT ) # (\u_uw_uart|dsend )))

	.dataa(vcc),
	.datab(\u_uw_uart|State ),
	.datac(\u_uw_uart|LD_SDOUT ),
	.datad(\u_uw_uart|dsend ),
	.cin(gnd),
	.combout(\u_uw_uart|nx54369z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix54369z52923 .lut_mask = 16'h3330;
defparam \u_uw_uart|ix54369z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X31_Y28_N1
cycloneii_lcell_ff \u_uw_uart|reg_LD_SDOUT (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|nx54369z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|LD_SDOUT ));

// Location: LCCOMB_X33_Y29_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix4608z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx4608z2  = (\u_uw_uart|u_UARTS|TxFSM_0_  & (((!\u_uw_uart|u_UARTS|TopTx )))) # (!\u_uw_uart|u_UARTS|TxFSM_0_  & ((\u_uw_uart|u_UARTS|TxFSM_1_  & ((!\u_uw_uart|u_UARTS|TopTx ))) # (!\u_uw_uart|u_UARTS|TxFSM_1_  & (!\u_uw_uart|LD_SDOUT 
// ))))

	.dataa(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datab(\u_uw_uart|LD_SDOUT ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datad(\u_uw_uart|u_UARTS|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx4608z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix4608z52924 .lut_mask = 16'h01FB;
defparam \u_uw_uart|u_UARTS|ix4608z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X33_Y29_N16
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix4608z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx4608z1  = (\u_uw_uart|u_UARTS|TxFSM_0_  & (((\u_uw_uart|u_UARTS|nx4608z2 )))) # (!\u_uw_uart|u_UARTS|TxFSM_0_  & (!\u_uw_uart|u_UARTS|nx4608z2  & ((!\u_uw_uart|u_UARTS|nx4608z3 ) # (!\u_uw_uart|u_UARTS|TxFSM_1_ ))))

	.dataa(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datab(\u_uw_uart|u_UARTS|nx4608z3 ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datad(\u_uw_uart|u_UARTS|nx4608z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx4608z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix4608z52923 .lut_mask = 16'hF007;
defparam \u_uw_uart|u_UARTS|ix4608z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X33_Y29_N17
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_TxFSM_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx4608z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxFSM_0_ ));

// Location: LCCOMB_X32_Y28_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix5605z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx5605z1  = \u_uw_uart|u_UARTS|TxFSM_1_  $ (((\u_uw_uart|u_UARTS|TxFSM_0_  & \u_uw_uart|u_UARTS|TopTx )))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datad(\u_uw_uart|u_UARTS|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx5605z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix5605z52923 .lut_mask = 16'h3CF0;
defparam \u_uw_uart|u_UARTS|ix5605z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N1
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_TxFSM_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx5605z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|TxFSM_1_ ));

// Location: LCCOMB_X32_Y28_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix31615z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx31615z2  = (!\u_uw_uart|u_UARTS|TxFSM_0_  & ((\u_uw_uart|u_UARTS|TxFSM_1_  & ((\u_uw_uart|u_UARTS|TopTx ))) # (!\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|LD_SDOUT ))))

	.dataa(\u_uw_uart|LD_SDOUT ),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datad(\u_uw_uart|u_UARTS|TopTx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx31615z2 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix31615z52924 .lut_mask = 16'h0E02;
defparam \u_uw_uart|u_UARTS|ix31615z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y28_N2
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix29621z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx29621z1  = (\u_uw_uart|u_UARTS|nx31615z2  & (!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_ )) # (!\u_uw_uart|u_UARTS|nx31615z2  & ((\u_uw_uart|u_UARTS|nx28624z2 )))

	.dataa(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_2_ ),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|nx28624z2 ),
	.datad(\u_uw_uart|u_UARTS|nx31615z2 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx29621z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix29621z52923 .lut_mask = 16'h55F0;
defparam \u_uw_uart|u_UARTS|ix29621z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y28_N3
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Tx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx29621z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|nx28624z2 ));

// Location: LCCOMB_X32_Y29_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix28624z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_  = (\u_uw_uart|u_UARTS|TxFSM_1_  & ((!\u_uw_uart|u_UARTS|nx28624z2 ))) # (!\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|sdout_3_ ))

	.dataa(\u_uw_uart|sdout_3_ ),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|nx28624z2 ),
	.datad(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix28624z52924 .lut_mask = 16'h0FAA;
defparam \u_uw_uart|u_UARTS|ix28624z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N26
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix28624z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx28624z1  = (\u_uw_uart|u_UARTS|nx31615z2  & ((!\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_ ))) # (!\u_uw_uart|u_UARTS|nx31615z2  & (\u_uw_uart|u_UARTS|nx61140z1 ))

	.dataa(\u_uw_uart|u_UARTS|nx31615z2 ),
	.datab(vcc),
	.datac(\u_uw_uart|u_UARTS|nx61140z1 ),
	.datad(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_1_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx28624z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix28624z52923 .lut_mask = 16'h50FA;
defparam \u_uw_uart|u_UARTS|ix28624z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y29_N27
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Tx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|nx28624z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|nx61140z1 ));

// Location: LCCOMB_X32_Y29_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix61140z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_  = (\u_uw_uart|u_UARTS|TxFSM_0_ ) # ((\u_uw_uart|u_UARTS|TxFSM_1_  & \u_uw_uart|u_UARTS|nx61140z1 ))

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datad(\u_uw_uart|u_UARTS|nx61140z1 ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix61140z52923 .lut_mask = 16'hFCF0;
defparam \u_uw_uart|u_UARTS|ix61140z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X32_Y29_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix61812z52923 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx61812z1  = (\u_uw_uart|u_UARTS|TxFSM_0_  & (!\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|u_UARTS|TopTx ))) # (!\u_uw_uart|u_UARTS|TxFSM_0_  & ((\u_uw_uart|u_UARTS|TxFSM_1_  & (\u_uw_uart|u_UARTS|TopTx )) # (!\u_uw_uart|u_UARTS|TxFSM_1_ 
//  & ((\u_uw_uart|LD_SDOUT )))))

	.dataa(\u_uw_uart|u_UARTS|TxFSM_0_ ),
	.datab(\u_uw_uart|u_UARTS|TxFSM_1_ ),
	.datac(\u_uw_uart|u_UARTS|TopTx ),
	.datad(\u_uw_uart|LD_SDOUT ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx61812z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix61812z52923 .lut_mask = 16'h7160;
defparam \u_uw_uart|u_UARTS|ix61812z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X32_Y29_N25
cycloneii_lcell_ff reg_out_txflex_obuf(
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Tx_Reg_14n6ss1_0_ ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx61812z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx21351z2));

// Location: LCCOMB_X29_Y29_N12
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52931 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx51271z1  = \u_lab3|modgen_counter_o_output|nx58250z15  $ (VCC)
// \u_lab3|modgen_counter_o_output|nx58250z14  = CARRY(\u_lab3|modgen_counter_o_output|nx58250z15 )

	.dataa(vcc),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|modgen_counter_o_output|nx51271z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z14 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52931 .lut_mask = 16'h33CC;
defparam \u_lab3|modgen_counter_o_output|ix58250z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N6
cycloneii_lcell_comb \u_lab3|ix14243z52923 (
// Equation(s):
// \u_lab3|nx14243z1  = \u_lab3|y_pos_0_  $ (\u_lab3|y_pos_1_ )

	.dataa(\u_lab3|y_pos_0_ ),
	.datab(vcc),
	.datac(\u_lab3|y_pos_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|nx14243z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix14243z52923 .lut_mask = 16'h5A5A;
defparam \u_lab3|ix14243z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N26
cycloneii_lcell_comb \u_lab3|ix45976z52923 (
// Equation(s):
// \u_lab3|nx45976z1  = \u_lab3|x_pos_0_  $ (\u_lab3|x_pos_1_ )

	.dataa(\u_lab3|x_pos_0_ ),
	.datab(vcc),
	.datac(\u_lab3|x_pos_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|nx45976z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix45976z52923 .lut_mask = 16'h5A5A;
defparam \u_lab3|ix45976z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y29_N27
cycloneii_lcell_ff \u_lab3|modgen_counter_x_pos_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx45976z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|x_pos_1_ ));

// Location: LCCOMB_X28_Y29_N24
cycloneii_lcell_comb \u_lab3|ix44979z52923 (
// Equation(s):
// \u_lab3|nx44979z1  = \u_lab3|x_pos_2_  $ (((\u_lab3|x_pos_0_  & \u_lab3|x_pos_1_ )))

	.dataa(\u_lab3|x_pos_0_ ),
	.datab(vcc),
	.datac(\u_lab3|x_pos_2_ ),
	.datad(\u_lab3|x_pos_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx44979z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix44979z52923 .lut_mask = 16'h5AF0;
defparam \u_lab3|ix44979z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y29_N25
cycloneii_lcell_ff \u_lab3|modgen_counter_x_pos_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx44979z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|x_pos_2_ ));

// Location: LCCOMB_X28_Y29_N22
cycloneii_lcell_comb \u_lab3|ix43982z52923 (
// Equation(s):
// \u_lab3|nx43982z1  = \u_lab3|x_pos_3_  $ (((\u_lab3|x_pos_0_  & (\u_lab3|x_pos_2_  & \u_lab3|x_pos_1_ ))))

	.dataa(\u_lab3|x_pos_0_ ),
	.datab(\u_lab3|x_pos_2_ ),
	.datac(\u_lab3|x_pos_3_ ),
	.datad(\u_lab3|x_pos_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx43982z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix43982z52923 .lut_mask = 16'h78F0;
defparam \u_lab3|ix43982z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y29_N23
cycloneii_lcell_ff \u_lab3|modgen_counter_x_pos_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx43982z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|x_pos_3_ ));

// Location: LCCOMB_X28_Y29_N20
cycloneii_lcell_comb \u_lab3|x_pos_0_~_wirecell (
// Equation(s):
// \u_lab3|x_pos_0_~_wirecell_combout  = !\u_lab3|x_pos_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|x_pos_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|x_pos_0_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_lab3|x_pos_0_~_wirecell .lut_mask = 16'h0F0F;
defparam \u_lab3|x_pos_0_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X28_Y29_N21
cycloneii_lcell_ff \u_lab3|modgen_counter_x_pos_reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|x_pos_0_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|o_pixavail ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|x_pos_0_ ));

// Location: LCCOMB_X28_Y29_N30
cycloneii_lcell_comb \u_lab3|ix53087z52925 (
// Equation(s):
// \u_lab3|nx53087z2  = (\u_lab3|x_pos_0_  & \u_lab3|x_pos_1_ )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|x_pos_0_ ),
	.datad(\u_lab3|x_pos_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx53087z2 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix53087z52925 .lut_mask = 16'hF000;
defparam \u_lab3|ix53087z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N22
cycloneii_lcell_comb \u_lab3|ix53087z52924 (
// Equation(s):
// \u_lab3|nx53087z1  = (\u_uw_uart|o_pixavail  & (\u_lab3|x_pos_2_  & (\u_lab3|x_pos_3_  & \u_lab3|nx53087z2 )))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_lab3|x_pos_2_ ),
	.datac(\u_lab3|x_pos_3_ ),
	.datad(\u_lab3|nx53087z2 ),
	.cin(gnd),
	.combout(\u_lab3|nx53087z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix53087z52924 .lut_mask = 16'h8000;
defparam \u_lab3|ix53087z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N12
cycloneii_lcell_comb \u_lab3|ix12249z52923 (
// Equation(s):
// \u_lab3|nx12249z1  = \u_lab3|y_pos_3_  $ (((\u_lab3|y_pos_0_  & (\u_lab3|y_pos_2_  & \u_lab3|y_pos_1_ ))))

	.dataa(\u_lab3|y_pos_0_ ),
	.datab(\u_lab3|y_pos_2_ ),
	.datac(\u_lab3|y_pos_3_ ),
	.datad(\u_lab3|y_pos_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx12249z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix12249z52923 .lut_mask = 16'h78F0;
defparam \u_lab3|ix12249z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N13
cycloneii_lcell_ff \u_lab3|modgen_counter_y_pos_reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx12249z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|y_pos_3_ ));

// Location: LCCOMB_X27_Y32_N28
cycloneii_lcell_comb \u_lab3|ix35397z52923 (
// Equation(s):
// \u_lab3|nx35397z1  = (\u_lab3|end_of_input ) # ((\u_lab3|nx35397z2  & (\u_lab3|nx53087z1  & \u_lab3|y_pos_3_ )))

	.dataa(\u_lab3|nx35397z2 ),
	.datab(\u_lab3|nx53087z1 ),
	.datac(\u_lab3|end_of_input ),
	.datad(\u_lab3|y_pos_3_ ),
	.cin(gnd),
	.combout(\u_lab3|nx35397z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix35397z52923 .lut_mask = 16'hF8F0;
defparam \u_lab3|ix35397z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N29
cycloneii_lcell_ff \u_lab3|reg_end_of_input (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx35397z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|end_of_input ));

// Location: LCCOMB_X27_Y32_N24
cycloneii_lcell_comb \u_lab3|ix46973z52924 (
// Equation(s):
// \u_lab3|nx46973z1  = (\u_lab3|end_of_input ) # (!\nrst~combout )

	.dataa(vcc),
	.datab(\nrst~combout ),
	.datac(vcc),
	.datad(\u_lab3|end_of_input ),
	.cin(gnd),
	.combout(\u_lab3|nx46973z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix46973z52924 .lut_mask = 16'hFF33;
defparam \u_lab3|ix46973z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N7
cycloneii_lcell_ff \u_lab3|modgen_counter_y_pos_reg_q_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx14243z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|y_pos_1_ ));

// Location: LCCOMB_X27_Y32_N26
cycloneii_lcell_comb \u_lab3|ix13246z52923 (
// Equation(s):
// \u_lab3|nx13246z1  = \u_lab3|y_pos_2_  $ (((\u_lab3|y_pos_0_  & \u_lab3|y_pos_1_ )))

	.dataa(\u_lab3|y_pos_0_ ),
	.datab(vcc),
	.datac(\u_lab3|y_pos_2_ ),
	.datad(\u_lab3|y_pos_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx13246z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix13246z52923 .lut_mask = 16'h5AF0;
defparam \u_lab3|ix13246z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N27
cycloneii_lcell_ff \u_lab3|modgen_counter_y_pos_reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx13246z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|y_pos_2_ ));

// Location: LCCOMB_X27_Y32_N14
cycloneii_lcell_comb \u_lab3|ix3163z52961 (
// Equation(s):
// \u_lab3|nx3163z72  = (\u_lab3|y_pos_1_ ) # ((\u_lab3|y_pos_2_ ) # (\u_lab3|y_pos_3_ ))

	.dataa(\u_lab3|y_pos_1_ ),
	.datab(\u_lab3|y_pos_2_ ),
	.datac(vcc),
	.datad(\u_lab3|y_pos_3_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z72 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52961 .lut_mask = 16'hFFEE;
defparam \u_lab3|ix3163z52961 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N0
cycloneii_lcell_comb \u_lab3|nx54084z1~_wirecell (
// Equation(s):
// \u_lab3|nx54084z1~_wirecell_combout  = !\u_lab3|nx54084z1 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_lab3|nx54084z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx54084z1~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_lab3|nx54084z1~_wirecell .lut_mask = 16'h00FF;
defparam \u_lab3|nx54084z1~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N1
cycloneii_lcell_ff \u_lab3|reg_i_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx54084z1~_wirecell_combout ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|i_1_ ));

// Location: LCFF_X27_Y32_N31
cycloneii_lcell_ff \u_lab3|reg_i_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_lab3|i_1_ ),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|i_2_ ));

// Location: LCCOMB_X27_Y32_N18
cycloneii_lcell_comb \u_lab3|i_2_~_wirecell (
// Equation(s):
// \u_lab3|i_2_~_wirecell_combout  = !\u_lab3|i_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_lab3|i_2_ ),
	.cin(gnd),
	.combout(\u_lab3|i_2_~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_lab3|i_2_~_wirecell .lut_mask = 16'h00FF;
defparam \u_lab3|i_2_~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N19
cycloneii_lcell_ff \u_lab3|reg_i_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|i_2_~_wirecell_combout ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_lab3|nx53087z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|nx54084z1 ));

// Location: LCCOMB_X25_Y31_N8
cycloneii_lcell_comb \u_lab3|ix3163z52925 (
// Equation(s):
// \u_lab3|nx3163z3  = (\u_lab3|nx54084z1  & (!\u_lab3|i_2_  & \u_lab3|i_1_ ))

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(\u_lab3|i_2_ ),
	.datad(\u_lab3|i_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z3 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52925 .lut_mask = 16'h0C00;
defparam \u_lab3|ix3163z52925 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X30_Y30_N12
cycloneii_lcell_comb \u_uw_uart|u_UARTS|not_Rx_r~_wirecell (
// Equation(s):
// \u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout  = !\u_uw_uart|u_UARTS|not_Rx_r 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|not_Rx_r ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|not_Rx_r~_wirecell .lut_mask = 16'h00FF;
defparam \u_uw_uart|u_UARTS|not_Rx_r~_wirecell .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X31_Y30_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|ix54636z52924 (
// Equation(s):
// \u_uw_uart|u_UARTS|nx54636z1  = (\u_uw_uart|u_UARTS|RxFSM_3_  & \u_uw_uart|u_UARTS|TopRx )

	.dataa(vcc),
	.datab(\u_uw_uart|u_UARTS|RxFSM_3_ ),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|TopRx ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|nx54636z1 ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|ix54636z52924 .lut_mask = 16'hCC00;
defparam \u_uw_uart|u_UARTS|ix54636z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N13
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|not_Rx_r~_wirecell_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_7_ ));

// Location: LCCOMB_X30_Y30_N22
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_7_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_7_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Rx_Reg_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N23
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Rx_Reg_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_6_ ));

// Location: LCCOMB_X30_Y30_N24
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Rx_Reg_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N25
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Rx_Reg_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_5_ ));

// Location: LCFF_X30_Y30_N11
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Rx_Reg_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_4_ ));

// Location: LCCOMB_X30_Y30_N28
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_4_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_4_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Rx_Reg_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N29
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Rx_Reg_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_3_ ));

// Location: LCCOMB_X30_Y30_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Rx_Reg_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N31
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Rx_Reg_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_2_ ));

// Location: LCCOMB_X30_Y30_N0
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Rx_Reg_1_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X30_Y30_N1
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Rx_Reg_1_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_1_ ));

// Location: LCFF_X30_Y30_N3
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Rx_Reg_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Rx_Reg_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|nx54636z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Rx_Reg_0_ ));

// Location: LCCOMB_X29_Y30_N30
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Dout_0_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Dout_0_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_0_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_0_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Dout_0_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Dout_0_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Dout_0_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N31
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Dout_0_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_0_ ));

// Location: LCFF_X29_Y30_N29
cycloneii_lcell_ff \u_uw_uart|reg_RData_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_0_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_0_ ));

// Location: LCCOMB_X29_Y30_N28
cycloneii_lcell_comb \u_uw_uart|ix40426z52923 (
// Equation(s):
// \u_uw_uart|datain_0_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_0_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_0_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_0_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix40426z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix40426z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N9
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Rx_Reg_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_1_ ));

// Location: LCFF_X29_Y30_N11
cycloneii_lcell_ff \u_uw_uart|reg_RData_1_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_1_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_1_ ));

// Location: LCCOMB_X29_Y30_N10
cycloneii_lcell_comb \u_uw_uart|ix41423z52923 (
// Equation(s):
// \u_uw_uart|datain_1_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_1_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_1_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_1_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix41423z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix41423z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y30_N6
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Dout_2_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Dout_2_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_2_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_2_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Dout_2_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Dout_2_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Dout_2_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N7
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Dout_2_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_2_ ));

// Location: LCFF_X29_Y30_N13
cycloneii_lcell_ff \u_uw_uart|reg_RData_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_2_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_2_ ));

// Location: LCCOMB_X29_Y30_N12
cycloneii_lcell_comb \u_uw_uart|ix42420z52923 (
// Equation(s):
// \u_uw_uart|datain_2_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_2_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_2_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_2_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix42420z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix42420z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y30_N14
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Dout_3_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Dout_3_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_3_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_3_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Dout_3_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Dout_3_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Dout_3_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N15
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Dout_3_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_3_ ));

// Location: LCFF_X29_Y30_N19
cycloneii_lcell_ff \u_uw_uart|reg_RData_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_3_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_3_ ));

// Location: LCCOMB_X29_Y30_N18
cycloneii_lcell_comb \u_uw_uart|ix43417z52923 (
// Equation(s):
// \u_uw_uart|datain_3_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_3_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_3_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_3_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix43417z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix43417z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N17
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Rx_Reg_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_4_ ));

// Location: LCFF_X29_Y30_N27
cycloneii_lcell_ff \u_uw_uart|reg_RData_4_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_4_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_4_ ));

// Location: LCCOMB_X29_Y30_N26
cycloneii_lcell_comb \u_uw_uart|ix44414z52923 (
// Equation(s):
// \u_uw_uart|datain_4_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_4_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_4_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_4_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix44414z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix44414z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y30_N20
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Dout_5_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Dout_5_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_5_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_5_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Dout_5_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Dout_5_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Dout_5_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N21
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Dout_5_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_5_ ));

// Location: LCFF_X29_Y30_N1
cycloneii_lcell_ff \u_uw_uart|reg_RData_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_5_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_5_ ));

// Location: LCCOMB_X29_Y30_N0
cycloneii_lcell_comb \u_uw_uart|ix45411z52923 (
// Equation(s):
// \u_uw_uart|datain_5_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_5_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_5_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_5_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix45411z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix45411z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y30_N4
cycloneii_lcell_comb \u_uw_uart|u_UARTS|Dout_6_~feeder (
// Equation(s):
// \u_uw_uart|u_UARTS|Dout_6_~feeder_combout  = \u_uw_uart|u_UARTS|Rx_Reg_6_ 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_uw_uart|u_UARTS|Rx_Reg_6_ ),
	.cin(gnd),
	.combout(\u_uw_uart|u_UARTS|Dout_6_~feeder_combout ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|u_UARTS|Dout_6_~feeder .lut_mask = 16'hFF00;
defparam \u_uw_uart|u_UARTS|Dout_6_~feeder .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N5
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_uw_uart|u_UARTS|Dout_6_~feeder_combout ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(gnd),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_6_ ));

// Location: LCFF_X29_Y30_N3
cycloneii_lcell_ff \u_uw_uart|reg_RData_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_6_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_6_ ));

// Location: LCCOMB_X29_Y30_N2
cycloneii_lcell_comb \u_uw_uart|ix46408z52923 (
// Equation(s):
// \u_uw_uart|datain_6_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_6_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_6_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_6_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix46408z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix46408z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y30_N25
cycloneii_lcell_ff \u_uw_uart|u_UARTS|reg_Dout_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Rx_Reg_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|nx30017z1 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|u_UARTS|Dout_7_ ));

// Location: LCFF_X29_Y30_N23
cycloneii_lcell_ff \u_uw_uart|reg_RData_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(gnd),
	.sdata(\u_uw_uart|u_UARTS|Dout_7_ ),
	.aclr(!\nrst~combout ),
	.sclr(gnd),
	.sload(vcc),
	.ena(\u_uw_uart|u_UARTS|RxRDY ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_uw_uart|RData_7_ ));

// Location: LCCOMB_X29_Y30_N22
cycloneii_lcell_comb \u_uw_uart|ix47405z52923 (
// Equation(s):
// \u_uw_uart|datain_7_  = (\u_uw_uart|o_pixavail  & \u_uw_uart|RData_7_ )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_uw_uart|RData_7_ ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_uw_uart|datain_7_ ),
	.cout());
// synopsys translate_off
defparam \u_uw_uart|ix47405z52923 .lut_mask = 16'hA0A0;
defparam \u_uw_uart|ix47405z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: M4K_X26_Y30
cycloneii_ram_block \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 (
	.portawe(\u_lab3|nx3163z3 ),
	.portaaddrstall(gnd),
	.portbrewe(vcc),
	.portbaddrstall(gnd),
	.clk0(\clk~clkctrl_outclk ),
	.clk1(\clk~clkctrl_outclk ),
	.ena0(\u_lab3|nx3163z3 ),
	.ena1(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.portadatain({\u_uw_uart|datain_7_ ,\u_uw_uart|datain_6_ ,\u_uw_uart|datain_5_ ,\u_uw_uart|datain_4_ ,\u_uw_uart|datain_3_ ,\u_uw_uart|datain_2_ ,\u_uw_uart|datain_1_ ,\u_uw_uart|datain_0_ }),
	.portaaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portabyteenamasks(1'b1),
	.portbdatain(8'b00000000),
	.portbaddr({\u_lab3|x_pos_3_ ,\u_lab3|x_pos_2_ ,\u_lab3|x_pos_1_ ,\u_lab3|x_pos_0_ }),
	.portbbyteenamasks(1'b1),
	.devclrn(devclrn),
	.devpor(devpor),
	.portadataout(),
	.portbdataout(\u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0_PORTBDATAOUT_bus ));
// synopsys translate_off
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .data_interleave_offset_in_bits = 1;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .data_interleave_width_in_bits = 1;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .logical_ram_name = "lab3:u_lab3|ram_dq_8_1:mem_0|altsyncram:ix64056z44884|altsyncram_hsh2:auto_generated|ALTSYNCRAM";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .mixed_port_feed_through_mode = "old";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .operation_mode = "dual_port";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_address_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_address_width = 4;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_byte_enable_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_byte_enable_clock = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_data_in_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_data_out_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_data_out_clock = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_data_width = 8;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_first_address = 0;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_first_bit_number = 0;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_last_address = 15;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_logical_ram_depth = 16;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_logical_ram_width = 8;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_a_write_enable_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_address_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_address_clock = "clock1";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_address_width = 4;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_byte_enable_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_data_in_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_data_out_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_data_out_clock = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_data_width = 8;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_first_address = 0;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_first_bit_number = 0;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_last_address = 15;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_logical_ram_depth = 16;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_logical_ram_width = 8;
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clear = "none";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .port_b_read_enable_write_enable_clock = "clock1";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .ram_block_type = "M4K";
defparam \u_lab3|mem_0|ix64056z44884|auto_generated|ram_block1a0 .safe_write = "err_on_2clk";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N6
cycloneii_lcell_comb \u_lab3|ix51243z52923 (
// Equation(s):
// \u_lab3|nx51243z1  = (!\u_lab3|nx54084z1  & (!\u_lab3|i_2_  & !\u_lab3|i_1_ ))

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(\u_lab3|i_2_ ),
	.datad(\u_lab3|i_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx51243z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix51243z52923 .lut_mask = 16'h0003;
defparam \u_lab3|ix51243z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N14
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52931 (
// Equation(s):
// \u_lab3|ix3163z19322|nx37973z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [0] & ((GND) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0]))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [0] & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b 
// [0] $ (GND)))
// \u_lab3|ix3163z19322|nx44952z22  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [0]) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0]))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [0]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|ix3163z19322|nx37973z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z22 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52931 .lut_mask = 16'h66BB;
defparam \u_lab3|ix3163z19322|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N16
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52930 (
// Equation(s):
// \u_lab3|ix3163z19322|nx38970z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] & (!\u_lab3|ix3163z19322|nx44952z22 )) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] & 
// (\u_lab3|ix3163z19322|nx44952z22  & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] & ((\u_lab3|ix3163z19322|nx44952z22 ) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] 
// & (!\u_lab3|ix3163z19322|nx44952z22 ))))
// \u_lab3|ix3163z19322|nx44952z19  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1] & !\u_lab3|ix3163z19322|nx44952z22 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & 
// ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1]) # (!\u_lab3|ix3163z19322|nx44952z22 ))))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [1]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z22 ),
	.combout(\u_lab3|ix3163z19322|nx38970z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z19 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52930 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19322|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N18
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52929 (
// Equation(s):
// \u_lab3|ix3163z19322|nx39967z1  = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] $ (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2] $ (\u_lab3|ix3163z19322|nx44952z19 )))) # (GND)
// \u_lab3|ix3163z19322|nx44952z16  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] & ((!\u_lab3|ix3163z19322|nx44952z19 ) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2]))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] & 
// (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2] & !\u_lab3|ix3163z19322|nx44952z19 )))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [2]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z19 ),
	.combout(\u_lab3|ix3163z19322|nx39967z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z16 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52929 .lut_mask = 16'h962B;
defparam \u_lab3|ix3163z19322|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N24
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52926 (
// Equation(s):
// \u_lab3|ix3163z19322|nx42958z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] & (!\u_lab3|ix3163z19322|nx44952z10 )) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] & 
// (\u_lab3|ix3163z19322|nx44952z10  & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] & ((\u_lab3|ix3163z19322|nx44952z10 ) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] 
// & (!\u_lab3|ix3163z19322|nx44952z10 ))))
// \u_lab3|ix3163z19322|nx44952z7  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5] & !\u_lab3|ix3163z19322|nx44952z10 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & 
// ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5]) # (!\u_lab3|ix3163z19322|nx44952z10 ))))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [5]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z10 ),
	.combout(\u_lab3|ix3163z19322|nx42958z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z7 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52926 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19322|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N26
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52925 (
// Equation(s):
// \u_lab3|ix3163z19322|nx43955z1  = ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6] $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b [6] $ (\u_lab3|ix3163z19322|nx44952z7 )))) # (GND)
// \u_lab3|ix3163z19322|nx44952z4  = CARRY((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6] & (\u_lab3|mem|ix64056z44883|auto_generated|q_b [6] & !\u_lab3|ix3163z19322|nx44952z7 )) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6] & 
// ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [6]) # (!\u_lab3|ix3163z19322|nx44952z7 ))))

	.dataa(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6]),
	.datab(\u_lab3|mem|ix64056z44883|auto_generated|q_b [6]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z7 ),
	.combout(\u_lab3|ix3163z19322|nx43955z1 ),
	.cout(\u_lab3|ix3163z19322|nx44952z4 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52925 .lut_mask = 16'h964D;
defparam \u_lab3|ix3163z19322|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N28
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix44952z52923 (
// Equation(s):
// \u_lab3|ix3163z19322|nx44952z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] & (!\u_lab3|ix3163z19322|nx44952z4 )) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] & 
// (\u_lab3|ix3163z19322|nx44952z4  & VCC)))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] & ((\u_lab3|ix3163z19322|nx44952z4 ) # (GND))) # (!\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] & 
// (!\u_lab3|ix3163z19322|nx44952z4 ))))
// \u_lab3|ix3163z19322|nx23445z2  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7] & !\u_lab3|ix3163z19322|nx44952z4 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & 
// ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7]) # (!\u_lab3|ix3163z19322|nx44952z4 ))))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [7]),
	.datab(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx44952z4 ),
	.combout(\u_lab3|ix3163z19322|nx44952z1 ),
	.cout(\u_lab3|ix3163z19322|nx23445z2 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix44952z52923 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19322|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N30
cycloneii_lcell_comb \u_lab3|ix54113z52923 (
// Equation(s):
// \u_lab3|nx54113z1  = (\u_lab3|nx54084z1  & (\u_lab3|i_2_  & !\u_lab3|i_1_ ))

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(\u_lab3|i_2_ ),
	.datad(\u_lab3|i_1_ ),
	.cin(gnd),
	.combout(\u_lab3|nx54113z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix54113z52923 .lut_mask = 16'h00C0;
defparam \u_lab3|ix54113z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N4
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52931 (
// Equation(s):
// \u_lab3|ix3163z19319|nx37973z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [0] & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0] $ (VCC))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [0] & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b 
// [0]) # (GND)))
// \u_lab3|ix3163z19319|nx44952z22  = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0]) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [0]))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [0]),
	.datab(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [0]),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|ix3163z19319|nx37973z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z22 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52931 .lut_mask = 16'h66DD;
defparam \u_lab3|ix3163z19319|ix44952z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N6
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52930 (
// Equation(s):
// \u_lab3|ix3163z19319|nx38970z1  = (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1] & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & (!\u_lab3|ix3163z19319|nx44952z22 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & 
// (\u_lab3|ix3163z19319|nx44952z22  & VCC)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1] & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & ((\u_lab3|ix3163z19319|nx44952z22 ) # (GND))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & 
// (!\u_lab3|ix3163z19319|nx44952z22 ))))
// \u_lab3|ix3163z19319|nx44952z19  = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1] & (\u_lab3|mem|ix64056z44883|auto_generated|q_b [1] & !\u_lab3|ix3163z19319|nx44952z22 )) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1] & 
// ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [1]) # (!\u_lab3|ix3163z19319|nx44952z22 ))))

	.dataa(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [1]),
	.datab(\u_lab3|mem|ix64056z44883|auto_generated|q_b [1]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z22 ),
	.combout(\u_lab3|ix3163z19319|nx38970z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z19 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52930 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19319|ix44952z52930 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N8
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52929 (
// Equation(s):
// \u_lab3|ix3163z19319|nx39967z1  = ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] $ (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2] $ (\u_lab3|ix3163z19319|nx44952z19 )))) # (GND)
// \u_lab3|ix3163z19319|nx44952z16  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] & (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2] & !\u_lab3|ix3163z19319|nx44952z19 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [2] & 
// ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2]) # (!\u_lab3|ix3163z19319|nx44952z19 ))))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [2]),
	.datab(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [2]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z19 ),
	.combout(\u_lab3|ix3163z19319|nx39967z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z16 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52929 .lut_mask = 16'h964D;
defparam \u_lab3|ix3163z19319|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N14
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52926 (
// Equation(s):
// \u_lab3|ix3163z19319|nx42958z1  = (\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] & (!\u_lab3|ix3163z19319|nx44952z10 )) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] & 
// ((\u_lab3|ix3163z19319|nx44952z10 ) # (GND))))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] & (\u_lab3|ix3163z19319|nx44952z10  & VCC)) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] 
// & (!\u_lab3|ix3163z19319|nx44952z10 ))))
// \u_lab3|ix3163z19319|nx44952z7  = CARRY((\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & ((!\u_lab3|ix3163z19319|nx44952z10 ) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5]))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [5] & 
// (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5] & !\u_lab3|ix3163z19319|nx44952z10 )))

	.dataa(\u_lab3|mem|ix64056z44883|auto_generated|q_b [5]),
	.datab(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [5]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z10 ),
	.combout(\u_lab3|ix3163z19319|nx42958z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z7 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52926 .lut_mask = 16'h692B;
defparam \u_lab3|ix3163z19319|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N16
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52925 (
// Equation(s):
// \u_lab3|ix3163z19319|nx43955z1  = ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6] $ (\u_lab3|mem|ix64056z44883|auto_generated|q_b [6] $ (\u_lab3|ix3163z19319|nx44952z7 )))) # (GND)
// \u_lab3|ix3163z19319|nx44952z4  = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6] & ((!\u_lab3|ix3163z19319|nx44952z7 ) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [6]))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6] & 
// (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [6] & !\u_lab3|ix3163z19319|nx44952z7 )))

	.dataa(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [6]),
	.datab(\u_lab3|mem|ix64056z44883|auto_generated|q_b [6]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z7 ),
	.combout(\u_lab3|ix3163z19319|nx43955z1 ),
	.cout(\u_lab3|ix3163z19319|nx44952z4 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52925 .lut_mask = 16'h962B;
defparam \u_lab3|ix3163z19319|ix44952z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N18
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix44952z52923 (
// Equation(s):
// \u_lab3|ix3163z19319|nx44952z1  = (\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7] & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & (!\u_lab3|ix3163z19319|nx44952z4 )) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & 
// (\u_lab3|ix3163z19319|nx44952z4  & VCC)))) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7] & ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & ((\u_lab3|ix3163z19319|nx44952z4 ) # (GND))) # (!\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & 
// (!\u_lab3|ix3163z19319|nx44952z4 ))))
// \u_lab3|ix3163z19319|nx23445z2  = CARRY((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7] & (\u_lab3|mem|ix64056z44883|auto_generated|q_b [7] & !\u_lab3|ix3163z19319|nx44952z4 )) # (!\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7] & 
// ((\u_lab3|mem|ix64056z44883|auto_generated|q_b [7]) # (!\u_lab3|ix3163z19319|nx44952z4 ))))

	.dataa(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [7]),
	.datab(\u_lab3|mem|ix64056z44883|auto_generated|q_b [7]),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx44952z4 ),
	.combout(\u_lab3|ix3163z19319|nx44952z1 ),
	.cout(\u_lab3|ix3163z19319|nx23445z2 ));
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix44952z52923 .lut_mask = 16'h694D;
defparam \u_lab3|ix3163z19319|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N0
cycloneii_lcell_comb \u_lab3|ix3163z52932 (
// Equation(s):
// \u_lab3|nx3163z10  = (\u_lab3|nx51243z1  & ((\u_lab3|nx54113z1 ) # ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7])))) # (!\u_lab3|nx51243z1  & (!\u_lab3|nx54113z1  & ((\u_lab3|ix3163z19319|nx44952z1 ))))

	.dataa(\u_lab3|nx51243z1 ),
	.datab(\u_lab3|nx54113z1 ),
	.datac(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [7]),
	.datad(\u_lab3|ix3163z19319|nx44952z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z10 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52932 .lut_mask = 16'hB9A8;
defparam \u_lab3|ix3163z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N10
cycloneii_lcell_comb \u_lab3|ix3163z52931 (
// Equation(s):
// \u_lab3|nx3163z9  = (\u_lab3|nx54113z1  & (\u_lab3|ix3163z19322|nx44952z1  & !\u_lab3|nx3163z10 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx3163z10 )))

	.dataa(vcc),
	.datab(\u_lab3|ix3163z19322|nx44952z1 ),
	.datac(\u_lab3|nx54113z1 ),
	.datad(\u_lab3|nx3163z10 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z9 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52931 .lut_mask = 16'h0FC0;
defparam \u_lab3|ix3163z52931 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N20
cycloneii_lcell_comb \u_lab3|ix3163z52934 (
// Equation(s):
// \u_lab3|nx3163z14  = (\u_lab3|nx54113z1  & (\u_lab3|nx51243z1 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx51243z1  & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6])) # (!\u_lab3|nx51243z1  & ((\u_lab3|ix3163z19319|nx43955z1 )))))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(\u_lab3|nx51243z1 ),
	.datac(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [6]),
	.datad(\u_lab3|ix3163z19319|nx43955z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z14 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52934 .lut_mask = 16'hD9C8;
defparam \u_lab3|ix3163z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N22
cycloneii_lcell_comb \u_lab3|ix3163z52933 (
// Equation(s):
// \u_lab3|nx3163z13  = (\u_lab3|nx54113z1  & (!\u_lab3|nx3163z14  & \u_lab3|ix3163z19322|nx43955z1 )) # (!\u_lab3|nx54113z1  & (\u_lab3|nx3163z14 ))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|nx3163z14 ),
	.datad(\u_lab3|ix3163z19322|nx43955z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z13 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52933 .lut_mask = 16'h5A50;
defparam \u_lab3|ix3163z52933 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N24
cycloneii_lcell_comb \u_lab3|ix3163z52936 (
// Equation(s):
// \u_lab3|nx3163z18  = (\u_lab3|nx54113z1  & (\u_lab3|nx51243z1 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx51243z1  & (\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5])) # (!\u_lab3|nx51243z1  & ((\u_lab3|ix3163z19319|nx42958z1 )))))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(\u_lab3|nx51243z1 ),
	.datac(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [5]),
	.datad(\u_lab3|ix3163z19319|nx42958z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z18 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52936 .lut_mask = 16'hD9C8;
defparam \u_lab3|ix3163z52936 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N26
cycloneii_lcell_comb \u_lab3|ix3163z52935 (
// Equation(s):
// \u_lab3|nx3163z17  = (\u_lab3|nx54113z1  & (!\u_lab3|nx3163z18  & \u_lab3|ix3163z19322|nx42958z1 )) # (!\u_lab3|nx54113z1  & (\u_lab3|nx3163z18 ))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|nx3163z18 ),
	.datad(\u_lab3|ix3163z19322|nx42958z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z17 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52935 .lut_mask = 16'h5A50;
defparam \u_lab3|ix3163z52935 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N18
cycloneii_lcell_comb \u_lab3|ix3163z52950 (
// Equation(s):
// \u_lab3|nx3163z44  = (\u_lab3|i_1_  & (((\u_uw_uart|datain_4_ )))) # (!\u_lab3|i_1_  & ((\u_lab3|i_2_  & (\u_uw_uart|datain_4_ )) # (!\u_lab3|i_2_  & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4])))))

	.dataa(\u_lab3|i_1_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_uw_uart|datain_4_ ),
	.datad(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [4]),
	.cin(gnd),
	.combout(\u_lab3|nx3163z44 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52950 .lut_mask = 16'hF1E0;
defparam \u_lab3|ix3163z52950 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N12
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52932 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z16  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z44 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z44 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z16 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52932 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N30
cycloneii_lcell_comb \u_lab3|ix3163z52951 (
// Equation(s):
// \u_lab3|nx3163z45  = (\u_lab3|i_1_  & (((\u_uw_uart|datain_3_ )))) # (!\u_lab3|i_1_  & ((\u_lab3|i_2_  & (\u_uw_uart|datain_3_ )) # (!\u_lab3|i_2_  & ((\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3])))))

	.dataa(\u_lab3|i_1_ ),
	.datab(\u_lab3|i_2_ ),
	.datac(\u_uw_uart|datain_3_ ),
	.datad(\u_lab3|mem_1|ix64056z44885|auto_generated|q_b [3]),
	.cin(gnd),
	.combout(\u_lab3|nx3163z45 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52951 .lut_mask = 16'hF1E0;
defparam \u_lab3|ix3163z52951 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N16
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52934 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z20  = \u_lab3|nx54084z1  $ (!\u_lab3|nx3163z45 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|nx3163z45 ),
	.cin(gnd),
	.combout(\u_lab3|ix3163z30602|nx45949z20 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52934 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z30602|ix45949z52934 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N26
cycloneii_lcell_comb \u_lab3|ix3163z52942 (
// Equation(s):
// \u_lab3|nx3163z30  = (\u_lab3|nx54113z1  & (\u_lab3|nx51243z1 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx51243z1  & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2]))) # (!\u_lab3|nx51243z1  & (\u_lab3|ix3163z19319|nx39967z1 ))))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(\u_lab3|nx51243z1 ),
	.datac(\u_lab3|ix3163z19319|nx39967z1 ),
	.datad(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [2]),
	.cin(gnd),
	.combout(\u_lab3|nx3163z30 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52942 .lut_mask = 16'hDC98;
defparam \u_lab3|ix3163z52942 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N28
cycloneii_lcell_comb \u_lab3|ix3163z52941 (
// Equation(s):
// \u_lab3|nx3163z29  = (\u_lab3|nx54113z1  & (\u_lab3|ix3163z19322|nx39967z1  & !\u_lab3|nx3163z30 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx3163z30 )))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|ix3163z19322|nx39967z1 ),
	.datad(\u_lab3|nx3163z30 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z29 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52941 .lut_mask = 16'h55A0;
defparam \u_lab3|ix3163z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N22
cycloneii_lcell_comb \u_lab3|ix3163z52944 (
// Equation(s):
// \u_lab3|nx3163z34  = (\u_lab3|nx51243z1  & ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1]) # ((\u_lab3|nx54113z1 )))) # (!\u_lab3|nx51243z1  & (((!\u_lab3|nx54113z1  & \u_lab3|ix3163z19319|nx38970z1 ))))

	.dataa(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [1]),
	.datab(\u_lab3|nx51243z1 ),
	.datac(\u_lab3|nx54113z1 ),
	.datad(\u_lab3|ix3163z19319|nx38970z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z34 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52944 .lut_mask = 16'hCBC8;
defparam \u_lab3|ix3163z52944 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N28
cycloneii_lcell_comb \u_lab3|ix3163z52943 (
// Equation(s):
// \u_lab3|nx3163z33  = (\u_lab3|nx54113z1  & (\u_lab3|ix3163z19322|nx38970z1  & !\u_lab3|nx3163z34 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx3163z34 )))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|ix3163z19322|nx38970z1 ),
	.datad(\u_lab3|nx3163z34 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z33 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52943 .lut_mask = 16'h55A0;
defparam \u_lab3|ix3163z52943 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N4
cycloneii_lcell_comb \u_lab3|ix3163z52946 (
// Equation(s):
// \u_lab3|nx3163z38  = (\u_lab3|nx51243z1  & ((\u_lab3|nx54113z1 ) # ((\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0])))) # (!\u_lab3|nx51243z1  & (!\u_lab3|nx54113z1  & ((\u_lab3|ix3163z19319|nx37973z1 ))))

	.dataa(\u_lab3|nx51243z1 ),
	.datab(\u_lab3|nx54113z1 ),
	.datac(\u_lab3|mem_0|ix64056z44884|auto_generated|q_b [0]),
	.datad(\u_lab3|ix3163z19319|nx37973z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z38 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52946 .lut_mask = 16'hB9A8;
defparam \u_lab3|ix3163z52946 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N30
cycloneii_lcell_comb \u_lab3|ix3163z52945 (
// Equation(s):
// \u_lab3|nx3163z37  = (\u_lab3|nx54113z1  & (\u_lab3|ix3163z19322|nx37973z1  & !\u_lab3|nx3163z38 )) # (!\u_lab3|nx54113z1  & ((\u_lab3|nx3163z38 )))

	.dataa(\u_lab3|nx54113z1 ),
	.datab(vcc),
	.datac(\u_lab3|ix3163z19322|nx37973z1 ),
	.datad(\u_lab3|nx3163z38 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z37 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52945 .lut_mask = 16'h55A0;
defparam \u_lab3|ix3163z52945 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N0
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52941 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z35  = CARRY(!\u_lab3|nx54084z1 )

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_lab3|ix3163z30602|nx45949z35 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52941 .lut_mask = 16'h0033;
defparam \u_lab3|ix3163z30602|ix45949z52941 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N2
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52939 (
// Equation(s):
// \u_lab3|ix3163z30602|nx37973z1  = (\u_lab3|ix3163z30602|nx45949z32  & ((\u_lab3|nx3163z37  & (\u_lab3|ix3163z30602|nx45949z35  & VCC)) # (!\u_lab3|nx3163z37  & (!\u_lab3|ix3163z30602|nx45949z35 )))) # (!\u_lab3|ix3163z30602|nx45949z32  & 
// ((\u_lab3|nx3163z37  & (!\u_lab3|ix3163z30602|nx45949z35 )) # (!\u_lab3|nx3163z37  & ((\u_lab3|ix3163z30602|nx45949z35 ) # (GND)))))
// \u_lab3|ix3163z30602|nx45949z31  = CARRY((\u_lab3|ix3163z30602|nx45949z32  & (!\u_lab3|nx3163z37  & !\u_lab3|ix3163z30602|nx45949z35 )) # (!\u_lab3|ix3163z30602|nx45949z32  & ((!\u_lab3|ix3163z30602|nx45949z35 ) # (!\u_lab3|nx3163z37 ))))

	.dataa(\u_lab3|ix3163z30602|nx45949z32 ),
	.datab(\u_lab3|nx3163z37 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z35 ),
	.combout(\u_lab3|ix3163z30602|nx37973z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z31 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52939 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z30602|ix45949z52939 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N4
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52937 (
// Equation(s):
// \u_lab3|ix3163z30602|nx38970z1  = ((\u_lab3|ix3163z30602|nx45949z28  $ (\u_lab3|nx3163z33  $ (!\u_lab3|ix3163z30602|nx45949z31 )))) # (GND)
// \u_lab3|ix3163z30602|nx45949z27  = CARRY((\u_lab3|ix3163z30602|nx45949z28  & ((\u_lab3|nx3163z33 ) # (!\u_lab3|ix3163z30602|nx45949z31 ))) # (!\u_lab3|ix3163z30602|nx45949z28  & (\u_lab3|nx3163z33  & !\u_lab3|ix3163z30602|nx45949z31 )))

	.dataa(\u_lab3|ix3163z30602|nx45949z28 ),
	.datab(\u_lab3|nx3163z33 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z31 ),
	.combout(\u_lab3|ix3163z30602|nx38970z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z27 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52937 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z30602|ix45949z52937 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N6
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52935 (
// Equation(s):
// \u_lab3|ix3163z30602|nx39967z1  = (\u_lab3|ix3163z30602|nx45949z24  & ((\u_lab3|nx3163z29  & (\u_lab3|ix3163z30602|nx45949z27  & VCC)) # (!\u_lab3|nx3163z29  & (!\u_lab3|ix3163z30602|nx45949z27 )))) # (!\u_lab3|ix3163z30602|nx45949z24  & 
// ((\u_lab3|nx3163z29  & (!\u_lab3|ix3163z30602|nx45949z27 )) # (!\u_lab3|nx3163z29  & ((\u_lab3|ix3163z30602|nx45949z27 ) # (GND)))))
// \u_lab3|ix3163z30602|nx45949z23  = CARRY((\u_lab3|ix3163z30602|nx45949z24  & (!\u_lab3|nx3163z29  & !\u_lab3|ix3163z30602|nx45949z27 )) # (!\u_lab3|ix3163z30602|nx45949z24  & ((!\u_lab3|ix3163z30602|nx45949z27 ) # (!\u_lab3|nx3163z29 ))))

	.dataa(\u_lab3|ix3163z30602|nx45949z24 ),
	.datab(\u_lab3|nx3163z29 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z27 ),
	.combout(\u_lab3|ix3163z30602|nx39967z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z23 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52935 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z30602|ix45949z52935 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N8
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52933 (
// Equation(s):
// \u_lab3|ix3163z30602|nx40964z1  = ((\u_lab3|nx3163z25  $ (\u_lab3|ix3163z30602|nx45949z20  $ (!\u_lab3|ix3163z30602|nx45949z23 )))) # (GND)
// \u_lab3|ix3163z30602|nx45949z19  = CARRY((\u_lab3|nx3163z25  & ((\u_lab3|ix3163z30602|nx45949z20 ) # (!\u_lab3|ix3163z30602|nx45949z23 ))) # (!\u_lab3|nx3163z25  & (\u_lab3|ix3163z30602|nx45949z20  & !\u_lab3|ix3163z30602|nx45949z23 )))

	.dataa(\u_lab3|nx3163z25 ),
	.datab(\u_lab3|ix3163z30602|nx45949z20 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z23 ),
	.combout(\u_lab3|ix3163z30602|nx40964z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z19 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52933 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z30602|ix45949z52933 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N10
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52931 (
// Equation(s):
// \u_lab3|ix3163z30602|nx41961z1  = (\u_lab3|nx3163z21  & ((\u_lab3|ix3163z30602|nx45949z16  & (\u_lab3|ix3163z30602|nx45949z19  & VCC)) # (!\u_lab3|ix3163z30602|nx45949z16  & (!\u_lab3|ix3163z30602|nx45949z19 )))) # (!\u_lab3|nx3163z21  & 
// ((\u_lab3|ix3163z30602|nx45949z16  & (!\u_lab3|ix3163z30602|nx45949z19 )) # (!\u_lab3|ix3163z30602|nx45949z16  & ((\u_lab3|ix3163z30602|nx45949z19 ) # (GND)))))
// \u_lab3|ix3163z30602|nx45949z15  = CARRY((\u_lab3|nx3163z21  & (!\u_lab3|ix3163z30602|nx45949z16  & !\u_lab3|ix3163z30602|nx45949z19 )) # (!\u_lab3|nx3163z21  & ((!\u_lab3|ix3163z30602|nx45949z19 ) # (!\u_lab3|ix3163z30602|nx45949z16 ))))

	.dataa(\u_lab3|nx3163z21 ),
	.datab(\u_lab3|ix3163z30602|nx45949z16 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z19 ),
	.combout(\u_lab3|ix3163z30602|nx41961z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z15 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52931 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z30602|ix45949z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N12
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52929 (
// Equation(s):
// \u_lab3|ix3163z30602|nx42958z1  = ((\u_lab3|ix3163z30602|nx45949z12  $ (\u_lab3|nx3163z17  $ (!\u_lab3|ix3163z30602|nx45949z15 )))) # (GND)
// \u_lab3|ix3163z30602|nx45949z11  = CARRY((\u_lab3|ix3163z30602|nx45949z12  & ((\u_lab3|nx3163z17 ) # (!\u_lab3|ix3163z30602|nx45949z15 ))) # (!\u_lab3|ix3163z30602|nx45949z12  & (\u_lab3|nx3163z17  & !\u_lab3|ix3163z30602|nx45949z15 )))

	.dataa(\u_lab3|ix3163z30602|nx45949z12 ),
	.datab(\u_lab3|nx3163z17 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z15 ),
	.combout(\u_lab3|ix3163z30602|nx42958z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z11 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52929 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z30602|ix45949z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N14
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52927 (
// Equation(s):
// \u_lab3|ix3163z30602|nx43955z1  = (\u_lab3|ix3163z30602|nx45949z8  & ((\u_lab3|nx3163z13  & (\u_lab3|ix3163z30602|nx45949z11  & VCC)) # (!\u_lab3|nx3163z13  & (!\u_lab3|ix3163z30602|nx45949z11 )))) # (!\u_lab3|ix3163z30602|nx45949z8  & ((\u_lab3|nx3163z13 
//  & (!\u_lab3|ix3163z30602|nx45949z11 )) # (!\u_lab3|nx3163z13  & ((\u_lab3|ix3163z30602|nx45949z11 ) # (GND)))))
// \u_lab3|ix3163z30602|nx45949z7  = CARRY((\u_lab3|ix3163z30602|nx45949z8  & (!\u_lab3|nx3163z13  & !\u_lab3|ix3163z30602|nx45949z11 )) # (!\u_lab3|ix3163z30602|nx45949z8  & ((!\u_lab3|ix3163z30602|nx45949z11 ) # (!\u_lab3|nx3163z13 ))))

	.dataa(\u_lab3|ix3163z30602|nx45949z8 ),
	.datab(\u_lab3|nx3163z13 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z11 ),
	.combout(\u_lab3|ix3163z30602|nx43955z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z7 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52927 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z30602|ix45949z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N16
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52925 (
// Equation(s):
// \u_lab3|ix3163z30602|nx44952z1  = ((\u_lab3|ix3163z30602|nx45949z4  $ (\u_lab3|nx3163z9  $ (!\u_lab3|ix3163z30602|nx45949z7 )))) # (GND)
// \u_lab3|ix3163z30602|nx45949z3  = CARRY((\u_lab3|ix3163z30602|nx45949z4  & ((\u_lab3|nx3163z9 ) # (!\u_lab3|ix3163z30602|nx45949z7 ))) # (!\u_lab3|ix3163z30602|nx45949z4  & (\u_lab3|nx3163z9  & !\u_lab3|ix3163z30602|nx45949z7 )))

	.dataa(\u_lab3|ix3163z30602|nx45949z4 ),
	.datab(\u_lab3|nx3163z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z7 ),
	.combout(\u_lab3|ix3163z30602|nx44952z1 ),
	.cout(\u_lab3|ix3163z30602|nx45949z3 ));
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52925 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z30602|ix45949z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y31_N18
cycloneii_lcell_comb \u_lab3|ix3163z30602|ix45949z52923 (
// Equation(s):
// \u_lab3|ix3163z30602|nx45949z1  = \u_lab3|nx54084z1  $ (!\u_lab3|ix3163z30602|nx45949z3 )

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z30602|nx45949z3 ),
	.combout(\u_lab3|ix3163z30602|nx45949z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z30602|ix45949z52923 .lut_mask = 16'hC3C3;
defparam \u_lab3|ix3163z30602|ix45949z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N28
cycloneii_lcell_comb \u_lab3|ix3163z52957 (
// Equation(s):
// \u_lab3|nx3163z58  = \u_lab3|nx54084z1  $ (!\u_lab3|ix3163z30602|nx45949z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(\u_lab3|nx54084z1 ),
	.datad(\u_lab3|ix3163z30602|nx45949z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z58 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52957 .lut_mask = 16'hF00F;
defparam \u_lab3|ix3163z52957 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N0
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52932 (
// Equation(s):
// \u_lab3|ix3163z60014|nx44952z23  = CARRY(\u_lab3|ix3163z30602|nx37973z1 )

	.dataa(vcc),
	.datab(\u_lab3|ix3163z30602|nx37973z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(gnd),
	.combout(),
	.cout(\u_lab3|ix3163z60014|nx44952z23 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52932 .lut_mask = 16'h00CC;
defparam \u_lab3|ix3163z60014|ix44952z52932 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N2
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52931 (
// Equation(s):
// \u_lab3|ix3163z60014|nx37973z1  = (\u_lab3|ix3163z60014|nx44952z23  & (((!\u_uw_uart|o_pixavail )) # (!\u_uw_uart|RData_0_ ))) # (!\u_lab3|ix3163z60014|nx44952z23  & (((\u_uw_uart|RData_0_  & \u_uw_uart|o_pixavail )) # (GND)))
// \u_lab3|ix3163z60014|nx44952z22  = CARRY(((!\u_lab3|ix3163z60014|nx44952z23 ) # (!\u_uw_uart|o_pixavail )) # (!\u_uw_uart|RData_0_ ))

	.dataa(\u_uw_uart|RData_0_ ),
	.datab(\u_uw_uart|o_pixavail ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z23 ),
	.combout(\u_lab3|ix3163z60014|nx37973z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z22 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52931 .lut_mask = 16'h787F;
defparam \u_lab3|ix3163z60014|ix44952z52931 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N6
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52929 (
// Equation(s):
// \u_lab3|ix3163z60014|nx39967z1  = (\u_uw_uart|datain_2_  & ((\u_lab3|ix3163z30602|nx39967z1  & (\u_lab3|ix3163z60014|nx44952z19  & VCC)) # (!\u_lab3|ix3163z30602|nx39967z1  & (!\u_lab3|ix3163z60014|nx44952z19 )))) # (!\u_uw_uart|datain_2_  & 
// ((\u_lab3|ix3163z30602|nx39967z1  & (!\u_lab3|ix3163z60014|nx44952z19 )) # (!\u_lab3|ix3163z30602|nx39967z1  & ((\u_lab3|ix3163z60014|nx44952z19 ) # (GND)))))
// \u_lab3|ix3163z60014|nx44952z16  = CARRY((\u_uw_uart|datain_2_  & (!\u_lab3|ix3163z30602|nx39967z1  & !\u_lab3|ix3163z60014|nx44952z19 )) # (!\u_uw_uart|datain_2_  & ((!\u_lab3|ix3163z60014|nx44952z19 ) # (!\u_lab3|ix3163z30602|nx39967z1 ))))

	.dataa(\u_uw_uart|datain_2_ ),
	.datab(\u_lab3|ix3163z30602|nx39967z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z19 ),
	.combout(\u_lab3|ix3163z60014|nx39967z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z16 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52929 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z60014|ix44952z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N8
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52928 (
// Equation(s):
// \u_lab3|ix3163z60014|nx40964z1  = ((\u_lab3|ix3163z30602|nx40964z1  $ (\u_uw_uart|datain_3_  $ (!\u_lab3|ix3163z60014|nx44952z16 )))) # (GND)
// \u_lab3|ix3163z60014|nx44952z13  = CARRY((\u_lab3|ix3163z30602|nx40964z1  & ((\u_uw_uart|datain_3_ ) # (!\u_lab3|ix3163z60014|nx44952z16 ))) # (!\u_lab3|ix3163z30602|nx40964z1  & (\u_uw_uart|datain_3_  & !\u_lab3|ix3163z60014|nx44952z16 )))

	.dataa(\u_lab3|ix3163z30602|nx40964z1 ),
	.datab(\u_uw_uart|datain_3_ ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z16 ),
	.combout(\u_lab3|ix3163z60014|nx40964z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z13 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52928 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z60014|ix44952z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N10
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52927 (
// Equation(s):
// \u_lab3|ix3163z60014|nx41961z1  = (\u_uw_uart|datain_4_  & ((\u_lab3|ix3163z30602|nx41961z1  & (\u_lab3|ix3163z60014|nx44952z13  & VCC)) # (!\u_lab3|ix3163z30602|nx41961z1  & (!\u_lab3|ix3163z60014|nx44952z13 )))) # (!\u_uw_uart|datain_4_  & 
// ((\u_lab3|ix3163z30602|nx41961z1  & (!\u_lab3|ix3163z60014|nx44952z13 )) # (!\u_lab3|ix3163z30602|nx41961z1  & ((\u_lab3|ix3163z60014|nx44952z13 ) # (GND)))))
// \u_lab3|ix3163z60014|nx44952z10  = CARRY((\u_uw_uart|datain_4_  & (!\u_lab3|ix3163z30602|nx41961z1  & !\u_lab3|ix3163z60014|nx44952z13 )) # (!\u_uw_uart|datain_4_  & ((!\u_lab3|ix3163z60014|nx44952z13 ) # (!\u_lab3|ix3163z30602|nx41961z1 ))))

	.dataa(\u_uw_uart|datain_4_ ),
	.datab(\u_lab3|ix3163z30602|nx41961z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z13 ),
	.combout(\u_lab3|ix3163z60014|nx41961z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z10 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52927 .lut_mask = 16'h9617;
defparam \u_lab3|ix3163z60014|ix44952z52927 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N12
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52926 (
// Equation(s):
// \u_lab3|ix3163z60014|nx42958z1  = ((\u_uw_uart|datain_5_  $ (\u_lab3|ix3163z30602|nx42958z1  $ (!\u_lab3|ix3163z60014|nx44952z10 )))) # (GND)
// \u_lab3|ix3163z60014|nx44952z7  = CARRY((\u_uw_uart|datain_5_  & ((\u_lab3|ix3163z30602|nx42958z1 ) # (!\u_lab3|ix3163z60014|nx44952z10 ))) # (!\u_uw_uart|datain_5_  & (\u_lab3|ix3163z30602|nx42958z1  & !\u_lab3|ix3163z60014|nx44952z10 )))

	.dataa(\u_uw_uart|datain_5_ ),
	.datab(\u_lab3|ix3163z30602|nx42958z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z10 ),
	.combout(\u_lab3|ix3163z60014|nx42958z1 ),
	.cout(\u_lab3|ix3163z60014|nx44952z7 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52926 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z60014|ix44952z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N16
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix44952z52923 (
// Equation(s):
// \u_lab3|ix3163z60014|nx44952z1  = ((\u_uw_uart|datain_7_  $ (\u_lab3|ix3163z30602|nx44952z1  $ (!\u_lab3|ix3163z60014|nx44952z4 )))) # (GND)
// \u_lab3|ix3163z60014|nx23445z2  = CARRY((\u_uw_uart|datain_7_  & ((\u_lab3|ix3163z30602|nx44952z1 ) # (!\u_lab3|ix3163z60014|nx44952z4 ))) # (!\u_uw_uart|datain_7_  & (\u_lab3|ix3163z30602|nx44952z1  & !\u_lab3|ix3163z60014|nx44952z4 )))

	.dataa(\u_uw_uart|datain_7_ ),
	.datab(\u_lab3|ix3163z30602|nx44952z1 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx44952z4 ),
	.combout(\u_lab3|ix3163z60014|nx44952z1 ),
	.cout(\u_lab3|ix3163z60014|nx23445z2 ));
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix44952z52923 .lut_mask = 16'h698E;
defparam \u_lab3|ix3163z60014|ix44952z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N4
cycloneii_lcell_comb \u_lab3|ix3163z52958 (
// Equation(s):
// \u_lab3|nx3163z60  = (!\u_lab3|ix3163z60014|nx43955z1  & (!\u_lab3|ix3163z60014|nx44952z1  & (!\u_lab3|ix3163z60014|nx41961z1  & !\u_lab3|ix3163z60014|nx42958z1 )))

	.dataa(\u_lab3|ix3163z60014|nx43955z1 ),
	.datab(\u_lab3|ix3163z60014|nx44952z1 ),
	.datac(\u_lab3|ix3163z60014|nx41961z1 ),
	.datad(\u_lab3|ix3163z60014|nx42958z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z60 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52958 .lut_mask = 16'h0001;
defparam \u_lab3|ix3163z52958 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N28
cycloneii_lcell_comb \u_lab3|ix3163z52959 (
// Equation(s):
// \u_lab3|nx3163z65  = (!\u_lab3|ix3163z60014|nx38970z1  & (!\u_lab3|ix3163z60014|nx37973z1  & (!\u_lab3|ix3163z60014|nx40964z1  & !\u_lab3|ix3163z60014|nx39967z1 )))

	.dataa(\u_lab3|ix3163z60014|nx38970z1 ),
	.datab(\u_lab3|ix3163z60014|nx37973z1 ),
	.datac(\u_lab3|ix3163z60014|nx40964z1 ),
	.datad(\u_lab3|ix3163z60014|nx39967z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z65 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52959 .lut_mask = 16'h0001;
defparam \u_lab3|ix3163z52959 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N30
cycloneii_lcell_comb \u_lab3|ix3163z52955 (
// Equation(s):
// \u_lab3|nx3163z56  = (\u_lab3|nx3163z58 ) # ((!\u_lab3|nx3163z57  & (\u_lab3|nx3163z60  & \u_lab3|nx3163z65 )))

	.dataa(\u_lab3|nx3163z57 ),
	.datab(\u_lab3|nx3163z58 ),
	.datac(\u_lab3|nx3163z60 ),
	.datad(\u_lab3|nx3163z65 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z56 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52955 .lut_mask = 16'hDCCC;
defparam \u_lab3|ix3163z52955 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y31_N20
cycloneii_lcell_comb \u_lab3|ix3163z19319|ix23445z52923 (
// Equation(s):
// \u_lab3|ix3163z19319|nx23445z1  = !\u_lab3|ix3163z19319|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19319|nx23445z2 ),
	.combout(\u_lab3|ix3163z19319|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z19319|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_lab3|ix3163z19319|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N8
cycloneii_lcell_comb \u_lab3|ix3163z52956 (
// Equation(s):
// \u_lab3|nx3163z57  = (\u_lab3|nx54084z1  & (\u_lab3|i_1_  $ (\u_lab3|i_2_ )))

	.dataa(vcc),
	.datab(\u_lab3|nx54084z1 ),
	.datac(\u_lab3|i_1_ ),
	.datad(\u_lab3|i_2_ ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z57 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52956 .lut_mask = 16'h0CC0;
defparam \u_lab3|ix3163z52956 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N24
cycloneii_lcell_comb \u_lab3|ix3163z52964 (
// Equation(s):
// \u_lab3|nx3163z75  = (!\u_lab3|ix3163z30602|nx37973z1  & (!\u_lab3|ix3163z30602|nx39967z1  & (!\u_lab3|ix3163z30602|nx38970z1  & !\u_lab3|ix3163z30602|nx40964z1 )))

	.dataa(\u_lab3|ix3163z30602|nx37973z1 ),
	.datab(\u_lab3|ix3163z30602|nx39967z1 ),
	.datac(\u_lab3|ix3163z30602|nx38970z1 ),
	.datad(\u_lab3|ix3163z30602|nx40964z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z75 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52964 .lut_mask = 16'h0001;
defparam \u_lab3|ix3163z52964 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N6
cycloneii_lcell_comb \u_lab3|ix3163z52963 (
// Equation(s):
// \u_lab3|nx3163z74  = (!\u_lab3|ix3163z30602|nx43955z1  & (!\u_lab3|ix3163z30602|nx44952z1  & (!\u_lab3|ix3163z30602|nx41961z1  & !\u_lab3|ix3163z30602|nx42958z1 )))

	.dataa(\u_lab3|ix3163z30602|nx43955z1 ),
	.datab(\u_lab3|ix3163z30602|nx44952z1 ),
	.datac(\u_lab3|ix3163z30602|nx41961z1 ),
	.datad(\u_lab3|ix3163z30602|nx42958z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z74 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52963 .lut_mask = 16'h0001;
defparam \u_lab3|ix3163z52963 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y31_N26
cycloneii_lcell_comb \u_lab3|ix3163z52962 (
// Equation(s):
// \u_lab3|nx3163z73  = (\u_lab3|nx3163z57  & (\u_lab3|nx3163z75  & \u_lab3|nx3163z74 ))

	.dataa(vcc),
	.datab(\u_lab3|nx3163z57 ),
	.datac(\u_lab3|nx3163z75 ),
	.datad(\u_lab3|nx3163z74 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z73 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52962 .lut_mask = 16'hC000;
defparam \u_lab3|ix3163z52962 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X25_Y31_N30
cycloneii_lcell_comb \u_lab3|ix3163z19322|ix23445z52923 (
// Equation(s):
// \u_lab3|ix3163z19322|nx23445z1  = !\u_lab3|ix3163z19322|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z19322|nx23445z2 ),
	.combout(\u_lab3|ix3163z19322|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z19322|ix23445z52923 .lut_mask = 16'h0F0F;
defparam \u_lab3|ix3163z19322|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X28_Y29_N18
cycloneii_lcell_comb \u_lab3|ix3163z60014|ix23445z52923 (
// Equation(s):
// \u_lab3|ix3163z60014|nx23445z1  = \u_lab3|ix3163z60014|nx23445z2 

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|ix3163z60014|nx23445z2 ),
	.combout(\u_lab3|ix3163z60014|nx23445z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z60014|ix23445z52923 .lut_mask = 16'hF0F0;
defparam \u_lab3|ix3163z60014|ix23445z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N0
cycloneii_lcell_comb \u_lab3|ix3163z52927 (
// Equation(s):
// \u_lab3|nx3163z5  = (\u_lab3|nx51243z1  & (\u_lab3|ix3163z60014|nx23445z1  & ((\u_lab3|ix3163z19322|nx23445z1 ) # (!\u_lab3|nx54113z1 )))) # (!\u_lab3|nx51243z1  & (((\u_lab3|ix3163z19322|nx23445z1 )) # (!\u_lab3|nx54113z1 )))

	.dataa(\u_lab3|nx51243z1 ),
	.datab(\u_lab3|nx54113z1 ),
	.datac(\u_lab3|ix3163z19322|nx23445z1 ),
	.datad(\u_lab3|ix3163z60014|nx23445z1 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z5 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52927 .lut_mask = 16'hF351;
defparam \u_lab3|ix3163z52927 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N10
cycloneii_lcell_comb \u_lab3|ix3163z52966 (
// Equation(s):
// \u_lab3|nx3163z77  = (\u_lab3|nx3163z73 ) # ((\u_lab3|nx3163z5  & ((\u_lab3|ix3163z19319|nx23445z1 ) # (!\u_lab3|nx3163z3 ))))

	.dataa(\u_lab3|nx3163z3 ),
	.datab(\u_lab3|ix3163z19319|nx23445z1 ),
	.datac(\u_lab3|nx3163z73 ),
	.datad(\u_lab3|nx3163z5 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z77 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52966 .lut_mask = 16'hFDF0;
defparam \u_lab3|ix3163z52966 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N8
cycloneii_lcell_comb \u_lab3|ix3163z52965 (
// Equation(s):
// \u_lab3|nx3163z76  = (!\u_lab3|nx3163z71  & (((!\u_lab3|nx3163z56  & !\u_lab3|nx3163z77 )) # (!\u_lab3|nx3163z72 )))

	.dataa(\u_lab3|nx3163z71 ),
	.datab(\u_lab3|nx3163z72 ),
	.datac(\u_lab3|nx3163z56 ),
	.datad(\u_lab3|nx3163z77 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z76 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52965 .lut_mask = 16'h1115;
defparam \u_lab3|ix3163z52965 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X27_Y32_N16
cycloneii_lcell_comb \u_lab3|ix53066z52923 (
// Equation(s):
// \u_lab3|nx53066z1  = (\u_uw_uart|o_pixavail ) # (\u_lab3|nx3163z71 )

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(vcc),
	.datac(\u_lab3|nx3163z71 ),
	.datad(vcc),
	.cin(gnd),
	.combout(\u_lab3|nx53066z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix53066z52923 .lut_mask = 16'hFAFA;
defparam \u_lab3|ix53066z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X27_Y32_N17
cycloneii_lcell_ff \u_lab3|reg_new_number_set (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|nx53066z1 ),
	.sdata(gnd),
	.aclr(\u_lab3|nx46973z1 ),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|nx3163z71 ));

// Location: LCCOMB_X29_Y31_N14
cycloneii_lcell_comb \u_lab3|ix3163z52960 (
// Equation(s):
// \u_lab3|nx3163z70  = ((\u_lab3|nx3163z73 ) # (!\u_lab3|nx3163z71 )) # (!\u_lab3|nx3163z72 )

	.dataa(vcc),
	.datab(\u_lab3|nx3163z72 ),
	.datac(\u_lab3|nx3163z71 ),
	.datad(\u_lab3|nx3163z73 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z70 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52960 .lut_mask = 16'hFF3F;
defparam \u_lab3|ix3163z52960 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N2
cycloneii_lcell_comb \u_lab3|ix3163z52924 (
// Equation(s):
// \u_lab3|nx3163z2  = (\u_lab3|nx3163z5  & ((\u_lab3|ix3163z19319|nx23445z1 ) # (!\u_lab3|nx3163z3 )))

	.dataa(vcc),
	.datab(\u_lab3|nx3163z3 ),
	.datac(\u_lab3|ix3163z19319|nx23445z1 ),
	.datad(\u_lab3|nx3163z5 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z2 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52924 .lut_mask = 16'hF300;
defparam \u_lab3|ix3163z52924 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N28
cycloneii_lcell_comb \u_lab3|ix3163z52923 (
// Equation(s):
// \u_lab3|nx3163z1  = (\u_uw_uart|o_pixavail  & ((\u_lab3|nx3163z56 ) # ((\u_lab3|nx3163z70 ) # (\u_lab3|nx3163z2 ))))

	.dataa(\u_uw_uart|o_pixavail ),
	.datab(\u_lab3|nx3163z56 ),
	.datac(\u_lab3|nx3163z70 ),
	.datad(\u_lab3|nx3163z2 ),
	.cin(gnd),
	.combout(\u_lab3|nx3163z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|ix3163z52923 .lut_mask = 16'hAAA8;
defparam \u_lab3|ix3163z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCCOMB_X29_Y29_N6
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix57253z52923 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx57253z3  = (\u_lab3|nx3163z1  & ((\u_lab3|nx3163z72 ) # (\u_lab3|nx3163z76 )))

	.dataa(vcc),
	.datab(\u_lab3|nx3163z72 ),
	.datac(\u_lab3|nx3163z76 ),
	.datad(\u_lab3|nx3163z1 ),
	.cin(gnd),
	.combout(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix57253z52923 .lut_mask = 16'hFC00;
defparam \u_lab3|modgen_counter_o_output|ix57253z52923 .sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X29_Y29_N13
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_0_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx51271z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z15 ));

// Location: LCCOMB_X29_Y29_N16
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52929 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx53265z1  = (\u_lab3|modgen_counter_o_output|nx58250z11  & (\u_lab3|modgen_counter_o_output|nx58250z12  $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z11  & (!\u_lab3|modgen_counter_o_output|nx58250z12  & VCC))
// \u_lab3|modgen_counter_o_output|nx58250z10  = CARRY((\u_lab3|modgen_counter_o_output|nx58250z11  & !\u_lab3|modgen_counter_o_output|nx58250z12 ))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z12 ),
	.combout(\u_lab3|modgen_counter_o_output|nx53265z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z10 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52929 .lut_mask = 16'hA50A;
defparam \u_lab3|modgen_counter_o_output|ix58250z52929 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X29_Y29_N17
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_2_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx53265z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z11 ));

// Location: LCCOMB_X29_Y29_N18
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52928 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx54262z1  = (\u_lab3|modgen_counter_o_output|nx58250z9  & (!\u_lab3|modgen_counter_o_output|nx58250z10 )) # (!\u_lab3|modgen_counter_o_output|nx58250z9  & ((\u_lab3|modgen_counter_o_output|nx58250z10 ) # (GND)))
// \u_lab3|modgen_counter_o_output|nx58250z8  = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z10 ) # (!\u_lab3|modgen_counter_o_output|nx58250z9 ))

	.dataa(vcc),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z10 ),
	.combout(\u_lab3|modgen_counter_o_output|nx54262z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z8 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52928 .lut_mask = 16'h3C3F;
defparam \u_lab3|modgen_counter_o_output|ix58250z52928 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X29_Y29_N19
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_3_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx54262z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z9 ));

// Location: LCCOMB_X1_Y23_N16
cycloneii_lcell_comb ix57590z52923(
// Equation(s):
// nx57590z1 = (\u_lab3|modgen_counter_o_output|nx58250z15  & (!\u_lab3|modgen_counter_o_output|nx58250z9  & (\u_lab3|modgen_counter_o_output|nx58250z13  $ (!\u_lab3|modgen_counter_o_output|nx58250z11 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z15  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z13  & (\u_lab3|modgen_counter_o_output|nx58250z11  $ (!\u_lab3|modgen_counter_o_output|nx58250z9 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx57590z1),
	.cout());
// synopsys translate_off
defparam ix57590z52923.lut_mask = 16'h0491;
defparam ix57590z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N17
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_0_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx57590z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx41851z1));

// Location: LCCOMB_X1_Y23_N26
cycloneii_lcell_comb ix58587z52923(
// Equation(s):
// nx58587z1 = (\u_lab3|modgen_counter_o_output|nx58250z13  & (!\u_lab3|modgen_counter_o_output|nx58250z9  & ((\u_lab3|modgen_counter_o_output|nx58250z15 ) # (!\u_lab3|modgen_counter_o_output|nx58250z11 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z13  & 
// (\u_lab3|modgen_counter_o_output|nx58250z15  & (\u_lab3|modgen_counter_o_output|nx58250z11  $ (!\u_lab3|modgen_counter_o_output|nx58250z9 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx58587z1),
	.cout());
// synopsys translate_off
defparam ix58587z52923.lut_mask = 16'h40B2;
defparam ix58587z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N27
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_1_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx58587z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx42848z1));

// Location: LCCOMB_X1_Y23_N12
cycloneii_lcell_comb ix59584z52923(
// Equation(s):
// nx59584z1 = (\u_lab3|modgen_counter_o_output|nx58250z13  & (((\u_lab3|modgen_counter_o_output|nx58250z15  & !\u_lab3|modgen_counter_o_output|nx58250z9 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z13  & ((\u_lab3|modgen_counter_o_output|nx58250z11  & 
// ((!\u_lab3|modgen_counter_o_output|nx58250z9 ))) # (!\u_lab3|modgen_counter_o_output|nx58250z11  & (\u_lab3|modgen_counter_o_output|nx58250z15 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx59584z1),
	.cout());
// synopsys translate_off
defparam ix59584z52923.lut_mask = 16'h10F4;
defparam ix59584z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N13
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_2_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx59584z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx43845z1));

// Location: LCCOMB_X1_Y23_N22
cycloneii_lcell_comb ix60581z52923(
// Equation(s):
// nx60581z1 = (\u_lab3|modgen_counter_o_output|nx58250z15  & (\u_lab3|modgen_counter_o_output|nx58250z13  $ ((!\u_lab3|modgen_counter_o_output|nx58250z11 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z15  & ((\u_lab3|modgen_counter_o_output|nx58250z13  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z11  & \u_lab3|modgen_counter_o_output|nx58250z9 )) # (!\u_lab3|modgen_counter_o_output|nx58250z13  & (\u_lab3|modgen_counter_o_output|nx58250z11  & !\u_lab3|modgen_counter_o_output|nx58250z9 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx60581z1),
	.cout());
// synopsys translate_off
defparam ix60581z52923.lut_mask = 16'h9294;
defparam ix60581z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_3_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx60581z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx44842z1));

// Location: LCCOMB_X1_Y23_N24
cycloneii_lcell_comb ix61578z52923(
// Equation(s):
// nx61578z1 = (\u_lab3|modgen_counter_o_output|nx58250z11  & (\u_lab3|modgen_counter_o_output|nx58250z9  & ((\u_lab3|modgen_counter_o_output|nx58250z13 ) # (!\u_lab3|modgen_counter_o_output|nx58250z15 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z11  & 
// (\u_lab3|modgen_counter_o_output|nx58250z13  & (!\u_lab3|modgen_counter_o_output|nx58250z15  & !\u_lab3|modgen_counter_o_output|nx58250z9 )))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx61578z1),
	.cout());
// synopsys translate_off
defparam ix61578z52923.lut_mask = 16'h8C02;
defparam ix61578z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_4_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx61578z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx45839z1));

// Location: LCCOMB_X1_Y23_N10
cycloneii_lcell_comb ix62575z52923(
// Equation(s):
// nx62575z1 = (\u_lab3|modgen_counter_o_output|nx58250z13  & ((\u_lab3|modgen_counter_o_output|nx58250z15  & ((\u_lab3|modgen_counter_o_output|nx58250z9 ))) # (!\u_lab3|modgen_counter_o_output|nx58250z15  & (\u_lab3|modgen_counter_o_output|nx58250z11 )))) # 
// (!\u_lab3|modgen_counter_o_output|nx58250z13  & (\u_lab3|modgen_counter_o_output|nx58250z11  & (\u_lab3|modgen_counter_o_output|nx58250z15  $ (\u_lab3|modgen_counter_o_output|nx58250z9 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx62575z1),
	.cout());
// synopsys translate_off
defparam ix62575z52923.lut_mask = 16'hAC48;
defparam ix62575z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N11
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_5_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx62575z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx46836z1));

// Location: LCCOMB_X1_Y23_N28
cycloneii_lcell_comb ix63572z52923(
// Equation(s):
// nx63572z1 = (\u_lab3|modgen_counter_o_output|nx58250z11  & (!\u_lab3|modgen_counter_o_output|nx58250z13  & (\u_lab3|modgen_counter_o_output|nx58250z15  $ (!\u_lab3|modgen_counter_o_output|nx58250z9 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z11  & 
// (\u_lab3|modgen_counter_o_output|nx58250z15  & (\u_lab3|modgen_counter_o_output|nx58250z13  $ (!\u_lab3|modgen_counter_o_output|nx58250z9 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z13 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z11 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z15 ),
	.datad(\u_lab3|modgen_counter_o_output|nx58250z9 ),
	.cin(gnd),
	.combout(nx63572z1),
	.cout());
// synopsys translate_off
defparam ix63572z52923.lut_mask = 16'h6014;
defparam ix63572z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y23_N29
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_6_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx63572z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx47833z1));

// Location: LCCOMB_X29_Y29_N22
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52926 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx56256z1  = (\u_lab3|modgen_counter_o_output|nx58250z5  & (!\u_lab3|modgen_counter_o_output|nx58250z6 )) # (!\u_lab3|modgen_counter_o_output|nx58250z5  & ((\u_lab3|modgen_counter_o_output|nx58250z6 ) # (GND)))
// \u_lab3|modgen_counter_o_output|nx58250z4  = CARRY((!\u_lab3|modgen_counter_o_output|nx58250z6 ) # (!\u_lab3|modgen_counter_o_output|nx58250z5 ))

	.dataa(vcc),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z6 ),
	.combout(\u_lab3|modgen_counter_o_output|nx56256z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z4 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52926 .lut_mask = 16'h3C3F;
defparam \u_lab3|modgen_counter_o_output|ix58250z52926 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X29_Y29_N23
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_5_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx56256z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z5 ));

// Location: LCCOMB_X29_Y29_N24
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52925 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx57253z1  = (\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx58250z4  $ (GND))) # (!\u_lab3|modgen_counter_o_output|nx58250z3  & (!\u_lab3|modgen_counter_o_output|nx58250z4  & VCC))
// \u_lab3|modgen_counter_o_output|nx58250z2  = CARRY((\u_lab3|modgen_counter_o_output|nx58250z3  & !\u_lab3|modgen_counter_o_output|nx58250z4 ))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datab(vcc),
	.datac(vcc),
	.datad(vcc),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z4 ),
	.combout(\u_lab3|modgen_counter_o_output|nx57253z1 ),
	.cout(\u_lab3|modgen_counter_o_output|nx58250z2 ));
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52925 .lut_mask = 16'hA50A;
defparam \u_lab3|modgen_counter_o_output|ix58250z52925 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X29_Y29_N25
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_6_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx57253z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx58250z3 ));

// Location: LCCOMB_X29_Y29_N26
cycloneii_lcell_comb \u_lab3|modgen_counter_o_output|ix58250z52923 (
// Equation(s):
// \u_lab3|modgen_counter_o_output|nx58250z1  = \u_lab3|modgen_counter_o_output|nx58250z2  $ (\u_lab3|modgen_counter_o_output|nx1041z1 )

	.dataa(vcc),
	.datab(vcc),
	.datac(vcc),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(\u_lab3|modgen_counter_o_output|nx58250z2 ),
	.combout(\u_lab3|modgen_counter_o_output|nx58250z1 ),
	.cout());
// synopsys translate_off
defparam \u_lab3|modgen_counter_o_output|ix58250z52923 .lut_mask = 16'h0FF0;
defparam \u_lab3|modgen_counter_o_output|ix58250z52923 .sum_lutc_input = "cin";
// synopsys translate_on

// Location: LCFF_X29_Y29_N27
cycloneii_lcell_ff \u_lab3|modgen_counter_o_output|reg_q_7_ (
	.clk(\clk~clkctrl_outclk ),
	.datain(\u_lab3|modgen_counter_o_output|nx58250z1 ),
	.sdata(gnd),
	.aclr(!\nrst~combout ),
	.sclr(\u_lab3|nx3163z76 ),
	.sload(gnd),
	.ena(\u_lab3|modgen_counter_o_output|nx57253z3 ),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(\u_lab3|modgen_counter_o_output|nx1041z1 ));

// Location: LCCOMB_X1_Y25_N24
cycloneii_lcell_comb ix30z52923(
// Equation(s):
// nx30z1 = (\u_lab3|modgen_counter_o_output|nx58250z7  & (!\u_lab3|modgen_counter_o_output|nx1041z1  & (\u_lab3|modgen_counter_o_output|nx58250z3  $ (!\u_lab3|modgen_counter_o_output|nx58250z5 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z7  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z5  & (\u_lab3|modgen_counter_o_output|nx58250z3  $ (!\u_lab3|modgen_counter_o_output|nx1041z1 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx30z1),
	.cout());
// synopsys translate_off
defparam ix30z52923.lut_mask = 16'h0483;
defparam ix30z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N25
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_8_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx30z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx49827z1));

// Location: LCCOMB_X1_Y25_N10
cycloneii_lcell_comb ix1027z52923(
// Equation(s):
// nx1027z1 = (\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx1041z1  $ (((\u_lab3|modgen_counter_o_output|nx58250z5 ) # (!\u_lab3|modgen_counter_o_output|nx58250z3 ))))) # (!\u_lab3|modgen_counter_o_output|nx58250z7  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx58250z5  & !\u_lab3|modgen_counter_o_output|nx1041z1 )))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx1027z1),
	.cout());
// synopsys translate_off
defparam ix1027z52923.lut_mask = 16'h08B2;
defparam ix1027z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N11
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_9_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx1027z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx50824z1));

// Location: LCCOMB_X1_Y25_N12
cycloneii_lcell_comb ix25683z52923(
// Equation(s):
// nx25683z1 = (\u_lab3|modgen_counter_o_output|nx58250z5  & (\u_lab3|modgen_counter_o_output|nx58250z7  & ((!\u_lab3|modgen_counter_o_output|nx1041z1 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z5  & ((\u_lab3|modgen_counter_o_output|nx58250z3  & 
// ((!\u_lab3|modgen_counter_o_output|nx1041z1 ))) # (!\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx58250z7 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx25683z1),
	.cout());
// synopsys translate_off
defparam ix25683z52923.lut_mask = 16'h02AE;
defparam ix25683z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N13
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_10_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx25683z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx62540z1));

// Location: LCCOMB_X1_Y25_N22
cycloneii_lcell_comb ix26680z52923(
// Equation(s):
// nx26680z1 = (\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx58250z3  $ ((!\u_lab3|modgen_counter_o_output|nx58250z5 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z7  & ((\u_lab3|modgen_counter_o_output|nx58250z3  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z5  & !\u_lab3|modgen_counter_o_output|nx1041z1 )) # (!\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx58250z5  & \u_lab3|modgen_counter_o_output|nx1041z1 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx26680z1),
	.cout());
// synopsys translate_off
defparam ix26680z52923.lut_mask = 16'h9286;
defparam ix26680z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N23
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_11_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx26680z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx63537z1));

// Location: LCCOMB_X1_Y25_N16
cycloneii_lcell_comb ix27677z52923(
// Equation(s):
// nx27677z1 = (\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx1041z1  & ((\u_lab3|modgen_counter_o_output|nx58250z5 ) # (!\u_lab3|modgen_counter_o_output|nx58250z7 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z3  & 
// (!\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx58250z5  & !\u_lab3|modgen_counter_o_output|nx1041z1 )))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx27677z1),
	.cout());
// synopsys translate_off
defparam ix27677z52923.lut_mask = 16'hC410;
defparam ix27677z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N17
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_12_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx27677z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx64534z1));

// Location: LCCOMB_X1_Y25_N26
cycloneii_lcell_comb ix28674z52923(
// Equation(s):
// nx28674z1 = (\u_lab3|modgen_counter_o_output|nx58250z5  & ((\u_lab3|modgen_counter_o_output|nx58250z7  & ((\u_lab3|modgen_counter_o_output|nx1041z1 ))) # (!\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx58250z3 )))) # 
// (!\u_lab3|modgen_counter_o_output|nx58250z5  & (\u_lab3|modgen_counter_o_output|nx58250z3  & (\u_lab3|modgen_counter_o_output|nx58250z7  $ (\u_lab3|modgen_counter_o_output|nx1041z1 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx28674z1),
	.cout());
// synopsys translate_off
defparam ix28674z52923.lut_mask = 16'hE448;
defparam ix28674z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N27
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_13_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx28674z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx65531z1));

// Location: LCCOMB_X1_Y25_N28
cycloneii_lcell_comb ix29671z52923(
// Equation(s):
// nx29671z1 = (\u_lab3|modgen_counter_o_output|nx58250z3  & (!\u_lab3|modgen_counter_o_output|nx58250z5  & (\u_lab3|modgen_counter_o_output|nx58250z7  $ (!\u_lab3|modgen_counter_o_output|nx1041z1 )))) # (!\u_lab3|modgen_counter_o_output|nx58250z3  & 
// (\u_lab3|modgen_counter_o_output|nx58250z7  & (\u_lab3|modgen_counter_o_output|nx58250z5  $ (!\u_lab3|modgen_counter_o_output|nx1041z1 ))))

	.dataa(\u_lab3|modgen_counter_o_output|nx58250z7 ),
	.datab(\u_lab3|modgen_counter_o_output|nx58250z3 ),
	.datac(\u_lab3|modgen_counter_o_output|nx58250z5 ),
	.datad(\u_lab3|modgen_counter_o_output|nx1041z1 ),
	.cin(gnd),
	.combout(nx29671z1),
	.cout());
// synopsys translate_off
defparam ix29671z52923.lut_mask = 16'h2806;
defparam ix29671z52923.sum_lutc_input = "datac";
// synopsys translate_on

// Location: LCFF_X1_Y25_N29
cycloneii_lcell_ff reg_out_o_sevenseg_obuf_14_(
	.clk(\clk~clkctrl_outclk ),
	.datain(nx29671z1),
	.sdata(gnd),
	.aclr(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.devclrn(devclrn),
	.devpor(devpor),
	.regout(nx992z1));

// Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix21351z43919(
	.datain(!nx21351z2),
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
	.padio(txflex));
// synopsys translate_off
defparam ix21351z43919.input_async_reset = "none";
defparam ix21351z43919.input_power_up = "low";
defparam ix21351z43919.input_register_mode = "none";
defparam ix21351z43919.input_sync_reset = "none";
defparam ix21351z43919.oe_async_reset = "none";
defparam ix21351z43919.oe_power_up = "low";
defparam ix21351z43919.oe_register_mode = "none";
defparam ix21351z43919.oe_sync_reset = "none";
defparam ix21351z43919.operation_mode = "output";
defparam ix21351z43919.output_async_reset = "none";
defparam ix21351z43919.output_power_up = "low";
defparam ix21351z43919.output_register_mode = "none";
defparam ix21351z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_V6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ctsflex_obuf(
	.datain(vcc),
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
	.padio(ctsflex));
// synopsys translate_off
defparam ctsflex_obuf.input_async_reset = "none";
defparam ctsflex_obuf.input_power_up = "low";
defparam ctsflex_obuf.input_register_mode = "none";
defparam ctsflex_obuf.input_sync_reset = "none";
defparam ctsflex_obuf.oe_async_reset = "none";
defparam ctsflex_obuf.oe_power_up = "low";
defparam ctsflex_obuf.oe_register_mode = "none";
defparam ctsflex_obuf.oe_sync_reset = "none";
defparam ctsflex_obuf.operation_mode = "output";
defparam ctsflex_obuf.output_async_reset = "none";
defparam ctsflex_obuf.output_power_up = "low";
defparam ctsflex_obuf.output_register_mode = "none";
defparam ctsflex_obuf.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix41851z43919(
	.datain(nx41851z1),
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
	.padio(o_sevenseg[0]));
// synopsys translate_off
defparam ix41851z43919.input_async_reset = "none";
defparam ix41851z43919.input_power_up = "low";
defparam ix41851z43919.input_register_mode = "none";
defparam ix41851z43919.input_sync_reset = "none";
defparam ix41851z43919.oe_async_reset = "none";
defparam ix41851z43919.oe_power_up = "low";
defparam ix41851z43919.oe_register_mode = "none";
defparam ix41851z43919.oe_sync_reset = "none";
defparam ix41851z43919.operation_mode = "output";
defparam ix41851z43919.output_async_reset = "none";
defparam ix41851z43919.output_power_up = "low";
defparam ix41851z43919.output_register_mode = "none";
defparam ix41851z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix42848z43919(
	.datain(nx42848z1),
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
	.padio(o_sevenseg[1]));
// synopsys translate_off
defparam ix42848z43919.input_async_reset = "none";
defparam ix42848z43919.input_power_up = "low";
defparam ix42848z43919.input_register_mode = "none";
defparam ix42848z43919.input_sync_reset = "none";
defparam ix42848z43919.oe_async_reset = "none";
defparam ix42848z43919.oe_power_up = "low";
defparam ix42848z43919.oe_register_mode = "none";
defparam ix42848z43919.oe_sync_reset = "none";
defparam ix42848z43919.operation_mode = "output";
defparam ix42848z43919.output_async_reset = "none";
defparam ix42848z43919.output_power_up = "low";
defparam ix42848z43919.output_register_mode = "none";
defparam ix42848z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix43845z43919(
	.datain(nx43845z1),
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
	.padio(o_sevenseg[2]));
// synopsys translate_off
defparam ix43845z43919.input_async_reset = "none";
defparam ix43845z43919.input_power_up = "low";
defparam ix43845z43919.input_register_mode = "none";
defparam ix43845z43919.input_sync_reset = "none";
defparam ix43845z43919.oe_async_reset = "none";
defparam ix43845z43919.oe_power_up = "low";
defparam ix43845z43919.oe_register_mode = "none";
defparam ix43845z43919.oe_sync_reset = "none";
defparam ix43845z43919.operation_mode = "output";
defparam ix43845z43919.output_async_reset = "none";
defparam ix43845z43919.output_power_up = "low";
defparam ix43845z43919.output_register_mode = "none";
defparam ix43845z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_M2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix44842z43919(
	.datain(nx44842z1),
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
	.padio(o_sevenseg[3]));
// synopsys translate_off
defparam ix44842z43919.input_async_reset = "none";
defparam ix44842z43919.input_power_up = "low";
defparam ix44842z43919.input_register_mode = "none";
defparam ix44842z43919.input_sync_reset = "none";
defparam ix44842z43919.oe_async_reset = "none";
defparam ix44842z43919.oe_power_up = "low";
defparam ix44842z43919.oe_register_mode = "none";
defparam ix44842z43919.oe_sync_reset = "none";
defparam ix44842z43919.operation_mode = "output";
defparam ix44842z43919.output_async_reset = "none";
defparam ix44842z43919.output_power_up = "low";
defparam ix44842z43919.output_register_mode = "none";
defparam ix44842z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix45839z43919(
	.datain(nx45839z1),
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
	.padio(o_sevenseg[4]));
// synopsys translate_off
defparam ix45839z43919.input_async_reset = "none";
defparam ix45839z43919.input_power_up = "low";
defparam ix45839z43919.input_register_mode = "none";
defparam ix45839z43919.input_sync_reset = "none";
defparam ix45839z43919.oe_async_reset = "none";
defparam ix45839z43919.oe_power_up = "low";
defparam ix45839z43919.oe_register_mode = "none";
defparam ix45839z43919.oe_sync_reset = "none";
defparam ix45839z43919.operation_mode = "output";
defparam ix45839z43919.output_async_reset = "none";
defparam ix45839z43919.output_power_up = "low";
defparam ix45839z43919.output_register_mode = "none";
defparam ix45839z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix46836z43919(
	.datain(nx46836z1),
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
	.padio(o_sevenseg[5]));
// synopsys translate_off
defparam ix46836z43919.input_async_reset = "none";
defparam ix46836z43919.input_power_up = "low";
defparam ix46836z43919.input_register_mode = "none";
defparam ix46836z43919.input_sync_reset = "none";
defparam ix46836z43919.oe_async_reset = "none";
defparam ix46836z43919.oe_power_up = "low";
defparam ix46836z43919.oe_register_mode = "none";
defparam ix46836z43919.oe_sync_reset = "none";
defparam ix46836z43919.operation_mode = "output";
defparam ix46836z43919.output_async_reset = "none";
defparam ix46836z43919.output_power_up = "low";
defparam ix46836z43919.output_register_mode = "none";
defparam ix46836z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix47833z43919(
	.datain(nx47833z1),
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
	.padio(o_sevenseg[6]));
// synopsys translate_off
defparam ix47833z43919.input_async_reset = "none";
defparam ix47833z43919.input_power_up = "low";
defparam ix47833z43919.input_register_mode = "none";
defparam ix47833z43919.input_sync_reset = "none";
defparam ix47833z43919.oe_async_reset = "none";
defparam ix47833z43919.oe_power_up = "low";
defparam ix47833z43919.oe_register_mode = "none";
defparam ix47833z43919.oe_sync_reset = "none";
defparam ix47833z43919.operation_mode = "output";
defparam ix47833z43919.output_async_reset = "none";
defparam ix47833z43919.output_power_up = "low";
defparam ix47833z43919.output_register_mode = "none";
defparam ix47833z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_7_(
	.datain(\nrst~combout ),
	.oe(vcc),
	.outclk(\clk~clkctrl_outclk ),
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
	.padio(o_sevenseg[7]));
// synopsys translate_off
defparam o_sevenseg_obuf_7_.input_async_reset = "none";
defparam o_sevenseg_obuf_7_.input_power_up = "low";
defparam o_sevenseg_obuf_7_.input_register_mode = "none";
defparam o_sevenseg_obuf_7_.input_sync_reset = "none";
defparam o_sevenseg_obuf_7_.oe_async_reset = "none";
defparam o_sevenseg_obuf_7_.oe_power_up = "low";
defparam o_sevenseg_obuf_7_.oe_register_mode = "none";
defparam o_sevenseg_obuf_7_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_7_.operation_mode = "output";
defparam o_sevenseg_obuf_7_.output_async_reset = "none";
defparam o_sevenseg_obuf_7_.output_power_up = "low";
defparam o_sevenseg_obuf_7_.output_register_mode = "register";
defparam o_sevenseg_obuf_7_.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix49827z43919(
	.datain(nx49827z1),
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
	.padio(o_sevenseg[8]));
// synopsys translate_off
defparam ix49827z43919.input_async_reset = "none";
defparam ix49827z43919.input_power_up = "low";
defparam ix49827z43919.input_register_mode = "none";
defparam ix49827z43919.input_sync_reset = "none";
defparam ix49827z43919.oe_async_reset = "none";
defparam ix49827z43919.oe_power_up = "low";
defparam ix49827z43919.oe_register_mode = "none";
defparam ix49827z43919.oe_sync_reset = "none";
defparam ix49827z43919.operation_mode = "output";
defparam ix49827z43919.output_async_reset = "none";
defparam ix49827z43919.output_power_up = "low";
defparam ix49827z43919.output_register_mode = "none";
defparam ix49827z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix50824z43919(
	.datain(nx50824z1),
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
	.padio(o_sevenseg[9]));
// synopsys translate_off
defparam ix50824z43919.input_async_reset = "none";
defparam ix50824z43919.input_power_up = "low";
defparam ix50824z43919.input_register_mode = "none";
defparam ix50824z43919.input_sync_reset = "none";
defparam ix50824z43919.oe_async_reset = "none";
defparam ix50824z43919.oe_power_up = "low";
defparam ix50824z43919.oe_register_mode = "none";
defparam ix50824z43919.oe_sync_reset = "none";
defparam ix50824z43919.operation_mode = "output";
defparam ix50824z43919.output_async_reset = "none";
defparam ix50824z43919.output_power_up = "low";
defparam ix50824z43919.output_register_mode = "none";
defparam ix50824z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix62540z43919(
	.datain(nx62540z1),
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
	.padio(o_sevenseg[10]));
// synopsys translate_off
defparam ix62540z43919.input_async_reset = "none";
defparam ix62540z43919.input_power_up = "low";
defparam ix62540z43919.input_register_mode = "none";
defparam ix62540z43919.input_sync_reset = "none";
defparam ix62540z43919.oe_async_reset = "none";
defparam ix62540z43919.oe_power_up = "low";
defparam ix62540z43919.oe_register_mode = "none";
defparam ix62540z43919.oe_sync_reset = "none";
defparam ix62540z43919.operation_mode = "output";
defparam ix62540z43919.output_async_reset = "none";
defparam ix62540z43919.output_power_up = "low";
defparam ix62540z43919.output_register_mode = "none";
defparam ix62540z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix63537z43919(
	.datain(nx63537z1),
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
	.padio(o_sevenseg[11]));
// synopsys translate_off
defparam ix63537z43919.input_async_reset = "none";
defparam ix63537z43919.input_power_up = "low";
defparam ix63537z43919.input_register_mode = "none";
defparam ix63537z43919.input_sync_reset = "none";
defparam ix63537z43919.oe_async_reset = "none";
defparam ix63537z43919.oe_power_up = "low";
defparam ix63537z43919.oe_register_mode = "none";
defparam ix63537z43919.oe_sync_reset = "none";
defparam ix63537z43919.operation_mode = "output";
defparam ix63537z43919.output_async_reset = "none";
defparam ix63537z43919.output_power_up = "low";
defparam ix63537z43919.output_register_mode = "none";
defparam ix63537z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix64534z43919(
	.datain(nx64534z1),
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
	.padio(o_sevenseg[12]));
// synopsys translate_off
defparam ix64534z43919.input_async_reset = "none";
defparam ix64534z43919.input_power_up = "low";
defparam ix64534z43919.input_register_mode = "none";
defparam ix64534z43919.input_sync_reset = "none";
defparam ix64534z43919.oe_async_reset = "none";
defparam ix64534z43919.oe_power_up = "low";
defparam ix64534z43919.oe_register_mode = "none";
defparam ix64534z43919.oe_sync_reset = "none";
defparam ix64534z43919.operation_mode = "output";
defparam ix64534z43919.output_async_reset = "none";
defparam ix64534z43919.output_power_up = "low";
defparam ix64534z43919.output_register_mode = "none";
defparam ix64534z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix65531z43919(
	.datain(nx65531z1),
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
	.padio(o_sevenseg[13]));
// synopsys translate_off
defparam ix65531z43919.input_async_reset = "none";
defparam ix65531z43919.input_power_up = "low";
defparam ix65531z43919.input_register_mode = "none";
defparam ix65531z43919.input_sync_reset = "none";
defparam ix65531z43919.oe_async_reset = "none";
defparam ix65531z43919.oe_power_up = "low";
defparam ix65531z43919.oe_register_mode = "none";
defparam ix65531z43919.oe_sync_reset = "none";
defparam ix65531z43919.operation_mode = "output";
defparam ix65531z43919.output_async_reset = "none";
defparam ix65531z43919.output_power_up = "low";
defparam ix65531z43919.output_register_mode = "none";
defparam ix65531z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_L3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io ix992z43919(
	.datain(nx992z1),
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
	.padio(o_sevenseg[14]));
// synopsys translate_off
defparam ix992z43919.input_async_reset = "none";
defparam ix992z43919.input_power_up = "low";
defparam ix992z43919.input_register_mode = "none";
defparam ix992z43919.input_sync_reset = "none";
defparam ix992z43919.oe_async_reset = "none";
defparam ix992z43919.oe_power_up = "low";
defparam ix992z43919.oe_register_mode = "none";
defparam ix992z43919.oe_sync_reset = "none";
defparam ix992z43919.operation_mode = "output";
defparam ix992z43919.output_async_reset = "none";
defparam ix992z43919.output_power_up = "low";
defparam ix992z43919.output_register_mode = "none";
defparam ix992z43919.output_sync_reset = "none";
// synopsys translate_on

// Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
cycloneii_io o_sevenseg_obuf_15_(
	.datain(vcc),
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
	.padio(o_sevenseg[15]));
// synopsys translate_off
defparam o_sevenseg_obuf_15_.input_async_reset = "none";
defparam o_sevenseg_obuf_15_.input_power_up = "low";
defparam o_sevenseg_obuf_15_.input_register_mode = "none";
defparam o_sevenseg_obuf_15_.input_sync_reset = "none";
defparam o_sevenseg_obuf_15_.oe_async_reset = "none";
defparam o_sevenseg_obuf_15_.oe_power_up = "low";
defparam o_sevenseg_obuf_15_.oe_register_mode = "none";
defparam o_sevenseg_obuf_15_.oe_sync_reset = "none";
defparam o_sevenseg_obuf_15_.operation_mode = "output";
defparam o_sevenseg_obuf_15_.output_async_reset = "none";
defparam o_sevenseg_obuf_15_.output_power_up = "low";
defparam o_sevenseg_obuf_15_.output_register_mode = "none";
defparam o_sevenseg_obuf_15_.output_sync_reset = "none";
// synopsys translate_on

endmodule
