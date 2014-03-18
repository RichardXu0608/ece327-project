
-- 
-- Definition of  top_lab3
-- 
--      02/15/14 13:29:38
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_11_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (10 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (10 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_11_0 ;

architecture IMPLEMENTATION of modgen_counter_11_0 is 
   signal nx3957z1, nx17096z3, nx17096z5, nx17096z7, nx17096z9, nx17096z11, 
      nx17096z13, nx17096z15, nx17096z17, nx17096z19, nx17096z21, nx51271z1, 
      nx17096z20, nx52268z1, nx17096z18, nx53265z1, nx17096z16, nx54262z1, 
      nx17096z14, nx55259z1, nx17096z12, nx56256z1, nx17096z10, nx57253z1, 
      nx17096z8, nx58250z1, nx17096z6, nx59247z1, nx17096z4, nx60244z1, 
      nx17096z2, nx17096z1, nx_modgen_counter_11_0_vcc_net: std_logic ;

begin
   q(10) <= nx3957z1 ;
   q(9) <= nx17096z3 ;
   q(8) <= nx17096z5 ;
   q(7) <= nx17096z7 ;
   q(6) <= nx17096z9 ;
   q(5) <= nx17096z11 ;
   q(4) <= nx17096z13 ;
   q(3) <= nx17096z15 ;
   q(2) <= nx17096z17 ;
   q(1) <= nx17096z19 ;
   q(0) <= nx17096z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx17096z3, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx17096z5, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx17096z7, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx17096z9, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx17096z11, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx17096z13, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx17096z15, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx17096z17, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx3957z1, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx17096z19, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx17096z21, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix17096z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx17096z16, dataa=>nx17096z17, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z18);
   nx_modgen_counter_11_0_vcc_net <= '1';
   ix17096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, dataa=>nx3957z1, datad=>
      nx_modgen_counter_11_0_vcc_net, cin=>nx17096z2);
   ix17096z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx17096z2, dataa=>nx17096z3, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z4);
   ix17096z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx17096z4, dataa=>nx17096z5, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z6);
   ix17096z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx17096z6, dataa=>nx17096z7, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z8);
   ix17096z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx17096z18, dataa=>nx17096z19, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z20);
   ix17096z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx17096z8, dataa=>nx17096z9, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z10);
   ix17096z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx17096z10, dataa=>nx17096z11, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z12);
   ix17096z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx17096z12, dataa=>nx17096z13, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z14);
   ix17096z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx17096z14, dataa=>nx17096z15, 
      datad=>nx_modgen_counter_11_0_vcc_net, cin=>nx17096z16);
   ix17096z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx17096z20, dataa=>nx17096z21, 
      datad=>nx_modgen_counter_11_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_12_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (11 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (11 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_12_0 ;

architecture IMPLEMENTATION of modgen_counter_12_0 is 
   signal nx2960z1, nx18093z3, nx18093z5, nx18093z7, nx18093z9, nx18093z11, 
      nx18093z13, nx18093z15, nx18093z17, nx18093z19, nx18093z21, nx18093z23, 
      nx51271z1, nx18093z22, nx52268z1, nx18093z20, nx53265z1, nx18093z18, 
      nx54262z1, nx18093z16, nx55259z1, nx18093z14, nx56256z1, nx18093z12, 
      nx57253z1, nx18093z10, nx58250z1, nx18093z8, nx59247z1, nx18093z6, 
      nx60244z1, nx18093z4, nx17096z1, nx18093z2, nx18093z1, 
      nx_modgen_counter_12_0_vcc_net: std_logic ;

begin
   q(11) <= nx2960z1 ;
   q(10) <= nx18093z3 ;
   q(9) <= nx18093z5 ;
   q(8) <= nx18093z7 ;
   q(7) <= nx18093z9 ;
   q(6) <= nx18093z11 ;
   q(5) <= nx18093z13 ;
   q(4) <= nx18093z15 ;
   q(3) <= nx18093z17 ;
   q(2) <= nx18093z19 ;
   q(1) <= nx18093z21 ;
   q(0) <= nx18093z23 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx18093z5, datain=>
      nx60244z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx18093z7, datain=>
      nx59247z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx18093z9, datain=>
      nx58250z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx18093z11, datain=>
      nx57253z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx18093z13, datain=>
      nx56256z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx18093z15, datain=>
      nx55259z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx18093z17, datain=>
      nx54262z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx18093z19, datain=>
      nx53265z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx2960z1, datain=>
      nx18093z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx18093z3, datain=>
      nx17096z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx18093z21, datain=>
      nx52268z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx18093z23, datain=>
      nx51271z1, clk=>clock, aclr=>aclear, sclr=>sclear);
   ix18093z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx18093z18, dataa=>nx18093z19, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z20);
   nx_modgen_counter_12_0_vcc_net <= '1';
   ix18093z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, dataa=>nx2960z1, datad=>
      nx_modgen_counter_12_0_vcc_net, cin=>nx18093z2);
   ix18093z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx18093z2, dataa=>nx18093z3, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z4);
   ix18093z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx18093z4, dataa=>nx18093z5, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z6);
   ix18093z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx18093z6, dataa=>nx18093z7, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z8);
   ix18093z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx18093z8, dataa=>nx18093z9, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z10);
   ix18093z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx18093z20, dataa=>nx18093z21, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z22);
   ix18093z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx18093z10, dataa=>nx18093z11, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z12);
   ix18093z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx18093z12, dataa=>nx18093z13, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z14);
   ix18093z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx18093z14, dataa=>nx18093z15, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z16);
   ix18093z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx18093z16, dataa=>nx18093z17, 
      datad=>nx_modgen_counter_12_0_vcc_net, cin=>nx18093z18);
   ix18093z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx18093z22, dataa=>nx18093z23, 
      datad=>nx_modgen_counter_12_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity UARTS is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      Din : IN std_logic_vector (7 DOWNTO 0) ;
      LD : IN std_logic ;
      Rx : IN std_logic ;
      Baud : IN std_logic ;
      Dout : OUT std_logic_vector (7 DOWNTO 0) ;
      Tx : OUT std_logic ;
      TxBusy : OUT std_logic ;
      RxErr : OUT std_logic ;
      RxRDY : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_RXFLEX : IN std_logic ;
      p_nrst_int_dup_76 : IN std_logic) ;
end UARTS ;

