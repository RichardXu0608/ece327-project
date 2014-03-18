
-- 
-- Definition of  lab3
-- 
--      02/15/14 13:32:01
--      
--      Precision RTL Synthesis, 2008a.47
-- 

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
      px147 : IN std_logic) ;
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
       port map ( cout=>nx45949z35, dataa=>px147, datad=>
      nx_addsub_9_0_vcc_net);
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a500",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>px147, datad=>nx_addsub_9_0_vcc_net, 
      cin=>nx45949z3);
   ix45949z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z28, dataa=>b(1), datab=>px147);
   ix45949z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z32, dataa=>b(0), datab=>px147);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z4, dataa=>b(7), datab=>px147);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z8, dataa=>b(6), datab=>px147);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z12, dataa=>b(5), datab=>px147);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z16, dataa=>b(4), datab=>px147);
   ix45949z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z20, dataa=>b(3), datab=>px147);
   ix45949z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx45949z24, dataa=>b(2), datab=>px147);
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
      cnt_en : IN std_logic ;
      px51 : OUT std_logic ;
      px24 : OUT std_logic ;
      px47 : OUT std_logic ;
      px25 : OUT std_logic ;
      px17 : OUT std_logic ;
      px13 : OUT std_logic ;
      px9 : OUT std_logic ;
      px5 : OUT std_logic ;
      px1 : OUT std_logic) ;
end modgen_counter_8_0 ;

architecture IMPLEMENTATION of modgen_counter_8_0 is 
   signal nx58250z2, nx32510z2, nx32510z4, nx32510z6, nx32510z8, nx32510z10, 
      nx32510z12, nx32510z14, nx32510z16, nx51271z1, nx32510z15, nx52268z1, 
      nx32510z13, nx53265z1, nx32510z11, nx54262z1, nx32510z9, nx55259z1, 
      nx32510z7, nx56256z1, nx32510z5, nx57253z1, nx32510z3, nx32510z1, 
      nx_modgen_counter_8_0_vcc_net: std_logic ;

begin
   px51 <= nx32510z1 ;
   px24 <= nx58250z2 ;
   px47 <= nx57253z1 ;
   px25 <= nx56256z1 ;
   px17 <= nx55259z1 ;
   px13 <= nx54262z1 ;
   px9 <= nx53265z1 ;
   px5 <= nx52268z1 ;
   px1 <= nx51271z1 ;
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx32510z2, datain=>
      nx32510z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx32510z4, datain=>
      nx57253z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx32510z6, datain=>
      nx56256z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx32510z8, datain=>
      nx55259z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx32510z10, datain=>
      nx54262z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx32510z12, datain=>
      nx53265z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx32510z14, datain=>
      nx52268z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx32510z16, datain=>
      nx51271z1, clk=>clock, ena=>nx58250z2, aclr=>aclear, sclr=>sclear);
   ix32510z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx32510z11, dataa=>nx32510z12, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z13);
   nx_modgen_counter_8_0_vcc_net <= '1';
   ix32510z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx32510z1, dataa=>nx32510z2, datad=>
      nx_modgen_counter_8_0_vcc_net, cin=>nx32510z3);
   ix32510z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx32510z3, dataa=>nx32510z4, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z5);
   ix32510z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx32510z13, dataa=>nx32510z14, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z15);
   ix32510z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx32510z5, dataa=>nx32510z6, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z7);
   ix32510z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx32510z7, dataa=>nx32510z8, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z9);
   ix32510z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx32510z9, dataa=>nx32510z10, 
      datad=>nx_modgen_counter_8_0_vcc_net, cin=>nx32510z11);
   ix32510z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx32510z15, dataa=>nx32510z16, 
      datad=>nx_modgen_counter_8_0_vcc_net);
   ix58250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx58250z2, dataa=>clk_en, datab=>sclear, datac=>
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
      cout : OUT std_logic) ;
end add_8_0 ;