architecture RTL_unfold_1210 of UARTS is 
   component modgen_counter_11_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (10 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (10 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_12_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (11 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (11 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal RxErr_EXMPLR316, RxRDY_EXMPLR317: std_logic ;
   
   signal Rx_Reg: std_logic_vector (7 DOWNTO 0) ;
   
   signal TxDivisor_5: std_logic ;
   
   signal RxDiv: std_logic_vector (10 DOWNTO 0) ;
   
   signal TxDiv: std_logic_vector (11 DOWNTO 0) ;
   
   signal TopTx, TopRx: std_logic ;
   
   signal TxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal RxBitCnt: std_logic_vector (3 DOWNTO 0) ;
   
   signal Rx_r: std_logic ;
   
   signal TxFSM: std_logic_vector (1 DOWNTO 0) ;
   
   signal RxFSM_6, RxFSM_5, RxFSM_3, RxFSM_2, RxFSM_1, RxFSM_0, nx65151z1, 
      Tx_Reg_14n6ss1_3, Tx_Reg_14n6ss1_2, Tx_Reg_14n6ss1_1, nx50920z2, 
      nx31615z2, not_rtlc17_X_0_n360, nx54636z1, nx15541z1, nx13547z1, 
      nx14544z1, nx11553z1, nx34394z1, nx34394z3, nx32400z1, nx13547z2, 
      nx30017z1, PWR, nx4608z1, nx51917z2, nx50920z3, nx51917z3, nx9370z2, 
      nx51917z1, nx50920z1, nx49923z1, nx48926z1, nx8373z1, nx9370z1, 
      nx10367z1, nx11364z1, nx5605z1, nx15376z1, nx34394z4, nx34394z5, 
      nx34394z6, nx34394z9, nx34394z7, nx34394z10, nx34394z8, nx32400z2, 
      nx32400z3, nx32400z4, nx32400z6, nx32400z5, nx32400z7, nx15541z2, 
      nx4608z2, nx4608z3, nx51917z4, nx8373z2, nx15541z3, nx32400z8, 
      nx32400z9, not_Rx_r, NOT_Rx, nx30618z2, nx31615z1, nx29621z2, 
      nx30618z1, nx28624z2, nx29621z1, nx61140z1, nx28624z1, nx34394z2, 
      nx16538z1: std_logic ;
   
   signal DANGLING : std_logic_vector (32 downto 0 );

begin
   RxErr <= RxErr_EXMPLR316 ;
   RxRDY <= RxRDY_EXMPLR317 ;
   modgen_counter_RxDiv : modgen_counter_11_0 port map ( clock=>CLK, q(10)=>
      RxDiv(10), q(9)=>RxDiv(9), q(8)=>RxDiv(8), q(7)=>RxDiv(7), q(6)=>
      RxDiv(6), q(5)=>RxDiv(5), q(4)=>RxDiv(4), q(3)=>RxDiv(3), q(2)=>
      RxDiv(2), q(1)=>RxDiv(1), q(0)=>RxDiv(0), clk_en=>DANGLING(0), aclear
      =>RST, sload=>DANGLING(1), data(10)=>DANGLING(2), data(9)=>DANGLING(3), 
      data(8)=>DANGLING(4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), 
      data(5)=>DANGLING(7), data(4)=>DANGLING(8), data(3)=>DANGLING(9), 
      data(2)=>DANGLING(10), data(1)=>DANGLING(11), data(0)=>DANGLING(12), 
      aset=>DANGLING(13), sclear=>nx65151z1, updn=>DANGLING(14), cnt_en=>
      DANGLING(15));
   modgen_counter_TxDiv : modgen_counter_12_0 port map ( clock=>CLK, q(11)=>
      TxDiv(11), q(10)=>TxDiv(10), q(9)=>TxDiv(9), q(8)=>TxDiv(8), q(7)=>
      TxDiv(7), q(6)=>TxDiv(6), q(5)=>TxDiv(5), q(4)=>TxDiv(4), q(3)=>
      TxDiv(3), q(2)=>TxDiv(2), q(1)=>TxDiv(1), q(0)=>TxDiv(0), clk_en=>
      DANGLING(16), aclear=>RST, sload=>DANGLING(17), data(11)=>DANGLING(18), 
      data(10)=>DANGLING(19), data(9)=>DANGLING(20), data(8)=>DANGLING(21), 
      data(7)=>DANGLING(22), data(6)=>DANGLING(23), data(5)=>DANGLING(24), 
      data(4)=>DANGLING(25), data(3)=>DANGLING(26), data(2)=>DANGLING(27), 
      data(1)=>DANGLING(28), data(0)=>DANGLING(29), aset=>DANGLING(30), 
      sclear=>nx32400z1, updn=>DANGLING(31), cnt_en=>DANGLING(32));
   PWR <= '1';
   Rx_r <= NOT not_Rx_r;
   RxFSM_0 <= NOT nx34394z2;
   reg_Tx_Reg_4 : cycloneii_lcell_ff port map ( regout=>nx30618z2, datain=>
      nx31615z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_3 : cycloneii_lcell_ff port map ( regout=>nx29621z2, datain=>
      nx30618z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_2 : cycloneii_lcell_ff port map ( regout=>nx28624z2, datain=>
      nx29621z1, clk=>CLK, aclr=>RST);
   reg_Tx_Reg_1 : cycloneii_lcell_ff port map ( regout=>nx61140z1, datain=>
      nx28624z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_1 : cycloneii_lcell_ff port map ( regout=>TxFSM(1), datain=>
      nx5605z1, clk=>CLK, aclr=>RST);
   reg_TxFSM_0 : cycloneii_lcell_ff port map ( regout=>TxFSM(0), datain=>
      nx4608z1, clk=>CLK, aclr=>RST);
   reg_TxDivisor_5 : cycloneii_lcell_ff port map ( regout=>TxDivisor_5, 
      datain=>PWR, clk=>CLK, aclr=>RST);
   reg_TopTx : cycloneii_lcell_ff port map ( regout=>TopTx, datain=>
      nx32400z1, clk=>CLK, aclr=>RST);
   reg_TopRx : cycloneii_lcell_ff port map ( regout=>TopRx, datain=>
      nx34394z1, clk=>CLK, aclr=>RST);
   reg_Rx_r : cycloneii_lcell_ff port map ( regout=>not_Rx_r, datain=>NOT_Rx, 
      clk=>CLK, aclr=>RST);
   reg_Rx_Reg_7 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(7), datain=>
      Rx_r, clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_6 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(6), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_5 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(5), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_4 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(4), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_3 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(3), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_2 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(2), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_1 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(1), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_Rx_Reg_0 : cycloneii_lcell_ff port map ( regout=>Rx_Reg(0), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx54636z1, aclr=>RST);
   reg_RxRDYi : cycloneii_lcell_ff port map ( regout=>RxRDY_EXMPLR317, 
      datain=>nx30017z1, clk=>CLK, aclr=>RST);
   reg_RxFSM_6 : cycloneii_lcell_ff port map ( regout=>RxFSM_6, datain=>
      RxFSM_1, sdata=>RxFSM_5, clk=>CLK, ena=>nx15541z1, aclr=>RST, sload=>
      not_Rx_r);
   reg_RxFSM_5 : cycloneii_lcell_ff port map ( regout=>RxFSM_5, datain=>
      nx11553z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_3 : cycloneii_lcell_ff port map ( regout=>RxFSM_3, datain=>
      nx13547z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_2 : cycloneii_lcell_ff port map ( regout=>RxFSM_2, datain=>
      nx14544z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_1 : cycloneii_lcell_ff port map ( regout=>RxFSM_1, datain=>
      RxFSM_0, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxFSM_0 : cycloneii_lcell_ff port map ( regout=>nx34394z2, datain=>
      nx16538z1, clk=>CLK, ena=>nx15541z1, aclr=>RST);
   reg_RxErr : cycloneii_lcell_ff port map ( regout=>RxErr_EXMPLR316, datain
      =>nx15376z1, clk=>CLK, aclr=>RST);
   reg_Dout_7 : cycloneii_lcell_ff port map ( regout=>Dout(7), datain=>
      Rx_Reg(7), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_6 : cycloneii_lcell_ff port map ( regout=>Dout(6), datain=>
      Rx_Reg(6), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_5 : cycloneii_lcell_ff port map ( regout=>Dout(5), datain=>
      Rx_Reg(5), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_4 : cycloneii_lcell_ff port map ( regout=>Dout(4), datain=>
      Rx_Reg(4), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_3 : cycloneii_lcell_ff port map ( regout=>Dout(3), datain=>
      Rx_Reg(3), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_2 : cycloneii_lcell_ff port map ( regout=>Dout(2), datain=>
      Rx_Reg(2), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_1 : cycloneii_lcell_ff port map ( regout=>Dout(1), datain=>
      Rx_Reg(1), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   reg_Dout_0 : cycloneii_lcell_ff port map ( regout=>Dout(0), datain=>
      Rx_Reg(0), clk=>CLK, ena=>nx30017z1, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(3), datain=>nx51917z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(2), datain=>nx50920z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(1), datain=>nx49923z1, clk=>CLK, aclr=>RST);
   modgen_counter_TxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      TxBitCnt(0), datain=>nx48926z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(3), datain=>nx8373z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(2), datain=>nx9370z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(1), datain=>nx10367z1, clk=>CLK, aclr=>RST);
   modgen_counter_RxBitCnt_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      RxBitCnt(0), datain=>nx11364z1, clk=>CLK, aclr=>RST);
   ix29621z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_2, dataa=>Din(3), datab=>nx29621z2, 
      datac=>TxFSM(1));
   ix30618z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_3, dataa=>Din(3), datab=>nx30618z2, 
      datac=>TxFSM(1));
   ix65151z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx65151z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix32400z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx32400z9, dataa=>TxDiv(10), datab=>TxDiv(9));
   ix32400z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx32400z8, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(0), datad=>nx32400z9);
   ix8373z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx8373z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix51917z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"f0f1") 
       port map ( combout=>nx51917z4, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>nx50920z2, datad=>nx50920z3);
   ix4608z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"feff") 
       port map ( combout=>nx4608z3, dataa=>TxBitCnt(3), datab=>TxBitCnt(2), 
      datac=>TxBitCnt(1), datad=>TxBitCnt(0));
   ix4608z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3335") 
       port map ( combout=>nx4608z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix15541z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ac00") 
       port map ( combout=>nx15541z2, dataa=>Rx, datab=>TopRx, datac=>
      RxFSM_6, datad=>nx34394z2);
   ix32400z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z7, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z5, dataa=>TxDiv(4), datab=>TxDiv(3), 
      datac=>TxDiv(2), datad=>TxDiv(1));
   ix32400z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx32400z6, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx32400z4, dataa=>TxDiv(8), datab=>TxDiv(7), 
      datac=>TxDiv(6), datad=>TxDiv(5));
   ix32400z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx32400z3, dataa=>TxDivisor_5, datab=>TxDiv(11), 
      datac=>TxDiv(10), datad=>TxDiv(9));
   ix32400z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx32400z2, dataa=>TxDiv(0), datab=>nx32400z3, 
      datac=>nx32400z4, datad=>nx32400z5);
   ix34394z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z8, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z10, dataa=>RxDiv(3), datab=>RxDiv(2), 
      datac=>RxDiv(1), datad=>RxDiv(0));
   ix34394z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z7, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix34394z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx34394z9, dataa=>RxDiv(7), datab=>RxDiv(6), 
      datac=>RxDiv(5), datad=>RxDiv(4));
   ix15541z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"b3b3") 
       port map ( combout=>nx15541z3, dataa=>p_RXFLEX, datab=>RxFSM_6, datac
      =>p_nrst_int_dup_76);
   ix34394z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx34394z6, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix34394z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx34394z5, dataa=>nx34394z6, datab=>nx34394z7, 
      datac=>nx34394z8);
   ix34394z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx34394z4, dataa=>TxDivisor_5, datab=>RxDiv(10), 
      datac=>RxDiv(9), datad=>RxDiv(8));
   ix15376z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f2") 
       port map ( combout=>nx15376z1, dataa=>RxErr_EXMPLR316, datab=>
      RxRDY_EXMPLR317, datac=>RxFSM_6);
   ix11364z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c40") 
       port map ( combout=>nx11364z1, dataa=>TopRx, datab=>RxBitCnt(0), 
      datac=>RxFSM_3, datad=>nx34394z2);
   ix10367z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"60aa") 
       port map ( combout=>nx10367z1, dataa=>RxBitCnt(1), datab=>RxBitCnt(0), 
      datac=>nx34394z2, datad=>not_rtlc17_X_0_n360);
   ix9370z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a8a") 
       port map ( combout=>nx9370z1, dataa=>RxBitCnt(2), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx9370z2);
   ix8373z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ca0a") 
       port map ( combout=>nx8373z1, dataa=>RxBitCnt(3), datab=>nx34394z2, 
      datac=>not_rtlc17_X_0_n360, datad=>nx8373z2);
   ix48926z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ce6c") 
       port map ( combout=>nx48926z1, dataa=>TopTx, datab=>TxBitCnt(0), 
      datac=>TxFSM(1), datad=>TxFSM(0));
   ix49923z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"09aa") 
       port map ( combout=>nx49923z1, dataa=>TxBitCnt(1), datab=>TxBitCnt(0), 
      datac=>nx50920z2, datad=>nx51917z2);
   ix50920z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2a1a") 
       port map ( combout=>nx50920z1, dataa=>TxBitCnt(2), datab=>nx50920z2, 
      datac=>nx51917z2, datad=>nx50920z3);
   ix51917z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eea2") 
       port map ( combout=>nx51917z1, dataa=>TxBitCnt(3), datab=>nx51917z2, 
      datac=>nx51917z3, datad=>nx51917z4);
   ix28624z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx28624z1, dataa=>nx61140z1, datab=>
      Tx_Reg_14n6ss1_1, datac=>nx31615z2);
   ix29621z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx29621z1, dataa=>nx28624z2, datab=>
      Tx_Reg_14n6ss1_2, datac=>nx31615z2);
   ix30618z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx30618z1, dataa=>nx29621z2, datab=>
      Tx_Reg_14n6ss1_3, datac=>nx31615z2);
   ix31615z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"05cc") 
       port map ( combout=>nx31615z1, dataa=>Din(3), datab=>nx30618z2, datac
      =>TxFSM(1), datad=>nx31615z2);
   ix61812z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cca") 
       port map ( combout=>p_NOT_rtlcn2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix9370z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx9370z2, dataa=>RxBitCnt(1), datab=>RxBitCnt(0)
   );
   ix51917z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx51917z3, dataa=>TxBitCnt(2), datab=>TxBitCnt(1), 
      datac=>TxBitCnt(0));
   ix50920z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx50920z3, dataa=>TxBitCnt(1), datab=>TxBitCnt(0)
   );
   ix51917z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51917z2, dataa=>TopTx, datab=>TxFSM(1), datac=>
      TxFSM(0));
   ix4608z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c1c3") 
       port map ( combout=>nx4608z1, dataa=>TxFSM(1), datab=>TxFSM(0), datac
      =>nx4608z2, datad=>nx4608z3);
   ix30017z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx30017z1, dataa=>TopRx, datab=>not_Rx_r, datac=>
      RxFSM_5);
   ix13547z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx13547z2, dataa=>RxBitCnt(3), datab=>RxBitCnt(2), 
      datac=>RxBitCnt(1), datad=>RxBitCnt(0));
   ix32400z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eaaa") 
       port map ( combout=>nx32400z1, dataa=>nx32400z2, datab=>nx32400z6, 
      datac=>nx32400z7, datad=>nx32400z8);
   ix34394z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx34394z3, dataa=>nx34394z4, datab=>nx34394z5, 
      datac=>nx34394z9, datad=>nx34394z10);
   ix34394z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx34394z1, dataa=>nx34394z2, datab=>nx34394z3);
   ix11553z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx11553z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix16538z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2323") 
       port map ( combout=>nx16538z1, dataa=>not_Rx_r, datab=>RxFSM_6, datac
      =>RxFSM_5);
   ix14544z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ecec") 
       port map ( combout=>nx14544z1, dataa=>not_Rx_r, datab=>RxFSM_3, datac
      =>RxFSM_1);
   ix13547z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx13547z1, dataa=>RxFSM_2, datab=>nx13547z2);
   ix15541z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f2f0") 
       port map ( combout=>nx15541z1, dataa=>not_Rx_r, datab=>nx34394z2, 
      datac=>nx15541z2, datad=>nx15541z3);
   ix54636z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx54636z1, dataa=>TopRx, datab=>RxFSM_3);
   ix8373z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8b8b") 
       port map ( combout=>not_rtlc17_X_0_n360, dataa=>TopRx, datab=>RxFSM_3, 
      datac=>nx34394z2);
   ix31615z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"00ca") 
       port map ( combout=>nx31615z2, dataa=>LD, datab=>TopTx, datac=>
      TxFSM(1), datad=>TxFSM(0));
   ix50920z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx50920z2, dataa=>TopTx, datab=>TxFSM(1));
   ix61140z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f8") 
       port map ( combout=>p_Tx_Reg_14n6ss1_0, dataa=>nx61140z1, datab=>
      TxFSM(1), datac=>TxFSM(0));
   ix28624z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>Tx_Reg_14n6ss1_1, dataa=>Din(3), datab=>nx28624z2, 
      datac=>TxFSM(1));
   ix5605z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6c6c") 
       port map ( combout=>nx5605z1, dataa=>TxFSM(0), datab=>TxFSM(1), datac
      =>TopTx);
   ix57064z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>NOT_Rx, dataa=>p_RXFLEX, datab=>p_nrst_int_dup_76
   );
end RTL_unfold_1210 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (15 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (15 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_16_0 ;

architecture IMPLEMENTATION of modgen_counter_16_0 is 
   signal nx64508z1, nx22081z3, nx22081z5, nx22081z7, nx22081z9, nx22081z11, 
      nx22081z13, nx22081z15, nx22081z17, nx22081z19, nx22081z21, nx22081z23, 
      nx22081z25, nx22081z27, nx22081z29, nx22081z31, nx51271z1, nx22081z30, 
      nx52268z1, nx22081z28, nx53265z1, nx22081z26, nx54262z1, nx22081z24, 
      nx55259z1, nx22081z22, nx56256z1, nx22081z20, nx57253z1, nx22081z18, 
      nx58250z1, nx22081z16, nx59247z1, nx22081z14, nx60244z1, nx22081z12, 
      nx17096z1, nx22081z10, nx18093z1, nx22081z8, nx19090z1, nx22081z6, 
      nx20087z1, nx22081z4, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= nx64508z1 ;
   q(14) <= nx22081z3 ;
   q(13) <= nx22081z5 ;
   q(12) <= nx22081z7 ;
   q(11) <= nx22081z9 ;
   q(10) <= nx22081z11 ;
   q(9) <= nx22081z13 ;
   q(8) <= nx22081z15 ;
   q(7) <= nx22081z17 ;
   q(6) <= nx22081z19 ;
   q(5) <= nx22081z21 ;
   q(4) <= nx22081z23 ;
   q(3) <= nx22081z25 ;
   q(2) <= nx22081z27 ;
   q(1) <= nx22081z29 ;
   q(0) <= nx22081z31 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx22081z13, datain=>
      nx60244z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx22081z15, datain=>
      nx59247z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx22081z17, datain=>
      nx58250z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx22081z19, datain=>
      nx57253z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx22081z21, datain=>
      nx56256z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx22081z23, datain=>
      nx55259z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx22081z25, datain=>
      nx54262z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx22081z27, datain=>
      nx53265z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>nx64508z1, datain=>
      nx22081z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>nx22081z3, datain=>
      nx21084z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>nx22081z5, datain=>
      nx20087z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx22081z7, datain=>
      nx19090z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx22081z9, datain=>
      nx18093z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx22081z11, datain=>
      nx17096z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx22081z29, datain=>
      nx52268z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx22081z31, datain=>
      nx51271z1, clk=>clock, ena=>clk_en, sclr=>sclear);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>nx22081z3, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z4, dataa=>nx22081z5, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z6, dataa=>nx22081z7, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z8, dataa=>nx22081z9, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z10, dataa=>nx22081z11, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z26, dataa=>nx22081z27, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z28);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z12, dataa=>nx22081z13, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z28, dataa=>nx22081z29, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z30);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z14, dataa=>nx22081z15, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z16, dataa=>nx22081z17, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z18);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z18, dataa=>nx22081z19, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z20);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z20, dataa=>nx22081z21, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z22);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z22, dataa=>nx22081z23, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z24);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z24, dataa=>nx22081z25, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z26);
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>nx64508z1, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z30, dataa=>nx22081z31, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity uw_uart is 
   port (
      CLK : IN std_logic ;
      RST : IN std_logic ;
      RXFLEX : IN std_logic ;
      datain : OUT std_logic_vector (7 DOWNTO 0) ;
      TXFLEX : OUT std_logic ;
      o_pixavail : OUT std_logic ;
      p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
      p_NOT_rtlcn2 : OUT std_logic ;
      p_RData_0 : OUT std_logic ;
      p_nrst_int : IN std_logic) ;
end uw_uart ;