architecture IMPLEMENTATION of add_8_0 is 
   signal nx44952z22, nx44952z19, nx44952z16, nx44952z13, nx44952z10, 
      nx44952z7, nx44952z4, nx23445z2, nx_add_8_0_vcc_net: std_logic ;

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
   ix23445z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>cout, datad=>nx_add_8_0_vcc_net, cin=>nx23445z2);
   ix44952z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx44952z19, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_8_0_vcc_net, cin=>nx44952z22);
   ix44952z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx44952z22, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_8_0_vcc_net);
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
   signal nx64056z1, rd_ena1_EXMPLR166: std_logic ;

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
      rd_ena1_EXMPLR166, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR166 <= '1';
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
   signal nx64056z1, rd_ena1_EXMPLR192: std_logic ;

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
      rd_ena1_EXMPLR192, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR192 <= '1';
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
   signal nx64056z1, rd_ena1_EXMPLR218: std_logic ;

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
      rd_ena1_EXMPLR218, q_b(7)=>rd_data1(7), q_b(6)=>rd_data1(6), q_b(5)=>
      rd_data1(5), q_b(4)=>rd_data1(4), q_b(3)=>rd_data1(3), q_b(2)=>
      rd_data1(2), q_b(1)=>rd_data1(1), q_b(0)=>rd_data1(0), rden_b=>
      nx64056z1, clock1=>wr_clk1, clocken1=>nx64056z1, address_b(3)=>
      addr1(3), address_b(2)=>addr1(2), address_b(1)=>addr1(1), address_b(0)
      =>addr1(0));
   rd_ena1_EXMPLR218 <= '1';
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
      o_output : OUT std_logic_vector (7 DOWNTO 0)) ;
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
         px147 : IN std_logic) ;
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
         cnt_en : IN std_logic ;
         px51 : OUT std_logic ;
         px24 : OUT std_logic ;
         px47 : OUT std_logic ;
         px25 : OUT std_logic ;
         px17 : OUT std_logic ;
         px13 : OUT std_logic ;
         px9 : OUT std_logic ;
         px5 : OUT std_logic ;
         px1 : OUT std_logic) ;
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
         cout : OUT std_logic) ;
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
   signal i_clock_EXMPLR236, i_valid_EXMPLR237: std_logic ;
   
   signal i_input_EXMPLR255: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_reset_EXMPLR246: std_logic ;
   
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
      nx3163z34, nx3163z38, i_clock_int, i_valid_int: std_logic ;
   
   signal i_input_int: std_logic_vector (7 DOWNTO 0) ;
   
   signal i_reset_int: std_logic ;
   
   signal o_output_EXMPLR256: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx3163z76, nx3163z1, nx3163z72, nx3163z57, nx46973z1, nx3163z3: 
   std_logic ;
   
   signal rtlc4n0_4n1s3f2: std_logic_vector (7 DOWNTO 0) ;
   
   signal nx35397z1, nx51243z1, nx54113z1, nx12249z1, nx13246z1, nx14243z1, 
      modgen_counter_y_pos_NOT_a_0, nx35397z2, nx43982z1, nx44979z1, 
      nx45976z1, modgen_counter_x_pos_NOT_a_0, nx53087z2, nx53087z1, 
      nx3163z58, nx3163z73, nx3163z74, nx3163z75, nx3163z60, nx3163z65, 
      nx3163z2, nx3163z56, nx3163z77, nx3163z5, nx3163z70, nx42146z1, 
      nx42146z2, nx41149z1, nx40152z1, nx39155z1, nx38158z1, nx37161z1, 
      nx36164z1, nx35167z1, nx20192z1, nx19195z1, nx18198z1, nx17201z1, 
      nx16204z1, nx15207z1, nx14210z1, nx13213z1, nx3163z71, nx53066z1, 
      nx54084z1, NOT_i_2: std_logic ;
   
   signal DANGLING : std_logic_vector (40 downto 0 );