architecture main of uw_uart is 
   component UARTS
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         Din : IN std_logic_vector (7 DOWNTO 0) ;
         LD : IN std_logic ;
         Rx : IN std_logic ;
         Baud : IN std_logic ;
         Dout : OUT std_logic_vector (7 DOWNTO 0) ;
         Tx : OUT std_logic ;
         TxBusy : OUT std_logic ;
         RxErr : OUT std_logic ;
         RxRDY : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_RXFLEX : IN std_logic ;
         p_nrst_int_dup_76 : IN std_logic) ;
   end component ;
   component modgen_counter_16_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (15 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (15 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal o_pixavail_EXMPLR324: std_logic_vector (7 DOWNTO 7) ;
   
   signal SDin: std_logic_vector (7 DOWNTO 0) ;
   
   signal RxErr, RxRDY, sdout_3: std_logic ;
   
   signal RData: std_logic_vector (7 DOWNTO 0) ;
   
   signal State, dsend, mdata_3, ack: std_logic ;
   
   signal waitcount: std_logic_vector (15 DOWNTO 0) ;
   
   signal LD_SDOUT, RawRx, nx46385z1, nx33354z2, nx42856z2, nx46385z6, 
      nx33354z1, nx39480z1, nx33468z1, PWR, nx36748z1, nx42856z1, nx54369z1, 
      nx46385z2, nx46385z3, nx46385z4, nx46385z5, nx36748z2: std_logic ;
   
   signal DANGLING : std_logic_vector (30 downto 0 );

begin
   o_pixavail <= o_pixavail_EXMPLR324(7) ;
   p_RData_0 <= RData(0) ;
   u_UARTS : UARTS port map ( CLK=>CLK, RST=>RST, Din(7)=>DANGLING(0), 
      Din(6)=>DANGLING(1), Din(5)=>DANGLING(2), Din(4)=>DANGLING(3), Din(3)
      =>sdout_3, Din(2)=>DANGLING(4), Din(1)=>DANGLING(5), Din(0)=>DANGLING(
      6), LD=>LD_SDOUT, Rx=>RawRx, Baud=>DANGLING(7), Dout(7)=>SDin(7), 
      Dout(6)=>SDin(6), Dout(5)=>SDin(5), Dout(4)=>SDin(4), Dout(3)=>SDin(3), 
      Dout(2)=>SDin(2), Dout(1)=>SDin(1), Dout(0)=>SDin(0), Tx=>DANGLING(8), 
      TxBusy=>DANGLING(9), RxErr=>RxErr, RxRDY=>RxRDY, p_Tx_Reg_14n6ss1_0=>
      p_Tx_Reg_14n6ss1_0, p_NOT_rtlcn2=>p_NOT_rtlcn2, p_RXFLEX=>RXFLEX, 
      p_nrst_int_dup_76=>p_nrst_int);
   modgen_counter_waitcount : modgen_counter_16_0 port map ( clock=>CLK, 
      q(15)=>waitcount(15), q(14)=>waitcount(14), q(13)=>waitcount(13), 
      q(12)=>waitcount(12), q(11)=>waitcount(11), q(10)=>waitcount(10), q(9)
      =>waitcount(9), q(8)=>waitcount(8), q(7)=>waitcount(7), q(6)=>
      waitcount(6), q(5)=>waitcount(5), q(4)=>waitcount(4), q(3)=>
      waitcount(3), q(2)=>waitcount(2), q(1)=>waitcount(1), q(0)=>
      waitcount(0), clk_en=>nx33354z1, aclear=>DANGLING(10), sload=>DANGLING
      (11), data(15)=>DANGLING(12), data(14)=>DANGLING(13), data(13)=>
      DANGLING(14), data(12)=>DANGLING(15), data(11)=>DANGLING(16), data(10)
      =>DANGLING(17), data(9)=>DANGLING(18), data(8)=>DANGLING(19), data(7)
      =>DANGLING(20), data(6)=>DANGLING(21), data(5)=>DANGLING(22), data(4)
      =>DANGLING(23), data(3)=>DANGLING(24), data(2)=>DANGLING(25), data(1)
      =>DANGLING(26), data(0)=>DANGLING(27), aset=>DANGLING(28), sclear=>
      nx33354z2, updn=>DANGLING(29), cnt_en=>DANGLING(30));
   PWR <= '1';
   reg_sdout_3 : cycloneii_lcell_ff port map ( regout=>sdout_3, datain=>
      nx42856z1, clk=>CLK);
   reg_mdata_3 : cycloneii_lcell_ff port map ( regout=>mdata_3, datain=>
      nx36748z1, clk=>CLK);
   reg_dsend : cycloneii_lcell_ff port map ( regout=>dsend, datain=>
      nx46385z1, sdata=>RxErr, clk=>CLK, ena=>PWR, sclr=>RST, sload=>
      nx46385z6);
   reg_ack : cycloneii_lcell_ff port map ( regout=>ack, datain=>nx39480z1, 
      clk=>CLK, sclr=>RST);
   reg_State : cycloneii_lcell_ff port map ( regout=>State, datain=>
      nx42856z2, clk=>CLK, aclr=>RST);
   reg_RData_7 : cycloneii_lcell_ff port map ( regout=>RData(7), datain=>
      SDin(7), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_6 : cycloneii_lcell_ff port map ( regout=>RData(6), datain=>
      SDin(6), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_5 : cycloneii_lcell_ff port map ( regout=>RData(5), datain=>
      SDin(5), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_4 : cycloneii_lcell_ff port map ( regout=>RData(4), datain=>
      SDin(4), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_3 : cycloneii_lcell_ff port map ( regout=>RData(3), datain=>
      SDin(3), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_2 : cycloneii_lcell_ff port map ( regout=>RData(2), datain=>
      SDin(2), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_1 : cycloneii_lcell_ff port map ( regout=>RData(1), datain=>
      SDin(1), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_RData_0 : cycloneii_lcell_ff port map ( regout=>RData(0), datain=>
      SDin(0), clk=>CLK, ena=>RxRDY, aclr=>RST);
   reg_LD_SDOUT : cycloneii_lcell_ff port map ( regout=>LD_SDOUT, datain=>
      nx54369z1, clk=>CLK, aclr=>RST);
   reg_CharAvail : cycloneii_lcell_ff port map ( regout=>
      o_pixavail_EXMPLR324(7), datain=>nx33468z1, clk=>CLK, aclr=>RST);
   ix42856z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"d8f0") 
       port map ( combout=>nx42856z1, dataa=>nx42856z2, datab=>mdata_3, 
      datac=>sdout_3, datad=>p_nrst_int);
   ix36748z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"72f0") 
       port map ( combout=>nx36748z1, dataa=>nx36748z2, datab=>nx46385z6, 
      datac=>mdata_3, datad=>p_nrst_int);
   ix33354z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"efef") 
       port map ( combout=>nx33354z1, dataa=>ack, datab=>
      o_pixavail_EXMPLR324(7), datac=>p_nrst_int);
   ix33354z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx33354z2, dataa=>nx46385z1, datab=>p_nrst_int);
   ix36748z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe04") 
       port map ( combout=>nx36748z2, dataa=>o_pixavail_EXMPLR324(7), datab
      =>RxErr, datac=>ack, datad=>nx46385z1);
   ix46385z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx46385z5, dataa=>waitcount(3), datab=>
      waitcount(2), datac=>waitcount(1), datad=>waitcount(0));
   ix46385z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"0040") 
       port map ( combout=>nx46385z4, dataa=>waitcount(7), datab=>
      waitcount(6), datac=>waitcount(5), datad=>waitcount(4));
   ix46385z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx46385z3, dataa=>waitcount(11), datab=>
      waitcount(10), datac=>waitcount(9), datad=>waitcount(8));
   ix46385z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx46385z2, dataa=>waitcount(15), datab=>
      waitcount(14), datac=>waitcount(13), datad=>waitcount(12));
   ix54369z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5454") 
       port map ( combout=>nx54369z1, dataa=>State, datab=>dsend, datac=>
      LD_SDOUT);
   ix33468z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx33468z1, dataa=>o_pixavail_EXMPLR324(7), datab
      =>RxRDY);
   ix39480z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0e0e") 
       port map ( combout=>nx39480z1, dataa=>o_pixavail_EXMPLR324(7), datab
      =>ack, datac=>nx46385z1);
   ix46385z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"1111") 
       port map ( combout=>nx46385z6, dataa=>o_pixavail_EXMPLR324(7), datab
      =>ack);
   ix42856z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx42856z2, dataa=>State, datab=>dsend);
   ix46385z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx46385z1, dataa=>nx46385z2, datab=>nx46385z3, 
      datac=>nx46385z4, datad=>nx46385z5);
   ix40426z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(0), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(0));
   ix41423z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(1), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(1));
   ix42420z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(2), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(2));
   ix43417z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(3), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(3));
   ix44414z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(4), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(4));
   ix45411z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(5), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(5));
   ix46408z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(6), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(6));
   ix47405z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>datain(7), dataa=>o_pixavail_EXMPLR324(7), datab
      =>RData(7));
   ix29443z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>RawRx, dataa=>RXFLEX, datab=>p_nrst_int);
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity addsub_9_0 is 
   port (
      mode : IN std_logic ;
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic ;
      px64 : IN std_logic) ;
end addsub_9_0 ;

architecture IMPLEMENTATION of addsub_9_0 is 
   signal nx45949z32, nx45949z31, nx45949z28, nx45949z27, nx45949z24, 
      nx45949z23, nx45949z20, nx45949z19, nx45949z16, nx45949z15, nx45949z12, 
      nx45949z11, nx45949z8, nx45949z7, nx45949z4, nx45949z3, nx45949z35, 
      nx_addsub_9_0_vcc_net: std_logic ;

begin
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>nx45949z4, datab=>
      a(7), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z7);
   nx_addsub_9_0_vcc_net <= '1';
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z7, dataa=>nx45949z8, datab=>
      a(6), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z11);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z11, dataa=>nx45949z12, datab
      =>a(5), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z15);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z15, dataa=>nx45949z16, datab
      =>a(4), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z19);
   ix45949z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z19, dataa=>nx45949z20, datab
      =>a(3), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z23);
   ix45949z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z23, dataa=>nx45949z24, datab
      =>a(2), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z27);
   ix45949z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z27, dataa=>nx45949z28, datab
      =>a(1), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z31);
   ix45949z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx45949z31, dataa=>nx45949z32, datab
      =>a(0), datad=>nx_addsub_9_0_vcc_net, cin=>nx45949z35);
   ix45949z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"0055") 
       port map ( cout=>nx45949z35, dataa=>px64, datad=>
      nx_addsub_9_0_vcc_net);
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>px64, datad=>nx_addsub_9_0_vcc_net, 
      cin=>nx45949z3);
   ix45949z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z28, dataa=>b(1), datab=>px64);
   ix45949z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z32, dataa=>b(0), datab=>px64);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z4, dataa=>b(7), datab=>px64);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z8, dataa=>b(6), datab=>px64);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z12, dataa=>b(5), datab=>px64);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z16, dataa=>b(4), datab=>px64);
   ix45949z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z20, dataa=>b(3), datab=>px64);
   ix45949z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z24, dataa=>b(2), datab=>px64);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_8_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (7 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (7 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx57253z3, nx1041z1, nx58250z3, nx58250z5, nx58250z7, nx58250z9, 
      nx58250z11, nx58250z13, nx58250z15, nx51271z1, nx58250z14, nx52268z1, 
      nx58250z12, nx53265z1, nx58250z10, nx54262z1, nx58250z8, nx55259z1, 
      nx58250z6, nx56256z1, nx58250z4, nx57253z1, nx58250z2, nx58250z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   q(7) <= nx1041z1 ;
   q(6) <= nx58250z3 ;
   q(5) <= nx58250z5 ;
   q(4) <= nx58250z7 ;
   q(3) <= nx58250z9 ;
   q(2) <= nx58250z11 ;
   q(1) <= nx58250z13 ;
   q(0) <= nx58250z15 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx1041z1, datain=>
      nx58250z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx58250z3, datain=>
      nx57253z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx58250z5, datain=>
      nx56256z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx58250z7, datain=>
      nx55259z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx58250z9, datain=>
      nx54262z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx58250z11, datain=>
      nx53265z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx58250z13, datain=>
      nx52268z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx58250z15, datain=>
      nx51271z1, clk=>clock, ena=>nx57253z3, aclr=>aclear, sclr=>sclear);
   ix58250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx58250z10, dataa=>nx58250z11, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z12);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, dataa=>nx1041z1, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx58250z2);
   ix58250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx58250z2, dataa=>nx58250z3, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z4);
   ix58250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx58250z12, dataa=>nx58250z13, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z14);
   ix58250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx58250z4, dataa=>nx58250z5, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z6);
   ix58250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx58250z6, dataa=>nx58250z7, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z8);
   ix58250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx58250z8, dataa=>nx58250z9, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx58250z10);
   ix58250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx58250z14, dataa=>nx58250z15, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix57253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx57253z3, dataa=>clk_en, datab=>sclear, datac=>
      cnt_en);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_0 ;

architecture IMPLEMENTATION of sub_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_sub_8_0_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z4);
   nx_sub_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_8_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_8_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_8_1 ;

architecture IMPLEMENTATION of sub_8_1 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_sub_8_1_vcc_net: std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z4);
   nx_sub_8_1_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z13);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z19);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_sub_8_1_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_8_1_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_8_1_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_8_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (7 DOWNTO 0) ;
      b : IN std_logic_vector (7 DOWNTO 0) ;
      d : OUT std_logic_vector (7 DOWNTO 0) ;
      cout : OUT std_logic ;
      p_i_valid : IN std_logic ;
      p_RData_0 : IN std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx44952z23, nx_add_8_0_vcc_net: 
   std_logic ;

begin
   ix44952z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx23445z2, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z4);
   nx_add_8_0_vcc_net <= '1';
   ix44952z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx44952z4, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z7);
   ix44952z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx44952z7, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z10);
   ix44952z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx44952z10, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z13);
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx44952z13, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z16);
   ix44952z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx44952z16, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z19);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"00aa") 
       port map ( cout=>nx44952z23, dataa=>a(0), datad=>nx_add_8_0_vcc_net);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"7880",
         sum_lutc_input => "cin") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>p_RData_0, datab=>
      p_i_valid, datad=>nx_add_8_0_vcc_net, cin=>nx44952z23);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_0 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_0 ;

architecture IMPLEMENTATION of ram_dq_8_0 is 
   signal nx64056z1, rd_ena1_EXMPLR357: std_logic ;