begin
   i_clock_EXMPLR236 <= i_clock ;
   i_valid_EXMPLR237 <= i_valid ;
   i_input_EXMPLR255(7) <= i_input(7) ;
   i_input_EXMPLR255(6) <= i_input(6) ;
   i_input_EXMPLR255(5) <= i_input(5) ;
   i_input_EXMPLR255(4) <= i_input(4) ;
   i_input_EXMPLR255(3) <= i_input(3) ;
   i_input_EXMPLR255(2) <= i_input(2) ;
   i_input_EXMPLR255(1) <= i_input(1) ;
   i_input_EXMPLR255(0) <= i_input(0) ;
   i_reset_EXMPLR246 <= i_reset ;
   o_output(7) <= o_output_EXMPLR256(7) ;
   o_output(6) <= o_output_EXMPLR256(6) ;
   o_output(5) <= o_output_EXMPLR256(5) ;
   o_output(4) <= o_output_EXMPLR256(4) ;
   o_output(3) <= o_output_EXMPLR256(3) ;
   o_output(2) <= o_output_EXMPLR256(2) ;
   o_output(1) <= o_output_EXMPLR256(1) ;
   o_output(0) <= o_output_EXMPLR256(0) ;
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
      cout=>DANGLING(3), px147=>nx54084z1);
   modgen_counter_o_output : modgen_counter_8_0 port map ( clock=>
      i_clock_int, q(7)=>DANGLING(4), q(6)=>DANGLING(5), q(5)=>DANGLING(6), 
      q(4)=>DANGLING(7), q(3)=>DANGLING(8), q(2)=>DANGLING(9), q(1)=>
      DANGLING(10), q(0)=>DANGLING(11), clk_en=>nx3163z1, aclear=>
      i_reset_int, sload=>DANGLING(12), data(7)=>DANGLING(13), data(6)=>
      DANGLING(14), data(5)=>DANGLING(15), data(4)=>DANGLING(16), data(3)=>
      DANGLING(17), data(2)=>DANGLING(18), data(1)=>DANGLING(19), data(0)=>
      DANGLING(20), aset=>DANGLING(21), sclear=>nx3163z76, updn=>DANGLING(22
      ), cnt_en=>nx3163z72, px51=>nx42146z1, px24=>nx42146z2, px47=>
      nx41149z1, px25=>nx40152z1, px17=>nx39155z1, px13=>nx38158z1, px9=>
      nx37161z1, px5=>nx36164z1, px1=>nx35167z1);
   ix3163z19322 : sub_8_0 port map ( cin=>DANGLING(23), a(7)=>mem_1_q(7), 
      a(6)=>mem_1_q(6), a(5)=>mem_1_q(5), a(4)=>mem_1_q(4), a(3)=>mem_1_q(3), 
      a(2)=>mem_1_q(2), a(1)=>mem_1_q(1), a(0)=>mem_1_q(0), b(7)=>mem_2_q(7), 
      b(6)=>mem_2_q(6), b(5)=>mem_2_q(5), b(4)=>mem_2_q(4), b(3)=>mem_2_q(3), 
      b(2)=>mem_2_q(2), b(1)=>mem_2_q(1), b(0)=>mem_2_q(0), d(7)=>nx3163z12, 
      d(6)=>nx3163z16, d(5)=>nx3163z20, d(4)=>nx3163z24, d(3)=>nx3163z28, 
      d(2)=>nx3163z32, d(1)=>nx3163z36, d(0)=>nx3163z40, cout=>nx3163z6);
   ix3163z19319 : sub_8_1 port map ( cin=>DANGLING(24), a(7)=>mem_3_q(7), 
      a(6)=>mem_3_q(6), a(5)=>mem_3_q(5), a(4)=>mem_3_q(4), a(3)=>mem_3_q(3), 
      a(2)=>mem_3_q(2), a(1)=>mem_3_q(1), a(0)=>mem_3_q(0), b(7)=>mem_1_q(7), 
      b(6)=>mem_1_q(6), b(5)=>mem_1_q(5), b(4)=>mem_1_q(4), b(3)=>mem_1_q(3), 
      b(2)=>mem_1_q(2), b(1)=>mem_1_q(1), b(0)=>mem_1_q(0), d(7)=>nx3163z11, 
      d(6)=>nx3163z15, d(5)=>nx3163z19, d(4)=>nx3163z23, d(3)=>nx3163z27, 
      d(2)=>nx3163z31, d(1)=>nx3163z35, d(0)=>nx3163z39, cout=>nx3163z4);
   ix3163z60014 : add_8_0 port map ( cin=>DANGLING(25), a(7)=>nx3163z8, a(6)
      =>nx3163z49, a(5)=>nx3163z50, a(4)=>nx3163z51, a(3)=>nx3163z52, a(2)=>
      nx3163z53, a(1)=>nx3163z54, a(0)=>nx3163z55, b(7)=>i_input_int(7), 
      b(6)=>i_input_int(6), b(5)=>i_input_int(5), b(4)=>i_input_int(4), b(3)
      =>i_input_int(3), b(2)=>i_input_int(2), b(1)=>i_input_int(1), b(0)=>
      i_input_int(0), d=>rtlc4n0_4n1s2, cout=>nx3163z7);
   mem : ram_dq_8_0 port map ( wr_data1(7)=>i_input_int(7), wr_data1(6)=>
      i_input_int(6), wr_data1(5)=>i_input_int(5), wr_data1(4)=>
      i_input_int(4), wr_data1(3)=>i_input_int(3), wr_data1(2)=>
      i_input_int(2), wr_data1(1)=>i_input_int(1), wr_data1(0)=>
      i_input_int(0), rd_data1(7)=>mem_1_q(7), rd_data1(6)=>mem_1_q(6), 
      rd_data1(5)=>mem_1_q(5), rd_data1(4)=>mem_1_q(4), rd_data1(3)=>
      mem_1_q(3), rd_data1(2)=>mem_1_q(2), rd_data1(1)=>mem_1_q(1), 
      rd_data1(0)=>mem_1_q(0), addr1(3)=>x_pos(3), addr1(2)=>x_pos(2), 
      addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>i_clock_int, rd_clk1
      =>DANGLING(26), wr_ena1=>nx51243z1, rd_ena1=>DANGLING(27), ena1=>
      DANGLING(28), rst1=>DANGLING(29), regce1=>DANGLING(30));
   mem_0 : ram_dq_8_1 port map ( wr_data1(7)=>i_input_int(7), wr_data1(6)=>
      i_input_int(6), wr_data1(5)=>i_input_int(5), wr_data1(4)=>
      i_input_int(4), wr_data1(3)=>i_input_int(3), wr_data1(2)=>
      i_input_int(2), wr_data1(1)=>i_input_int(1), wr_data1(0)=>
      i_input_int(0), rd_data1(7)=>mem_2_q(7), rd_data1(6)=>mem_2_q(6), 
      rd_data1(5)=>mem_2_q(5), rd_data1(4)=>mem_2_q(4), rd_data1(3)=>
      mem_2_q(3), rd_data1(2)=>mem_2_q(2), rd_data1(1)=>mem_2_q(1), 
      rd_data1(0)=>mem_2_q(0), addr1(3)=>x_pos(3), addr1(2)=>x_pos(2), 
      addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>i_clock_int, rd_clk1
      =>DANGLING(31), wr_ena1=>nx3163z3, rd_ena1=>DANGLING(32), ena1=>
      DANGLING(33), rst1=>DANGLING(34), regce1=>DANGLING(35));
   mem_1 : ram_dq_8_2 port map ( wr_data1(7)=>i_input_int(7), wr_data1(6)=>
      i_input_int(6), wr_data1(5)=>i_input_int(5), wr_data1(4)=>
      i_input_int(4), wr_data1(3)=>i_input_int(3), wr_data1(2)=>
      i_input_int(2), wr_data1(1)=>i_input_int(1), wr_data1(0)=>
      i_input_int(0), rd_data1(7)=>mem_3_q(7), rd_data1(6)=>mem_3_q(6), 
      rd_data1(5)=>mem_3_q(5), rd_data1(4)=>mem_3_q(4), rd_data1(3)=>
      mem_3_q(3), rd_data1(2)=>mem_3_q(2), rd_data1(1)=>mem_3_q(1), 
      rd_data1(0)=>mem_3_q(0), addr1(3)=>x_pos(3), addr1(2)=>x_pos(2), 
      addr1(1)=>x_pos(1), addr1(0)=>x_pos(0), wr_clk1=>i_clock_int, rd_clk1
      =>DANGLING(36), wr_ena1=>nx54113z1, rd_ena1=>DANGLING(37), ena1=>
      DANGLING(38), rst1=>DANGLING(39), regce1=>DANGLING(40));
   modgen_counter_y_pos_NOT_a_0 <= NOT y_pos(0);
   modgen_counter_x_pos_NOT_a_0 <= NOT x_pos(0);
   i(0) <= NOT nx54084z1;
   NOT_i_2 <= NOT i(2);
   reg_out_o_output_obuf_7 : cycloneii_lcell_ff port map ( regout=>nx13213z1, 
      datain=>nx42146z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_6 : cycloneii_lcell_ff port map ( regout=>nx14210z1, 
      datain=>nx41149z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_5 : cycloneii_lcell_ff port map ( regout=>nx15207z1, 
      datain=>nx40152z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_4 : cycloneii_lcell_ff port map ( regout=>nx16204z1, 
      datain=>nx39155z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_3 : cycloneii_lcell_ff port map ( regout=>nx17201z1, 
      datain=>nx38158z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_2 : cycloneii_lcell_ff port map ( regout=>nx18198z1, 
      datain=>nx37161z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_1 : cycloneii_lcell_ff port map ( regout=>nx19195z1, 
      datain=>nx36164z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_out_o_output_obuf_0 : cycloneii_lcell_ff port map ( regout=>nx20192z1, 
      datain=>nx35167z1, clk=>i_clock_int, ena=>nx42146z2, aclr=>i_reset_int, 
      sclr=>nx3163z76);
   reg_new_number_set : cycloneii_lcell_ff port map ( regout=>nx3163z71, 
      datain=>nx53066z1, clk=>i_clock_int, aclr=>nx46973z1);
   reg_i_2 : cycloneii_lcell_ff port map ( regout=>i(2), datain=>i(1), clk=>
      i_clock_int, ena=>nx53087z1, aclr=>nx46973z1);
   reg_i_1 : cycloneii_lcell_ff port map ( regout=>i(1), datain=>i(0), clk=>
      i_clock_int, ena=>nx53087z1, aclr=>nx46973z1);
   reg_i_0 : cycloneii_lcell_ff port map ( regout=>nx54084z1, datain=>
      NOT_i_2, clk=>i_clock_int, ena=>nx53087z1, aclr=>nx46973z1);
   reg_end_of_input : cycloneii_lcell_ff port map ( regout=>end_of_input, 
      datain=>nx35397z1, clk=>i_clock_int, aclr=>nx46973z1);
   modgen_counter_y_pos_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      y_pos(3), datain=>nx12249z1, clk=>i_clock_int, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      y_pos(2), datain=>nx13246z1, clk=>i_clock_int, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      y_pos(1), datain=>nx14243z1, clk=>i_clock_int, ena=>nx53087z1, aclr=>
      nx46973z1);
   modgen_counter_y_pos_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      y_pos(0), datain=>modgen_counter_y_pos_NOT_a_0, clk=>i_clock_int, ena
      =>nx53087z1, aclr=>nx46973z1);
   modgen_counter_x_pos_reg_q_3 : cycloneii_lcell_ff port map ( regout=>
      x_pos(3), datain=>nx43982z1, clk=>i_clock_int, ena=>i_valid_int, aclr
      =>nx46973z1);
   modgen_counter_x_pos_reg_q_2 : cycloneii_lcell_ff port map ( regout=>
      x_pos(2), datain=>nx44979z1, clk=>i_clock_int, ena=>i_valid_int, aclr
      =>nx46973z1);
   modgen_counter_x_pos_reg_q_1 : cycloneii_lcell_ff port map ( regout=>
      x_pos(1), datain=>nx45976z1, clk=>i_clock_int, ena=>i_valid_int, aclr
      =>nx46973z1);
   modgen_counter_x_pos_reg_q_0 : cycloneii_lcell_ff port map ( regout=>
      x_pos(0), datain=>modgen_counter_x_pos_NOT_a_0, clk=>i_clock_int, ena
      =>i_valid_int, aclr=>nx46973z1);
   ix20192z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(0), datain=>nx20192z1);
   ix13213z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(7), datain=>nx13213z1);
   ix14210z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(6), datain=>nx14210z1);
   ix15207z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(5), datain=>nx15207z1);
   ix16204z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(4), datain=>nx16204z1);
   ix17201z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(3), datain=>nx17201z1);
   ix18198z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(2), datain=>nx18198z1);
   ix19195z43919 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>o_output_EXMPLR256(1), datain=>nx19195z1);
   i_valid_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_valid_int, padio=>i_valid_EXMPLR237);
   i_reset_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_reset_int, padio=>i_reset_EXMPLR246);
   i_input_ibuf_7 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(7), padio=>i_input_EXMPLR255(7));
   i_input_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(6), padio=>i_input_EXMPLR255(6));
   i_input_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(5), padio=>i_input_EXMPLR255(5));
   i_input_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(4), padio=>i_input_EXMPLR255(4));
   i_input_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(3), padio=>i_input_EXMPLR255(3));
   i_input_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(2), padio=>i_input_EXMPLR255(2));
   i_input_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(1), padio=>i_input_EXMPLR255(1));
   i_input_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_input_int(0), padio=>i_input_EXMPLR255(0));
   i_clock_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>i_clock_int, padio=>i_clock_EXMPLR236);
   ix3163z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"6262") 
       port map ( combout=>rtlc4n0_4n1s3f1(7), dataa=>nx3163z10, datab=>
      nx54113z1, datac=>nx3163z12);
   ix3163z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z38, dataa=>mem_2_q(0), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z39);
   ix3163z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z34, dataa=>mem_2_q(1), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z35);
   ix3163z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(6), dataa=>nx3163z14, datab=>
      nx3163z16, datac=>nx54113z1);
   ix3163z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z30, dataa=>mem_2_q(2), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z31);
   ix3163z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z26, dataa=>mem_2_q(3), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z27);
   ix3163z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z22, dataa=>mem_2_q(4), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z23);
   ix3163z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(5), dataa=>nx3163z18, datab=>
      nx3163z20, datac=>nx54113z1);
   ix3163z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z18, dataa=>mem_2_q(5), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z19);
   ix3163z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z14, dataa=>mem_2_q(6), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z15);
   ix3163z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(4), dataa=>nx3163z22, datab=>
      nx3163z24, datac=>nx54113z1);
   ix3163z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"e3e0") 
       port map ( combout=>nx3163z10, dataa=>mem_2_q(7), datab=>nx54113z1, 
      datac=>nx51243z1, datad=>nx3163z11);
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
       port map ( combout=>nx53087z1, dataa=>x_pos(3), datab=>x_pos(2), 
      datac=>nx53087z2, datad=>i_valid_int);
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
       port map ( combout=>nx53066z1, dataa=>nx3163z71, datab=>i_valid_int);
   ix3163z52954 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(0), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(0), datad=>i_input_int(0));
   ix3163z52953 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(1), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(1), datad=>i_input_int(1));
   ix3163z52952 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(2), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(2), datad=>i_input_int(2));
   ix3163z52951 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(3), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(3), datad=>i_input_int(3));
   ix3163z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(4), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(4), datad=>i_input_int(4));
   ix3163z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(5), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(5), datad=>i_input_int(5));
   ix3163z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(6), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(6), datad=>i_input_int(6));
   ix3163z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe10") 
       port map ( combout=>rtlc4n0_4n1s3f2(7), dataa=>i(2), datab=>i(1), 
      datac=>mem_3_q(7), datad=>i_input_int(7));
   ix3163z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx3163z3, dataa=>i(2), datab=>i(1), datac=>
      nx54084z1);
   ix46973z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx46973z1, dataa=>end_of_input, datab=>
      i_reset_int);
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
       port map ( combout=>nx3163z1, dataa=>i_valid_int, datab=>nx3163z2, 
      datac=>nx3163z56, datad=>nx3163z70);
   ix3163z52965 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx3163z76, dataa=>nx3163z71, datab=>nx3163z72, 
      datac=>nx3163z77, datad=>nx3163z56);
   ix3163z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(2), dataa=>nx3163z30, datab=>
      nx3163z32, datac=>nx54113z1);
   ix3163z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(1), dataa=>nx3163z34, datab=>
      nx3163z36, datac=>nx54113z1);
   ix3163z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"4a4a") 
       port map ( combout=>rtlc4n0_4n1s3f1(0), dataa=>nx3163z38, datab=>
      nx3163z40, datac=>nx54113z1);
end main ;