begin
   ix64056z44883 : altsyncram
      generic map (width_a => 8,
         widthad_a => 4,
         numwords_a => 16,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 4,
         numwords_b => 16,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "DUAL_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "OLD_DATA"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(3)=>addr1(3), address_a(2)=>addr1(2), address_a(1)=>addr1(1), 
      address_a(0)=>addr1(0), wren_a=>wr_ena1, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR357, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR357 <= '1';
   nx64056z1 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_1 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_1 ;

architecture IMPLEMENTATION of ram_dq_8_1 is 
   signal nx64056z1, rd_ena1_EXMPLR383: std_logic ;

begin
   ix64056z44884 : altsyncram
      generic map (width_a => 8,
         widthad_a => 4,
         numwords_a => 16,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 4,
         numwords_b => 16,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "DUAL_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "OLD_DATA"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(3)=>addr1(3), address_a(2)=>addr1(2), address_a(1)=>addr1(1), 
      address_a(0)=>addr1(0), wren_a=>wr_ena1, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR383, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR383 <= '1';
   nx64056z1 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity ram_dq_8_2 is 
   port (
      wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
      rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
      addr1 : IN std_logic_vector (3 DOWNTO 0) ;
      wr_clk1 : IN std_logic ;
      rd_clk1 : IN std_logic ;
      wr_ena1 : IN std_logic ;
      rd_ena1 : IN std_logic ;
      ena1 : IN std_logic ;
      rst1 : IN std_logic ;
      regce1 : IN std_logic) ;
end ram_dq_8_2 ;

architecture IMPLEMENTATION of ram_dq_8_2 is 
   signal nx64056z1, rd_ena1_EXMPLR409: std_logic ;

begin
   ix64056z44885 : altsyncram
      generic map (width_a => 8,
         widthad_a => 4,
         numwords_a => 16,
         outdata_reg_a => "UNREGISTERED",
         address_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         byteena_aclr_a => "NONE",
         width_byteena_a => 1,
         width_b => 8,
         widthad_b => 4,
         numwords_b => 16,
         rdcontrol_reg_b => "CLOCK1",
         address_reg_b => "CLOCK1",
         outdata_reg_b => "UNREGISTERED",
         outdata_aclr_b => "NONE",
         rdcontrol_aclr_b => "NONE",
         indata_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         byteena_reg_b => "CLOCK1",
         indata_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         byteena_aclr_b => "NONE",
         width_byteena_b => 1,
         address_aclr_b => "NONE",
         operation_mode => "DUAL_PORT",
         byte_size => 8,
         read_during_write_mode_mixed_ports => "OLD_DATA"
         ,
         ram_block_type => "AUTO",
         init_file => "UNUSED",
         init_file_layout => "UNUSED",
         maximum_depth => 0,
         intended_device_family => "Stratix",
         lpm_hint => "UNUSED",
         lpm_type => "altsyncram") 
       port map ( data_a(7)=>wr_data1(7), data_a(6)=>wr_data1(6), data_a(5)
      =>wr_data1(5), data_a(4)=>wr_data1(4), data_a(3)=>wr_data1(3), 
      data_a(2)=>wr_data1(2), data_a(1)=>wr_data1(1), data_a(0)=>wr_data1(0), 
      address_a(3)=>addr1(3), address_a(2)=>addr1(2), address_a(1)=>addr1(1), 
      address_a(0)=>addr1(0), wren_a=>wr_ena1, clock0=>wr_clk1, clocken0=>
      rd_ena1_EXMPLR409, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR409 <= '1';
   nx64056z1 <= '1';
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity lab3 is 
   port (
      i_clock : IN std_logic ;
      i_valid : IN std_logic ;
      i_input : IN std_logic_vector (7 DOWNTO 0) ;
      i_reset : IN std_logic ;
      o_output : OUT std_logic_vector (7 DOWNTO 0) ;
      p_RData_0 : IN std_logic ;
      p_nrst_int : IN std_logic) ;
end lab3 ;

architecture main of lab3 is 
   component addsub_9_0
      port (
         mode : IN std_logic ;
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic ;
         px64 : IN std_logic) ;
   end component ;
   component modgen_counter_8_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (7 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (7 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component sub_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component sub_8_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_8_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (7 DOWNTO 0) ;
         b : IN std_logic_vector (7 DOWNTO 0) ;
         d : OUT std_logic_vector (7 DOWNTO 0) ;
         cout : OUT std_logic ;
         p_i_valid : IN std_logic ;
         p_RData_0 : IN std_logic) ;
   end component ;
   component ram_dq_8_0
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_1
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   component ram_dq_8_2
      port (
         wr_data1 : IN std_logic_vector (7 DOWNTO 0) ;
         rd_data1 : OUT std_logic_vector (7 DOWNTO 0) ;
         addr1 : IN std_logic_vector (3 DOWNTO 0) ;
         wr_clk1 : IN std_logic ;
         rd_clk1 : IN std_logic ;
         wr_ena1 : IN std_logic ;
         rd_ena1 : IN std_logic ;
         ena1 : IN std_logic ;
         rst1 : IN std_logic ;
         regce1 : IN std_logic) ;
   end component ;
   signal x_pos: std_logic_vector (3 DOWNTO 0) ;
   
   signal y_pos: std_logic_vector (3 DOWNTO 0) ;
   
   signal i: std_logic_vector (2 DOWNTO 0) ;
   
   signal end_of_input: std_logic ;
   
   signal mem_1_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_2_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal mem_3_q: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx3163z8, nx3163z49, nx3163z50, nx3163z51, nx3163z52, nx3163z53, 
      nx3163z54, nx3163z55: std_logic ;
   
   signal rtlc4n0_4n1s2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx3163z11, nx3163z15, nx3163z19, nx3163z23, nx3163z27, nx3163z31, 
      nx3163z35, nx3163z39, nx3163z12, nx3163z16, nx3163z20, nx3163z24, 
      nx3163z28, nx3163z32, nx3163z36, nx3163z40, nx3163z59, nx3163z6, 
      nx3163z4, nx3163z7: std_logic ;
   
   signal rtlc4n0_4n1s3f1: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx3163z10, nx3163z14, nx3163z18, nx3163z22, nx3163z26, nx3163z30, 
      nx3163z34, nx3163z38, nx3163z76, nx3163z1, nx3163z72, nx3163z57, 
      nx46973z1, nx3163z3: std_logic ;
   
   signal rtlc4n0_4n1s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx35397z1, nx51243z1, nx54113z1, nx12249z1, nx13246z1, nx14243z1, 
      modgen_counter_y_pos_NOT_a_0, nx35397z2, nx43982z1, nx44979z1, 
      nx45976z1, modgen_counter_x_pos_NOT_a_0, nx53087z2, nx53087z1, 
      nx3163z58, nx3163z73, nx3163z74, nx3163z75, nx3163z60, nx3163z65, 
      nx3163z2, nx3163z56, nx3163z77, nx3163z5, nx3163z70, nx3163z71, 
      nx53066z1, nx54084z1, NOT_i_2: std_logic ;
   
   signal DANGLING : std_logic_vector (33 downto 0 );

begin
   ix3163z30602 : addsub_9_0 port map ( mode=>DANGLING(0), cin=>i(0), a(8)=>
      DANGLING(1), a(7)=>rtlc4n0_4n1s3f1(7), a(6)=>rtlc4n0_4n1s3f1(6), a(5)
      =>rtlc4n0_4n1s3f1(5), a(4)=>rtlc4n0_4n1s3f1(4), a(3)=>
      rtlc4n0_4n1s3f1(3), a(2)=>rtlc4n0_4n1s3f1(2), a(1)=>rtlc4n0_4n1s3f1(1), 
      a(0)=>rtlc4n0_4n1s3f1(0), b(8)=>DANGLING(2), b(7)=>rtlc4n0_4n1s3f2(7), 
      b(6)=>rtlc4n0_4n1s3f2(6), b(5)=>rtlc4n0_4n1s3f2(5), b(4)=>
      rtlc4n0_4n1s3f2(4), b(3)=>rtlc4n0_4n1s3f2(3), b(2)=>rtlc4n0_4n1s3f2(2), 
      b(1)=>rtlc4n0_4n1s3f2(1), b(0)=>rtlc4n0_4n1s3f2(0), d(8)=>nx3163z59, 
      d(7)=>nx3163z8, d(6)=>nx3163z49, d(5)=>nx3163z50, d(4)=>nx3163z51, 
      d(3)=>nx3163z52, d(2)=>nx3163z53, d(1)=>nx3163z54, d(0)=>nx3163z55, 
      cout=>DANGLING(3), px64=>nx54084z1);
   modgen_counter_o_output : modgen_counter_8_0 port map ( clock=>i_clock, 
      q(7)=>o_output(7), q(6)=>o_output(6), q(5)=>o_output(5), q(4)=>
      o_output(4), q(3)=>o_output(3), q(2)=>o_output(2), q(1)=>o_output(1), 
      q(0)=>o_output(0), clk_en=>nx3163z1, aclear=>i_reset, sload=>DANGLING(
      4), data(7)=>DANGLING(5), data(6)=>DANGLING(6), data(5)=>DANGLING(7), 
      data(4)=>DANGLING(8), data(3)=>DANGLING(9), data(2)=>DANGLING(10), 
      data(1)=>DANGLING(11), data(0)=>DANGLING(12), aset=>DANGLING(13), 
      sclear=>nx3163z76, updn=>DANGLING(14), cnt_en=>nx3163z72);
   ix3163z19322 : sub_8_0 port map ( cin=>DANGLING(15), a(7)=>mem_1_q(7), 
      a(6)=>mem_1_q(6), a(5)=>mem_1_q(5), a(4)=>mem_1_q(4), a(3)=>mem_1_q(3), 
      a(2)=>mem_1_q(2), a(1)=>mem_1_q(1), a(0)=>mem_1_q(0), b(7)=>mem_2_q(7), 
      b(6)=>mem_2_q(6), b(5)=>mem_2_q(5), b(4)=>mem_2_q(4), b(3)=>mem_2_q(3), 
      b(2)=>mem_2_q(2), b(1)=>mem_2_q(1), b(0)=>mem_2_q(0), d(7)=>nx3163z12, 
      d(6)=>nx3163z16, d(5)=>nx3163z20, d(4)=>nx3163z24, d(3)=>nx3163z28, 
      d(2)=>nx3163z32, d(1)=>nx3163z36, d(0)=>nx3163z40, cout=>nx3163z6);
   ix3163z19319 : sub_8_1 port map ( cin=>DANGLING(16), a(7)=>mem_3_q(7), 
      a(6)=>mem_3_q(6), a(5)=>mem_3_q(5), a(4)=>mem_3_q(4), a(3)=>mem_3_q(3), 
      a(2)=>mem_3_q(2), a(1)=>mem_3_q(1), a(0)=>mem_3_q(0), b(7)=>mem_1_q(7), 
      b(6)=>mem_1_q(6), b(5)=>mem_1_q(5), b(4)=>mem_1_q(4), b(3)=>mem_1_q(3), 
      b(2)=>mem_1_q(2), b(1)=>mem_1_q(1), b(0)=>mem_1_q(0), d(7)=>nx3163z11, 
      d(6)=>nx3163z15, d(5)=>nx3163z19, d(4)=>nx3163z23, d(3)=>nx3163z27, 
      d(2)=>nx3163z31, d(1)=>nx3163z35, d(0)=>nx3163z39, cout=>nx3163z4);
   ix3163z60014 : add_8_0 port map ( cin=>DANGLING(17), a(7)=>nx3163z8, a(6)
      =>nx3163z49, a(5)=>nx3163z50, a(4)=>nx3163z51, a(3)=>nx3163z52, a(2)=>
      nx3163z53, a(1)=>nx3163z54, a(0)=>nx3163z55, b(7)=>i_input(7), b(6)=>
      i_input(6), b(5)=>i_input(5), b(4)=>i_input(4), b(3)=>i_input(3), b(2)
      =>i_input(2), b(1)=>i_input(1), b(0)=>DANGLING(18), d=>rtlc4n0_4n1s2, 
      cout=>nx3163z7, p_i_valid=>i_valid, p_RData_0=>p_RData_0);
   mem : ram_dq_8_0 port map ( wr_data1(7)=>i_input(7), wr_data1(6)=>
      i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>i_input(4), 
      wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), wr_data1(1)=>
      i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>mem_1_q(7), 
      rd_data1(6)=>mem_1_q(6), rd_data1(5)=>mem_1_q(5), rd_data1(4)=>
      mem_1_q(4), rd_data1(3)=>mem_1_q(3), rd_data1(2)=>mem_1_q(2), 
      rd_data1(1)=>mem_1_q(1), rd_data1(0)=>mem_1_q(0), addr1(3)=>x_pos(3), 
      addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>
      i_clock, rd_clk1=>DANGLING(19), wr_ena1=>nx51243z1, rd_ena1=>DANGLING(
      20), ena1=>DANGLING(21), rst1=>DANGLING(22), regce1=>DANGLING(23));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>i_input(7), wr_data1(6)=>
      i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>i_input(4), 
      wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), wr_data1(1)=>
      i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>mem_2_q(7), 
      rd_data1(6)=>mem_2_q(6), rd_data1(5)=>mem_2_q(5), rd_data1(4)=>
      mem_2_q(4), rd_data1(3)=>mem_2_q(3), rd_data1(2)=>mem_2_q(2), 
      rd_data1(1)=>mem_2_q(1), rd_data1(0)=>mem_2_q(0), addr1(3)=>x_pos(3), 
      addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>
      i_clock, rd_clk1=>DANGLING(24), wr_ena1=>nx3163z3, rd_ena1=>DANGLING(
      25), ena1=>DANGLING(26), rst1=>DANGLING(27), regce1=>DANGLING(28));
   mem_1 : ram_dq_8_2 port map ( wr_data1(7)=>i_input(7), wr_data1(6)=>
      i_input(6), wr_data1(5)=>i_input(5), wr_data1(4)=>i_input(4), 
      wr_data1(3)=>i_input(3), wr_data1(2)=>i_input(2), wr_data1(1)=>
      i_input(1), wr_data1(0)=>i_input(0), rd_data1(7)=>mem_3_q(7), 
      rd_data1(6)=>mem_3_q(6), rd_data1(5)=>mem_3_q(5), rd_data1(4)=>
      mem_3_q(4), rd_data1(3)=>mem_3_q(3), rd_data1(2)=>mem_3_q(2), 
      rd_data1(1)=>mem_3_q(1), rd_data1(0)=>mem_3_q(0), addr1(3)=>x_pos(3), 
      addr1(2)=>x_pos(2), addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>
      i_clock, rd_clk1=>DANGLING(29), wr_ena1=>nx54113z1, rd_ena1=>DANGLING(
      30), ena1=>DANGLING(31), rst1=>DANGLING(32), regce1=>DANGLING(33));
   modgen_counter_y_pos_NOT_a_0 <= NOT y_pos(0);
   modgen_counter_x_pos_NOT_a_0 <= NOT x_pos(0);
   i(0) <= NOT nx54084z1;
   NOT_i_2 <= NOT i(2);
   reg_new_number_set : cycloneii_lcell_ff port map ( regout=>nx3163z71, 
      datain=>nx53066z1, clk=>i_clock, aclr=>nx46973z1);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>i(1), clk=>
      i_clock, ena=>nx53087z1, aclr=>nx46973z1);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>i(0), clk=>
      i_clock, ena=>nx53087z1, aclr=>nx46973z1);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>nx54084z1, datain=>
      NOT_i_2, clk=>i_clock, ena=>nx53087z1, aclr=>nx46973z1);
   reg_end_of_input : cycloneii_lcell_ff port map ( regout=>end_of_input, 
      datain=>nx35397z1, clk=>i_clock, aclr=>nx46973z1);
   modgen_counter_y_pos_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      y_pos(3), datain=>nx12249z1, clk=>i_clock, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      y_pos(2), datain=>nx13246z1, clk=>i_clock, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      y_pos(1), datain=>nx14243z1, clk=>i_clock, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      y_pos(0), datain=>modgen_counter_y_pos_NOT_a_0, clk=>i_clock, ena=>
      nx53087z1, aclr=>nx46973z1);
   modgen_counter_x_pos_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      x_pos(3), datain=>nx43982z1, clk=>i_clock, ena=>i_valid, aclr=>
      nx46973z1);
   modgen_counter_x_pos_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      x_pos(2), datain=>nx44979z1, clk=>i_clock, ena=>i_valid, aclr=>
      nx46973z1);
   modgen_counter_x_pos_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      x_pos(1), datain=>nx45976z1, clk=>i_clock, ena=>i_valid, aclr=>
      nx46973z1);
   modgen_counter_x_pos_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      x_pos(0), datain=>modgen_counter_x_pos_NOT_a_0, clk=>i_clock, ena=>
      i_valid, aclr=>nx46973z1);
   ix3163z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6262") 
       port map ( combout=>rtlc4n0_4n1s3f1(7), dataa=>nx3163z10, datab=>
      nx54113z1, datac=>nx3163z12);
   ix3163z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(6), dataa=>nx3163z14, datab=>
      nx3163z16, datac=>nx54113z1);
   ix3163z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(5), dataa=>nx3163z18, datab=>
      nx3163z20, datac=>nx54113z1);
   ix3163z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(4), dataa=>nx3163z22, datab=>
      nx3163z24, datac=>nx54113z1);
   ix3163z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(3), dataa=>nx3163z26, datab=>
      nx3163z28, datac=>nx54113z1);
   ix3163z52960 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx3163z70, dataa=>nx3163z71, datab=>nx3163z72, 
      datac=>nx3163z73);
   ix3163z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"8acf") 
       port map ( combout=>nx3163z5, dataa=>nx3163z6, datab=>nx3163z7, datac
      =>nx51243z1, datad=>nx54113z1);
   ix3163z52966 : cycloneii_lcell_comb
      generic map (lut_mask => X"fdf0") 
       port map ( combout=>nx3163z77, dataa=>nx3163z3, datab=>nx3163z4, 
      datac=>nx3163z73, datad=>nx3163z5);
   ix3163z52955 : cycloneii_lcell_comb
      generic map (lut_mask => X"dccc") 
       port map ( combout=>nx3163z56, dataa=>nx3163z57, datab=>nx3163z58, 
      datac=>nx3163z60, datad=>nx3163z65);
   ix3163z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"d0d0") 
       port map ( combout=>nx3163z2, dataa=>nx3163z3, datab=>nx3163z4, datac
      =>nx3163z5);
   ix3163z52959 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx3163z65, dataa=>rtlc4n0_4n1s2(3), datab=>
      rtlc4n0_4n1s2(2), datac=>rtlc4n0_4n1s2(1), datad=>rtlc4n0_4n1s2(0));
   ix3163z52958 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx3163z60, dataa=>rtlc4n0_4n1s2(7), datab=>
      rtlc4n0_4n1s2(6), datac=>rtlc4n0_4n1s2(5), datad=>rtlc4n0_4n1s2(4));
   ix3163z52964 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx3163z75, dataa=>nx3163z52, datab=>nx3163z53, 
      datac=>nx3163z54, datad=>nx3163z55);
   ix3163z52963 : cycloneii_lcell_comb
      generic map (lut_mask => X"0001") 
       port map ( combout=>nx3163z74, dataa=>nx3163z8, datab=>nx3163z49, 
      datac=>nx3163z50, datad=>nx3163z51);
   ix3163z52962 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx3163z73, dataa=>nx3163z57, datab=>nx3163z74, 
      datac=>nx3163z75);
   ix3163z52957 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx3163z58, dataa=>nx54084z1, datab=>nx3163z59);
   ix53087z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx53087z1, dataa=>i_valid, datab=>x_pos(3), datac
      =>x_pos(2), datad=>nx53087z2);
   ix53087z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8888") 
       port map ( combout=>nx53087z2, dataa=>x_pos(1), datab=>x_pos(0));
   ix45976z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx45976z1, dataa=>x_pos(1), datab=>x_pos(0));
   ix44979z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx44979z1, dataa=>x_pos(2), datab=>x_pos(1), 
      datac=>x_pos(0));
   ix43982z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx43982z1, dataa=>x_pos(3), datab=>x_pos(2), 
      datac=>x_pos(1), datad=>x_pos(0));
   ix35397z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx35397z2, dataa=>y_pos(2), datab=>y_pos(1), 
      datac=>y_pos(0));
   ix14243z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx14243z1, dataa=>y_pos(1), datab=>y_pos(0));
   ix13246z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx13246z1, dataa=>y_pos(2), datab=>y_pos(1), 
      datac=>y_pos(0));
   ix12249z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx12249z1, dataa=>y_pos(3), datab=>y_pos(2), 
      datac=>y_pos(1), datad=>y_pos(0));
   ix54113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx54113z1, dataa=>i(2), datab=>i(1), datac=>
      nx54084z1);
   ix51243z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx51243z1, dataa=>i(2), datab=>i(1), datac=>
      nx54084z1);
   ix35397z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eccc") 
       port map ( combout=>nx35397z1, dataa=>y_pos(3), datab=>end_of_input, 
      datac=>nx35397z2, datad=>nx53087z1);
   ix53066z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx53066z1, dataa=>i_valid, datab=>nx3163z71);
   ix3163z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(0), dataa=>i_input(0), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(0));
   ix3163z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(1), dataa=>i_input(1), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(1));
   ix3163z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(2), dataa=>i_input(2), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(2));
   ix3163z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(3), dataa=>i_input(3), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(3));
   ix3163z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(4), dataa=>i_input(4), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(4));
   ix3163z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(5), dataa=>i_input(5), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(5));
   ix3163z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(6), dataa=>i_input(6), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(6));
   ix3163z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"aba8") 
       port map ( combout=>rtlc4n0_4n1s3f2(7), dataa=>i_input(7), datab=>
      i(2), datac=>i(1), datad=>mem_3_q(7));
   ix3163z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx3163z3, dataa=>i(2), datab=>i(1), datac=>
      nx54084z1);
   ix3163z52956 : cycloneii_lcell_comb
      generic map (lut_mask => X"6060") 
       port map ( combout=>nx3163z57, dataa=>i(2), datab=>i(1), datac=>
      nx54084z1);
   ix3163z52961 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx3163z72, dataa=>y_pos(3), datab=>y_pos(2), 
      datac=>y_pos(1));
   ix3163z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa8") 
       port map ( combout=>nx3163z1, dataa=>i_valid, datab=>nx3163z2, datac
      =>nx3163z56, datad=>nx3163z70);
   ix3163z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx3163z76, dataa=>nx3163z71, datab=>nx3163z72, 
      datac=>nx3163z77, datad=>nx3163z56);
   ix3163z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z38, dataa=>mem_2_q(0), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z39);
   ix3163z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z34, dataa=>mem_2_q(1), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z35);
   ix3163z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(2), dataa=>nx3163z30, datab=>
      nx3163z32, datac=>nx54113z1);
   ix3163z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z30, dataa=>mem_2_q(2), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z31);
   ix3163z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z26, dataa=>mem_2_q(3), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z27);
   ix3163z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(1), dataa=>nx3163z34, datab=>
      nx3163z36, datac=>nx54113z1);
   ix3163z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z22, dataa=>mem_2_q(4), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z23);
   ix3163z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z18, dataa=>mem_2_q(5), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z19);
   ix3163z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z14, dataa=>mem_2_q(6), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z15);
   ix3163z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(0), dataa=>nx3163z38, datab=>
      nx3163z40, datac=>nx54113z1);
   ix3163z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z10, dataa=>mem_2_q(7), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z11);
   ix46973z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx46973z1, dataa=>end_of_input, datab=>p_nrst_int
   );
end main ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity top_lab3 is 
   port (
      nrst : IN std_logic ;
      clk : IN std_logic ;
      rxflex : IN std_logic ;
      txflex : OUT std_logic ;
      ctsflex : OUT std_logic ;
      o_sevenseg : OUT std_logic_vector (15 DOWNTO 0)) ;
end top_lab3 ;

architecture main of top_lab3 is 
   component uw_uart
      port (
         CLK : IN std_logic ;
         RST : IN std_logic ;
         RXFLEX : IN std_logic ;
         datain : OUT std_logic_vector (7 DOWNTO 0) ;
         TXFLEX : OUT std_logic ;
         o_pixavail : OUT std_logic ;
         p_Tx_Reg_14n6ss1_0 : OUT std_logic ;
         p_NOT_rtlcn2 : OUT std_logic ;
         p_RData_0 : OUT std_logic ;
         p_nrst_int : IN std_logic) ;
   end component ;
   component lab3
      port (
         i_clock : IN std_logic ;
         i_valid : IN std_logic ;
         i_input : IN std_logic_vector (7 DOWNTO 0) ;
         i_reset : IN std_logic ;
         o_output : OUT std_logic_vector (7 DOWNTO 0) ;
         p_RData_0 : IN std_logic ;
         p_nrst_int : IN std_logic) ;
   end component ;
   signal nrst_EXMPLR447, clk_EXMPLR448, rxflex_EXMPLR449, pixavail: 
   std_logic ;
   
   signal pixel: std_logic_vector (7 DOWNTO 0) ;
   
   signal result: std_logic_vector (7 DOWNTO 0) ;
   
   signal nrst_int, clk_int, rxflex_int, txflex_EXMPLR450, ctsflex_EXMPLR451, 
      o_sevenseg_15_EXMPLR452: std_logic ;
   
   signal o_sevenseg_EXMPLR468: std_logic_vector (14 DOWNTO 0) ;
   
   signal rst, ctsflex_dup0, nx59584z1, nx60581z1, nx61578z1, nx63572z1, 
      nx25683z1, nx26680z1, nx27677z1, nx29671z1, nx57590z1, nx58587z1, 
      nx62575z1, nx30z1, nx1027z1, nx28674z1, Tx_Reg_14n6ss1_0_dup_4, 
      NOT_rtlcn2_dup_5, RData_0, nx41851z1, nx42848z1, nx43845z1, nx44842z1, 
      nx45839z1, nx46836z1, nx47833z1, nx49827z1, nx50824z1, nx62540z1, 
      nx63537z1, nx64534z1, nx65531z1, nx992z1, nx21351z1, nx21351z2: 
   std_logic ;
   
   signal DANGLING : std_logic_vector (0 downto 0 );

begin
   nrst_EXMPLR447 <= nrst ;
   clk_EXMPLR448 <= clk ;
   rxflex_EXMPLR449 <= rxflex ;
   txflex <= txflex_EXMPLR450 ;
   ctsflex <= ctsflex_EXMPLR451 ;
   o_sevenseg(15) <= o_sevenseg_15_EXMPLR452 ;
   o_sevenseg(14) <= o_sevenseg_EXMPLR468(14) ;
   o_sevenseg(13) <= o_sevenseg_EXMPLR468(13) ;
   o_sevenseg(12) <= o_sevenseg_EXMPLR468(12) ;
   o_sevenseg(11) <= o_sevenseg_EXMPLR468(11) ;
   o_sevenseg(10) <= o_sevenseg_EXMPLR468(10) ;
   o_sevenseg(9) <= o_sevenseg_EXMPLR468(9) ;
   o_sevenseg(8) <= o_sevenseg_EXMPLR468(8) ;
   o_sevenseg(7) <= o_sevenseg_EXMPLR468(7) ;
   o_sevenseg(6) <= o_sevenseg_EXMPLR468(6) ;
   o_sevenseg(5) <= o_sevenseg_EXMPLR468(5) ;
   o_sevenseg(4) <= o_sevenseg_EXMPLR468(4) ;
   o_sevenseg(3) <= o_sevenseg_EXMPLR468(3) ;
   o_sevenseg(2) <= o_sevenseg_EXMPLR468(2) ;
   o_sevenseg(1) <= o_sevenseg_EXMPLR468(1) ;
   o_sevenseg(0) <= o_sevenseg_EXMPLR468(0) ;
   u_uw_uart : uw_uart port map ( CLK=>clk_int, RST=>rst, RXFLEX=>rxflex_int, 
      datain(7)=>pixel(7), datain(6)=>pixel(6), datain(5)=>pixel(5), 
      datain(4)=>pixel(4), datain(3)=>pixel(3), datain(2)=>pixel(2), 
      datain(1)=>pixel(1), datain(0)=>pixel(0), TXFLEX=>DANGLING(0), 
      o_pixavail=>pixavail, p_Tx_Reg_14n6ss1_0=>Tx_Reg_14n6ss1_0_dup_4, 
      p_NOT_rtlcn2=>NOT_rtlcn2_dup_5, p_RData_0=>RData_0, p_nrst_int=>
      nrst_int);
   u_lab3 : lab3 port map ( i_clock=>clk_int, i_valid=>pixavail, i_input(7)
      =>pixel(7), i_input(6)=>pixel(6), i_input(5)=>pixel(5), i_input(4)=>
      pixel(4), i_input(3)=>pixel(3), i_input(2)=>pixel(2), i_input(1)=>
      pixel(1), i_input(0)=>pixel(0), i_reset=>rst, o_output(7)=>result(7), 
      o_output(6)=>result(6), o_output(5)=>result(5), o_output(4)=>result(4), 
      o_output(3)=>result(3), o_output(2)=>result(2), o_output(1)=>result(1), 
      o_output(0)=>result(0), p_RData_0=>RData_0, p_nrst_int=>nrst_int);
   rst <= NOT nrst_int;
   ctsflex_dup0 <= '1';
   nx21351z1 <= NOT nx21351z2;
   rxflex_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>rxflex_int, padio=>rxflex_EXMPLR449);
   reg_out_txflex_obuf : cycloneii_lcell_ff port map ( regout=>nx21351z2, 
      datain=>Tx_Reg_14n6ss1_0_dup_4, clk=>clk_int, ena=>NOT_rtlcn2_dup_5, 
      aclr=>rst);
   reg_out_o_sevenseg_obuf_9 : cycloneii_lcell_ff port map ( regout=>
      nx50824z1, datain=>nx1027z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_8 : cycloneii_lcell_ff port map ( regout=>
      nx49827z1, datain=>nx30z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_6 : cycloneii_lcell_ff port map ( regout=>
      nx47833z1, datain=>nx63572z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_5 : cycloneii_lcell_ff port map ( regout=>
      nx46836z1, datain=>nx62575z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_4 : cycloneii_lcell_ff port map ( regout=>
      nx45839z1, datain=>nx61578z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_3 : cycloneii_lcell_ff port map ( regout=>
      nx44842z1, datain=>nx60581z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_2 : cycloneii_lcell_ff port map ( regout=>
      nx43845z1, datain=>nx59584z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_14 : cycloneii_lcell_ff port map ( regout=>
      nx992z1, datain=>nx29671z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_13 : cycloneii_lcell_ff port map ( regout=>
      nx65531z1, datain=>nx28674z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_12 : cycloneii_lcell_ff port map ( regout=>
      nx64534z1, datain=>nx27677z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_11 : cycloneii_lcell_ff port map ( regout=>
      nx63537z1, datain=>nx26680z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_10 : cycloneii_lcell_ff port map ( regout=>
      nx62540z1, datain=>nx25683z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_1 : cycloneii_lcell_ff port map ( regout=>
      nx42848z1, datain=>nx58587z1, clk=>clk_int);
   reg_out_o_sevenseg_obuf_0 : cycloneii_lcell_ff port map ( regout=>
      nx41851z1, datain=>nx57590z1, clk=>clk_int);
   o_sevenseg_obuf_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "register"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(7), datain=>nrst_int, outclk=>
      clk_int);
   o_sevenseg_obuf_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_15_EXMPLR452, datain=>ctsflex_dup0);
   nrst_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>nrst_int, padio=>nrst_EXMPLR447);
   ix21351z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>txflex_EXMPLR450, datain=>nx21351z1);
   ix992z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(14), datain=>nx992z1);
   ix65531z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(13), datain=>nx65531z1);
   ix64534z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(12), datain=>nx64534z1);
   ix63537z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(11), datain=>nx63537z1);
   ix62540z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(10), datain=>nx62540z1);
   ix50824z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(9), datain=>nx50824z1);
   ix49827z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(8), datain=>nx49827z1);
   ix47833z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(6), datain=>nx47833z1);
   ix46836z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(5), datain=>nx46836z1);
   ix45839z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(4), datain=>nx45839z1);
   ix44842z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(3), datain=>nx44842z1);
   ix43845z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(2), datain=>nx43845z1);
   ix42848z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(1), datain=>nx42848z1);
   ix41851z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_sevenseg_EXMPLR468(0), datain=>nx41851z1);
   ctsflex_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ctsflex_EXMPLR451, datain=>ctsflex_dup0);
   clk_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clk_int, padio=>clk_EXMPLR448);
   ix28674z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx28674z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix1027z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx1027z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix30z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx30z1, dataa=>result(7), datab=>result(6), datac
      =>result(5), datad=>result(4));
   ix62575z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>nx62575z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix58587z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>nx58587z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix57590z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>nx57590z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix29671z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx29671z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix27677z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx27677z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix26680z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx26680z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix25683z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx25683z1, dataa=>result(7), datab=>result(6), 
      datac=>result(5), datad=>result(4));
   ix63572z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>nx63572z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix61578z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>nx61578z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix60581z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>nx60581z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
   ix59584z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>nx59584z1, dataa=>result(3), datab=>result(2), 
      datac=>result(1), datad=>result(0));
end main ;

