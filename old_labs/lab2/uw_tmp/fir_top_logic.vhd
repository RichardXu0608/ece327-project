
-- 
-- Definition of  fir_top
-- 
--      02/01/14 15:22:09
--      
--      Precision RTL Synthesis, 2008a.47
-- 

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_60 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_60 ;

architecture IMPLEMENTATION of mult_32_60 is 
   signal d_13_EXMPLR505, nx5238z2, nx5238z15, nx5238z14, nx5238z13, 
      nx5238z12, nx5238z11, nx5238z10, nx5238z9, nx5238z8, nx5238z7, 
      nx5238z6, nx5238z5, nx5238z4, nx5238z3, nx_mult_32_60_vcc_net: 
   std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   d(17) <= d_13_EXMPLR505 ;
   d(16) <= d_13_EXMPLR505 ;
   ix5238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), datad=>nx_mult_32_60_vcc_net, cin=>
      nx5238z2);
   nx_mult_32_60_vcc_net <= '1';
   ix5238z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_13_EXMPLR505, cout=>nx5238z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_60_vcc_net, cin=>nx5238z3);
   ix5238z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx5238z3, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z4);
   ix5238z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx5238z4, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z5);
   ix5238z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx5238z5, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z6);
   ix5238z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx5238z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z7);
   ix5238z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx5238z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z8);
   ix5238z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx5238z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z9);
   ix5238z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx5238z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z10);
   ix5238z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx5238z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z11);
   ix5238z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx5238z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z12);
   ix5238z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx5238z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_60_vcc_net, cin=>nx5238z13);
   ix5238z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_60_vcc_net, cin=>nx5238z14);
   ix5238z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_60_vcc_net, cin=>nx5238z15);
   ix5238z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx5238z15, dataa=>a(0), datab=>a(3), datad=>
      nx_mult_32_60_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_61 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_61 ;

architecture IMPLEMENTATION of mult_32_61 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_61_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_1_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z3);
   nx_mult_32_61_vcc_net <= '1';
   modgen_add_1_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z4);
   modgen_add_1_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z5);
   modgen_add_1_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z6);
   modgen_add_1_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z7);
   modgen_add_1_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z8);
   modgen_add_1_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z9);
   modgen_add_1_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_61_vcc_net, cin=>nx253z10);
   modgen_add_1_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z10, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_61_vcc_net, cin=>nx253z11);
   modgen_add_1_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_61_vcc_net, cin=>nx253z12);
   modgen_add_1_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_61_vcc_net, cin=>nx253z13);
   modgen_add_1_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_61_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_61_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_62 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_62 ;

architecture IMPLEMENTATION of mult_32_62 is 
   signal d_15_EXMPLR551, nx6235z2, nx6235z17, nx6235z16, nx6235z15, 
      nx6235z14, nx6235z13, nx6235z12, nx6235z11, nx6235z10, nx6235z9, 
      nx6235z8, nx6235z7, nx6235z6, nx6235z5, nx6235z4, nx6235z3, nx6235z1, 
      nx_mult_32_62_vcc_net: std_logic ;

begin
   d(19) <= nx6235z1 ;
   d(18) <= nx6235z1 ;
   d(17) <= d_15_EXMPLR551 ;
   d(16) <= d_15_EXMPLR551 ;
   ix6235z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx6235z1, datad=>nx_mult_32_62_vcc_net, cin=>
      nx6235z2);
   nx_mult_32_62_vcc_net <= '1';
   ix6235z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"692b",
         sum_lutc_input => "cin") 
       port map ( combout=>d_15_EXMPLR551, cout=>nx6235z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_62_vcc_net, cin=>nx6235z3);
   ix6235z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx6235z3, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z4);
   ix6235z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx6235z4, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z5);
   ix6235z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx6235z5, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z6);
   ix6235z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx6235z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z7);
   ix6235z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx6235z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z8);
   ix6235z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx6235z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z9);
   ix6235z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx6235z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z10);
   ix6235z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx6235z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z11);
   ix6235z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx6235z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z12);
   ix6235z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx6235z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_62_vcc_net, cin=>nx6235z13);
   ix6235z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_62_vcc_net, cin=>nx6235z14);
   ix6235z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_62_vcc_net, cin=>nx6235z15);
   ix6235z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z15, dataa=>a(3), datab=>a(0), datad=>
      nx_mult_32_62_vcc_net, cin=>nx6235z16);
   ix6235z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z16, dataa=>a(2), datad=>nx_mult_32_62_vcc_net, 
      cin=>nx6235z17);
   ix6235z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx6235z17, dataa=>a(1), datab=>a(0), datad=>
      nx_mult_32_62_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_63 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_63 ;

architecture IMPLEMENTATION of mult_32_63 is 
   signal nx1250z2, nx1250z13, nx1250z12, nx1250z11, nx1250z10, nx1250z9, 
      nx1250z8, nx1250z7, nx1250z6, nx1250z5, nx1250z4, nx1250z3, 
      nx_mult_32_63_vcc_net: std_logic ;

begin
   d(19) <= a(31) ;
   d(18) <= a(31) ;
   d(17) <= a(14) ;
   d(16) <= a(31) ;
   d(15) <= a(31) ;
   modgen_add_3_ix1250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx1250z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z3);
   nx_mult_32_63_vcc_net <= '1';
   modgen_add_3_ix1250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx1250z3, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z4);
   modgen_add_3_ix1250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx1250z4, dataa=>a(11), datab=>a(9), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z5);
   modgen_add_3_ix1250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx1250z5, dataa=>a(10), datab=>a(8), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z6);
   modgen_add_3_ix1250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx1250z6, dataa=>a(9), datab=>a(7), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z7);
   modgen_add_3_ix1250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx1250z7, dataa=>a(8), datab=>a(6), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z8);
   modgen_add_3_ix1250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx1250z8, dataa=>a(7), datab=>a(5), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z9);
   modgen_add_3_ix1250z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx1250z9, dataa=>a(6), datab=>a(4), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z10);
   modgen_add_3_ix1250z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx1250z10, dataa=>a(5), datab=>a(3), 
      datad=>nx_mult_32_63_vcc_net, cin=>nx1250z11);
   modgen_add_3_ix1250z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx1250z11, dataa=>a(4), datab=>a(2), datad=>
      nx_mult_32_63_vcc_net, cin=>nx1250z12);
   modgen_add_3_ix1250z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx1250z12, dataa=>a(3), datab=>a(1), datad=>
      nx_mult_32_63_vcc_net, cin=>nx1250z13);
   modgen_add_3_ix1250z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx1250z13, dataa=>a(0), datab=>a(2), datad=>
      nx_mult_32_63_vcc_net);
   ix1250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), datad=>nx_mult_32_63_vcc_net, cin=>
      nx1250z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_64 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_64 ;

architecture IMPLEMENTATION of mult_32_64 is 
   signal d_11_EXMPLR598, d_10_EXMPLR599, d_9_EXMPLR600, d_8_EXMPLR601, 
      d_7_EXMPLR602, d_6_EXMPLR603, d_5_EXMPLR604, d_4_EXMPLR605, 
      d_3_EXMPLR606, d_2_EXMPLR607, b_10_EXMPLR609, nx3244z2, nx3244z16, 
      nx3244z15, nx3244z14, nx3244z13, nx3244z12, nx3244z11, nx3244z10, 
      nx3244z9, nx3244z8, nx3244z7, nx3244z6, nx3244z26, nx3244z25, 
      nx3244z24, nx3244z23, nx3244z22, nx3244z21, nx3244z20, nx3244z19, 
      nx3244z18, nx3244z17, nx3244z4, nx3244z3, nx3244z5, 
      nx_mult_32_64_vcc_net: std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   d(18) <= a(14) ;
   d(17) <= a(31) ;
   modgen_add_5_ix3244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx3244z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_64_vcc_net, cin=>nx3244z3);
   nx_mult_32_64_vcc_net <= '1';
   modgen_add_5_ix3244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx3244z3, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_64_vcc_net, cin=>nx3244z4);
   modgen_add_5_ix3244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx3244z4, dataa=>nx3244z5, datab=>
      a(10), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z17);
   modgen_add_5_ix3244z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx3244z17, dataa=>d_11_EXMPLR598, 
      datab=>a(9), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z18);
   modgen_add_5_ix3244z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx3244z18, dataa=>d_10_EXMPLR599, 
      datab=>a(8), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z19);
   modgen_add_5_ix3244z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx3244z19, dataa=>d_9_EXMPLR600, 
      datab=>a(7), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z20);
   modgen_add_5_ix3244z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx3244z20, dataa=>d_8_EXMPLR601, 
      datab=>a(6), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z21);
   modgen_add_5_ix3244z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx3244z21, dataa=>d_7_EXMPLR602, 
      datab=>a(5), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z22);
   modgen_add_5_ix3244z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx3244z22, dataa=>d_6_EXMPLR603, 
      datab=>a(4), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z23);
   modgen_add_5_ix3244z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx3244z23, dataa=>d_5_EXMPLR604, 
      datab=>a(3), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z24);
   modgen_add_5_ix3244z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z24, dataa=>d_4_EXMPLR605, datab=>a(2), datad
      =>nx_mult_32_64_vcc_net, cin=>nx3244z25);
   modgen_add_5_ix3244z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z25, dataa=>d_3_EXMPLR606, datab=>a(1), datad
      =>nx_mult_32_64_vcc_net, cin=>nx3244z26);
   modgen_add_5_ix3244z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z26, dataa=>a(0), datab=>d_2_EXMPLR607, datad
      =>nx_mult_32_64_vcc_net);
   modgen_add_4_ix3244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_11_EXMPLR598, cout=>b_10_EXMPLR609, dataa=>
      a(14), datab=>a(11), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z6);
   modgen_add_4_ix3244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_10_EXMPLR599, cout=>nx3244z6, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z7);
   modgen_add_4_ix3244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_9_EXMPLR600, cout=>nx3244z7, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z8);
   modgen_add_4_ix3244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_8_EXMPLR601, cout=>nx3244z8, dataa=>a(9), datab
      =>a(8), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z9);
   modgen_add_4_ix3244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_7_EXMPLR602, cout=>nx3244z9, dataa=>a(8), datab
      =>a(7), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z10);
   modgen_add_4_ix3244z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_6_EXMPLR603, cout=>nx3244z10, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z11);
   modgen_add_4_ix3244z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_5_EXMPLR604, cout=>nx3244z11, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z12);
   modgen_add_4_ix3244z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_4_EXMPLR605, cout=>nx3244z12, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z13);
   modgen_add_4_ix3244z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_3_EXMPLR606, cout=>nx3244z13, dataa=>a(4), 
      datab=>a(3), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z14);
   modgen_add_4_ix3244z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_2_EXMPLR607, cout=>nx3244z14, dataa=>a(3), 
      datab=>a(2), datad=>nx_mult_32_64_vcc_net, cin=>nx3244z15);
   modgen_add_4_ix3244z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z15, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_64_vcc_net, cin=>nx3244z16);
   modgen_add_4_ix3244z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z16, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_64_vcc_net);
   ix3244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), datad=>nx_mult_32_64_vcc_net, cin=>
      nx3244z2);
   ix3244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx3244z5, datad=>nx_mult_32_64_vcc_net, cin=>
      b_10_EXMPLR609);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_65 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_65 ;

architecture IMPLEMENTATION of mult_32_65 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_65_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_6_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z3);
   nx_mult_32_65_vcc_net <= '1';
   modgen_add_6_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z4);
   modgen_add_6_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z5);
   modgen_add_6_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z6);
   modgen_add_6_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z7);
   modgen_add_6_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z8);
   modgen_add_6_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z9);
   modgen_add_6_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z10);
   modgen_add_6_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx253z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_65_vcc_net, cin=>nx253z11);
   modgen_add_6_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_65_vcc_net, cin=>nx253z12);
   modgen_add_6_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_65_vcc_net, cin=>nx253z13);
   modgen_add_6_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_65_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_65_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_66 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_66 ;

architecture IMPLEMENTATION of mult_32_66 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_66_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_7_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z3);
   nx_mult_32_66_vcc_net <= '1';
   modgen_add_7_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z4);
   modgen_add_7_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z5);
   modgen_add_7_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z6);
   modgen_add_7_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z7);
   modgen_add_7_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z8);
   modgen_add_7_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z9);
   modgen_add_7_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z10);
   modgen_add_7_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx253z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_66_vcc_net, cin=>nx253z11);
   modgen_add_7_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_66_vcc_net, cin=>nx253z12);
   modgen_add_7_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_66_vcc_net, cin=>nx253z13);
   modgen_add_7_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_66_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_66_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_67 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_67 ;

architecture IMPLEMENTATION of mult_32_67 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_67_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_8_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z3);
   nx_mult_32_67_vcc_net <= '1';
   modgen_add_8_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z4);
   modgen_add_8_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z5);
   modgen_add_8_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z6);
   modgen_add_8_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z7);
   modgen_add_8_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z8);
   modgen_add_8_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z9);
   modgen_add_8_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z10);
   modgen_add_8_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx253z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_67_vcc_net, cin=>nx253z11);
   modgen_add_8_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_67_vcc_net, cin=>nx253z12);
   modgen_add_8_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_67_vcc_net, cin=>nx253z13);
   modgen_add_8_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_67_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_67_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_68 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_68 ;

architecture IMPLEMENTATION of mult_32_68 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_68_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_9_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z3);
   nx_mult_32_68_vcc_net <= '1';
   modgen_add_9_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z4);
   modgen_add_9_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z5);
   modgen_add_9_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z6);
   modgen_add_9_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z7);
   modgen_add_9_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z8);
   modgen_add_9_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z9);
   modgen_add_9_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z10);
   modgen_add_9_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx253z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_68_vcc_net, cin=>nx253z11);
   modgen_add_9_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_68_vcc_net, cin=>nx253z12);
   modgen_add_9_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_68_vcc_net, cin=>nx253z13);
   modgen_add_9_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_68_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_68_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_69 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_69 ;

architecture IMPLEMENTATION of mult_32_69 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_69_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_10_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z3);
   nx_mult_32_69_vcc_net <= '1';
   modgen_add_10_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z4);
   modgen_add_10_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z5);
   modgen_add_10_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z6);
   modgen_add_10_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z7);
   modgen_add_10_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z8);
   modgen_add_10_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z9);
   modgen_add_10_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z10);
   modgen_add_10_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx253z10, dataa=>a(4), datab=>a(3), 
      datad=>nx_mult_32_69_vcc_net, cin=>nx253z11);
   modgen_add_10_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_69_vcc_net, cin=>nx253z12);
   modgen_add_10_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_69_vcc_net, cin=>nx253z13);
   modgen_add_10_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_69_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_69_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_70 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_70 ;

architecture IMPLEMENTATION of mult_32_70 is 
   signal d_11_EXMPLR734, d_10_EXMPLR735, d_9_EXMPLR736, d_8_EXMPLR737, 
      d_7_EXMPLR738, d_6_EXMPLR739, d_5_EXMPLR740, d_4_EXMPLR741, 
      d_3_EXMPLR742, d_2_EXMPLR743, b_10_EXMPLR745, nx3244z2, nx3244z16, 
      nx3244z15, nx3244z14, nx3244z13, nx3244z12, nx3244z11, nx3244z10, 
      nx3244z9, nx3244z8, nx3244z7, nx3244z6, nx3244z26, nx3244z25, 
      nx3244z24, nx3244z23, nx3244z22, nx3244z21, nx3244z20, nx3244z19, 
      nx3244z18, nx3244z17, nx3244z4, nx3244z3, nx3244z5, 
      nx_mult_32_70_vcc_net: std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   d(18) <= a(14) ;
   d(17) <= a(31) ;
   modgen_add_12_ix3244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx3244z2, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_70_vcc_net, cin=>nx3244z3);
   nx_mult_32_70_vcc_net <= '1';
   modgen_add_12_ix3244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx3244z3, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_70_vcc_net, cin=>nx3244z4);
   modgen_add_12_ix3244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx3244z4, dataa=>nx3244z5, datab=>
      a(10), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z17);
   modgen_add_12_ix3244z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx3244z17, dataa=>d_11_EXMPLR734, 
      datab=>a(9), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z18);
   modgen_add_12_ix3244z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx3244z18, dataa=>d_10_EXMPLR735, 
      datab=>a(8), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z19);
   modgen_add_12_ix3244z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx3244z19, dataa=>d_9_EXMPLR736, 
      datab=>a(7), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z20);
   modgen_add_12_ix3244z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx3244z20, dataa=>d_8_EXMPLR737, 
      datab=>a(6), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z21);
   modgen_add_12_ix3244z52945 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx3244z21, dataa=>d_7_EXMPLR738, 
      datab=>a(5), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z22);
   modgen_add_12_ix3244z52946 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx3244z22, dataa=>d_6_EXMPLR739, 
      datab=>a(4), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z23);
   modgen_add_12_ix3244z52947 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx3244z23, dataa=>d_5_EXMPLR740, 
      datab=>a(3), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z24);
   modgen_add_12_ix3244z52948 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z24, dataa=>d_4_EXMPLR741, datab=>a(2), datad
      =>nx_mult_32_70_vcc_net, cin=>nx3244z25);
   modgen_add_12_ix3244z52949 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z25, dataa=>d_3_EXMPLR742, datab=>a(1), datad
      =>nx_mult_32_70_vcc_net, cin=>nx3244z26);
   modgen_add_12_ix3244z52950 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z26, dataa=>a(0), datab=>d_2_EXMPLR743, datad
      =>nx_mult_32_70_vcc_net);
   modgen_add_11_ix3244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_11_EXMPLR734, cout=>b_10_EXMPLR745, dataa=>
      a(14), datab=>a(11), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z6);
   modgen_add_11_ix3244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_10_EXMPLR735, cout=>nx3244z6, dataa=>a(11), 
      datab=>a(10), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z7);
   modgen_add_11_ix3244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_9_EXMPLR736, cout=>nx3244z7, dataa=>a(10), 
      datab=>a(9), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z8);
   modgen_add_11_ix3244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_8_EXMPLR737, cout=>nx3244z8, dataa=>a(9), datab
      =>a(8), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z9);
   modgen_add_11_ix3244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_7_EXMPLR738, cout=>nx3244z9, dataa=>a(8), datab
      =>a(7), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z10);
   modgen_add_11_ix3244z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_6_EXMPLR739, cout=>nx3244z10, dataa=>a(7), 
      datab=>a(6), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z11);
   modgen_add_11_ix3244z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_5_EXMPLR740, cout=>nx3244z11, dataa=>a(6), 
      datab=>a(5), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z12);
   modgen_add_11_ix3244z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_4_EXMPLR741, cout=>nx3244z12, dataa=>a(5), 
      datab=>a(4), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z13);
   modgen_add_11_ix3244z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_3_EXMPLR742, cout=>nx3244z13, dataa=>a(4), 
      datab=>a(3), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z14);
   modgen_add_11_ix3244z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_2_EXMPLR743, cout=>nx3244z14, dataa=>a(3), 
      datab=>a(2), datad=>nx_mult_32_70_vcc_net, cin=>nx3244z15);
   modgen_add_11_ix3244z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx3244z15, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_70_vcc_net, cin=>nx3244z16);
   modgen_add_11_ix3244z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx3244z16, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_70_vcc_net);
   ix3244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(16), datad=>nx_mult_32_70_vcc_net, cin=>
      nx3244z2);
   ix3244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx3244z5, datad=>nx_mult_32_70_vcc_net, cin=>
      b_10_EXMPLR745);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_71 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_71 ;

architecture IMPLEMENTATION of mult_32_71 is 
   signal nx1250z2, nx1250z13, nx1250z12, nx1250z11, nx1250z10, nx1250z9, 
      nx1250z8, nx1250z7, nx1250z6, nx1250z5, nx1250z4, nx1250z3, 
      nx_mult_32_71_vcc_net: std_logic ;

begin
   d(19) <= a(31) ;
   d(18) <= a(31) ;
   d(17) <= a(14) ;
   d(16) <= a(31) ;
   d(15) <= a(31) ;
   modgen_add_13_ix1250z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx1250z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z3);
   nx_mult_32_71_vcc_net <= '1';
   modgen_add_13_ix1250z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx1250z3, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z4);
   modgen_add_13_ix1250z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx1250z4, dataa=>a(11), datab=>a(9), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z5);
   modgen_add_13_ix1250z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx1250z5, dataa=>a(10), datab=>a(8), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z6);
   modgen_add_13_ix1250z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx1250z6, dataa=>a(9), datab=>a(7), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z7);
   modgen_add_13_ix1250z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx1250z7, dataa=>a(8), datab=>a(6), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z8);
   modgen_add_13_ix1250z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx1250z8, dataa=>a(7), datab=>a(5), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z9);
   modgen_add_13_ix1250z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx1250z9, dataa=>a(6), datab=>a(4), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z10);
   modgen_add_13_ix1250z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx1250z10, dataa=>a(5), datab=>a(3), 
      datad=>nx_mult_32_71_vcc_net, cin=>nx1250z11);
   modgen_add_13_ix1250z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx1250z11, dataa=>a(4), datab=>a(2), datad=>
      nx_mult_32_71_vcc_net, cin=>nx1250z12);
   modgen_add_13_ix1250z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx1250z12, dataa=>a(3), datab=>a(1), datad=>
      nx_mult_32_71_vcc_net, cin=>nx1250z13);
   modgen_add_13_ix1250z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx1250z13, dataa=>a(0), datab=>a(2), datad=>
      nx_mult_32_71_vcc_net);
   ix1250z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), datad=>nx_mult_32_71_vcc_net, cin=>
      nx1250z2);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_72 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_72 ;

architecture IMPLEMENTATION of mult_32_72 is 
   signal d_15_EXMPLR782, nx6235z2, nx6235z17, nx6235z16, nx6235z15, 
      nx6235z14, nx6235z13, nx6235z12, nx6235z11, nx6235z10, nx6235z9, 
      nx6235z8, nx6235z7, nx6235z6, nx6235z5, nx6235z4, nx6235z3, nx6235z1, 
      nx_mult_32_72_vcc_net: std_logic ;

begin
   d(19) <= nx6235z1 ;
   d(18) <= nx6235z1 ;
   d(17) <= d_15_EXMPLR782 ;
   d(16) <= d_15_EXMPLR782 ;
   ix6235z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>nx6235z1, datad=>nx_mult_32_72_vcc_net, cin=>
      nx6235z2);
   nx_mult_32_72_vcc_net <= '1';
   ix6235z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"692b",
         sum_lutc_input => "cin") 
       port map ( combout=>d_15_EXMPLR782, cout=>nx6235z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_72_vcc_net, cin=>nx6235z3);
   ix6235z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx6235z3, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z4);
   ix6235z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx6235z4, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z5);
   ix6235z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx6235z5, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z6);
   ix6235z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx6235z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z7);
   ix6235z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx6235z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z8);
   ix6235z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx6235z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z9);
   ix6235z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx6235z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z10);
   ix6235z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx6235z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z11);
   ix6235z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx6235z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z12);
   ix6235z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx6235z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_72_vcc_net, cin=>nx6235z13);
   ix6235z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_72_vcc_net, cin=>nx6235z14);
   ix6235z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_72_vcc_net, cin=>nx6235z15);
   ix6235z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"00d4",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z15, dataa=>a(3), datab=>a(0), datad=>
      nx_mult_32_72_vcc_net, cin=>nx6235z16);
   ix6235z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0050",
         sum_lutc_input => "cin") 
       port map ( cout=>nx6235z16, dataa=>a(2), datad=>nx_mult_32_72_vcc_net, 
      cin=>nx6235z17);
   ix6235z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0011") 
       port map ( cout=>nx6235z17, dataa=>a(1), datab=>a(0), datad=>
      nx_mult_32_72_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_73 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_73 ;

architecture IMPLEMENTATION of mult_32_73 is 
   signal nx253z2, nx253z13, nx253z12, nx253z11, nx253z10, nx253z9, nx253z8, 
      nx253z7, nx253z6, nx253z5, nx253z4, nx253z3, nx_mult_32_73_vcc_net: 
   std_logic ;

begin
   d(18) <= a(31) ;
   d(17) <= a(31) ;
   d(16) <= a(14) ;
   d(15) <= a(31) ;
   d(14) <= a(14) ;
   modgen_add_15_ix253z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx253z2, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z3);
   nx_mult_32_73_vcc_net <= '1';
   modgen_add_15_ix253z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx253z3, dataa=>a(11), datab=>a(10), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z4);
   modgen_add_15_ix253z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx253z4, dataa=>a(10), datab=>a(9), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z5);
   modgen_add_15_ix253z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx253z5, dataa=>a(9), datab=>a(8), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z6);
   modgen_add_15_ix253z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx253z6, dataa=>a(8), datab=>a(7), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z7);
   modgen_add_15_ix253z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx253z7, dataa=>a(7), datab=>a(6), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z8);
   modgen_add_15_ix253z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx253z8, dataa=>a(6), datab=>a(5), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z9);
   modgen_add_15_ix253z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx253z9, dataa=>a(5), datab=>a(4), 
      datad=>nx_mult_32_73_vcc_net, cin=>nx253z10);
   modgen_add_15_ix253z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z10, dataa=>a(4), datab=>a(3), datad=>
      nx_mult_32_73_vcc_net, cin=>nx253z11);
   modgen_add_15_ix253z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z11, dataa=>a(3), datab=>a(2), datad=>
      nx_mult_32_73_vcc_net, cin=>nx253z12);
   modgen_add_15_ix253z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx253z12, dataa=>a(2), datab=>a(1), datad=>
      nx_mult_32_73_vcc_net, cin=>nx253z13);
   modgen_add_15_ix253z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx253z13, dataa=>a(0), datab=>a(1), datad=>
      nx_mult_32_73_vcc_net);
   ix253z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), datad=>nx_mult_32_73_vcc_net, cin=>nx253z2
   );
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity mult_32_74 is 
   port (
      a : IN std_logic_vector (31 DOWNTO 0) ;
      b : IN std_logic_vector (31 DOWNTO 0) ;
      d : OUT std_logic_vector (31 DOWNTO 0)) ;
end mult_32_74 ;

architecture IMPLEMENTATION of mult_32_74 is 
   signal d_13_EXMPLR828, nx5238z2, nx5238z15, nx5238z14, nx5238z13, 
      nx5238z12, nx5238z11, nx5238z10, nx5238z9, nx5238z8, nx5238z7, 
      nx5238z6, nx5238z5, nx5238z4, nx5238z3, nx_mult_32_74_vcc_net: 
   std_logic ;

begin
   d(20) <= a(31) ;
   d(19) <= a(31) ;
   d(17) <= d_13_EXMPLR828 ;
   d(16) <= d_13_EXMPLR828 ;
   ix5238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f000",
         sum_lutc_input => "cin") 
       port map ( combout=>d(18), datad=>nx_mult_32_74_vcc_net, cin=>
      nx5238z2);
   nx_mult_32_74_vcc_net <= '1';
   ix5238z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d_13_EXMPLR828, cout=>nx5238z2, dataa=>a(31), 
      datab=>a(14), datad=>nx_mult_32_74_vcc_net, cin=>nx5238z3);
   ix5238z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), cout=>nx5238z3, dataa=>a(31), datab=>a(14), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z4);
   ix5238z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx5238z4, dataa=>a(14), datab=>a(11), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z5);
   ix5238z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx5238z5, dataa=>a(14), datab=>a(10), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z6);
   ix5238z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx5238z6, dataa=>a(14), datab=>a(9), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z7);
   ix5238z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx5238z7, dataa=>a(11), datab=>a(8), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z8);
   ix5238z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx5238z8, dataa=>a(10), datab=>a(7), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z9);
   ix5238z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx5238z9, dataa=>a(9), datab=>a(6), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z10);
   ix5238z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx5238z10, dataa=>a(8), datab=>a(5), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z11);
   ix5238z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx5238z11, dataa=>a(7), datab=>a(4), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z12);
   ix5238z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx5238z12, dataa=>a(6), datab=>a(3), 
      datad=>nx_mult_32_74_vcc_net, cin=>nx5238z13);
   ix5238z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z13, dataa=>a(5), datab=>a(2), datad=>
      nx_mult_32_74_vcc_net, cin=>nx5238z14);
   ix5238z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"00e8",
         sum_lutc_input => "cin") 
       port map ( cout=>nx5238z14, dataa=>a(4), datab=>a(1), datad=>
      nx_mult_32_74_vcc_net, cin=>nx5238z15);
   ix5238z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0088") 
       port map ( cout=>nx5238z15, dataa=>a(0), datab=>a(3), datad=>
      nx_mult_32_74_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_0 ;

architecture IMPLEMENTATION of add_16_0 is 
   signal nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, nx2247z28, 
      nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, nx2247z10, 
      nx2247z7, nx2247z5, nx2247z4, nx_add_16_0_vcc_net: std_logic ;

begin
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z10, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_0_vcc_net, cin=>nx2247z13);
   nx_add_16_0_vcc_net <= '1';
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z13, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_0_vcc_net, cin=>nx2247z16);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z16, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z19);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z19, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z22);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z22, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z25);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z25, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z28);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z28, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z31);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z31, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z34);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z34, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z37);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z37, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z40);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z40, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z43);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z43, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_0_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_0_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z5);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z5, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z7);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z7, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_0_vcc_net, cin=>nx2247z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_1 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_1 ;

architecture IMPLEMENTATION of add_16_1 is 
   signal nx2247z39, nx2247z36, nx2247z33, nx2247z30, nx2247z27, nx2247z24, 
      nx2247z21, nx2247z18, nx2247z15, nx2247z13, nx2247z11, nx2247z8, 
      nx2247z6, nx2247z5, nx2247z4, nx_add_16_1_vcc_net: std_logic ;

begin
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z6, dataa=>b(15), datab=>a(12), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z8);
   nx_add_16_1_vcc_net <= '1';
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z8, dataa=>b(11), datab=>a(11), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z11);
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z11, dataa=>b(11), datab=>
      a(10), datad=>nx_add_16_1_vcc_net, cin=>nx2247z13);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z13, dataa=>b(11), datab=>a(9), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z15);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z15, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z18);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z18, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z21);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z21, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z24);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z24, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z27);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z27, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z30);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z30, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z33);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z33, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z36);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z36, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z39);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z39, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_1_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_1_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z5);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z5, dataa=>b(15), datab=>a(15), 
      datad=>nx_add_16_1_vcc_net, cin=>nx2247z6);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_2 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_2 ;

architecture IMPLEMENTATION of add_16_2 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_2_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_2_vcc_net, cin=>nx2247z19);
   nx_add_16_2_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_2_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_2_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_2_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_2_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_2_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_3 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_3 ;

architecture IMPLEMENTATION of add_16_3 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_3_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_3_vcc_net, cin=>nx2247z19);
   nx_add_16_3_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_3_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_3_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_3_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_3_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_3_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_4 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_4 ;

architecture IMPLEMENTATION of add_16_4 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_4_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_4_vcc_net, cin=>nx2247z19);
   nx_add_16_4_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_4_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_4_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_4_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_4_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_4_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_5 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_5 ;

architecture IMPLEMENTATION of add_16_5 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_5_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_5_vcc_net, cin=>nx2247z19);
   nx_add_16_5_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_5_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_5_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_5_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_5_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_5_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_6 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_6 ;

architecture IMPLEMENTATION of add_16_6 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_6_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_6_vcc_net, cin=>nx2247z19);
   nx_add_16_6_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_6_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_6_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_6_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_6_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_6_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_7 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_7 ;

architecture IMPLEMENTATION of add_16_7 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_7_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_7_vcc_net, cin=>nx2247z19);
   nx_add_16_7_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_7_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_7_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_7_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_7_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_7_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_8 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_8 ;

architecture IMPLEMENTATION of add_16_8 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_8_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_8_vcc_net, cin=>nx2247z19);
   nx_add_16_8_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_8_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_8_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_8_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_8_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_8_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_9 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_9 ;

architecture IMPLEMENTATION of add_16_9 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_9_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_9_vcc_net, cin=>nx2247z19);
   nx_add_16_9_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_9_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_9_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_9_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_9_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_9_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_10 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_10 ;

architecture IMPLEMENTATION of add_16_10 is 
   signal nx2247z41, nx2247z38, nx2247z35, nx2247z32, nx2247z29, nx2247z26, 
      nx2247z23, nx2247z20, nx2247z17, nx2247z15, nx2247z13, nx2247z10, 
      nx2247z8, nx2247z6, nx2247z4, nx_add_16_10_vcc_net: std_logic ;

begin
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z10, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_10_vcc_net, cin=>nx2247z13);
   nx_add_16_10_vcc_net <= '1';
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z13, dataa=>b(11), datab=>
      a(10), datad=>nx_add_16_10_vcc_net, cin=>nx2247z15);
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z15, dataa=>b(11), datab=>a(9), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z17);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z17, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z20);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z20, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z23);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z23, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z26);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z26, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z29);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z29, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z32);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z32, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z35);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z35, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z38);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z38, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z41);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z41, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_10_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_10_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(15), datab=>a(13), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z8);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z8, dataa=>b(15), datab=>a(12), 
      datad=>nx_add_16_10_vcc_net, cin=>nx2247z10);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_11 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_11 ;

architecture IMPLEMENTATION of add_16_11 is 
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_11_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_11_vcc_net, cin=>nx2247z18);
   nx_add_16_11_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_11_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_11_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(15), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_11_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_11_vcc_net, cin=>nx2247z15);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_12 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_12 ;

architecture IMPLEMENTATION of add_16_12 is 
   signal nx2247z45, nx2247z42, nx2247z39, nx2247z36, nx2247z33, nx2247z30, 
      nx2247z27, nx2247z24, nx2247z21, nx2247z18, nx2247z15, nx2247z12, 
      nx2247z9, nx2247z6, nx2247z4, nx_add_16_12_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z15, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_12_vcc_net, cin=>nx2247z18);
   nx_add_16_12_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z18, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z21);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z21, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z24);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z24, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z27);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z27, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z30);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z30, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z33);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z33, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z36);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z36, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z39);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z39, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z42);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z42, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z45);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z45, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_12_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_12_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(15), datab=>a(14), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z6);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z6, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z9);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z9, dataa=>b(12), datab=>a(12), 
      datad=>nx_add_16_12_vcc_net, cin=>nx2247z12);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z12, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_12_vcc_net, cin=>nx2247z15);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_13 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_13 ;

architecture IMPLEMENTATION of add_16_13 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_13_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_13_vcc_net, cin=>nx2247z19);
   nx_add_16_13_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_13_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_13_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_13_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_13_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_13_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_14 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_14 ;

architecture IMPLEMENTATION of add_16_14 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_14_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_14_vcc_net, cin=>nx2247z19);
   nx_add_16_14_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_14_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_14_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_14_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_14_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_14_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_16_15 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (15 DOWNTO 0) ;
      b : IN std_logic_vector (15 DOWNTO 0) ;
      d : OUT std_logic_vector (15 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_16_15 ;

architecture IMPLEMENTATION of add_16_15 is 
   signal nx2247z46, nx2247z43, nx2247z40, nx2247z37, nx2247z34, nx2247z31, 
      nx2247z28, nx2247z25, nx2247z22, nx2247z19, nx2247z16, nx2247z13, 
      nx2247z10, nx2247z7, nx2247z4, nx_add_16_15_vcc_net: std_logic ;

begin
   ix2247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(10), cout=>nx2247z16, dataa=>b(10), datab=>
      a(10), datad=>nx_add_16_15_vcc_net, cin=>nx2247z19);
   nx_add_16_15_vcc_net <= '1';
   ix2247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(9), cout=>nx2247z19, dataa=>b(9), datab=>a(9), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z22);
   ix2247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), cout=>nx2247z22, dataa=>b(8), datab=>a(8), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z25);
   ix2247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx2247z25, dataa=>b(7), datab=>a(7), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z28);
   ix2247z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx2247z28, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z31);
   ix2247z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx2247z31, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z34);
   ix2247z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx2247z34, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z37);
   ix2247z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx2247z37, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z40);
   ix2247z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx2247z40, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z43);
   ix2247z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx2247z43, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z46);
   ix2247z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"6688") 
       port map ( combout=>d(0), cout=>nx2247z46, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_16_15_vcc_net);
   ix2247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9600",
         sum_lutc_input => "cin") 
       port map ( combout=>d(15), dataa=>b(15), datab=>a(15), datad=>
      nx_add_16_15_vcc_net, cin=>nx2247z4);
   ix2247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(14), cout=>nx2247z4, dataa=>b(14), datab=>a(14), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z7);
   ix2247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(13), cout=>nx2247z7, dataa=>b(13), datab=>a(13), 
      datad=>nx_add_16_15_vcc_net, cin=>nx2247z10);
   ix2247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(12), cout=>nx2247z10, dataa=>b(12), datab=>
      a(12), datad=>nx_add_16_15_vcc_net, cin=>nx2247z13);
   ix2247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(11), cout=>nx2247z13, dataa=>b(11), datab=>
      a(11), datad=>nx_add_16_15_vcc_net, cin=>nx2247z16);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir is 
   port (
      clk : IN std_logic ;
      i_data : IN std_logic_vector (15 DOWNTO 0) ;
      o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
end fir ;

architecture low_pass of fir is 
   component mult_32_60
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_61
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_62
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_63
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_64
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_65
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_66
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_67
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_68
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_69
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_70
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_71
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_72
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_73
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component mult_32_74
      port (
         a : IN std_logic_vector (31 DOWNTO 0) ;
         b : IN std_logic_vector (31 DOWNTO 0) ;
         d : OUT std_logic_vector (31 DOWNTO 0)) ;
   end component ;
   component add_16_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_1
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_2
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_3
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_4
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_5
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_6
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_7
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_8
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_9
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_10
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_11
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_12
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_13
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_14
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component add_16_15
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (15 DOWNTO 0) ;
         b : IN std_logic_vector (15 DOWNTO 0) ;
         d : OUT std_logic_vector (15 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   signal tap_17_14, tap_17_10, tap_17_9, tap_17_8, tap_17_7, tap_17_6, 
      tap_17_5, tap_17_4, tap_17_3, tap_17_2, tap_17_1, tap_17_0, tap_16_14, 
      tap_16_10, tap_16_9, tap_16_8, tap_16_7, tap_16_6, tap_16_5, tap_16_4, 
      tap_16_3, tap_16_2, tap_16_1, tap_16_0, tap_15_14, tap_15_10, tap_15_9, 
      tap_15_8, tap_15_7, tap_15_6, tap_15_5, tap_15_4, tap_15_3, tap_15_2, 
      tap_15_1, tap_15_0, tap_14_14, tap_14_10, tap_14_9, tap_14_8, tap_14_7, 
      tap_14_6, tap_14_5, tap_14_4, tap_14_3, tap_14_2, tap_14_1, tap_14_0, 
      tap_13_14, tap_13_10, tap_13_9, tap_13_8, tap_13_7, tap_13_6, tap_13_5, 
      tap_13_4, tap_13_3, tap_13_2, tap_13_1, tap_13_0, tap_12_14, tap_12_10, 
      tap_12_9, tap_12_8, tap_12_7, tap_12_6, tap_12_5, tap_12_4, tap_12_3, 
      tap_12_2, tap_12_1, tap_12_0, tap_11_14, tap_11_10, tap_11_9, tap_11_8, 
      tap_11_7, tap_11_6, tap_11_5, tap_11_4, tap_11_3, tap_11_2, tap_11_1, 
      tap_11_0, tap_10_14, tap_10_10, tap_10_9, tap_10_8, tap_10_7, tap_10_6, 
      tap_10_5, tap_10_4, tap_10_3, tap_10_2, tap_10_1, tap_10_0, tap_9_14, 
      tap_9_10, tap_9_9, tap_9_8, tap_9_7, tap_9_6, tap_9_5, tap_9_4, 
      tap_9_3, tap_9_2, tap_9_1, tap_9_0, tap_8_14, tap_8_10, tap_8_9, 
      tap_8_8, tap_8_7, tap_8_6, tap_8_5, tap_8_4, tap_8_3, tap_8_2, tap_8_1, 
      tap_8_0, tap_7_14, tap_7_10, tap_7_9, tap_7_8, tap_7_7, tap_7_6, 
      tap_7_5, tap_7_4, tap_7_3, tap_7_2, tap_7_1, tap_7_0, tap_6_14, 
      tap_6_10, tap_6_9, tap_6_8, tap_6_7, tap_6_6, tap_6_5, tap_6_4, 
      tap_6_3, tap_6_2, tap_6_1, tap_6_0, tap_5_14, tap_5_10, tap_5_9, 
      tap_5_8, tap_5_7, tap_5_6, tap_5_5, tap_5_4, tap_5_3, tap_5_2, tap_5_1, 
      tap_5_0, tap_4_14, tap_4_10, tap_4_9, tap_4_8, tap_4_7, tap_4_6, 
      tap_4_5, tap_4_4, tap_4_3, tap_4_2, tap_4_1, tap_4_0, tap_3_14, 
      tap_3_10, tap_3_9, tap_3_8, tap_3_7, tap_3_6, tap_3_5, tap_3_4, 
      tap_3_3, tap_3_2, tap_3_1, tap_3_0, tap_2_14, tap_2_10, tap_2_9, 
      tap_2_8, tap_2_7, tap_2_6, tap_2_5, tap_2_4, tap_2_3, tap_2_2, tap_2_1, 
      tap_2_0, tap_1_14, tap_1_10, tap_1_9, tap_1_8, tap_1_7, tap_1_6, 
      tap_1_5, tap_1_4, tap_1_3, tap_1_2, tap_1_1, tap_1_0, prod_17_14, 
      prod_17_13, prod_17_12, prod_17_11, prod_17_10, prod_17_9, prod_17_8, 
      prod_17_7, prod_17_6, prod_17_5, prod_17_4, prod_17_3, prod_17_2, 
      prod_17_1, prod_17_0, prod_16_13, prod_16_12, prod_16_11, prod_16_10, 
      prod_16_9, prod_16_8, prod_16_7, prod_16_6, prod_16_5, prod_16_4, 
      prod_16_3, prod_16_2, prod_16_1, prod_16_0, prod_15_13, prod_15_12, 
      prod_15_11, prod_15_10, prod_15_9, prod_15_8, prod_15_7, prod_15_6, 
      prod_15_5, prod_15_4, prod_15_3, prod_15_2, prod_15_1, prod_15_0, 
      prod_13_14, prod_13_13, prod_13_12, prod_13_11, prod_13_10, prod_13_9, 
      prod_13_8, prod_13_7, prod_13_6, prod_13_5, prod_13_4, prod_13_3, 
      prod_13_2, prod_13_1, prod_13_0, prod_12_14, prod_12_13, prod_12_12, 
      prod_12_11, prod_12_10, prod_12_9, prod_12_8, prod_12_7, prod_12_6, 
      prod_12_5, prod_12_4, prod_12_3, prod_12_2, prod_12_1, prod_12_0, 
      prod_11_14, prod_11_13, prod_11_12, prod_11_11, prod_11_10, prod_11_9, 
      prod_11_8, prod_11_7, prod_11_6, prod_11_5, prod_11_4, prod_11_3, 
      prod_11_2, prod_11_1, prod_11_0, prod_10_14, prod_10_13, prod_10_12, 
      prod_10_11, prod_10_10, prod_10_9, prod_10_8, prod_10_7, prod_10_6, 
      prod_10_5, prod_10_4, prod_10_3, prod_10_2, prod_10_1, prod_10_0, 
      prod_9_14, prod_9_13, prod_9_12, prod_9_11, prod_9_10, prod_9_9, 
      prod_9_8, prod_9_7, prod_9_6, prod_9_5, prod_9_4, prod_9_3, prod_9_2, 
      prod_9_1, prod_9_0, prod_8_14, prod_8_13, prod_8_12, prod_8_11, 
      prod_8_10, prod_8_9, prod_8_8, prod_8_7, prod_8_6, prod_8_5, prod_8_4, 
      prod_8_3, prod_8_2, prod_8_1, prod_8_0, prod_7_14, prod_7_13, 
      prod_7_12, prod_7_11, prod_7_10, prod_7_9, prod_7_8, prod_7_7, 
      prod_7_6, prod_7_5, prod_7_4, prod_7_3, prod_7_2, prod_7_1, prod_7_0, 
      prod_6_14, prod_6_13, prod_6_12, prod_6_11, prod_6_10, prod_6_9, 
      prod_6_8, prod_6_7, prod_6_6, prod_6_5, prod_6_4, prod_6_3, prod_6_2, 
      prod_6_1, prod_6_0, prod_5_14, prod_5_13, prod_5_12, prod_5_11, 
      prod_5_10, prod_5_9, prod_5_8, prod_5_7, prod_5_6, prod_5_5, prod_5_4, 
      prod_5_3, prod_5_2, prod_5_1, prod_5_0: std_logic ;
   
   signal prod_3: std_logic_vector (13 DOWNTO 0) ;
   
   signal prod_2: std_logic_vector (13 DOWNTO 0) ;
   
   signal prod_1: std_logic_vector (14 DOWNTO 0) ;
   
   signal nx3_bus_15, nx3_bus_14, nx3_bus_13, nx3_bus_12, nx3_bus_11, 
      nx3_bus_10, nx3_bus_9, nx3_bus_8, nx3_bus_7, nx3_bus_6, nx3_bus_5, 
      nx3_bus_4, nx3_bus_3, nx3_bus_2, nx3_bus_1, nx3_bus_0, nx23_bus_15, 
      nx23_bus_14, nx23_bus_13, nx23_bus_12, nx23_bus_11, nx23_bus_10, 
      nx23_bus_9, nx23_bus_8, nx23_bus_7, nx23_bus_6, nx23_bus_5, nx23_bus_4, 
      nx23_bus_3, nx23_bus_2, nx23_bus_1, nx23_bus_0, nx43_bus_15, 
      nx43_bus_14, nx43_bus_13, nx43_bus_12, nx43_bus_11, nx43_bus_10, 
      nx43_bus_9, nx43_bus_8, nx43_bus_7, nx43_bus_6, nx43_bus_5, nx43_bus_4, 
      nx43_bus_3, nx43_bus_2, nx43_bus_1, nx43_bus_0, nx63_bus_15, 
      nx63_bus_14, nx63_bus_13, nx63_bus_12, nx63_bus_11, nx63_bus_10, 
      nx63_bus_9, nx63_bus_8, nx63_bus_7, nx63_bus_6, nx63_bus_5, nx63_bus_4, 
      nx63_bus_3, nx63_bus_2, nx63_bus_1, nx63_bus_0, nx83_bus_15, 
      nx83_bus_14, nx83_bus_13, nx83_bus_12, nx83_bus_11, nx83_bus_10, 
      nx83_bus_9, nx83_bus_8, nx83_bus_7, nx83_bus_6, nx83_bus_5, nx83_bus_4, 
      nx83_bus_3, nx83_bus_2, nx83_bus_1, nx83_bus_0, nx103_bus_15, 
      nx103_bus_14, nx103_bus_13, nx103_bus_12, nx103_bus_11, nx103_bus_10, 
      nx103_bus_9, nx103_bus_8, nx103_bus_7, nx103_bus_6, nx103_bus_5, 
      nx103_bus_4, nx103_bus_3, nx103_bus_2, nx103_bus_1, nx103_bus_0, 
      nx123_bus_15, nx123_bus_14, nx123_bus_13, nx123_bus_12, nx123_bus_11, 
      nx123_bus_10, nx123_bus_9, nx123_bus_8, nx123_bus_7, nx123_bus_6, 
      nx123_bus_5, nx123_bus_4, nx123_bus_3, nx123_bus_2, nx123_bus_1, 
      nx123_bus_0, nx143_bus_15, nx143_bus_14, nx143_bus_13, nx143_bus_12, 
      nx143_bus_11, nx143_bus_10, nx143_bus_9, nx143_bus_8, nx143_bus_7, 
      nx143_bus_6, nx143_bus_5, nx143_bus_4, nx143_bus_3, nx143_bus_2, 
      nx143_bus_1, nx143_bus_0, nx163_bus_15, nx163_bus_14, nx163_bus_13, 
      nx163_bus_12, nx163_bus_11, nx163_bus_10, nx163_bus_9, nx163_bus_8, 
      nx163_bus_7, nx163_bus_6, nx163_bus_5, nx163_bus_4, nx163_bus_3, 
      nx163_bus_2, nx163_bus_1, nx163_bus_0, nx183_bus_15, nx183_bus_14, 
      nx183_bus_13, nx183_bus_12, nx183_bus_11, nx183_bus_10, nx183_bus_9, 
      nx183_bus_8, nx183_bus_7, nx183_bus_6, nx183_bus_5, nx183_bus_4, 
      nx183_bus_3, nx183_bus_2, nx183_bus_1, nx183_bus_0, nx203_bus_15, 
      nx203_bus_14, nx203_bus_13, nx203_bus_12, nx203_bus_11, nx203_bus_10, 
      nx203_bus_9, nx203_bus_8, nx203_bus_7, nx203_bus_6, nx203_bus_5, 
      nx203_bus_4, nx203_bus_3, nx203_bus_2, nx203_bus_1, nx203_bus_0, 
      nx223_bus_15, nx223_bus_14, nx223_bus_13, nx223_bus_12, nx223_bus_11, 
      nx223_bus_10, nx223_bus_9, nx223_bus_8, nx223_bus_7, nx223_bus_6, 
      nx223_bus_5, nx223_bus_4, nx223_bus_3, nx223_bus_2, nx223_bus_1, 
      nx223_bus_0: std_logic ;
   
   signal nx243_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal nx262_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal nx281_bus: std_logic_vector (16 DOWNTO 1) ;
   
   signal DANGLING : std_logic_vector (1057 downto 0 );

begin
   prod_1_mults21_0 : mult_32_60 port map ( a(31)=>tap_1_14, a(30)=>DANGLING
      (0), a(29)=>DANGLING(1), a(28)=>DANGLING(2), a(27)=>DANGLING(3), a(26)
      =>DANGLING(4), a(25)=>DANGLING(5), a(24)=>DANGLING(6), a(23)=>DANGLING
      (7), a(22)=>DANGLING(8), a(21)=>DANGLING(9), a(20)=>DANGLING(10), 
      a(19)=>DANGLING(11), a(18)=>DANGLING(12), a(17)=>DANGLING(13), a(16)=>
      DANGLING(14), a(15)=>DANGLING(15), a(14)=>tap_1_14, a(13)=>DANGLING(16
      ), a(12)=>DANGLING(17), a(11)=>tap_1_14, a(10)=>tap_1_10, a(9)=>
      tap_1_9, a(8)=>tap_1_8, a(7)=>tap_1_7, a(6)=>tap_1_6, a(5)=>tap_1_5, 
      a(4)=>tap_1_4, a(3)=>tap_1_3, a(2)=>tap_1_2, a(1)=>tap_1_1, a(0)=>
      tap_1_0, b(31)=>DANGLING(18), b(30)=>DANGLING(19), b(29)=>DANGLING(20), 
      b(28)=>DANGLING(21), b(27)=>DANGLING(22), b(26)=>DANGLING(23), b(25)=>
      DANGLING(24), b(24)=>DANGLING(25), b(23)=>DANGLING(26), b(22)=>
      DANGLING(27), b(21)=>DANGLING(28), b(20)=>DANGLING(29), b(19)=>
      DANGLING(30), b(18)=>DANGLING(31), b(17)=>DANGLING(32), b(16)=>
      DANGLING(33), b(15)=>DANGLING(34), b(14)=>DANGLING(35), b(13)=>
      DANGLING(36), b(12)=>DANGLING(37), b(11)=>DANGLING(38), b(10)=>
      DANGLING(39), b(9)=>DANGLING(40), b(8)=>DANGLING(41), b(7)=>DANGLING(
      42), b(6)=>DANGLING(43), b(5)=>DANGLING(44), b(4)=>DANGLING(45), b(3)
      =>DANGLING(46), b(2)=>DANGLING(47), b(1)=>DANGLING(48), b(0)=>DANGLING
      (49), d(31)=>DANGLING(50), d(30)=>DANGLING(51), d(29)=>DANGLING(52), 
      d(28)=>DANGLING(53), d(27)=>DANGLING(54), d(26)=>DANGLING(55), d(25)=>
      DANGLING(56), d(24)=>DANGLING(57), d(23)=>DANGLING(58), d(22)=>
      DANGLING(59), d(21)=>DANGLING(60), d(20)=>prod_1(14), d(19)=>
      prod_1(13), d(18)=>prod_1(12), d(17)=>prod_1(11), d(16)=>prod_1(10), 
      d(15)=>prod_1(9), d(14)=>prod_1(8), d(13)=>prod_1(7), d(12)=>prod_1(6), 
      d(11)=>prod_1(5), d(10)=>prod_1(4), d(9)=>prod_1(3), d(8)=>prod_1(2), 
      d(7)=>prod_1(1), d(6)=>prod_1(0), d(5)=>DANGLING(61), d(4)=>DANGLING(
      62), d(3)=>DANGLING(63), d(2)=>DANGLING(64), d(1)=>DANGLING(65), d(0)
      =>DANGLING(66));
   prod_2_mults19_1 : mult_32_61 port map ( a(31)=>tap_2_14, a(30)=>DANGLING
      (67), a(29)=>DANGLING(68), a(28)=>DANGLING(69), a(27)=>DANGLING(70), 
      a(26)=>DANGLING(71), a(25)=>DANGLING(72), a(24)=>DANGLING(73), a(23)=>
      DANGLING(74), a(22)=>DANGLING(75), a(21)=>DANGLING(76), a(20)=>
      DANGLING(77), a(19)=>DANGLING(78), a(18)=>DANGLING(79), a(17)=>
      DANGLING(80), a(16)=>DANGLING(81), a(15)=>DANGLING(82), a(14)=>
      tap_2_14, a(13)=>DANGLING(83), a(12)=>DANGLING(84), a(11)=>tap_2_14, 
      a(10)=>tap_2_10, a(9)=>tap_2_9, a(8)=>tap_2_8, a(7)=>tap_2_7, a(6)=>
      tap_2_6, a(5)=>tap_2_5, a(4)=>tap_2_4, a(3)=>tap_2_3, a(2)=>tap_2_2, 
      a(1)=>tap_2_1, a(0)=>tap_2_0, b(31)=>DANGLING(85), b(30)=>DANGLING(86), 
      b(29)=>DANGLING(87), b(28)=>DANGLING(88), b(27)=>DANGLING(89), b(26)=>
      DANGLING(90), b(25)=>DANGLING(91), b(24)=>DANGLING(92), b(23)=>
      DANGLING(93), b(22)=>DANGLING(94), b(21)=>DANGLING(95), b(20)=>
      DANGLING(96), b(19)=>DANGLING(97), b(18)=>DANGLING(98), b(17)=>
      DANGLING(99), b(16)=>DANGLING(100), b(15)=>DANGLING(101), b(14)=>
      DANGLING(102), b(13)=>DANGLING(103), b(12)=>DANGLING(104), b(11)=>
      DANGLING(105), b(10)=>DANGLING(106), b(9)=>DANGLING(107), b(8)=>
      DANGLING(108), b(7)=>DANGLING(109), b(6)=>DANGLING(110), b(5)=>
      DANGLING(111), b(4)=>DANGLING(112), b(3)=>DANGLING(113), b(2)=>
      DANGLING(114), b(1)=>DANGLING(115), b(0)=>DANGLING(116), d(31)=>
      DANGLING(117), d(30)=>DANGLING(118), d(29)=>DANGLING(119), d(28)=>
      DANGLING(120), d(27)=>DANGLING(121), d(26)=>DANGLING(122), d(25)=>
      DANGLING(123), d(24)=>DANGLING(124), d(23)=>DANGLING(125), d(22)=>
      DANGLING(126), d(21)=>DANGLING(127), d(20)=>DANGLING(128), d(19)=>
      DANGLING(129), d(18)=>prod_2(13), d(17)=>prod_2(12), d(16)=>prod_2(11), 
      d(15)=>prod_2(10), d(14)=>prod_2(9), d(13)=>prod_2(8), d(12)=>
      prod_2(7), d(11)=>prod_2(6), d(10)=>prod_2(5), d(9)=>prod_2(4), d(8)=>
      prod_2(3), d(7)=>prod_2(2), d(6)=>prod_2(1), d(5)=>prod_2(0), d(4)=>
      DANGLING(130), d(3)=>DANGLING(131), d(2)=>DANGLING(132), d(1)=>
      DANGLING(133), d(0)=>DANGLING(134));
   prod_3_mults20_2 : mult_32_62 port map ( a(31)=>tap_3_14, a(30)=>DANGLING
      (135), a(29)=>DANGLING(136), a(28)=>DANGLING(137), a(27)=>DANGLING(138
      ), a(26)=>DANGLING(139), a(25)=>DANGLING(140), a(24)=>DANGLING(141), 
      a(23)=>DANGLING(142), a(22)=>DANGLING(143), a(21)=>DANGLING(144), 
      a(20)=>DANGLING(145), a(19)=>DANGLING(146), a(18)=>DANGLING(147), 
      a(17)=>DANGLING(148), a(16)=>DANGLING(149), a(15)=>DANGLING(150), 
      a(14)=>tap_3_14, a(13)=>DANGLING(151), a(12)=>DANGLING(152), a(11)=>
      tap_3_14, a(10)=>tap_3_10, a(9)=>tap_3_9, a(8)=>tap_3_8, a(7)=>tap_3_7, 
      a(6)=>tap_3_6, a(5)=>tap_3_5, a(4)=>tap_3_4, a(3)=>tap_3_3, a(2)=>
      tap_3_2, a(1)=>tap_3_1, a(0)=>tap_3_0, b(31)=>DANGLING(153), b(30)=>
      DANGLING(154), b(29)=>DANGLING(155), b(28)=>DANGLING(156), b(27)=>
      DANGLING(157), b(26)=>DANGLING(158), b(25)=>DANGLING(159), b(24)=>
      DANGLING(160), b(23)=>DANGLING(161), b(22)=>DANGLING(162), b(21)=>
      DANGLING(163), b(20)=>DANGLING(164), b(19)=>DANGLING(165), b(18)=>
      DANGLING(166), b(17)=>DANGLING(167), b(16)=>DANGLING(168), b(15)=>
      DANGLING(169), b(14)=>DANGLING(170), b(13)=>DANGLING(171), b(12)=>
      DANGLING(172), b(11)=>DANGLING(173), b(10)=>DANGLING(174), b(9)=>
      DANGLING(175), b(8)=>DANGLING(176), b(7)=>DANGLING(177), b(6)=>
      DANGLING(178), b(5)=>DANGLING(179), b(4)=>DANGLING(180), b(3)=>
      DANGLING(181), b(2)=>DANGLING(182), b(1)=>DANGLING(183), b(0)=>
      DANGLING(184), d(31)=>DANGLING(185), d(30)=>DANGLING(186), d(29)=>
      DANGLING(187), d(28)=>DANGLING(188), d(27)=>DANGLING(189), d(26)=>
      DANGLING(190), d(25)=>DANGLING(191), d(24)=>DANGLING(192), d(23)=>
      DANGLING(193), d(22)=>DANGLING(194), d(21)=>DANGLING(195), d(20)=>
      DANGLING(196), d(19)=>prod_3(13), d(18)=>prod_3(12), d(17)=>prod_3(11), 
      d(16)=>prod_3(10), d(15)=>prod_3(9), d(14)=>prod_3(8), d(13)=>
      prod_3(7), d(12)=>prod_3(6), d(11)=>prod_3(5), d(10)=>prod_3(4), d(9)
      =>prod_3(3), d(8)=>prod_3(2), d(7)=>prod_3(1), d(6)=>prod_3(0), d(5)=>
      DANGLING(197), d(4)=>DANGLING(198), d(3)=>DANGLING(199), d(2)=>
      DANGLING(200), d(1)=>DANGLING(201), d(0)=>DANGLING(202));
   prod_5_mults20_3 : mult_32_63 port map ( a(31)=>tap_5_14, a(30)=>DANGLING
      (203), a(29)=>DANGLING(204), a(28)=>DANGLING(205), a(27)=>DANGLING(206
      ), a(26)=>DANGLING(207), a(25)=>DANGLING(208), a(24)=>DANGLING(209), 
      a(23)=>DANGLING(210), a(22)=>DANGLING(211), a(21)=>DANGLING(212), 
      a(20)=>DANGLING(213), a(19)=>DANGLING(214), a(18)=>DANGLING(215), 
      a(17)=>DANGLING(216), a(16)=>DANGLING(217), a(15)=>DANGLING(218), 
      a(14)=>tap_5_14, a(13)=>DANGLING(219), a(12)=>DANGLING(220), a(11)=>
      tap_5_14, a(10)=>tap_5_10, a(9)=>tap_5_9, a(8)=>tap_5_8, a(7)=>tap_5_7, 
      a(6)=>tap_5_6, a(5)=>tap_5_5, a(4)=>tap_5_4, a(3)=>tap_5_3, a(2)=>
      tap_5_2, a(1)=>tap_5_1, a(0)=>tap_5_0, b(31)=>DANGLING(221), b(30)=>
      DANGLING(222), b(29)=>DANGLING(223), b(28)=>DANGLING(224), b(27)=>
      DANGLING(225), b(26)=>DANGLING(226), b(25)=>DANGLING(227), b(24)=>
      DANGLING(228), b(23)=>DANGLING(229), b(22)=>DANGLING(230), b(21)=>
      DANGLING(231), b(20)=>DANGLING(232), b(19)=>DANGLING(233), b(18)=>
      DANGLING(234), b(17)=>DANGLING(235), b(16)=>DANGLING(236), b(15)=>
      DANGLING(237), b(14)=>DANGLING(238), b(13)=>DANGLING(239), b(12)=>
      DANGLING(240), b(11)=>DANGLING(241), b(10)=>DANGLING(242), b(9)=>
      DANGLING(243), b(8)=>DANGLING(244), b(7)=>DANGLING(245), b(6)=>
      DANGLING(246), b(5)=>DANGLING(247), b(4)=>DANGLING(248), b(3)=>
      DANGLING(249), b(2)=>DANGLING(250), b(1)=>DANGLING(251), b(0)=>
      DANGLING(252), d(31)=>DANGLING(253), d(30)=>DANGLING(254), d(29)=>
      DANGLING(255), d(28)=>DANGLING(256), d(27)=>DANGLING(257), d(26)=>
      DANGLING(258), d(25)=>DANGLING(259), d(24)=>DANGLING(260), d(23)=>
      DANGLING(261), d(22)=>DANGLING(262), d(21)=>DANGLING(263), d(20)=>
      DANGLING(264), d(19)=>prod_5_14, d(18)=>prod_5_13, d(17)=>prod_5_12, 
      d(16)=>prod_5_11, d(15)=>prod_5_10, d(14)=>prod_5_9, d(13)=>prod_5_8, 
      d(12)=>prod_5_7, d(11)=>prod_5_6, d(10)=>prod_5_5, d(9)=>prod_5_4, 
      d(8)=>prod_5_3, d(7)=>prod_5_2, d(6)=>prod_5_1, d(5)=>prod_5_0, d(4)=>
      DANGLING(265), d(3)=>DANGLING(266), d(2)=>DANGLING(267), d(1)=>
      DANGLING(268), d(0)=>DANGLING(269));
   prod_6_mults21_4 : mult_32_64 port map ( a(31)=>tap_6_14, a(30)=>DANGLING
      (270), a(29)=>DANGLING(271), a(28)=>DANGLING(272), a(27)=>DANGLING(273
      ), a(26)=>DANGLING(274), a(25)=>DANGLING(275), a(24)=>DANGLING(276), 
      a(23)=>DANGLING(277), a(22)=>DANGLING(278), a(21)=>DANGLING(279), 
      a(20)=>DANGLING(280), a(19)=>DANGLING(281), a(18)=>DANGLING(282), 
      a(17)=>DANGLING(283), a(16)=>DANGLING(284), a(15)=>DANGLING(285), 
      a(14)=>tap_6_14, a(13)=>DANGLING(286), a(12)=>DANGLING(287), a(11)=>
      tap_6_14, a(10)=>tap_6_10, a(9)=>tap_6_9, a(8)=>tap_6_8, a(7)=>tap_6_7, 
      a(6)=>tap_6_6, a(5)=>tap_6_5, a(4)=>tap_6_4, a(3)=>tap_6_3, a(2)=>
      tap_6_2, a(1)=>tap_6_1, a(0)=>tap_6_0, b(31)=>DANGLING(288), b(30)=>
      DANGLING(289), b(29)=>DANGLING(290), b(28)=>DANGLING(291), b(27)=>
      DANGLING(292), b(26)=>DANGLING(293), b(25)=>DANGLING(294), b(24)=>
      DANGLING(295), b(23)=>DANGLING(296), b(22)=>DANGLING(297), b(21)=>
      DANGLING(298), b(20)=>DANGLING(299), b(19)=>DANGLING(300), b(18)=>
      DANGLING(301), b(17)=>DANGLING(302), b(16)=>DANGLING(303), b(15)=>
      DANGLING(304), b(14)=>DANGLING(305), b(13)=>DANGLING(306), b(12)=>
      DANGLING(307), b(11)=>DANGLING(308), b(10)=>DANGLING(309), b(9)=>
      DANGLING(310), b(8)=>DANGLING(311), b(7)=>DANGLING(312), b(6)=>
      DANGLING(313), b(5)=>DANGLING(314), b(4)=>DANGLING(315), b(3)=>
      DANGLING(316), b(2)=>DANGLING(317), b(1)=>DANGLING(318), b(0)=>
      DANGLING(319), d(31)=>DANGLING(320), d(30)=>DANGLING(321), d(29)=>
      DANGLING(322), d(28)=>DANGLING(323), d(27)=>DANGLING(324), d(26)=>
      DANGLING(325), d(25)=>DANGLING(326), d(24)=>DANGLING(327), d(23)=>
      DANGLING(328), d(22)=>DANGLING(329), d(21)=>DANGLING(330), d(20)=>
      prod_6_14, d(19)=>prod_6_13, d(18)=>prod_6_12, d(17)=>prod_6_11, d(16)
      =>prod_6_10, d(15)=>prod_6_9, d(14)=>prod_6_8, d(13)=>prod_6_7, d(12)
      =>prod_6_6, d(11)=>prod_6_5, d(10)=>prod_6_4, d(9)=>prod_6_3, d(8)=>
      prod_6_2, d(7)=>prod_6_1, d(6)=>prod_6_0, d(5)=>DANGLING(331), d(4)=>
      DANGLING(332), d(3)=>DANGLING(333), d(2)=>DANGLING(334), d(1)=>
      DANGLING(335), d(0)=>DANGLING(336));
   prod_7_mults19_5 : mult_32_65 port map ( a(31)=>tap_7_14, a(30)=>DANGLING
      (337), a(29)=>DANGLING(338), a(28)=>DANGLING(339), a(27)=>DANGLING(340
      ), a(26)=>DANGLING(341), a(25)=>DANGLING(342), a(24)=>DANGLING(343), 
      a(23)=>DANGLING(344), a(22)=>DANGLING(345), a(21)=>DANGLING(346), 
      a(20)=>DANGLING(347), a(19)=>DANGLING(348), a(18)=>DANGLING(349), 
      a(17)=>DANGLING(350), a(16)=>DANGLING(351), a(15)=>DANGLING(352), 
      a(14)=>tap_7_14, a(13)=>DANGLING(353), a(12)=>DANGLING(354), a(11)=>
      tap_7_14, a(10)=>tap_7_10, a(9)=>tap_7_9, a(8)=>tap_7_8, a(7)=>tap_7_7, 
      a(6)=>tap_7_6, a(5)=>tap_7_5, a(4)=>tap_7_4, a(3)=>tap_7_3, a(2)=>
      tap_7_2, a(1)=>tap_7_1, a(0)=>tap_7_0, b(31)=>DANGLING(355), b(30)=>
      DANGLING(356), b(29)=>DANGLING(357), b(28)=>DANGLING(358), b(27)=>
      DANGLING(359), b(26)=>DANGLING(360), b(25)=>DANGLING(361), b(24)=>
      DANGLING(362), b(23)=>DANGLING(363), b(22)=>DANGLING(364), b(21)=>
      DANGLING(365), b(20)=>DANGLING(366), b(19)=>DANGLING(367), b(18)=>
      DANGLING(368), b(17)=>DANGLING(369), b(16)=>DANGLING(370), b(15)=>
      DANGLING(371), b(14)=>DANGLING(372), b(13)=>DANGLING(373), b(12)=>
      DANGLING(374), b(11)=>DANGLING(375), b(10)=>DANGLING(376), b(9)=>
      DANGLING(377), b(8)=>DANGLING(378), b(7)=>DANGLING(379), b(6)=>
      DANGLING(380), b(5)=>DANGLING(381), b(4)=>DANGLING(382), b(3)=>
      DANGLING(383), b(2)=>DANGLING(384), b(1)=>DANGLING(385), b(0)=>
      DANGLING(386), d(31)=>DANGLING(387), d(30)=>DANGLING(388), d(29)=>
      DANGLING(389), d(28)=>DANGLING(390), d(27)=>DANGLING(391), d(26)=>
      DANGLING(392), d(25)=>DANGLING(393), d(24)=>DANGLING(394), d(23)=>
      DANGLING(395), d(22)=>DANGLING(396), d(21)=>DANGLING(397), d(20)=>
      DANGLING(398), d(19)=>DANGLING(399), d(18)=>prod_7_14, d(17)=>
      prod_7_13, d(16)=>prod_7_12, d(15)=>prod_7_11, d(14)=>prod_7_10, d(13)
      =>prod_7_9, d(12)=>prod_7_8, d(11)=>prod_7_7, d(10)=>prod_7_6, d(9)=>
      prod_7_5, d(8)=>prod_7_4, d(7)=>prod_7_3, d(6)=>prod_7_2, d(5)=>
      prod_7_1, d(4)=>prod_7_0, d(3)=>DANGLING(400), d(2)=>DANGLING(401), 
      d(1)=>DANGLING(402), d(0)=>DANGLING(403));
   prod_8_mults19_6 : mult_32_66 port map ( a(31)=>tap_8_14, a(30)=>DANGLING
      (404), a(29)=>DANGLING(405), a(28)=>DANGLING(406), a(27)=>DANGLING(407
      ), a(26)=>DANGLING(408), a(25)=>DANGLING(409), a(24)=>DANGLING(410), 
      a(23)=>DANGLING(411), a(22)=>DANGLING(412), a(21)=>DANGLING(413), 
      a(20)=>DANGLING(414), a(19)=>DANGLING(415), a(18)=>DANGLING(416), 
      a(17)=>DANGLING(417), a(16)=>DANGLING(418), a(15)=>DANGLING(419), 
      a(14)=>tap_8_14, a(13)=>DANGLING(420), a(12)=>DANGLING(421), a(11)=>
      tap_8_14, a(10)=>tap_8_10, a(9)=>tap_8_9, a(8)=>tap_8_8, a(7)=>tap_8_7, 
      a(6)=>tap_8_6, a(5)=>tap_8_5, a(4)=>tap_8_4, a(3)=>tap_8_3, a(2)=>
      tap_8_2, a(1)=>tap_8_1, a(0)=>tap_8_0, b(31)=>DANGLING(422), b(30)=>
      DANGLING(423), b(29)=>DANGLING(424), b(28)=>DANGLING(425), b(27)=>
      DANGLING(426), b(26)=>DANGLING(427), b(25)=>DANGLING(428), b(24)=>
      DANGLING(429), b(23)=>DANGLING(430), b(22)=>DANGLING(431), b(21)=>
      DANGLING(432), b(20)=>DANGLING(433), b(19)=>DANGLING(434), b(18)=>
      DANGLING(435), b(17)=>DANGLING(436), b(16)=>DANGLING(437), b(15)=>
      DANGLING(438), b(14)=>DANGLING(439), b(13)=>DANGLING(440), b(12)=>
      DANGLING(441), b(11)=>DANGLING(442), b(10)=>DANGLING(443), b(9)=>
      DANGLING(444), b(8)=>DANGLING(445), b(7)=>DANGLING(446), b(6)=>
      DANGLING(447), b(5)=>DANGLING(448), b(4)=>DANGLING(449), b(3)=>
      DANGLING(450), b(2)=>DANGLING(451), b(1)=>DANGLING(452), b(0)=>
      DANGLING(453), d(31)=>DANGLING(454), d(30)=>DANGLING(455), d(29)=>
      DANGLING(456), d(28)=>DANGLING(457), d(27)=>DANGLING(458), d(26)=>
      DANGLING(459), d(25)=>DANGLING(460), d(24)=>DANGLING(461), d(23)=>
      DANGLING(462), d(22)=>DANGLING(463), d(21)=>DANGLING(464), d(20)=>
      DANGLING(465), d(19)=>DANGLING(466), d(18)=>prod_8_14, d(17)=>
      prod_8_13, d(16)=>prod_8_12, d(15)=>prod_8_11, d(14)=>prod_8_10, d(13)
      =>prod_8_9, d(12)=>prod_8_8, d(11)=>prod_8_7, d(10)=>prod_8_6, d(9)=>
      prod_8_5, d(8)=>prod_8_4, d(7)=>prod_8_3, d(6)=>prod_8_2, d(5)=>
      prod_8_1, d(4)=>prod_8_0, d(3)=>DANGLING(467), d(2)=>DANGLING(468), 
      d(1)=>DANGLING(469), d(0)=>DANGLING(470));
   prod_9_mults19_7 : mult_32_67 port map ( a(31)=>tap_9_14, a(30)=>DANGLING
      (471), a(29)=>DANGLING(472), a(28)=>DANGLING(473), a(27)=>DANGLING(474
      ), a(26)=>DANGLING(475), a(25)=>DANGLING(476), a(24)=>DANGLING(477), 
      a(23)=>DANGLING(478), a(22)=>DANGLING(479), a(21)=>DANGLING(480), 
      a(20)=>DANGLING(481), a(19)=>DANGLING(482), a(18)=>DANGLING(483), 
      a(17)=>DANGLING(484), a(16)=>DANGLING(485), a(15)=>DANGLING(486), 
      a(14)=>tap_9_14, a(13)=>DANGLING(487), a(12)=>DANGLING(488), a(11)=>
      tap_9_14, a(10)=>tap_9_10, a(9)=>tap_9_9, a(8)=>tap_9_8, a(7)=>tap_9_7, 
      a(6)=>tap_9_6, a(5)=>tap_9_5, a(4)=>tap_9_4, a(3)=>tap_9_3, a(2)=>
      tap_9_2, a(1)=>tap_9_1, a(0)=>tap_9_0, b(31)=>DANGLING(489), b(30)=>
      DANGLING(490), b(29)=>DANGLING(491), b(28)=>DANGLING(492), b(27)=>
      DANGLING(493), b(26)=>DANGLING(494), b(25)=>DANGLING(495), b(24)=>
      DANGLING(496), b(23)=>DANGLING(497), b(22)=>DANGLING(498), b(21)=>
      DANGLING(499), b(20)=>DANGLING(500), b(19)=>DANGLING(501), b(18)=>
      DANGLING(502), b(17)=>DANGLING(503), b(16)=>DANGLING(504), b(15)=>
      DANGLING(505), b(14)=>DANGLING(506), b(13)=>DANGLING(507), b(12)=>
      DANGLING(508), b(11)=>DANGLING(509), b(10)=>DANGLING(510), b(9)=>
      DANGLING(511), b(8)=>DANGLING(512), b(7)=>DANGLING(513), b(6)=>
      DANGLING(514), b(5)=>DANGLING(515), b(4)=>DANGLING(516), b(3)=>
      DANGLING(517), b(2)=>DANGLING(518), b(1)=>DANGLING(519), b(0)=>
      DANGLING(520), d(31)=>DANGLING(521), d(30)=>DANGLING(522), d(29)=>
      DANGLING(523), d(28)=>DANGLING(524), d(27)=>DANGLING(525), d(26)=>
      DANGLING(526), d(25)=>DANGLING(527), d(24)=>DANGLING(528), d(23)=>
      DANGLING(529), d(22)=>DANGLING(530), d(21)=>DANGLING(531), d(20)=>
      DANGLING(532), d(19)=>DANGLING(533), d(18)=>prod_9_14, d(17)=>
      prod_9_13, d(16)=>prod_9_12, d(15)=>prod_9_11, d(14)=>prod_9_10, d(13)
      =>prod_9_9, d(12)=>prod_9_8, d(11)=>prod_9_7, d(10)=>prod_9_6, d(9)=>
      prod_9_5, d(8)=>prod_9_4, d(7)=>prod_9_3, d(6)=>prod_9_2, d(5)=>
      prod_9_1, d(4)=>prod_9_0, d(3)=>DANGLING(534), d(2)=>DANGLING(535), 
      d(1)=>DANGLING(536), d(0)=>DANGLING(537));
   prod_10_mults19_8 : mult_32_68 port map ( a(31)=>tap_10_14, a(30)=>
      DANGLING(538), a(29)=>DANGLING(539), a(28)=>DANGLING(540), a(27)=>
      DANGLING(541), a(26)=>DANGLING(542), a(25)=>DANGLING(543), a(24)=>
      DANGLING(544), a(23)=>DANGLING(545), a(22)=>DANGLING(546), a(21)=>
      DANGLING(547), a(20)=>DANGLING(548), a(19)=>DANGLING(549), a(18)=>
      DANGLING(550), a(17)=>DANGLING(551), a(16)=>DANGLING(552), a(15)=>
      DANGLING(553), a(14)=>tap_10_14, a(13)=>DANGLING(554), a(12)=>DANGLING
      (555), a(11)=>tap_10_14, a(10)=>tap_10_10, a(9)=>tap_10_9, a(8)=>
      tap_10_8, a(7)=>tap_10_7, a(6)=>tap_10_6, a(5)=>tap_10_5, a(4)=>
      tap_10_4, a(3)=>tap_10_3, a(2)=>tap_10_2, a(1)=>tap_10_1, a(0)=>
      tap_10_0, b(31)=>DANGLING(556), b(30)=>DANGLING(557), b(29)=>DANGLING(
      558), b(28)=>DANGLING(559), b(27)=>DANGLING(560), b(26)=>DANGLING(561), 
      b(25)=>DANGLING(562), b(24)=>DANGLING(563), b(23)=>DANGLING(564), 
      b(22)=>DANGLING(565), b(21)=>DANGLING(566), b(20)=>DANGLING(567), 
      b(19)=>DANGLING(568), b(18)=>DANGLING(569), b(17)=>DANGLING(570), 
      b(16)=>DANGLING(571), b(15)=>DANGLING(572), b(14)=>DANGLING(573), 
      b(13)=>DANGLING(574), b(12)=>DANGLING(575), b(11)=>DANGLING(576), 
      b(10)=>DANGLING(577), b(9)=>DANGLING(578), b(8)=>DANGLING(579), b(7)=>
      DANGLING(580), b(6)=>DANGLING(581), b(5)=>DANGLING(582), b(4)=>
      DANGLING(583), b(3)=>DANGLING(584), b(2)=>DANGLING(585), b(1)=>
      DANGLING(586), b(0)=>DANGLING(587), d(31)=>DANGLING(588), d(30)=>
      DANGLING(589), d(29)=>DANGLING(590), d(28)=>DANGLING(591), d(27)=>
      DANGLING(592), d(26)=>DANGLING(593), d(25)=>DANGLING(594), d(24)=>
      DANGLING(595), d(23)=>DANGLING(596), d(22)=>DANGLING(597), d(21)=>
      DANGLING(598), d(20)=>DANGLING(599), d(19)=>DANGLING(600), d(18)=>
      prod_10_14, d(17)=>prod_10_13, d(16)=>prod_10_12, d(15)=>prod_10_11, 
      d(14)=>prod_10_10, d(13)=>prod_10_9, d(12)=>prod_10_8, d(11)=>
      prod_10_7, d(10)=>prod_10_6, d(9)=>prod_10_5, d(8)=>prod_10_4, d(7)=>
      prod_10_3, d(6)=>prod_10_2, d(5)=>prod_10_1, d(4)=>prod_10_0, d(3)=>
      DANGLING(601), d(2)=>DANGLING(602), d(1)=>DANGLING(603), d(0)=>
      DANGLING(604));
   prod_11_mults19_9 : mult_32_69 port map ( a(31)=>tap_11_14, a(30)=>
      DANGLING(605), a(29)=>DANGLING(606), a(28)=>DANGLING(607), a(27)=>
      DANGLING(608), a(26)=>DANGLING(609), a(25)=>DANGLING(610), a(24)=>
      DANGLING(611), a(23)=>DANGLING(612), a(22)=>DANGLING(613), a(21)=>
      DANGLING(614), a(20)=>DANGLING(615), a(19)=>DANGLING(616), a(18)=>
      DANGLING(617), a(17)=>DANGLING(618), a(16)=>DANGLING(619), a(15)=>
      DANGLING(620), a(14)=>tap_11_14, a(13)=>DANGLING(621), a(12)=>DANGLING
      (622), a(11)=>tap_11_14, a(10)=>tap_11_10, a(9)=>tap_11_9, a(8)=>
      tap_11_8, a(7)=>tap_11_7, a(6)=>tap_11_6, a(5)=>tap_11_5, a(4)=>
      tap_11_4, a(3)=>tap_11_3, a(2)=>tap_11_2, a(1)=>tap_11_1, a(0)=>
      tap_11_0, b(31)=>DANGLING(623), b(30)=>DANGLING(624), b(29)=>DANGLING(
      625), b(28)=>DANGLING(626), b(27)=>DANGLING(627), b(26)=>DANGLING(628), 
      b(25)=>DANGLING(629), b(24)=>DANGLING(630), b(23)=>DANGLING(631), 
      b(22)=>DANGLING(632), b(21)=>DANGLING(633), b(20)=>DANGLING(634), 
      b(19)=>DANGLING(635), b(18)=>DANGLING(636), b(17)=>DANGLING(637), 
      b(16)=>DANGLING(638), b(15)=>DANGLING(639), b(14)=>DANGLING(640), 
      b(13)=>DANGLING(641), b(12)=>DANGLING(642), b(11)=>DANGLING(643), 
      b(10)=>DANGLING(644), b(9)=>DANGLING(645), b(8)=>DANGLING(646), b(7)=>
      DANGLING(647), b(6)=>DANGLING(648), b(5)=>DANGLING(649), b(4)=>
      DANGLING(650), b(3)=>DANGLING(651), b(2)=>DANGLING(652), b(1)=>
      DANGLING(653), b(0)=>DANGLING(654), d(31)=>DANGLING(655), d(30)=>
      DANGLING(656), d(29)=>DANGLING(657), d(28)=>DANGLING(658), d(27)=>
      DANGLING(659), d(26)=>DANGLING(660), d(25)=>DANGLING(661), d(24)=>
      DANGLING(662), d(23)=>DANGLING(663), d(22)=>DANGLING(664), d(21)=>
      DANGLING(665), d(20)=>DANGLING(666), d(19)=>DANGLING(667), d(18)=>
      prod_11_14, d(17)=>prod_11_13, d(16)=>prod_11_12, d(15)=>prod_11_11, 
      d(14)=>prod_11_10, d(13)=>prod_11_9, d(12)=>prod_11_8, d(11)=>
      prod_11_7, d(10)=>prod_11_6, d(9)=>prod_11_5, d(8)=>prod_11_4, d(7)=>
      prod_11_3, d(6)=>prod_11_2, d(5)=>prod_11_1, d(4)=>prod_11_0, d(3)=>
      DANGLING(668), d(2)=>DANGLING(669), d(1)=>DANGLING(670), d(0)=>
      DANGLING(671));
   prod_12_mults21_10 : mult_32_70 port map ( a(31)=>tap_12_14, a(30)=>
      DANGLING(672), a(29)=>DANGLING(673), a(28)=>DANGLING(674), a(27)=>
      DANGLING(675), a(26)=>DANGLING(676), a(25)=>DANGLING(677), a(24)=>
      DANGLING(678), a(23)=>DANGLING(679), a(22)=>DANGLING(680), a(21)=>
      DANGLING(681), a(20)=>DANGLING(682), a(19)=>DANGLING(683), a(18)=>
      DANGLING(684), a(17)=>DANGLING(685), a(16)=>DANGLING(686), a(15)=>
      DANGLING(687), a(14)=>tap_12_14, a(13)=>DANGLING(688), a(12)=>DANGLING
      (689), a(11)=>tap_12_14, a(10)=>tap_12_10, a(9)=>tap_12_9, a(8)=>
      tap_12_8, a(7)=>tap_12_7, a(6)=>tap_12_6, a(5)=>tap_12_5, a(4)=>
      tap_12_4, a(3)=>tap_12_3, a(2)=>tap_12_2, a(1)=>tap_12_1, a(0)=>
      tap_12_0, b(31)=>DANGLING(690), b(30)=>DANGLING(691), b(29)=>DANGLING(
      692), b(28)=>DANGLING(693), b(27)=>DANGLING(694), b(26)=>DANGLING(695), 
      b(25)=>DANGLING(696), b(24)=>DANGLING(697), b(23)=>DANGLING(698), 
      b(22)=>DANGLING(699), b(21)=>DANGLING(700), b(20)=>DANGLING(701), 
      b(19)=>DANGLING(702), b(18)=>DANGLING(703), b(17)=>DANGLING(704), 
      b(16)=>DANGLING(705), b(15)=>DANGLING(706), b(14)=>DANGLING(707), 
      b(13)=>DANGLING(708), b(12)=>DANGLING(709), b(11)=>DANGLING(710), 
      b(10)=>DANGLING(711), b(9)=>DANGLING(712), b(8)=>DANGLING(713), b(7)=>
      DANGLING(714), b(6)=>DANGLING(715), b(5)=>DANGLING(716), b(4)=>
      DANGLING(717), b(3)=>DANGLING(718), b(2)=>DANGLING(719), b(1)=>
      DANGLING(720), b(0)=>DANGLING(721), d(31)=>DANGLING(722), d(30)=>
      DANGLING(723), d(29)=>DANGLING(724), d(28)=>DANGLING(725), d(27)=>
      DANGLING(726), d(26)=>DANGLING(727), d(25)=>DANGLING(728), d(24)=>
      DANGLING(729), d(23)=>DANGLING(730), d(22)=>DANGLING(731), d(21)=>
      DANGLING(732), d(20)=>prod_12_14, d(19)=>prod_12_13, d(18)=>prod_12_12, 
      d(17)=>prod_12_11, d(16)=>prod_12_10, d(15)=>prod_12_9, d(14)=>
      prod_12_8, d(13)=>prod_12_7, d(12)=>prod_12_6, d(11)=>prod_12_5, d(10)
      =>prod_12_4, d(9)=>prod_12_3, d(8)=>prod_12_2, d(7)=>prod_12_1, d(6)=>
      prod_12_0, d(5)=>DANGLING(733), d(4)=>DANGLING(734), d(3)=>DANGLING(
      735), d(2)=>DANGLING(736), d(1)=>DANGLING(737), d(0)=>DANGLING(738));
   prod_13_mults20_11 : mult_32_71 port map ( a(31)=>tap_13_14, a(30)=>
      DANGLING(739), a(29)=>DANGLING(740), a(28)=>DANGLING(741), a(27)=>
      DANGLING(742), a(26)=>DANGLING(743), a(25)=>DANGLING(744), a(24)=>
      DANGLING(745), a(23)=>DANGLING(746), a(22)=>DANGLING(747), a(21)=>
      DANGLING(748), a(20)=>DANGLING(749), a(19)=>DANGLING(750), a(18)=>
      DANGLING(751), a(17)=>DANGLING(752), a(16)=>DANGLING(753), a(15)=>
      DANGLING(754), a(14)=>tap_13_14, a(13)=>DANGLING(755), a(12)=>DANGLING
      (756), a(11)=>tap_13_14, a(10)=>tap_13_10, a(9)=>tap_13_9, a(8)=>
      tap_13_8, a(7)=>tap_13_7, a(6)=>tap_13_6, a(5)=>tap_13_5, a(4)=>
      tap_13_4, a(3)=>tap_13_3, a(2)=>tap_13_2, a(1)=>tap_13_1, a(0)=>
      tap_13_0, b(31)=>DANGLING(757), b(30)=>DANGLING(758), b(29)=>DANGLING(
      759), b(28)=>DANGLING(760), b(27)=>DANGLING(761), b(26)=>DANGLING(762), 
      b(25)=>DANGLING(763), b(24)=>DANGLING(764), b(23)=>DANGLING(765), 
      b(22)=>DANGLING(766), b(21)=>DANGLING(767), b(20)=>DANGLING(768), 
      b(19)=>DANGLING(769), b(18)=>DANGLING(770), b(17)=>DANGLING(771), 
      b(16)=>DANGLING(772), b(15)=>DANGLING(773), b(14)=>DANGLING(774), 
      b(13)=>DANGLING(775), b(12)=>DANGLING(776), b(11)=>DANGLING(777), 
      b(10)=>DANGLING(778), b(9)=>DANGLING(779), b(8)=>DANGLING(780), b(7)=>
      DANGLING(781), b(6)=>DANGLING(782), b(5)=>DANGLING(783), b(4)=>
      DANGLING(784), b(3)=>DANGLING(785), b(2)=>DANGLING(786), b(1)=>
      DANGLING(787), b(0)=>DANGLING(788), d(31)=>DANGLING(789), d(30)=>
      DANGLING(790), d(29)=>DANGLING(791), d(28)=>DANGLING(792), d(27)=>
      DANGLING(793), d(26)=>DANGLING(794), d(25)=>DANGLING(795), d(24)=>
      DANGLING(796), d(23)=>DANGLING(797), d(22)=>DANGLING(798), d(21)=>
      DANGLING(799), d(20)=>DANGLING(800), d(19)=>prod_13_14, d(18)=>
      prod_13_13, d(17)=>prod_13_12, d(16)=>prod_13_11, d(15)=>prod_13_10, 
      d(14)=>prod_13_9, d(13)=>prod_13_8, d(12)=>prod_13_7, d(11)=>prod_13_6, 
      d(10)=>prod_13_5, d(9)=>prod_13_4, d(8)=>prod_13_3, d(7)=>prod_13_2, 
      d(6)=>prod_13_1, d(5)=>prod_13_0, d(4)=>DANGLING(801), d(3)=>DANGLING(
      802), d(2)=>DANGLING(803), d(1)=>DANGLING(804), d(0)=>DANGLING(805));
   prod_15_mults20_12 : mult_32_72 port map ( a(31)=>tap_15_14, a(30)=>
      DANGLING(806), a(29)=>DANGLING(807), a(28)=>DANGLING(808), a(27)=>
      DANGLING(809), a(26)=>DANGLING(810), a(25)=>DANGLING(811), a(24)=>
      DANGLING(812), a(23)=>DANGLING(813), a(22)=>DANGLING(814), a(21)=>
      DANGLING(815), a(20)=>DANGLING(816), a(19)=>DANGLING(817), a(18)=>
      DANGLING(818), a(17)=>DANGLING(819), a(16)=>DANGLING(820), a(15)=>
      DANGLING(821), a(14)=>tap_15_14, a(13)=>DANGLING(822), a(12)=>DANGLING
      (823), a(11)=>tap_15_14, a(10)=>tap_15_10, a(9)=>tap_15_9, a(8)=>
      tap_15_8, a(7)=>tap_15_7, a(6)=>tap_15_6, a(5)=>tap_15_5, a(4)=>
      tap_15_4, a(3)=>tap_15_3, a(2)=>tap_15_2, a(1)=>tap_15_1, a(0)=>
      tap_15_0, b(31)=>DANGLING(824), b(30)=>DANGLING(825), b(29)=>DANGLING(
      826), b(28)=>DANGLING(827), b(27)=>DANGLING(828), b(26)=>DANGLING(829), 
      b(25)=>DANGLING(830), b(24)=>DANGLING(831), b(23)=>DANGLING(832), 
      b(22)=>DANGLING(833), b(21)=>DANGLING(834), b(20)=>DANGLING(835), 
      b(19)=>DANGLING(836), b(18)=>DANGLING(837), b(17)=>DANGLING(838), 
      b(16)=>DANGLING(839), b(15)=>DANGLING(840), b(14)=>DANGLING(841), 
      b(13)=>DANGLING(842), b(12)=>DANGLING(843), b(11)=>DANGLING(844), 
      b(10)=>DANGLING(845), b(9)=>DANGLING(846), b(8)=>DANGLING(847), b(7)=>
      DANGLING(848), b(6)=>DANGLING(849), b(5)=>DANGLING(850), b(4)=>
      DANGLING(851), b(3)=>DANGLING(852), b(2)=>DANGLING(853), b(1)=>
      DANGLING(854), b(0)=>DANGLING(855), d(31)=>DANGLING(856), d(30)=>
      DANGLING(857), d(29)=>DANGLING(858), d(28)=>DANGLING(859), d(27)=>
      DANGLING(860), d(26)=>DANGLING(861), d(25)=>DANGLING(862), d(24)=>
      DANGLING(863), d(23)=>DANGLING(864), d(22)=>DANGLING(865), d(21)=>
      DANGLING(866), d(20)=>DANGLING(867), d(19)=>prod_15_13, d(18)=>
      prod_15_12, d(17)=>prod_15_11, d(16)=>prod_15_10, d(15)=>prod_15_9, 
      d(14)=>prod_15_8, d(13)=>prod_15_7, d(12)=>prod_15_6, d(11)=>prod_15_5, 
      d(10)=>prod_15_4, d(9)=>prod_15_3, d(8)=>prod_15_2, d(7)=>prod_15_1, 
      d(6)=>prod_15_0, d(5)=>DANGLING(868), d(4)=>DANGLING(869), d(3)=>
      DANGLING(870), d(2)=>DANGLING(871), d(1)=>DANGLING(872), d(0)=>
      DANGLING(873));
   prod_16_mults19_13 : mult_32_73 port map ( a(31)=>tap_16_14, a(30)=>
      DANGLING(874), a(29)=>DANGLING(875), a(28)=>DANGLING(876), a(27)=>
      DANGLING(877), a(26)=>DANGLING(878), a(25)=>DANGLING(879), a(24)=>
      DANGLING(880), a(23)=>DANGLING(881), a(22)=>DANGLING(882), a(21)=>
      DANGLING(883), a(20)=>DANGLING(884), a(19)=>DANGLING(885), a(18)=>
      DANGLING(886), a(17)=>DANGLING(887), a(16)=>DANGLING(888), a(15)=>
      DANGLING(889), a(14)=>tap_16_14, a(13)=>DANGLING(890), a(12)=>DANGLING
      (891), a(11)=>tap_16_14, a(10)=>tap_16_10, a(9)=>tap_16_9, a(8)=>
      tap_16_8, a(7)=>tap_16_7, a(6)=>tap_16_6, a(5)=>tap_16_5, a(4)=>
      tap_16_4, a(3)=>tap_16_3, a(2)=>tap_16_2, a(1)=>tap_16_1, a(0)=>
      tap_16_0, b(31)=>DANGLING(892), b(30)=>DANGLING(893), b(29)=>DANGLING(
      894), b(28)=>DANGLING(895), b(27)=>DANGLING(896), b(26)=>DANGLING(897), 
      b(25)=>DANGLING(898), b(24)=>DANGLING(899), b(23)=>DANGLING(900), 
      b(22)=>DANGLING(901), b(21)=>DANGLING(902), b(20)=>DANGLING(903), 
      b(19)=>DANGLING(904), b(18)=>DANGLING(905), b(17)=>DANGLING(906), 
      b(16)=>DANGLING(907), b(15)=>DANGLING(908), b(14)=>DANGLING(909), 
      b(13)=>DANGLING(910), b(12)=>DANGLING(911), b(11)=>DANGLING(912), 
      b(10)=>DANGLING(913), b(9)=>DANGLING(914), b(8)=>DANGLING(915), b(7)=>
      DANGLING(916), b(6)=>DANGLING(917), b(5)=>DANGLING(918), b(4)=>
      DANGLING(919), b(3)=>DANGLING(920), b(2)=>DANGLING(921), b(1)=>
      DANGLING(922), b(0)=>DANGLING(923), d(31)=>DANGLING(924), d(30)=>
      DANGLING(925), d(29)=>DANGLING(926), d(28)=>DANGLING(927), d(27)=>
      DANGLING(928), d(26)=>DANGLING(929), d(25)=>DANGLING(930), d(24)=>
      DANGLING(931), d(23)=>DANGLING(932), d(22)=>DANGLING(933), d(21)=>
      DANGLING(934), d(20)=>DANGLING(935), d(19)=>DANGLING(936), d(18)=>
      prod_16_13, d(17)=>prod_16_12, d(16)=>prod_16_11, d(15)=>prod_16_10, 
      d(14)=>prod_16_9, d(13)=>prod_16_8, d(12)=>prod_16_7, d(11)=>prod_16_6, 
      d(10)=>prod_16_5, d(9)=>prod_16_4, d(8)=>prod_16_3, d(7)=>prod_16_2, 
      d(6)=>prod_16_1, d(5)=>prod_16_0, d(4)=>DANGLING(937), d(3)=>DANGLING(
      938), d(2)=>DANGLING(939), d(1)=>DANGLING(940), d(0)=>DANGLING(941));
   prod_17_mults21_14 : mult_32_74 port map ( a(31)=>tap_17_14, a(30)=>
      DANGLING(942), a(29)=>DANGLING(943), a(28)=>DANGLING(944), a(27)=>
      DANGLING(945), a(26)=>DANGLING(946), a(25)=>DANGLING(947), a(24)=>
      DANGLING(948), a(23)=>DANGLING(949), a(22)=>DANGLING(950), a(21)=>
      DANGLING(951), a(20)=>DANGLING(952), a(19)=>DANGLING(953), a(18)=>
      DANGLING(954), a(17)=>DANGLING(955), a(16)=>DANGLING(956), a(15)=>
      DANGLING(957), a(14)=>tap_17_14, a(13)=>DANGLING(958), a(12)=>DANGLING
      (959), a(11)=>tap_17_14, a(10)=>tap_17_10, a(9)=>tap_17_9, a(8)=>
      tap_17_8, a(7)=>tap_17_7, a(6)=>tap_17_6, a(5)=>tap_17_5, a(4)=>
      tap_17_4, a(3)=>tap_17_3, a(2)=>tap_17_2, a(1)=>tap_17_1, a(0)=>
      tap_17_0, b(31)=>DANGLING(960), b(30)=>DANGLING(961), b(29)=>DANGLING(
      962), b(28)=>DANGLING(963), b(27)=>DANGLING(964), b(26)=>DANGLING(965), 
      b(25)=>DANGLING(966), b(24)=>DANGLING(967), b(23)=>DANGLING(968), 
      b(22)=>DANGLING(969), b(21)=>DANGLING(970), b(20)=>DANGLING(971), 
      b(19)=>DANGLING(972), b(18)=>DANGLING(973), b(17)=>DANGLING(974), 
      b(16)=>DANGLING(975), b(15)=>DANGLING(976), b(14)=>DANGLING(977), 
      b(13)=>DANGLING(978), b(12)=>DANGLING(979), b(11)=>DANGLING(980), 
      b(10)=>DANGLING(981), b(9)=>DANGLING(982), b(8)=>DANGLING(983), b(7)=>
      DANGLING(984), b(6)=>DANGLING(985), b(5)=>DANGLING(986), b(4)=>
      DANGLING(987), b(3)=>DANGLING(988), b(2)=>DANGLING(989), b(1)=>
      DANGLING(990), b(0)=>DANGLING(991), d(31)=>DANGLING(992), d(30)=>
      DANGLING(993), d(29)=>DANGLING(994), d(28)=>DANGLING(995), d(27)=>
      DANGLING(996), d(26)=>DANGLING(997), d(25)=>DANGLING(998), d(24)=>
      DANGLING(999), d(23)=>DANGLING(1000), d(22)=>DANGLING(1001), d(21)=>
      DANGLING(1002), d(20)=>prod_17_14, d(19)=>prod_17_13, d(18)=>
      prod_17_12, d(17)=>prod_17_11, d(16)=>prod_17_10, d(15)=>prod_17_9, 
      d(14)=>prod_17_8, d(13)=>prod_17_7, d(12)=>prod_17_6, d(11)=>prod_17_5, 
      d(10)=>prod_17_4, d(9)=>prod_17_3, d(8)=>prod_17_2, d(7)=>prod_17_1, 
      d(6)=>prod_17_0, d(5)=>DANGLING(1003), d(4)=>DANGLING(1004), d(3)=>
      DANGLING(1005), d(2)=>DANGLING(1006), d(1)=>DANGLING(1007), d(0)=>
      DANGLING(1008));
   modgen_add_0 : add_16_0 port map ( cin=>DANGLING(1009), a(15)=>prod_1(14), 
      a(14)=>DANGLING(1010), a(13)=>prod_1(13), a(12)=>prod_1(12), a(11)=>
      prod_1(11), a(10)=>prod_1(10), a(9)=>prod_1(9), a(8)=>prod_1(8), a(7)
      =>prod_1(7), a(6)=>prod_1(6), a(5)=>prod_1(5), a(4)=>prod_1(4), a(3)=>
      prod_1(3), a(2)=>prod_1(2), a(1)=>prod_1(1), a(0)=>prod_1(0), b(15)=>
      prod_2(13), b(14)=>DANGLING(1011), b(13)=>DANGLING(1012), b(12)=>
      prod_2(12), b(11)=>prod_2(11), b(10)=>prod_2(10), b(9)=>prod_2(9), 
      b(8)=>prod_2(8), b(7)=>prod_2(7), b(6)=>prod_2(6), b(5)=>prod_2(5), 
      b(4)=>prod_2(4), b(3)=>prod_2(3), b(2)=>prod_2(2), b(1)=>prod_2(1), 
      b(0)=>prod_2(0), d(15)=>nx3_bus_15, d(14)=>nx3_bus_14, d(13)=>
      nx3_bus_13, d(12)=>nx3_bus_12, d(11)=>nx3_bus_11, d(10)=>nx3_bus_10, 
      d(9)=>nx3_bus_9, d(8)=>nx3_bus_8, d(7)=>nx3_bus_7, d(6)=>nx3_bus_6, 
      d(5)=>nx3_bus_5, d(4)=>nx3_bus_4, d(3)=>nx3_bus_3, d(2)=>nx3_bus_2, 
      d(1)=>nx3_bus_1, d(0)=>nx3_bus_0, cout=>DANGLING(1013));
   modgen_add_1 : add_16_1 port map ( cin=>DANGLING(1014), a(15)=>prod_3(13), 
      a(14)=>DANGLING(1015), a(13)=>DANGLING(1016), a(12)=>prod_3(12), a(11)
      =>prod_3(11), a(10)=>prod_3(10), a(9)=>prod_3(9), a(8)=>prod_3(8), 
      a(7)=>prod_3(7), a(6)=>prod_3(6), a(5)=>prod_3(5), a(4)=>prod_3(4), 
      a(3)=>prod_3(3), a(2)=>prod_3(2), a(1)=>prod_3(1), a(0)=>prod_3(0), 
      b(15)=>tap_4_14, b(14)=>DANGLING(1017), b(13)=>DANGLING(1018), b(12)=>
      DANGLING(1019), b(11)=>tap_4_14, b(10)=>DANGLING(1020), b(9)=>DANGLING
      (1021), b(8)=>tap_4_14, b(7)=>tap_4_10, b(6)=>tap_4_9, b(5)=>tap_4_8, 
      b(4)=>tap_4_7, b(3)=>tap_4_6, b(2)=>tap_4_5, b(1)=>tap_4_4, b(0)=>
      tap_4_3, d(15)=>nx23_bus_15, d(14)=>nx23_bus_14, d(13)=>nx23_bus_13, 
      d(12)=>nx23_bus_12, d(11)=>nx23_bus_11, d(10)=>nx23_bus_10, d(9)=>
      nx23_bus_9, d(8)=>nx23_bus_8, d(7)=>nx23_bus_7, d(6)=>nx23_bus_6, d(5)
      =>nx23_bus_5, d(4)=>nx23_bus_4, d(3)=>nx23_bus_3, d(2)=>nx23_bus_2, 
      d(1)=>nx23_bus_1, d(0)=>nx23_bus_0, cout=>DANGLING(1022));
   modgen_add_2 : add_16_2 port map ( cin=>DANGLING(1023), a(15)=>
      nx23_bus_15, a(14)=>nx23_bus_14, a(13)=>nx23_bus_13, a(12)=>
      nx23_bus_12, a(11)=>nx23_bus_11, a(10)=>nx23_bus_10, a(9)=>nx23_bus_9, 
      a(8)=>nx23_bus_8, a(7)=>nx23_bus_7, a(6)=>nx23_bus_6, a(5)=>nx23_bus_5, 
      a(4)=>nx23_bus_4, a(3)=>nx23_bus_3, a(2)=>nx23_bus_2, a(1)=>nx23_bus_1, 
      a(0)=>nx23_bus_0, b(15)=>nx3_bus_15, b(14)=>nx3_bus_14, b(13)=>
      nx3_bus_13, b(12)=>nx3_bus_12, b(11)=>nx3_bus_11, b(10)=>nx3_bus_10, 
      b(9)=>nx3_bus_9, b(8)=>nx3_bus_8, b(7)=>nx3_bus_7, b(6)=>nx3_bus_6, 
      b(5)=>nx3_bus_5, b(4)=>nx3_bus_4, b(3)=>nx3_bus_3, b(2)=>nx3_bus_2, 
      b(1)=>nx3_bus_1, b(0)=>nx3_bus_0, d(15)=>nx43_bus_15, d(14)=>
      nx43_bus_14, d(13)=>nx43_bus_13, d(12)=>nx43_bus_12, d(11)=>
      nx43_bus_11, d(10)=>nx43_bus_10, d(9)=>nx43_bus_9, d(8)=>nx43_bus_8, 
      d(7)=>nx43_bus_7, d(6)=>nx43_bus_6, d(5)=>nx43_bus_5, d(4)=>nx43_bus_4, 
      d(3)=>nx43_bus_3, d(2)=>nx43_bus_2, d(1)=>nx43_bus_1, d(0)=>nx43_bus_0, 
      cout=>DANGLING(1024));
   modgen_add_3 : add_16_3 port map ( cin=>DANGLING(1025), a(15)=>prod_5_14, 
      a(14)=>prod_5_14, a(13)=>prod_5_13, a(12)=>prod_5_12, a(11)=>prod_5_11, 
      a(10)=>prod_5_10, a(9)=>prod_5_9, a(8)=>prod_5_8, a(7)=>prod_5_7, a(6)
      =>prod_5_6, a(5)=>prod_5_5, a(4)=>prod_5_4, a(3)=>prod_5_3, a(2)=>
      prod_5_2, a(1)=>prod_5_1, a(0)=>prod_5_0, b(15)=>prod_6_14, b(14)=>
      prod_6_14, b(13)=>prod_6_13, b(12)=>prod_6_12, b(11)=>prod_6_11, b(10)
      =>prod_6_10, b(9)=>prod_6_9, b(8)=>prod_6_8, b(7)=>prod_6_7, b(6)=>
      prod_6_6, b(5)=>prod_6_5, b(4)=>prod_6_4, b(3)=>prod_6_3, b(2)=>
      prod_6_2, b(1)=>prod_6_1, b(0)=>prod_6_0, d(15)=>nx63_bus_15, d(14)=>
      nx63_bus_14, d(13)=>nx63_bus_13, d(12)=>nx63_bus_12, d(11)=>
      nx63_bus_11, d(10)=>nx63_bus_10, d(9)=>nx63_bus_9, d(8)=>nx63_bus_8, 
      d(7)=>nx63_bus_7, d(6)=>nx63_bus_6, d(5)=>nx63_bus_5, d(4)=>nx63_bus_4, 
      d(3)=>nx63_bus_3, d(2)=>nx63_bus_2, d(1)=>nx63_bus_1, d(0)=>nx63_bus_0, 
      cout=>DANGLING(1026));
   modgen_add_4 : add_16_4 port map ( cin=>DANGLING(1027), a(15)=>prod_7_14, 
      a(14)=>prod_7_14, a(13)=>prod_7_13, a(12)=>prod_7_12, a(11)=>prod_7_11, 
      a(10)=>prod_7_10, a(9)=>prod_7_9, a(8)=>prod_7_8, a(7)=>prod_7_7, a(6)
      =>prod_7_6, a(5)=>prod_7_5, a(4)=>prod_7_4, a(3)=>prod_7_3, a(2)=>
      prod_7_2, a(1)=>prod_7_1, a(0)=>prod_7_0, b(15)=>prod_8_14, b(14)=>
      prod_8_14, b(13)=>prod_8_13, b(12)=>prod_8_12, b(11)=>prod_8_11, b(10)
      =>prod_8_10, b(9)=>prod_8_9, b(8)=>prod_8_8, b(7)=>prod_8_7, b(6)=>
      prod_8_6, b(5)=>prod_8_5, b(4)=>prod_8_4, b(3)=>prod_8_3, b(2)=>
      prod_8_2, b(1)=>prod_8_1, b(0)=>prod_8_0, d(15)=>nx83_bus_15, d(14)=>
      nx83_bus_14, d(13)=>nx83_bus_13, d(12)=>nx83_bus_12, d(11)=>
      nx83_bus_11, d(10)=>nx83_bus_10, d(9)=>nx83_bus_9, d(8)=>nx83_bus_8, 
      d(7)=>nx83_bus_7, d(6)=>nx83_bus_6, d(5)=>nx83_bus_5, d(4)=>nx83_bus_4, 
      d(3)=>nx83_bus_3, d(2)=>nx83_bus_2, d(1)=>nx83_bus_1, d(0)=>nx83_bus_0, 
      cout=>DANGLING(1028));
   modgen_add_5 : add_16_5 port map ( cin=>DANGLING(1029), a(15)=>
      nx83_bus_15, a(14)=>nx83_bus_14, a(13)=>nx83_bus_13, a(12)=>
      nx83_bus_12, a(11)=>nx83_bus_11, a(10)=>nx83_bus_10, a(9)=>nx83_bus_9, 
      a(8)=>nx83_bus_8, a(7)=>nx83_bus_7, a(6)=>nx83_bus_6, a(5)=>nx83_bus_5, 
      a(4)=>nx83_bus_4, a(3)=>nx83_bus_3, a(2)=>nx83_bus_2, a(1)=>nx83_bus_1, 
      a(0)=>nx83_bus_0, b(15)=>nx63_bus_15, b(14)=>nx63_bus_14, b(13)=>
      nx63_bus_13, b(12)=>nx63_bus_12, b(11)=>nx63_bus_11, b(10)=>
      nx63_bus_10, b(9)=>nx63_bus_9, b(8)=>nx63_bus_8, b(7)=>nx63_bus_7, 
      b(6)=>nx63_bus_6, b(5)=>nx63_bus_5, b(4)=>nx63_bus_4, b(3)=>nx63_bus_3, 
      b(2)=>nx63_bus_2, b(1)=>nx63_bus_1, b(0)=>nx63_bus_0, d(15)=>
      nx103_bus_15, d(14)=>nx103_bus_14, d(13)=>nx103_bus_13, d(12)=>
      nx103_bus_12, d(11)=>nx103_bus_11, d(10)=>nx103_bus_10, d(9)=>
      nx103_bus_9, d(8)=>nx103_bus_8, d(7)=>nx103_bus_7, d(6)=>nx103_bus_6, 
      d(5)=>nx103_bus_5, d(4)=>nx103_bus_4, d(3)=>nx103_bus_3, d(2)=>
      nx103_bus_2, d(1)=>nx103_bus_1, d(0)=>nx103_bus_0, cout=>DANGLING(1030
      ));
   modgen_add_6 : add_16_6 port map ( cin=>DANGLING(1031), a(15)=>
      nx43_bus_15, a(14)=>nx43_bus_14, a(13)=>nx43_bus_13, a(12)=>
      nx43_bus_12, a(11)=>nx43_bus_11, a(10)=>nx43_bus_10, a(9)=>nx43_bus_9, 
      a(8)=>nx43_bus_8, a(7)=>nx43_bus_7, a(6)=>nx43_bus_6, a(5)=>nx43_bus_5, 
      a(4)=>nx43_bus_4, a(3)=>nx43_bus_3, a(2)=>nx43_bus_2, a(1)=>nx43_bus_1, 
      a(0)=>nx43_bus_0, b(15)=>nx103_bus_15, b(14)=>nx103_bus_14, b(13)=>
      nx103_bus_13, b(12)=>nx103_bus_12, b(11)=>nx103_bus_11, b(10)=>
      nx103_bus_10, b(9)=>nx103_bus_9, b(8)=>nx103_bus_8, b(7)=>nx103_bus_7, 
      b(6)=>nx103_bus_6, b(5)=>nx103_bus_5, b(4)=>nx103_bus_4, b(3)=>
      nx103_bus_3, b(2)=>nx103_bus_2, b(1)=>nx103_bus_1, b(0)=>nx103_bus_0, 
      d(15)=>nx123_bus_15, d(14)=>nx123_bus_14, d(13)=>nx123_bus_13, d(12)=>
      nx123_bus_12, d(11)=>nx123_bus_11, d(10)=>nx123_bus_10, d(9)=>
      nx123_bus_9, d(8)=>nx123_bus_8, d(7)=>nx123_bus_7, d(6)=>nx123_bus_6, 
      d(5)=>nx123_bus_5, d(4)=>nx123_bus_4, d(3)=>nx123_bus_3, d(2)=>
      nx123_bus_2, d(1)=>nx123_bus_1, d(0)=>nx123_bus_0, cout=>DANGLING(1032
      ));
   modgen_add_7 : add_16_7 port map ( cin=>DANGLING(1033), a(15)=>prod_9_14, 
      a(14)=>prod_9_14, a(13)=>prod_9_13, a(12)=>prod_9_12, a(11)=>prod_9_11, 
      a(10)=>prod_9_10, a(9)=>prod_9_9, a(8)=>prod_9_8, a(7)=>prod_9_7, a(6)
      =>prod_9_6, a(5)=>prod_9_5, a(4)=>prod_9_4, a(3)=>prod_9_3, a(2)=>
      prod_9_2, a(1)=>prod_9_1, a(0)=>prod_9_0, b(15)=>prod_10_14, b(14)=>
      prod_10_14, b(13)=>prod_10_13, b(12)=>prod_10_12, b(11)=>prod_10_11, 
      b(10)=>prod_10_10, b(9)=>prod_10_9, b(8)=>prod_10_8, b(7)=>prod_10_7, 
      b(6)=>prod_10_6, b(5)=>prod_10_5, b(4)=>prod_10_4, b(3)=>prod_10_3, 
      b(2)=>prod_10_2, b(1)=>prod_10_1, b(0)=>prod_10_0, d(15)=>nx143_bus_15, 
      d(14)=>nx143_bus_14, d(13)=>nx143_bus_13, d(12)=>nx143_bus_12, d(11)=>
      nx143_bus_11, d(10)=>nx143_bus_10, d(9)=>nx143_bus_9, d(8)=>
      nx143_bus_8, d(7)=>nx143_bus_7, d(6)=>nx143_bus_6, d(5)=>nx143_bus_5, 
      d(4)=>nx143_bus_4, d(3)=>nx143_bus_3, d(2)=>nx143_bus_2, d(1)=>
      nx143_bus_1, d(0)=>nx143_bus_0, cout=>DANGLING(1034));
   modgen_add_8 : add_16_8 port map ( cin=>DANGLING(1035), a(15)=>prod_11_14, 
      a(14)=>prod_11_14, a(13)=>prod_11_13, a(12)=>prod_11_12, a(11)=>
      prod_11_11, a(10)=>prod_11_10, a(9)=>prod_11_9, a(8)=>prod_11_8, a(7)
      =>prod_11_7, a(6)=>prod_11_6, a(5)=>prod_11_5, a(4)=>prod_11_4, a(3)=>
      prod_11_3, a(2)=>prod_11_2, a(1)=>prod_11_1, a(0)=>prod_11_0, b(15)=>
      prod_12_14, b(14)=>prod_12_14, b(13)=>prod_12_13, b(12)=>prod_12_12, 
      b(11)=>prod_12_11, b(10)=>prod_12_10, b(9)=>prod_12_9, b(8)=>prod_12_8, 
      b(7)=>prod_12_7, b(6)=>prod_12_6, b(5)=>prod_12_5, b(4)=>prod_12_4, 
      b(3)=>prod_12_3, b(2)=>prod_12_2, b(1)=>prod_12_1, b(0)=>prod_12_0, 
      d(15)=>nx163_bus_15, d(14)=>nx163_bus_14, d(13)=>nx163_bus_13, d(12)=>
      nx163_bus_12, d(11)=>nx163_bus_11, d(10)=>nx163_bus_10, d(9)=>
      nx163_bus_9, d(8)=>nx163_bus_8, d(7)=>nx163_bus_7, d(6)=>nx163_bus_6, 
      d(5)=>nx163_bus_5, d(4)=>nx163_bus_4, d(3)=>nx163_bus_3, d(2)=>
      nx163_bus_2, d(1)=>nx163_bus_1, d(0)=>nx163_bus_0, cout=>DANGLING(1036
      ));
   modgen_add_9 : add_16_9 port map ( cin=>DANGLING(1037), a(15)=>
      nx163_bus_15, a(14)=>nx163_bus_14, a(13)=>nx163_bus_13, a(12)=>
      nx163_bus_12, a(11)=>nx163_bus_11, a(10)=>nx163_bus_10, a(9)=>
      nx163_bus_9, a(8)=>nx163_bus_8, a(7)=>nx163_bus_7, a(6)=>nx163_bus_6, 
      a(5)=>nx163_bus_5, a(4)=>nx163_bus_4, a(3)=>nx163_bus_3, a(2)=>
      nx163_bus_2, a(1)=>nx163_bus_1, a(0)=>nx163_bus_0, b(15)=>nx143_bus_15, 
      b(14)=>nx143_bus_14, b(13)=>nx143_bus_13, b(12)=>nx143_bus_12, b(11)=>
      nx143_bus_11, b(10)=>nx143_bus_10, b(9)=>nx143_bus_9, b(8)=>
      nx143_bus_8, b(7)=>nx143_bus_7, b(6)=>nx143_bus_6, b(5)=>nx143_bus_5, 
      b(4)=>nx143_bus_4, b(3)=>nx143_bus_3, b(2)=>nx143_bus_2, b(1)=>
      nx143_bus_1, b(0)=>nx143_bus_0, d(15)=>nx183_bus_15, d(14)=>
      nx183_bus_14, d(13)=>nx183_bus_13, d(12)=>nx183_bus_12, d(11)=>
      nx183_bus_11, d(10)=>nx183_bus_10, d(9)=>nx183_bus_9, d(8)=>
      nx183_bus_8, d(7)=>nx183_bus_7, d(6)=>nx183_bus_6, d(5)=>nx183_bus_5, 
      d(4)=>nx183_bus_4, d(3)=>nx183_bus_3, d(2)=>nx183_bus_2, d(1)=>
      nx183_bus_1, d(0)=>nx183_bus_0, cout=>DANGLING(1038));
   modgen_add_10 : add_16_10 port map ( cin=>DANGLING(1039), a(15)=>
      prod_13_14, a(14)=>prod_13_14, a(13)=>prod_13_13, a(12)=>prod_13_12, 
      a(11)=>prod_13_11, a(10)=>prod_13_10, a(9)=>prod_13_9, a(8)=>prod_13_8, 
      a(7)=>prod_13_7, a(6)=>prod_13_6, a(5)=>prod_13_5, a(4)=>prod_13_4, 
      a(3)=>prod_13_3, a(2)=>prod_13_2, a(1)=>prod_13_1, a(0)=>prod_13_0, 
      b(15)=>tap_14_14, b(14)=>DANGLING(1040), b(13)=>DANGLING(1041), b(12)
      =>DANGLING(1042), b(11)=>tap_14_14, b(10)=>DANGLING(1043), b(9)=>
      DANGLING(1044), b(8)=>tap_14_14, b(7)=>tap_14_10, b(6)=>tap_14_9, b(5)
      =>tap_14_8, b(4)=>tap_14_7, b(3)=>tap_14_6, b(2)=>tap_14_5, b(1)=>
      tap_14_4, b(0)=>tap_14_3, d(15)=>nx203_bus_15, d(14)=>nx203_bus_14, 
      d(13)=>nx203_bus_13, d(12)=>nx203_bus_12, d(11)=>nx203_bus_11, d(10)=>
      nx203_bus_10, d(9)=>nx203_bus_9, d(8)=>nx203_bus_8, d(7)=>nx203_bus_7, 
      d(6)=>nx203_bus_6, d(5)=>nx203_bus_5, d(4)=>nx203_bus_4, d(3)=>
      nx203_bus_3, d(2)=>nx203_bus_2, d(1)=>nx203_bus_1, d(0)=>nx203_bus_0, 
      cout=>DANGLING(1045));
   modgen_add_11 : add_16_11 port map ( cin=>DANGLING(1046), a(15)=>
      prod_16_13, a(14)=>DANGLING(1047), a(13)=>prod_16_13, a(12)=>
      prod_16_12, a(11)=>prod_16_11, a(10)=>prod_16_10, a(9)=>prod_16_9, 
      a(8)=>prod_16_8, a(7)=>prod_16_7, a(6)=>prod_16_6, a(5)=>prod_16_5, 
      a(4)=>prod_16_4, a(3)=>prod_16_3, a(2)=>prod_16_2, a(1)=>prod_16_1, 
      a(0)=>prod_16_0, b(15)=>prod_17_14, b(14)=>prod_17_14, b(13)=>
      prod_17_13, b(12)=>prod_17_12, b(11)=>prod_17_11, b(10)=>prod_17_10, 
      b(9)=>prod_17_9, b(8)=>prod_17_8, b(7)=>prod_17_7, b(6)=>prod_17_6, 
      b(5)=>prod_17_5, b(4)=>prod_17_4, b(3)=>prod_17_3, b(2)=>prod_17_2, 
      b(1)=>prod_17_1, b(0)=>prod_17_0, d(15)=>nx223_bus_15, d(14)=>
      nx223_bus_14, d(13)=>nx223_bus_13, d(12)=>nx223_bus_12, d(11)=>
      nx223_bus_11, d(10)=>nx223_bus_10, d(9)=>nx223_bus_9, d(8)=>
      nx223_bus_8, d(7)=>nx223_bus_7, d(6)=>nx223_bus_6, d(5)=>nx223_bus_5, 
      d(4)=>nx223_bus_4, d(3)=>nx223_bus_3, d(2)=>nx223_bus_2, d(1)=>
      nx223_bus_1, d(0)=>nx223_bus_0, cout=>DANGLING(1048));
   modgen_add_12 : add_16_12 port map ( cin=>DANGLING(1049), a(15)=>
      nx223_bus_15, a(14)=>nx223_bus_14, a(13)=>nx223_bus_13, a(12)=>
      nx223_bus_12, a(11)=>nx223_bus_11, a(10)=>nx223_bus_10, a(9)=>
      nx223_bus_9, a(8)=>nx223_bus_8, a(7)=>nx223_bus_7, a(6)=>nx223_bus_6, 
      a(5)=>nx223_bus_5, a(4)=>nx223_bus_4, a(3)=>nx223_bus_3, a(2)=>
      nx223_bus_2, a(1)=>nx223_bus_1, a(0)=>nx223_bus_0, b(15)=>prod_15_13, 
      b(14)=>DANGLING(1050), b(13)=>prod_15_13, b(12)=>prod_15_12, b(11)=>
      prod_15_11, b(10)=>prod_15_10, b(9)=>prod_15_9, b(8)=>prod_15_8, b(7)
      =>prod_15_7, b(6)=>prod_15_6, b(5)=>prod_15_5, b(4)=>prod_15_4, b(3)=>
      prod_15_3, b(2)=>prod_15_2, b(1)=>prod_15_1, b(0)=>prod_15_0, d(15)=>
      nx243_bus(16), d(14)=>nx243_bus(15), d(13)=>nx243_bus(14), d(12)=>
      nx243_bus(13), d(11)=>nx243_bus(12), d(10)=>nx243_bus(11), d(9)=>
      nx243_bus(10), d(8)=>nx243_bus(9), d(7)=>nx243_bus(8), d(6)=>
      nx243_bus(7), d(5)=>nx243_bus(6), d(4)=>nx243_bus(5), d(3)=>
      nx243_bus(4), d(2)=>nx243_bus(3), d(1)=>nx243_bus(2), d(0)=>
      nx243_bus(1), cout=>DANGLING(1051));
   modgen_add_13 : add_16_13 port map ( cin=>DANGLING(1052), a(15)=>
      nx243_bus(16), a(14)=>nx243_bus(15), a(13)=>nx243_bus(14), a(12)=>
      nx243_bus(13), a(11)=>nx243_bus(12), a(10)=>nx243_bus(11), a(9)=>
      nx243_bus(10), a(8)=>nx243_bus(9), a(7)=>nx243_bus(8), a(6)=>
      nx243_bus(7), a(5)=>nx243_bus(6), a(4)=>nx243_bus(5), a(3)=>
      nx243_bus(4), a(2)=>nx243_bus(3), a(1)=>nx243_bus(2), a(0)=>
      nx243_bus(1), b(15)=>nx203_bus_15, b(14)=>nx203_bus_14, b(13)=>
      nx203_bus_13, b(12)=>nx203_bus_12, b(11)=>nx203_bus_11, b(10)=>
      nx203_bus_10, b(9)=>nx203_bus_9, b(8)=>nx203_bus_8, b(7)=>nx203_bus_7, 
      b(6)=>nx203_bus_6, b(5)=>nx203_bus_5, b(4)=>nx203_bus_4, b(3)=>
      nx203_bus_3, b(2)=>nx203_bus_2, b(1)=>nx203_bus_1, b(0)=>nx203_bus_0, 
      d(15)=>nx262_bus(16), d(14)=>nx262_bus(15), d(13)=>nx262_bus(14), 
      d(12)=>nx262_bus(13), d(11)=>nx262_bus(12), d(10)=>nx262_bus(11), d(9)
      =>nx262_bus(10), d(8)=>nx262_bus(9), d(7)=>nx262_bus(8), d(6)=>
      nx262_bus(7), d(5)=>nx262_bus(6), d(4)=>nx262_bus(5), d(3)=>
      nx262_bus(4), d(2)=>nx262_bus(3), d(1)=>nx262_bus(2), d(0)=>
      nx262_bus(1), cout=>DANGLING(1053));
   modgen_add_14 : add_16_14 port map ( cin=>DANGLING(1054), a(15)=>
      nx183_bus_15, a(14)=>nx183_bus_14, a(13)=>nx183_bus_13, a(12)=>
      nx183_bus_12, a(11)=>nx183_bus_11, a(10)=>nx183_bus_10, a(9)=>
      nx183_bus_9, a(8)=>nx183_bus_8, a(7)=>nx183_bus_7, a(6)=>nx183_bus_6, 
      a(5)=>nx183_bus_5, a(4)=>nx183_bus_4, a(3)=>nx183_bus_3, a(2)=>
      nx183_bus_2, a(1)=>nx183_bus_1, a(0)=>nx183_bus_0, b(15)=>
      nx262_bus(16), b(14)=>nx262_bus(15), b(13)=>nx262_bus(14), b(12)=>
      nx262_bus(13), b(11)=>nx262_bus(12), b(10)=>nx262_bus(11), b(9)=>
      nx262_bus(10), b(8)=>nx262_bus(9), b(7)=>nx262_bus(8), b(6)=>
      nx262_bus(7), b(5)=>nx262_bus(6), b(4)=>nx262_bus(5), b(3)=>
      nx262_bus(4), b(2)=>nx262_bus(3), b(1)=>nx262_bus(2), b(0)=>
      nx262_bus(1), d(15)=>nx281_bus(16), d(14)=>nx281_bus(15), d(13)=>
      nx281_bus(14), d(12)=>nx281_bus(13), d(11)=>nx281_bus(12), d(10)=>
      nx281_bus(11), d(9)=>nx281_bus(10), d(8)=>nx281_bus(9), d(7)=>
      nx281_bus(8), d(6)=>nx281_bus(7), d(5)=>nx281_bus(6), d(4)=>
      nx281_bus(5), d(3)=>nx281_bus(4), d(2)=>nx281_bus(3), d(1)=>
      nx281_bus(2), d(0)=>nx281_bus(1), cout=>DANGLING(1055));
   modgen_add_15 : add_16_15 port map ( cin=>DANGLING(1056), a(15)=>
      nx123_bus_15, a(14)=>nx123_bus_14, a(13)=>nx123_bus_13, a(12)=>
      nx123_bus_12, a(11)=>nx123_bus_11, a(10)=>nx123_bus_10, a(9)=>
      nx123_bus_9, a(8)=>nx123_bus_8, a(7)=>nx123_bus_7, a(6)=>nx123_bus_6, 
      a(5)=>nx123_bus_5, a(4)=>nx123_bus_4, a(3)=>nx123_bus_3, a(2)=>
      nx123_bus_2, a(1)=>nx123_bus_1, a(0)=>nx123_bus_0, b(15)=>
      nx281_bus(16), b(14)=>nx281_bus(15), b(13)=>nx281_bus(14), b(12)=>
      nx281_bus(13), b(11)=>nx281_bus(12), b(10)=>nx281_bus(11), b(9)=>
      nx281_bus(10), b(8)=>nx281_bus(9), b(7)=>nx281_bus(8), b(6)=>
      nx281_bus(7), b(5)=>nx281_bus(6), b(4)=>nx281_bus(5), b(3)=>
      nx281_bus(4), b(2)=>nx281_bus(3), b(1)=>nx281_bus(2), b(0)=>
      nx281_bus(1), d(15)=>o_data(15), d(14)=>o_data(14), d(13)=>o_data(13), 
      d(12)=>o_data(12), d(11)=>o_data(11), d(10)=>o_data(10), d(9)=>
      o_data(9), d(8)=>o_data(8), d(7)=>o_data(7), d(6)=>o_data(6), d(5)=>
      o_data(5), d(4)=>o_data(4), d(3)=>o_data(3), d(2)=>o_data(2), d(1)=>
      o_data(1), d(0)=>o_data(0), cout=>DANGLING(1057));
   reg_tap_9_9 : cycloneii_lcell_ff port map ( regout=>tap_9_9, datain=>
      tap_8_9, clk=>clk);
   reg_tap_9_8 : cycloneii_lcell_ff port map ( regout=>tap_9_8, datain=>
      tap_8_8, clk=>clk);
   reg_tap_9_7 : cycloneii_lcell_ff port map ( regout=>tap_9_7, datain=>
      tap_8_7, clk=>clk);
   reg_tap_9_6 : cycloneii_lcell_ff port map ( regout=>tap_9_6, datain=>
      tap_8_6, clk=>clk);
   reg_tap_9_5 : cycloneii_lcell_ff port map ( regout=>tap_9_5, datain=>
      tap_8_5, clk=>clk);
   reg_tap_9_4 : cycloneii_lcell_ff port map ( regout=>tap_9_4, datain=>
      tap_8_4, clk=>clk);
   reg_tap_9_3 : cycloneii_lcell_ff port map ( regout=>tap_9_3, datain=>
      tap_8_3, clk=>clk);
   reg_tap_9_2 : cycloneii_lcell_ff port map ( regout=>tap_9_2, datain=>
      tap_8_2, clk=>clk);
   reg_tap_9_14 : cycloneii_lcell_ff port map ( regout=>tap_9_14, datain=>
      tap_8_14, clk=>clk);
   reg_tap_9_10 : cycloneii_lcell_ff port map ( regout=>tap_9_10, datain=>
      tap_8_10, clk=>clk);
   reg_tap_9_1 : cycloneii_lcell_ff port map ( regout=>tap_9_1, datain=>
      tap_8_1, clk=>clk);
   reg_tap_9_0 : cycloneii_lcell_ff port map ( regout=>tap_9_0, datain=>
      tap_8_0, clk=>clk);
   reg_tap_8_9 : cycloneii_lcell_ff port map ( regout=>tap_8_9, datain=>
      tap_7_9, clk=>clk);
   reg_tap_8_8 : cycloneii_lcell_ff port map ( regout=>tap_8_8, datain=>
      tap_7_8, clk=>clk);
   reg_tap_8_7 : cycloneii_lcell_ff port map ( regout=>tap_8_7, datain=>
      tap_7_7, clk=>clk);
   reg_tap_8_6 : cycloneii_lcell_ff port map ( regout=>tap_8_6, datain=>
      tap_7_6, clk=>clk);
   reg_tap_8_5 : cycloneii_lcell_ff port map ( regout=>tap_8_5, datain=>
      tap_7_5, clk=>clk);
   reg_tap_8_4 : cycloneii_lcell_ff port map ( regout=>tap_8_4, datain=>
      tap_7_4, clk=>clk);
   reg_tap_8_3 : cycloneii_lcell_ff port map ( regout=>tap_8_3, datain=>
      tap_7_3, clk=>clk);
   reg_tap_8_2 : cycloneii_lcell_ff port map ( regout=>tap_8_2, datain=>
      tap_7_2, clk=>clk);
   reg_tap_8_14 : cycloneii_lcell_ff port map ( regout=>tap_8_14, datain=>
      tap_7_14, clk=>clk);
   reg_tap_8_10 : cycloneii_lcell_ff port map ( regout=>tap_8_10, datain=>
      tap_7_10, clk=>clk);
   reg_tap_8_1 : cycloneii_lcell_ff port map ( regout=>tap_8_1, datain=>
      tap_7_1, clk=>clk);
   reg_tap_8_0 : cycloneii_lcell_ff port map ( regout=>tap_8_0, datain=>
      tap_7_0, clk=>clk);
   reg_tap_7_9 : cycloneii_lcell_ff port map ( regout=>tap_7_9, datain=>
      tap_6_9, clk=>clk);
   reg_tap_7_8 : cycloneii_lcell_ff port map ( regout=>tap_7_8, datain=>
      tap_6_8, clk=>clk);
   reg_tap_7_7 : cycloneii_lcell_ff port map ( regout=>tap_7_7, datain=>
      tap_6_7, clk=>clk);
   reg_tap_7_6 : cycloneii_lcell_ff port map ( regout=>tap_7_6, datain=>
      tap_6_6, clk=>clk);
   reg_tap_7_5 : cycloneii_lcell_ff port map ( regout=>tap_7_5, datain=>
      tap_6_5, clk=>clk);
   reg_tap_7_4 : cycloneii_lcell_ff port map ( regout=>tap_7_4, datain=>
      tap_6_4, clk=>clk);
   reg_tap_7_3 : cycloneii_lcell_ff port map ( regout=>tap_7_3, datain=>
      tap_6_3, clk=>clk);
   reg_tap_7_2 : cycloneii_lcell_ff port map ( regout=>tap_7_2, datain=>
      tap_6_2, clk=>clk);
   reg_tap_7_14 : cycloneii_lcell_ff port map ( regout=>tap_7_14, datain=>
      tap_6_14, clk=>clk);
   reg_tap_7_10 : cycloneii_lcell_ff port map ( regout=>tap_7_10, datain=>
      tap_6_10, clk=>clk);
   reg_tap_7_1 : cycloneii_lcell_ff port map ( regout=>tap_7_1, datain=>
      tap_6_1, clk=>clk);
   reg_tap_7_0 : cycloneii_lcell_ff port map ( regout=>tap_7_0, datain=>
      tap_6_0, clk=>clk);
   reg_tap_6_9 : cycloneii_lcell_ff port map ( regout=>tap_6_9, datain=>
      tap_5_9, clk=>clk);
   reg_tap_6_8 : cycloneii_lcell_ff port map ( regout=>tap_6_8, datain=>
      tap_5_8, clk=>clk);
   reg_tap_6_7 : cycloneii_lcell_ff port map ( regout=>tap_6_7, datain=>
      tap_5_7, clk=>clk);
   reg_tap_6_6 : cycloneii_lcell_ff port map ( regout=>tap_6_6, datain=>
      tap_5_6, clk=>clk);
   reg_tap_6_5 : cycloneii_lcell_ff port map ( regout=>tap_6_5, datain=>
      tap_5_5, clk=>clk);
   reg_tap_6_4 : cycloneii_lcell_ff port map ( regout=>tap_6_4, datain=>
      tap_5_4, clk=>clk);
   reg_tap_6_3 : cycloneii_lcell_ff port map ( regout=>tap_6_3, datain=>
      tap_5_3, clk=>clk);
   reg_tap_6_2 : cycloneii_lcell_ff port map ( regout=>tap_6_2, datain=>
      tap_5_2, clk=>clk);
   reg_tap_6_14 : cycloneii_lcell_ff port map ( regout=>tap_6_14, datain=>
      tap_5_14, clk=>clk);
   reg_tap_6_10 : cycloneii_lcell_ff port map ( regout=>tap_6_10, datain=>
      tap_5_10, clk=>clk);
   reg_tap_6_1 : cycloneii_lcell_ff port map ( regout=>tap_6_1, datain=>
      tap_5_1, clk=>clk);
   reg_tap_6_0 : cycloneii_lcell_ff port map ( regout=>tap_6_0, datain=>
      tap_5_0, clk=>clk);
   reg_tap_5_9 : cycloneii_lcell_ff port map ( regout=>tap_5_9, datain=>
      tap_4_9, clk=>clk);
   reg_tap_5_8 : cycloneii_lcell_ff port map ( regout=>tap_5_8, datain=>
      tap_4_8, clk=>clk);
   reg_tap_5_7 : cycloneii_lcell_ff port map ( regout=>tap_5_7, datain=>
      tap_4_7, clk=>clk);
   reg_tap_5_6 : cycloneii_lcell_ff port map ( regout=>tap_5_6, datain=>
      tap_4_6, clk=>clk);
   reg_tap_5_5 : cycloneii_lcell_ff port map ( regout=>tap_5_5, datain=>
      tap_4_5, clk=>clk);
   reg_tap_5_4 : cycloneii_lcell_ff port map ( regout=>tap_5_4, datain=>
      tap_4_4, clk=>clk);
   reg_tap_5_3 : cycloneii_lcell_ff port map ( regout=>tap_5_3, datain=>
      tap_4_3, clk=>clk);
   reg_tap_5_2 : cycloneii_lcell_ff port map ( regout=>tap_5_2, datain=>
      tap_4_2, clk=>clk);
   reg_tap_5_14 : cycloneii_lcell_ff port map ( regout=>tap_5_14, datain=>
      tap_4_14, clk=>clk);
   reg_tap_5_10 : cycloneii_lcell_ff port map ( regout=>tap_5_10, datain=>
      tap_4_10, clk=>clk);
   reg_tap_5_1 : cycloneii_lcell_ff port map ( regout=>tap_5_1, datain=>
      tap_4_1, clk=>clk);
   reg_tap_5_0 : cycloneii_lcell_ff port map ( regout=>tap_5_0, datain=>
      tap_4_0, clk=>clk);
   reg_tap_4_9 : cycloneii_lcell_ff port map ( regout=>tap_4_9, datain=>
      tap_3_9, clk=>clk);
   reg_tap_4_8 : cycloneii_lcell_ff port map ( regout=>tap_4_8, datain=>
      tap_3_8, clk=>clk);
   reg_tap_4_7 : cycloneii_lcell_ff port map ( regout=>tap_4_7, datain=>
      tap_3_7, clk=>clk);
   reg_tap_4_6 : cycloneii_lcell_ff port map ( regout=>tap_4_6, datain=>
      tap_3_6, clk=>clk);
   reg_tap_4_5 : cycloneii_lcell_ff port map ( regout=>tap_4_5, datain=>
      tap_3_5, clk=>clk);
   reg_tap_4_4 : cycloneii_lcell_ff port map ( regout=>tap_4_4, datain=>
      tap_3_4, clk=>clk);
   reg_tap_4_3 : cycloneii_lcell_ff port map ( regout=>tap_4_3, datain=>
      tap_3_3, clk=>clk);
   reg_tap_4_2 : cycloneii_lcell_ff port map ( regout=>tap_4_2, datain=>
      tap_3_2, clk=>clk);
   reg_tap_4_14 : cycloneii_lcell_ff port map ( regout=>tap_4_14, datain=>
      tap_3_14, clk=>clk);
   reg_tap_4_10 : cycloneii_lcell_ff port map ( regout=>tap_4_10, datain=>
      tap_3_10, clk=>clk);
   reg_tap_4_1 : cycloneii_lcell_ff port map ( regout=>tap_4_1, datain=>
      tap_3_1, clk=>clk);
   reg_tap_4_0 : cycloneii_lcell_ff port map ( regout=>tap_4_0, datain=>
      tap_3_0, clk=>clk);
   reg_tap_3_9 : cycloneii_lcell_ff port map ( regout=>tap_3_9, datain=>
      tap_2_9, clk=>clk);
   reg_tap_3_8 : cycloneii_lcell_ff port map ( regout=>tap_3_8, datain=>
      tap_2_8, clk=>clk);
   reg_tap_3_7 : cycloneii_lcell_ff port map ( regout=>tap_3_7, datain=>
      tap_2_7, clk=>clk);
   reg_tap_3_6 : cycloneii_lcell_ff port map ( regout=>tap_3_6, datain=>
      tap_2_6, clk=>clk);
   reg_tap_3_5 : cycloneii_lcell_ff port map ( regout=>tap_3_5, datain=>
      tap_2_5, clk=>clk);
   reg_tap_3_4 : cycloneii_lcell_ff port map ( regout=>tap_3_4, datain=>
      tap_2_4, clk=>clk);
   reg_tap_3_3 : cycloneii_lcell_ff port map ( regout=>tap_3_3, datain=>
      tap_2_3, clk=>clk);
   reg_tap_3_2 : cycloneii_lcell_ff port map ( regout=>tap_3_2, datain=>
      tap_2_2, clk=>clk);
   reg_tap_3_14 : cycloneii_lcell_ff port map ( regout=>tap_3_14, datain=>
      tap_2_14, clk=>clk);
   reg_tap_3_10 : cycloneii_lcell_ff port map ( regout=>tap_3_10, datain=>
      tap_2_10, clk=>clk);
   reg_tap_3_1 : cycloneii_lcell_ff port map ( regout=>tap_3_1, datain=>
      tap_2_1, clk=>clk);
   reg_tap_3_0 : cycloneii_lcell_ff port map ( regout=>tap_3_0, datain=>
      tap_2_0, clk=>clk);
   reg_tap_2_9 : cycloneii_lcell_ff port map ( regout=>tap_2_9, datain=>
      tap_1_9, clk=>clk);
   reg_tap_2_8 : cycloneii_lcell_ff port map ( regout=>tap_2_8, datain=>
      tap_1_8, clk=>clk);
   reg_tap_2_7 : cycloneii_lcell_ff port map ( regout=>tap_2_7, datain=>
      tap_1_7, clk=>clk);
   reg_tap_2_6 : cycloneii_lcell_ff port map ( regout=>tap_2_6, datain=>
      tap_1_6, clk=>clk);
   reg_tap_2_5 : cycloneii_lcell_ff port map ( regout=>tap_2_5, datain=>
      tap_1_5, clk=>clk);
   reg_tap_2_4 : cycloneii_lcell_ff port map ( regout=>tap_2_4, datain=>
      tap_1_4, clk=>clk);
   reg_tap_2_3 : cycloneii_lcell_ff port map ( regout=>tap_2_3, datain=>
      tap_1_3, clk=>clk);
   reg_tap_2_2 : cycloneii_lcell_ff port map ( regout=>tap_2_2, datain=>
      tap_1_2, clk=>clk);
   reg_tap_2_14 : cycloneii_lcell_ff port map ( regout=>tap_2_14, datain=>
      tap_1_14, clk=>clk);
   reg_tap_2_10 : cycloneii_lcell_ff port map ( regout=>tap_2_10, datain=>
      tap_1_10, clk=>clk);
   reg_tap_2_1 : cycloneii_lcell_ff port map ( regout=>tap_2_1, datain=>
      tap_1_1, clk=>clk);
   reg_tap_2_0 : cycloneii_lcell_ff port map ( regout=>tap_2_0, datain=>
      tap_1_0, clk=>clk);
   reg_tap_17_9 : cycloneii_lcell_ff port map ( regout=>tap_17_9, datain=>
      tap_16_9, clk=>clk);
   reg_tap_17_8 : cycloneii_lcell_ff port map ( regout=>tap_17_8, datain=>
      tap_16_8, clk=>clk);
   reg_tap_17_7 : cycloneii_lcell_ff port map ( regout=>tap_17_7, datain=>
      tap_16_7, clk=>clk);
   reg_tap_17_6 : cycloneii_lcell_ff port map ( regout=>tap_17_6, datain=>
      tap_16_6, clk=>clk);
   reg_tap_17_5 : cycloneii_lcell_ff port map ( regout=>tap_17_5, datain=>
      tap_16_5, clk=>clk);
   reg_tap_17_4 : cycloneii_lcell_ff port map ( regout=>tap_17_4, datain=>
      tap_16_4, clk=>clk);
   reg_tap_17_3 : cycloneii_lcell_ff port map ( regout=>tap_17_3, datain=>
      tap_16_3, clk=>clk);
   reg_tap_17_2 : cycloneii_lcell_ff port map ( regout=>tap_17_2, datain=>
      tap_16_2, clk=>clk);
   reg_tap_17_14 : cycloneii_lcell_ff port map ( regout=>tap_17_14, datain=>
      tap_16_14, clk=>clk);
   reg_tap_17_10 : cycloneii_lcell_ff port map ( regout=>tap_17_10, datain=>
      tap_16_10, clk=>clk);
   reg_tap_17_1 : cycloneii_lcell_ff port map ( regout=>tap_17_1, datain=>
      tap_16_1, clk=>clk);
   reg_tap_17_0 : cycloneii_lcell_ff port map ( regout=>tap_17_0, datain=>
      tap_16_0, clk=>clk);
   reg_tap_16_9 : cycloneii_lcell_ff port map ( regout=>tap_16_9, datain=>
      tap_15_9, clk=>clk);
   reg_tap_16_8 : cycloneii_lcell_ff port map ( regout=>tap_16_8, datain=>
      tap_15_8, clk=>clk);
   reg_tap_16_7 : cycloneii_lcell_ff port map ( regout=>tap_16_7, datain=>
      tap_15_7, clk=>clk);
   reg_tap_16_6 : cycloneii_lcell_ff port map ( regout=>tap_16_6, datain=>
      tap_15_6, clk=>clk);
   reg_tap_16_5 : cycloneii_lcell_ff port map ( regout=>tap_16_5, datain=>
      tap_15_5, clk=>clk);
   reg_tap_16_4 : cycloneii_lcell_ff port map ( regout=>tap_16_4, datain=>
      tap_15_4, clk=>clk);
   reg_tap_16_3 : cycloneii_lcell_ff port map ( regout=>tap_16_3, datain=>
      tap_15_3, clk=>clk);
   reg_tap_16_2 : cycloneii_lcell_ff port map ( regout=>tap_16_2, datain=>
      tap_15_2, clk=>clk);
   reg_tap_16_14 : cycloneii_lcell_ff port map ( regout=>tap_16_14, datain=>
      tap_15_14, clk=>clk);
   reg_tap_16_10 : cycloneii_lcell_ff port map ( regout=>tap_16_10, datain=>
      tap_15_10, clk=>clk);
   reg_tap_16_1 : cycloneii_lcell_ff port map ( regout=>tap_16_1, datain=>
      tap_15_1, clk=>clk);
   reg_tap_16_0 : cycloneii_lcell_ff port map ( regout=>tap_16_0, datain=>
      tap_15_0, clk=>clk);
   reg_tap_15_9 : cycloneii_lcell_ff port map ( regout=>tap_15_9, datain=>
      tap_14_9, clk=>clk);
   reg_tap_15_8 : cycloneii_lcell_ff port map ( regout=>tap_15_8, datain=>
      tap_14_8, clk=>clk);
   reg_tap_15_7 : cycloneii_lcell_ff port map ( regout=>tap_15_7, datain=>
      tap_14_7, clk=>clk);
   reg_tap_15_6 : cycloneii_lcell_ff port map ( regout=>tap_15_6, datain=>
      tap_14_6, clk=>clk);
   reg_tap_15_5 : cycloneii_lcell_ff port map ( regout=>tap_15_5, datain=>
      tap_14_5, clk=>clk);
   reg_tap_15_4 : cycloneii_lcell_ff port map ( regout=>tap_15_4, datain=>
      tap_14_4, clk=>clk);
   reg_tap_15_3 : cycloneii_lcell_ff port map ( regout=>tap_15_3, datain=>
      tap_14_3, clk=>clk);
   reg_tap_15_2 : cycloneii_lcell_ff port map ( regout=>tap_15_2, datain=>
      tap_14_2, clk=>clk);
   reg_tap_15_14 : cycloneii_lcell_ff port map ( regout=>tap_15_14, datain=>
      tap_14_14, clk=>clk);
   reg_tap_15_10 : cycloneii_lcell_ff port map ( regout=>tap_15_10, datain=>
      tap_14_10, clk=>clk);
   reg_tap_15_1 : cycloneii_lcell_ff port map ( regout=>tap_15_1, datain=>
      tap_14_1, clk=>clk);
   reg_tap_15_0 : cycloneii_lcell_ff port map ( regout=>tap_15_0, datain=>
      tap_14_0, clk=>clk);
   reg_tap_14_9 : cycloneii_lcell_ff port map ( regout=>tap_14_9, datain=>
      tap_13_9, clk=>clk);
   reg_tap_14_8 : cycloneii_lcell_ff port map ( regout=>tap_14_8, datain=>
      tap_13_8, clk=>clk);
   reg_tap_14_7 : cycloneii_lcell_ff port map ( regout=>tap_14_7, datain=>
      tap_13_7, clk=>clk);
   reg_tap_14_6 : cycloneii_lcell_ff port map ( regout=>tap_14_6, datain=>
      tap_13_6, clk=>clk);
   reg_tap_14_5 : cycloneii_lcell_ff port map ( regout=>tap_14_5, datain=>
      tap_13_5, clk=>clk);
   reg_tap_14_4 : cycloneii_lcell_ff port map ( regout=>tap_14_4, datain=>
      tap_13_4, clk=>clk);
   reg_tap_14_3 : cycloneii_lcell_ff port map ( regout=>tap_14_3, datain=>
      tap_13_3, clk=>clk);
   reg_tap_14_2 : cycloneii_lcell_ff port map ( regout=>tap_14_2, datain=>
      tap_13_2, clk=>clk);
   reg_tap_14_14 : cycloneii_lcell_ff port map ( regout=>tap_14_14, datain=>
      tap_13_14, clk=>clk);
   reg_tap_14_10 : cycloneii_lcell_ff port map ( regout=>tap_14_10, datain=>
      tap_13_10, clk=>clk);
   reg_tap_14_1 : cycloneii_lcell_ff port map ( regout=>tap_14_1, datain=>
      tap_13_1, clk=>clk);
   reg_tap_14_0 : cycloneii_lcell_ff port map ( regout=>tap_14_0, datain=>
      tap_13_0, clk=>clk);
   reg_tap_13_9 : cycloneii_lcell_ff port map ( regout=>tap_13_9, datain=>
      tap_12_9, clk=>clk);
   reg_tap_13_8 : cycloneii_lcell_ff port map ( regout=>tap_13_8, datain=>
      tap_12_8, clk=>clk);
   reg_tap_13_7 : cycloneii_lcell_ff port map ( regout=>tap_13_7, datain=>
      tap_12_7, clk=>clk);
   reg_tap_13_6 : cycloneii_lcell_ff port map ( regout=>tap_13_6, datain=>
      tap_12_6, clk=>clk);
   reg_tap_13_5 : cycloneii_lcell_ff port map ( regout=>tap_13_5, datain=>
      tap_12_5, clk=>clk);
   reg_tap_13_4 : cycloneii_lcell_ff port map ( regout=>tap_13_4, datain=>
      tap_12_4, clk=>clk);
   reg_tap_13_3 : cycloneii_lcell_ff port map ( regout=>tap_13_3, datain=>
      tap_12_3, clk=>clk);
   reg_tap_13_2 : cycloneii_lcell_ff port map ( regout=>tap_13_2, datain=>
      tap_12_2, clk=>clk);
   reg_tap_13_14 : cycloneii_lcell_ff port map ( regout=>tap_13_14, datain=>
      tap_12_14, clk=>clk);
   reg_tap_13_10 : cycloneii_lcell_ff port map ( regout=>tap_13_10, datain=>
      tap_12_10, clk=>clk);
   reg_tap_13_1 : cycloneii_lcell_ff port map ( regout=>tap_13_1, datain=>
      tap_12_1, clk=>clk);
   reg_tap_13_0 : cycloneii_lcell_ff port map ( regout=>tap_13_0, datain=>
      tap_12_0, clk=>clk);
   reg_tap_12_9 : cycloneii_lcell_ff port map ( regout=>tap_12_9, datain=>
      tap_11_9, clk=>clk);
   reg_tap_12_8 : cycloneii_lcell_ff port map ( regout=>tap_12_8, datain=>
      tap_11_8, clk=>clk);
   reg_tap_12_7 : cycloneii_lcell_ff port map ( regout=>tap_12_7, datain=>
      tap_11_7, clk=>clk);
   reg_tap_12_6 : cycloneii_lcell_ff port map ( regout=>tap_12_6, datain=>
      tap_11_6, clk=>clk);
   reg_tap_12_5 : cycloneii_lcell_ff port map ( regout=>tap_12_5, datain=>
      tap_11_5, clk=>clk);
   reg_tap_12_4 : cycloneii_lcell_ff port map ( regout=>tap_12_4, datain=>
      tap_11_4, clk=>clk);
   reg_tap_12_3 : cycloneii_lcell_ff port map ( regout=>tap_12_3, datain=>
      tap_11_3, clk=>clk);
   reg_tap_12_2 : cycloneii_lcell_ff port map ( regout=>tap_12_2, datain=>
      tap_11_2, clk=>clk);
   reg_tap_12_14 : cycloneii_lcell_ff port map ( regout=>tap_12_14, datain=>
      tap_11_14, clk=>clk);
   reg_tap_12_10 : cycloneii_lcell_ff port map ( regout=>tap_12_10, datain=>
      tap_11_10, clk=>clk);
   reg_tap_12_1 : cycloneii_lcell_ff port map ( regout=>tap_12_1, datain=>
      tap_11_1, clk=>clk);
   reg_tap_12_0 : cycloneii_lcell_ff port map ( regout=>tap_12_0, datain=>
      tap_11_0, clk=>clk);
   reg_tap_11_9 : cycloneii_lcell_ff port map ( regout=>tap_11_9, datain=>
      tap_10_9, clk=>clk);
   reg_tap_11_8 : cycloneii_lcell_ff port map ( regout=>tap_11_8, datain=>
      tap_10_8, clk=>clk);
   reg_tap_11_7 : cycloneii_lcell_ff port map ( regout=>tap_11_7, datain=>
      tap_10_7, clk=>clk);
   reg_tap_11_6 : cycloneii_lcell_ff port map ( regout=>tap_11_6, datain=>
      tap_10_6, clk=>clk);
   reg_tap_11_5 : cycloneii_lcell_ff port map ( regout=>tap_11_5, datain=>
      tap_10_5, clk=>clk);
   reg_tap_11_4 : cycloneii_lcell_ff port map ( regout=>tap_11_4, datain=>
      tap_10_4, clk=>clk);
   reg_tap_11_3 : cycloneii_lcell_ff port map ( regout=>tap_11_3, datain=>
      tap_10_3, clk=>clk);
   reg_tap_11_2 : cycloneii_lcell_ff port map ( regout=>tap_11_2, datain=>
      tap_10_2, clk=>clk);
   reg_tap_11_14 : cycloneii_lcell_ff port map ( regout=>tap_11_14, datain=>
      tap_10_14, clk=>clk);
   reg_tap_11_10 : cycloneii_lcell_ff port map ( regout=>tap_11_10, datain=>
      tap_10_10, clk=>clk);
   reg_tap_11_1 : cycloneii_lcell_ff port map ( regout=>tap_11_1, datain=>
      tap_10_1, clk=>clk);
   reg_tap_11_0 : cycloneii_lcell_ff port map ( regout=>tap_11_0, datain=>
      tap_10_0, clk=>clk);
   reg_tap_10_9 : cycloneii_lcell_ff port map ( regout=>tap_10_9, datain=>
      tap_9_9, clk=>clk);
   reg_tap_10_8 : cycloneii_lcell_ff port map ( regout=>tap_10_8, datain=>
      tap_9_8, clk=>clk);
   reg_tap_10_7 : cycloneii_lcell_ff port map ( regout=>tap_10_7, datain=>
      tap_9_7, clk=>clk);
   reg_tap_10_6 : cycloneii_lcell_ff port map ( regout=>tap_10_6, datain=>
      tap_9_6, clk=>clk);
   reg_tap_10_5 : cycloneii_lcell_ff port map ( regout=>tap_10_5, datain=>
      tap_9_5, clk=>clk);
   reg_tap_10_4 : cycloneii_lcell_ff port map ( regout=>tap_10_4, datain=>
      tap_9_4, clk=>clk);
   reg_tap_10_3 : cycloneii_lcell_ff port map ( regout=>tap_10_3, datain=>
      tap_9_3, clk=>clk);
   reg_tap_10_2 : cycloneii_lcell_ff port map ( regout=>tap_10_2, datain=>
      tap_9_2, clk=>clk);
   reg_tap_10_14 : cycloneii_lcell_ff port map ( regout=>tap_10_14, datain=>
      tap_9_14, clk=>clk);
   reg_tap_10_10 : cycloneii_lcell_ff port map ( regout=>tap_10_10, datain=>
      tap_9_10, clk=>clk);
   reg_tap_10_1 : cycloneii_lcell_ff port map ( regout=>tap_10_1, datain=>
      tap_9_1, clk=>clk);
   reg_tap_10_0 : cycloneii_lcell_ff port map ( regout=>tap_10_0, datain=>
      tap_9_0, clk=>clk);
   reg_tap_1_9 : cycloneii_lcell_ff port map ( regout=>tap_1_9, datain=>
      i_data(9), clk=>clk);
   reg_tap_1_8 : cycloneii_lcell_ff port map ( regout=>tap_1_8, datain=>
      i_data(8), clk=>clk);
   reg_tap_1_7 : cycloneii_lcell_ff port map ( regout=>tap_1_7, datain=>
      i_data(7), clk=>clk);
   reg_tap_1_6 : cycloneii_lcell_ff port map ( regout=>tap_1_6, datain=>
      i_data(6), clk=>clk);
   reg_tap_1_5 : cycloneii_lcell_ff port map ( regout=>tap_1_5, datain=>
      i_data(5), clk=>clk);
   reg_tap_1_4 : cycloneii_lcell_ff port map ( regout=>tap_1_4, datain=>
      i_data(4), clk=>clk);
   reg_tap_1_3 : cycloneii_lcell_ff port map ( regout=>tap_1_3, datain=>
      i_data(3), clk=>clk);
   reg_tap_1_2 : cycloneii_lcell_ff port map ( regout=>tap_1_2, datain=>
      i_data(2), clk=>clk);
   reg_tap_1_14 : cycloneii_lcell_ff port map ( regout=>tap_1_14, datain=>
      i_data(14), clk=>clk);
   reg_tap_1_10 : cycloneii_lcell_ff port map ( regout=>tap_1_10, datain=>
      i_data(10), clk=>clk);
   reg_tap_1_1 : cycloneii_lcell_ff port map ( regout=>tap_1_1, datain=>
      i_data(1), clk=>clk);
   reg_tap_1_0 : cycloneii_lcell_ff port map ( regout=>tap_1_0, datain=>
      i_data(0), clk=>clk);
end low_pass ;

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
   signal q_15_EXMPLR871, q_14_EXMPLR872, q_13_EXMPLR873, q_12_EXMPLR874, 
      q_11_EXMPLR875, q_10_EXMPLR876, q_9_EXMPLR877, q_8_EXMPLR878, 
      q_7_EXMPLR879, q_6_EXMPLR880, q_5_EXMPLR881, q_4_EXMPLR882, 
      q_3_EXMPLR883, q_2_EXMPLR884, q_1_EXMPLR885, q_0_EXMPLR886, nx51271z1, 
      nx22081z16, nx52268z1, nx22081z15, nx53265z1, nx22081z14, nx54262z1, 
      nx22081z13, nx55259z1, nx22081z12, nx56256z1, nx22081z11, nx57253z1, 
      nx22081z10, nx58250z1, nx22081z9, nx59247z1, nx22081z8, nx60244z1, 
      nx22081z7, nx17096z1, nx22081z6, nx18093z1, nx22081z5, nx19090z1, 
      nx22081z4, nx20087z1, nx22081z3, nx21084z1, nx22081z2, nx22081z1, 
      nx_modgen_counter_16_0_vcc_net: std_logic ;

begin
   q(15) <= q_15_EXMPLR871 ;
   q(14) <= q_14_EXMPLR872 ;
   q(13) <= q_13_EXMPLR873 ;
   q(12) <= q_12_EXMPLR874 ;
   q(11) <= q_11_EXMPLR875 ;
   q(10) <= q_10_EXMPLR876 ;
   q(9) <= q_9_EXMPLR877 ;
   q(8) <= q_8_EXMPLR878 ;
   q(7) <= q_7_EXMPLR879 ;
   q(6) <= q_6_EXMPLR880 ;
   q(5) <= q_5_EXMPLR881 ;
   q(4) <= q_4_EXMPLR882 ;
   q(3) <= q_3_EXMPLR883 ;
   q(2) <= q_2_EXMPLR884 ;
   q(1) <= q_1_EXMPLR885 ;
   q(0) <= q_0_EXMPLR886 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR877, datain=>
      nx60244z1, clk=>clock, ena=>cnt_en);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR878, datain=>
      nx59247z1, clk=>clock, ena=>cnt_en);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR879, datain=>
      nx58250z1, clk=>clock, ena=>cnt_en);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR880, datain=>
      nx57253z1, clk=>clock, ena=>cnt_en);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR881, datain=>
      nx56256z1, clk=>clock, ena=>cnt_en);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR882, datain=>
      nx55259z1, clk=>clock, ena=>cnt_en);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR883, datain=>
      nx54262z1, clk=>clock, ena=>cnt_en);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR884, datain=>
      nx53265z1, clk=>clock, ena=>cnt_en);
   reg_q_15 : cycloneii_lcell_ff port map ( regout=>q_15_EXMPLR871, datain=>
      nx22081z1, clk=>clock, ena=>cnt_en);
   reg_q_14 : cycloneii_lcell_ff port map ( regout=>q_14_EXMPLR872, datain=>
      nx21084z1, clk=>clock, ena=>cnt_en);
   reg_q_13 : cycloneii_lcell_ff port map ( regout=>q_13_EXMPLR873, datain=>
      nx20087z1, clk=>clock, ena=>cnt_en);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>q_12_EXMPLR874, datain=>
      nx19090z1, clk=>clock, ena=>cnt_en);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>q_11_EXMPLR875, datain=>
      nx18093z1, clk=>clock, ena=>cnt_en);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>q_10_EXMPLR876, datain=>
      nx17096z1, clk=>clock, ena=>cnt_en);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR885, datain=>
      nx52268z1, clk=>clock, ena=>cnt_en);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR886, datain=>
      nx51271z1, clk=>clock, ena=>cnt_en);
   ix22081z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx22081z14, dataa=>q_2_EXMPLR884, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z15);
   nx_modgen_counter_16_0_vcc_net <= '1';
   ix22081z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx22081z1, dataa=>q_15_EXMPLR871, datad=>
      nx_modgen_counter_16_0_vcc_net, cin=>nx22081z2);
   ix22081z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx21084z1, cout=>nx22081z2, dataa=>q_14_EXMPLR872, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z3);
   ix22081z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx20087z1, cout=>nx22081z3, dataa=>q_13_EXMPLR873, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z4);
   ix22081z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, cout=>nx22081z4, dataa=>q_12_EXMPLR874, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z5);
   ix22081z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx22081z5, dataa=>q_11_EXMPLR875, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z6);
   ix22081z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx22081z6, dataa=>q_10_EXMPLR876, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z7);
   ix22081z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx22081z7, dataa=>q_9_EXMPLR877, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z8);
   ix22081z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx22081z15, dataa=>q_1_EXMPLR885, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z16);
   ix22081z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx22081z8, dataa=>q_8_EXMPLR878, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z9);
   ix22081z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx22081z9, dataa=>q_7_EXMPLR879, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z10);
   ix22081z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx22081z10, dataa=>q_6_EXMPLR880, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z11);
   ix22081z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx22081z11, dataa=>q_5_EXMPLR881, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z12);
   ix22081z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx22081z12, dataa=>q_4_EXMPLR882, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z13);
   ix22081z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx22081z13, dataa=>q_3_EXMPLR883, 
      datad=>nx_modgen_counter_16_0_vcc_net, cin=>nx22081z14);
   ix22081z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx22081z16, dataa=>q_0_EXMPLR886, 
      datad=>nx_modgen_counter_16_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_16_1 is 
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
end modgen_counter_16_1 ;

architecture IMPLEMENTATION of modgen_counter_16_1 is 
   signal nx1963z1, nx19090z3, nx19090z5, nx19090z7, nx19090z9, nx19090z11, 
      nx19090z13, nx19090z15, nx19090z17, nx19090z19, nx19090z21, nx19090z23, 
      nx19090z25, nx51271z1, nx19090z24, nx52268z1, nx19090z22, nx53265z1, 
      nx19090z20, nx54262z1, nx19090z18, nx55259z1, nx19090z16, nx56256z1, 
      nx19090z14, nx57253z1, nx19090z12, nx58250z1, nx19090z10, nx59247z1, 
      nx19090z8, nx60244z1, nx19090z6, nx17096z1, nx19090z4, nx18093z1, 
      nx19090z2, nx19090z1, nx_modgen_counter_16_1_vcc_net: std_logic ;

begin
   q(12) <= nx1963z1 ;
   q(11) <= nx19090z3 ;
   q(10) <= nx19090z5 ;
   q(9) <= nx19090z7 ;
   q(8) <= nx19090z9 ;
   q(7) <= nx19090z11 ;
   q(6) <= nx19090z13 ;
   q(5) <= nx19090z15 ;
   q(4) <= nx19090z17 ;
   q(3) <= nx19090z19 ;
   q(2) <= nx19090z21 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>nx19090z7, datain=>
      nx60244z1, clk=>clock, sclr=>sclear);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx19090z9, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx19090z11, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx19090z13, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx19090z15, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx19090z17, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx19090z19, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx19090z21, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_12 : cycloneii_lcell_ff port map ( regout=>nx1963z1, datain=>
      nx19090z1, clk=>clock, sclr=>sclear);
   reg_q_11 : cycloneii_lcell_ff port map ( regout=>nx19090z3, datain=>
      nx18093z1, clk=>clock, sclr=>sclear);
   reg_q_10 : cycloneii_lcell_ff port map ( regout=>nx19090z5, datain=>
      nx17096z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx19090z23, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx19090z25, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix19090z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a5a",
         sum_lutc_input => "cin") 
       port map ( combout=>nx19090z1, dataa=>nx1963z1, datad=>
      nx_modgen_counter_16_1_vcc_net, cin=>nx19090z2);
   nx_modgen_counter_16_1_vcc_net <= '1';
   ix19090z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx18093z1, cout=>nx19090z2, dataa=>nx19090z3, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z4);
   ix19090z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx17096z1, cout=>nx19090z4, dataa=>nx19090z5, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z6);
   ix19090z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, cout=>nx19090z6, dataa=>nx19090z7, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z8);
   ix19090z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx19090z22, dataa=>nx19090z23, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z24);
   ix19090z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx19090z8, dataa=>nx19090z9, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z10);
   ix19090z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx19090z10, dataa=>nx19090z11, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z12);
   ix19090z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx19090z12, dataa=>nx19090z13, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z14);
   ix19090z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx19090z14, dataa=>nx19090z15, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z16);
   ix19090z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx19090z24, dataa=>nx19090z25, 
      datad=>nx_modgen_counter_16_1_vcc_net);
   ix19090z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx19090z16, dataa=>nx19090z17, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z18);
   ix19090z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx19090z18, dataa=>nx19090z19, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z20);
   ix19090z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx19090z20, dataa=>nx19090z21, 
      datad=>nx_modgen_counter_16_1_vcc_net, cin=>nx19090z22);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity sub_5_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (4 DOWNTO 0) ;
      b : IN std_logic_vector (4 DOWNTO 0) ;
      d : OUT std_logic_vector (4 DOWNTO 0) ;
      cout : OUT std_logic) ;
end sub_5_0 ;

architecture IMPLEMENTATION of sub_5_0 is 
   signal nx41961z11, nx41961z8, nx41961z5, nx41961z3, nx_sub_5_0_vcc_net: 
   std_logic ;

begin
   ix41961z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), dataa=>b(4), datad=>nx_sub_5_0_vcc_net, cin
      =>nx41961z3);
   nx_sub_5_0_vcc_net <= '1';
   ix41961z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5af5",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx41961z3, dataa=>b(3), datad=>
      nx_sub_5_0_vcc_net, cin=>nx41961z5);
   ix41961z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx41961z5, dataa=>b(2), datab=>a(2), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z8);
   ix41961z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"69d4",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx41961z8, dataa=>b(1), datab=>a(1), 
      datad=>nx_sub_5_0_vcc_net, cin=>nx41961z11);
   ix41961z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"66bb") 
       port map ( combout=>d(0), cout=>nx41961z11, dataa=>a(0), datab=>b(0), 
      datad=>nx_sub_5_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_6_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (5 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (5 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic ;
      p_p_reset : IN std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      px755 : IN std_logic ;
      p_p_clock : IN std_logic) ;
end modgen_counter_6_0 ;

architecture IMPLEMENTATION of modgen_counter_6_0 is 
   signal nx55259z3, nx64583z1, nx56256z3, nx56256z5, nx56256z7, nx56256z9, 
      nx56256z11, nx51271z1, nx56256z10, nx52268z1, nx56256z8, nx53265z1, 
      nx56256z6, nx54262z1, nx56256z4, nx55259z1, nx56256z2, nx56256z1, 
      nx56256z12, nx55259z2, nx54262z2, nx53265z2, nx52268z2, nx51271z2, 
      nx_modgen_counter_6_0_vcc_net: std_logic ;

begin
   q(5) <= nx64583z1 ;
   q(4) <= nx56256z3 ;
   q(3) <= nx56256z5 ;
   q(2) <= nx56256z7 ;
   q(1) <= nx56256z9 ;
   q(0) <= nx56256z11 ;
   nx56256z12 <= '1';
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx64583z1, datain=>
      nx56256z1, sdata=>nx56256z12, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx55259z2 <= '1';
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx56256z3, datain=>
      nx55259z1, sdata=>nx55259z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx54262z2 <= '1';
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx56256z5, datain=>
      nx54262z1, sdata=>nx54262z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx53265z2 <= '1';
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx56256z7, datain=>
      nx53265z1, sdata=>nx53265z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx52268z2 <= '1';
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx56256z9, datain=>
      nx52268z1, sdata=>nx52268z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   nx51271z2 <= '1';
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx56256z11, datain=>
      nx51271z1, sdata=>nx51271z2, clk=>p_p_clk, ena=>nx55259z3, sload=>
      sload);
   ix56256z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx56256z6, dataa=>nx56256z7, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z8);
   nx_modgen_counter_6_0_vcc_net <= '1';
   ix56256z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx56256z8, dataa=>nx56256z9, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z10);
   ix56256z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, dataa=>nx64583z1, datad=>
      nx_modgen_counter_6_0_vcc_net, cin=>nx56256z2);
   ix56256z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx56256z2, dataa=>nx56256z3, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z4);
   ix56256z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx56256z4, dataa=>nx56256z5, 
      datad=>nx_modgen_counter_6_0_vcc_net, cin=>nx56256z6);
   ix56256z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx56256z10, dataa=>nx56256z11, 
      datad=>nx_modgen_counter_6_0_vcc_net);
   ix55259z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0d00") 
       port map ( combout=>nx55259z3, dataa=>p_p_reset, datab=>cnt_en, datac
      =>p_p_clock, datad=>px755);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_ctrl_notri is 
   port (
      p_i2c_sdat : IN std_logic ;
      p_finish_xfr : OUT std_logic ;
      p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
      p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
      p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
      p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
      p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
      p_i2c_sclk : OUT std_logic ;
      p_start_xfr : IN std_logic ;
      p_reset_rtlc_164_and_63 : IN std_logic_vector (2 DOWNTO 2) ;
      p_ack : OUT std_logic ;
      p_not_sdo : OUT std_logic ;
      p_clock : IN std_logic ;
      p_sdo : OUT std_logic ;
      p_p_clk : IN std_logic ;
      p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
      p_not_reset_n : IN std_logic ;
      px362 : IN std_logic) ;
end i2c_ctrl_notri ;

architecture main_unfold_1393 of i2c_ctrl_notri is 
   component sub_5_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (4 DOWNTO 0) ;
         b : IN std_logic_vector (4 DOWNTO 0) ;
         d : OUT std_logic_vector (4 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_6_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (5 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (5 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic ;
         p_p_reset : IN std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         px755 : IN std_logic ;
         p_p_clock : IN std_logic) ;
   end component ;
   signal sd_counter_4, sd_counter_3, sd_counter_2, sd_counter_1, 
      sd_counter_0: std_logic ;
   
   signal sdo_5n5s2: std_logic_vector (4 DOWNTO 0) ;
   
   signal sd_counter_5, nx41315z14, nx41315z16, nx41315z21, nx41315z12, 
      nx41315z13, nx41315z17, sdo_5n5s2f1_0, sdo_5n5s2f1_1, nx41315z4, 
      nx7286z1, nx41315z19, nx44942z2, nx22137z1, nx44942z7, nx41315z2, 
      nx44942z4, nx44942z5, nx22137z2, nx44942z8, nx41315z15, nx41315z8, 
      nx41315z7, nx44942z6, nx41315z5, nx41315z10, nx41315z3, nx41315z22, 
      nx43379z2, nx43379z3, nx41315z9, nx41315z11, nx41315z18, nx41315z6, 
      nx7286z2, nx43379z4, nx51857z1, nx41315z1, nx43379z1, nx44942z1, 
      nx44942z3, nx41315z20: std_logic ;
   
   signal DANGLING : std_logic_vector (15 downto 0 );

begin
   sdo_sub5_5i2 : sub_5_0 port map ( cin=>DANGLING(0), a(4)=>DANGLING(1), 
      a(3)=>DANGLING(2), a(2)=>nx22137z1, a(1)=>sdo_5n5s2f1_1, a(0)=>
      sdo_5n5s2f1_0, b(4)=>sd_counter_4, b(3)=>sd_counter_3, b(2)=>
      sd_counter_2, b(1)=>sd_counter_1, b(0)=>sd_counter_0, d(4)=>
      sdo_5n5s2(4), d(3)=>sdo_5n5s2(3), d(2)=>sdo_5n5s2(2), d(1)=>
      sdo_5n5s2(1), d(0)=>sdo_5n5s2(0), cout=>DANGLING(3));
   modgen_counter_sd_counter : modgen_counter_6_0 port map ( clock=>p_clock, 
      q(5)=>sd_counter_5, q(4)=>sd_counter_4, q(3)=>sd_counter_3, q(2)=>
      sd_counter_2, q(1)=>sd_counter_1, q(0)=>sd_counter_0, clk_en=>DANGLING
      (4), aclear=>DANGLING(5), sload=>p_not_reset_n, data(5)=>DANGLING(6), 
      data(4)=>DANGLING(7), data(3)=>DANGLING(8), data(2)=>DANGLING(9), 
      data(1)=>DANGLING(10), data(0)=>DANGLING(11), aset=>DANGLING(12), 
      sclear=>DANGLING(13), updn=>DANGLING(14), cnt_en=>nx7286z1, p_p_reset
      =>p_reset_rtlc_164_and_63(2), p_p_clk=>p_p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(15), px755=>px362, p_p_clock=>
      p_clock);
   p_sdo <= NOT nx51857z1;
   reg_sdo : cycloneii_lcell_ff port map ( regout=>nx51857z1, datain=>
      nx41315z1, clk=>p_p_clk, ena=>nx41315z19, sclr=>p_not_reset_n);
   reg_sclk : cycloneii_lcell_ff port map ( regout=>nx43379z1, datain=>
      nx44942z1, clk=>p_p_clk, ena=>nx44942z2, sclr=>p_not_reset_n);
   ix41315z52943 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z21, dataa=>sd_counter_1, datab=>
      sd_counter_0, datac=>nx44942z4, datad=>nx44942z5);
   ix41315z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"0101") 
       port map ( combout=>nx41315z16, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1);
   ix41315z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"0808") 
       port map ( combout=>nx41315z14, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5);
   ix43379z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8080") 
       port map ( combout=>nx43379z4, dataa=>sd_counter_3, datab=>
      sd_counter_1, datac=>sd_counter_0);
   ix7286z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx7286z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_1);
   ix41315z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"0504") 
       port map ( combout=>nx41315z6, dataa=>sd_counter_4, datab=>
      sd_counter_1, datac=>sd_counter_5, datad=>nx44942z5);
   ix41315z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx41315z18, dataa=>sdo_5n5s2(1), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"fefe") 
       port map ( combout=>nx41315z11, dataa=>nx41315z12, datab=>nx41315z13, 
      datac=>nx41315z15);
   ix43379z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"040c") 
       port map ( combout=>nx43379z3, dataa=>sd_counter_4, datab=>
      sd_counter_2, datac=>sd_counter_5, datad=>nx43379z4);
   ix43379z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"000e") 
       port map ( combout=>nx43379z2, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52944 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff02") 
       port map ( combout=>nx41315z22, dataa=>nx41315z14, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx41315z15);
   ix41315z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff74") 
       port map ( combout=>nx41315z3, dataa=>nx41315z4, datab=>nx22137z1, 
      datac=>nx41315z5, datad=>nx41315z6);
   ix41315z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fff8") 
       port map ( combout=>nx41315z5, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>nx44942z4, datad=>nx43379z4);
   ix44942z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5557") 
       port map ( combout=>nx44942z6, dataa=>p_reset_rtlc_164_and_63(2), 
      datab=>sd_counter_5, datac=>nx44942z7, datad=>nx44942z8);
   ix41315z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8f0") 
       port map ( combout=>nx41315z7, dataa=>sdo_5n5s2(1), datab=>nx41315z2, 
      datac=>nx41315z8, datad=>nx41315z10);
   ix41315z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>nx41315z8, dataa=>sdo_5n5s2(3), datab=>nx41315z3, 
      datac=>nx41315z9);
   ix41315z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"ccce") 
       port map ( combout=>nx41315z15, dataa=>nx41315z16, datab=>nx41315z17, 
      datac=>sd_counter_4, datad=>sd_counter_0);
   ix44942z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z8, dataa=>sd_counter_4, datab=>
      sd_counter_2);
   ix22137z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a888") 
       port map ( combout=>nx22137z2, dataa=>sd_counter_3, datab=>
      sd_counter_2, datac=>sd_counter_1, datad=>sd_counter_0);
   ix44942z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z5, dataa=>sd_counter_3, datab=>
      sd_counter_2);
   ix44942z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>nx44942z4, dataa=>sd_counter_4, datab=>
      sd_counter_5);
   ix41315z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx41315z2, dataa=>sdo_5n5s2(3), datab=>nx41315z3
   );
   ix44942z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx44942z7, dataa=>sd_counter_3, datab=>
      sd_counter_1);
   ix22137z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffa8") 
       port map ( combout=>nx22137z1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix44942z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff01") 
       port map ( combout=>nx44942z3, dataa=>sd_counter_0, datab=>nx44942z4, 
      datac=>nx44942z5, datad=>nx44942z6);
   ix41315z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"5f1f") 
       port map ( combout=>nx41315z20, dataa=>nx41315z21, datab=>nx41315z4, 
      datac=>p_reset_rtlc_164_and_63(2), datad=>nx41315z22);
   ix7286z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx7286z1, dataa=>sd_counter_0, datab=>
      sd_counter_5, datac=>nx7286z2);
   ix41315z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"bbbb") 
       port map ( combout=>nx41315z4, dataa=>sd_counter_5, datab=>nx7286z2);
   ix22137z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"1302") 
       port map ( combout=>sdo_5n5s2f1_0, dataa=>sd_counter_4, datab=>
      sd_counter_5, datac=>nx44942z5, datad=>nx22137z2);
   ix41315z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0103") 
       port map ( combout=>nx41315z1, dataa=>nx41315z2, datab=>nx41315z7, 
      datac=>nx41315z11, datad=>nx41315z18);
   ix44942z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>nx44942z1, dataa=>sd_counter_1, datab=>
      sd_counter_0);
   ix41315z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"0800") 
       port map ( combout=>nx41315z17, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"0002") 
       port map ( combout=>nx41315z13, dataa=>nx41315z14, datab=>
      sd_counter_3, datac=>sd_counter_1, datad=>sd_counter_0);
   ix41315z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx41315z12, dataa=>sd_counter_2, datab=>
      sd_counter_0, datac=>nx44942z7, datad=>nx44942z4);
   ix43379z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7773") 
       port map ( combout=>p_i2c_sclk, dataa=>p_clock, datab=>nx43379z1, 
      datac=>nx43379z2, datad=>nx43379z3);
   ix22137z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0057") 
       port map ( combout=>sdo_5n5s2f1_1, dataa=>sd_counter_4, datab=>
      sd_counter_3, datac=>sd_counter_2, datad=>sd_counter_5);
   ix41315z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"1212") 
       port map ( combout=>nx41315z10, dataa=>sdo_5n5s2(4), datab=>
      sdo_5n5s2(2), datac=>sdo_5n5s2(0));
   ix41315z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"2022") 
       port map ( combout=>nx41315z9, dataa=>sdo_5n5s2(2), datab=>
      sdo_5n5s2(1), datac=>sdo_5n5s2(4), datad=>sdo_5n5s2(0));
   ix41315z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx41315z19, dataa=>nx41315z20, datab=>p_clock, 
      datac=>px362);
   ix44942z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"2020") 
       port map ( combout=>nx44942z2, dataa=>nx44942z3, datab=>p_clock, 
      datac=>px362);
end main_unfold_1393 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity i2c_av_config_notri is 
   port (
      p_u0_not_sdo : OUT std_logic ;
      p_i2c_sclk : OUT std_logic ;
      p_i2c_sdat : IN std_logic ;
      p_clk : IN std_logic ;
      p_sdo : OUT std_logic) ;
end i2c_av_config_notri ;

architecture main_unfold_1971 of i2c_av_config_notri is 
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
   component modgen_counter_16_1
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
   component i2c_ctrl_notri
      port (
         p_i2c_sdat : IN std_logic ;
         p_finish_xfr : OUT std_logic ;
         p_i2c_data_4 : IN std_logic_vector (2 DOWNTO 0) ;
         p_i2c_data_3 : IN std_logic_vector (4 DOWNTO 4) ;
         p_i2c_data_2 : IN std_logic_vector (7 DOWNTO 6) ;
         p_i2c_data_1 : IN std_logic_vector (12 DOWNTO 9) ;
         p_i2c_data_5 : IN std_logic_vector (22 DOWNTO 21) ;
         p_i2c_sclk : OUT std_logic ;
         p_start_xfr : IN std_logic ;
         p_reset_rtlc_164_and_63 : IN std_logic_vector (2 DOWNTO 2) ;
         p_ack : OUT std_logic ;
         p_not_sdo : OUT std_logic ;
         p_clock : IN std_logic ;
         p_sdo : OUT std_logic ;
         p_p_clk : IN std_logic ;
         p_m_i2c_ctrl_clk_dup_364 : IN std_logic ;
         p_not_reset_n : IN std_logic ;
         px362 : IN std_logic) ;
   end component ;
   signal cont: std_logic_vector (15 DOWNTO 0) ;
   
   signal m_i2c_clk_div_5, m_i2c_clk_div_4, m_i2c_clk_div_3, m_i2c_clk_div_2, 
      reset_n, m_i2c_clk_div_12, m_i2c_clk_div_11, m_i2c_clk_div_10, 
      m_i2c_clk_div_9, m_i2c_clk_div_6, m_i2c_clk_div_7, m_i2c_clk_div_8, 
      m_i2c_ctrl_clk, nx23875z1, nx2692z2, not_reset_n, nx35560z1, nx2692z1, 
      nx17807z2, nx35560z2, nx35560z3, nx35560z4, nx2692z3, nx2692z4, 
      nx17807z1, nx2692z5, nx51161z1: std_logic ;
   
   signal DANGLING : std_logic_vector (66 downto 0 );

begin
   modgen_counter_cont : modgen_counter_16_0 port map ( clock=>p_clk, q(15)
      =>cont(15), q(14)=>cont(14), q(13)=>cont(13), q(12)=>cont(12), q(11)=>
      cont(11), q(10)=>cont(10), q(9)=>cont(9), q(8)=>cont(8), q(7)=>cont(7), 
      q(6)=>cont(6), q(5)=>cont(5), q(4)=>cont(4), q(3)=>cont(3), q(2)=>
      cont(2), q(1)=>cont(1), q(0)=>cont(0), clk_en=>DANGLING(0), aclear=>
      DANGLING(1), sload=>DANGLING(2), data(15)=>DANGLING(3), data(14)=>
      DANGLING(4), data(13)=>DANGLING(5), data(12)=>DANGLING(6), data(11)=>
      DANGLING(7), data(10)=>DANGLING(8), data(9)=>DANGLING(9), data(8)=>
      DANGLING(10), data(7)=>DANGLING(11), data(6)=>DANGLING(12), data(5)=>
      DANGLING(13), data(4)=>DANGLING(14), data(3)=>DANGLING(15), data(2)=>
      DANGLING(16), data(1)=>DANGLING(17), data(0)=>DANGLING(18), aset=>
      DANGLING(19), sclear=>DANGLING(20), updn=>DANGLING(21), cnt_en=>
      nx35560z1);
   modgen_counter_m_i2c_clk_div : modgen_counter_16_1 port map ( clock=>
      p_clk, q(15)=>DANGLING(22), q(14)=>DANGLING(23), q(13)=>DANGLING(24), 
      q(12)=>m_i2c_clk_div_12, q(11)=>m_i2c_clk_div_11, q(10)=>
      m_i2c_clk_div_10, q(9)=>m_i2c_clk_div_9, q(8)=>m_i2c_clk_div_8, q(7)=>
      m_i2c_clk_div_7, q(6)=>m_i2c_clk_div_6, q(5)=>m_i2c_clk_div_5, q(4)=>
      m_i2c_clk_div_4, q(3)=>m_i2c_clk_div_3, q(2)=>m_i2c_clk_div_2, q(1)=>
      DANGLING(25), q(0)=>DANGLING(26), clk_en=>DANGLING(27), aclear=>
      DANGLING(28), sload=>DANGLING(29), data(15)=>DANGLING(30), data(14)=>
      DANGLING(31), data(13)=>DANGLING(32), data(12)=>DANGLING(33), data(11)
      =>DANGLING(34), data(10)=>DANGLING(35), data(9)=>DANGLING(36), data(8)
      =>DANGLING(37), data(7)=>DANGLING(38), data(6)=>DANGLING(39), data(5)
      =>DANGLING(40), data(4)=>DANGLING(41), data(3)=>DANGLING(42), data(2)
      =>DANGLING(43), data(1)=>DANGLING(44), data(0)=>DANGLING(45), aset=>
      DANGLING(46), sclear=>nx23875z1, updn=>DANGLING(47), cnt_en=>DANGLING(
      48));
   u0 : i2c_ctrl_notri port map ( p_i2c_sdat=>DANGLING(49), p_finish_xfr=>
      DANGLING(50), p_i2c_data_4(2)=>DANGLING(51), p_i2c_data_4(1)=>DANGLING
      (52), p_i2c_data_4(0)=>DANGLING(53), p_i2c_data_3(4)=>DANGLING(54), 
      p_i2c_data_2(7)=>DANGLING(55), p_i2c_data_2(6)=>DANGLING(56), 
      p_i2c_data_1(12)=>DANGLING(57), p_i2c_data_1(11)=>DANGLING(58), 
      p_i2c_data_1(10)=>DANGLING(59), p_i2c_data_1(9)=>DANGLING(60), 
      p_i2c_data_5(22)=>DANGLING(61), p_i2c_data_5(21)=>DANGLING(62), 
      p_i2c_sclk=>p_i2c_sclk, p_start_xfr=>DANGLING(63), 
      p_reset_rtlc_164_and_63(2)=>reset_n, p_ack=>DANGLING(64), p_not_sdo=>
      DANGLING(65), p_clock=>m_i2c_ctrl_clk, p_sdo=>p_sdo, p_p_clk=>p_clk, 
      p_m_i2c_ctrl_clk_dup_364=>DANGLING(66), p_not_reset_n=>not_reset_n, 
      px362=>nx51161z1);
   not_reset_n <= NOT reset_n;
   reg_reset_n : cycloneii_lcell_ff port map ( regout=>reset_n, datain=>
      nx17807z1, clk=>p_clk);
   reg_m_i2c_ctrl_clk : cycloneii_lcell_ff port map ( regout=>m_i2c_ctrl_clk, 
      datain=>nx2692z1, clk=>p_clk, sclr=>not_reset_n);
   ix2692z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"a8a8") 
       port map ( combout=>nx2692z5, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_10, datac=>m_i2c_clk_div_9);
   ix17807z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix2692z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx2692z4, dataa=>m_i2c_clk_div_11, datab=>
      m_i2c_clk_div_6, datac=>m_i2c_clk_div_7, datad=>m_i2c_clk_div_8);
   ix2692z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"fffe") 
       port map ( combout=>nx2692z3, dataa=>m_i2c_clk_div_5, datab=>
      m_i2c_clk_div_4, datac=>m_i2c_clk_div_3, datad=>m_i2c_clk_div_2);
   ix35560z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z4, dataa=>cont(12), datab=>cont(13), 
      datac=>cont(14), datad=>cont(15));
   ix35560z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z3, dataa=>cont(8), datab=>cont(9), datac
      =>cont(10), datad=>cont(11));
   ix35560z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx35560z2, dataa=>cont(4), datab=>cont(5), datac
      =>cont(6), datad=>cont(7));
   ix17807z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"8000") 
       port map ( combout=>nx17807z2, dataa=>cont(0), datab=>cont(1), datac
      =>cont(2), datad=>cont(3));
   ix2692z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx2692z1, dataa=>nx2692z2, datab=>m_i2c_ctrl_clk
   );
   ix2692z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffec") 
       port map ( combout=>nx2692z2, dataa=>nx2692z3, datab=>
      m_i2c_clk_div_12, datac=>nx2692z4, datad=>nx2692z5);
   ix23875z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"dddd") 
       port map ( combout=>nx23875z1, dataa=>reset_n, datab=>nx2692z2);
   ix35560z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx35560z1, dataa=>nx17807z2, datab=>nx35560z2, 
      datac=>nx35560z3, datad=>nx35560z4);
   ix51161z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2828") 
       port map ( combout=>nx51161z1, dataa=>reset_n, datab=>m_i2c_ctrl_clk, 
      datac=>nx2692z2);
end main_unfold_1971 ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity add_9_0 is 
   port (
      cin : IN std_logic ;
      a : IN std_logic_vector (8 DOWNTO 0) ;
      b : IN std_logic_vector (8 DOWNTO 0) ;
      d : OUT std_logic_vector (8 DOWNTO 0) ;
      cout : OUT std_logic) ;
end add_9_0 ;

architecture IMPLEMENTATION of add_9_0 is 
   signal nx45949z23, nx45949z20, nx45949z17, nx45949z14, nx45949z11, 
      nx45949z8, nx45949z5, nx45949z3, nx_add_9_0_vcc_net: std_logic ;

begin
   ix45949z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>d(8), dataa=>a(8), datad=>nx_add_9_0_vcc_net, cin
      =>nx45949z3);
   nx_add_9_0_vcc_net <= '1';
   ix45949z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>d(7), cout=>nx45949z3, dataa=>a(7), datad=>
      nx_add_9_0_vcc_net, cin=>nx45949z5);
   ix45949z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(6), cout=>nx45949z5, dataa=>b(6), datab=>a(6), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z8);
   ix45949z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(5), cout=>nx45949z8, dataa=>b(5), datab=>a(5), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z11);
   ix45949z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(4), cout=>nx45949z11, dataa=>b(4), datab=>a(4), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z14);
   ix45949z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(3), cout=>nx45949z14, dataa=>b(3), datab=>a(3), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z17);
   ix45949z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(2), cout=>nx45949z17, dataa=>b(2), datab=>a(2), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z20);
   ix45949z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"96e8",
         sum_lutc_input => "cin") 
       port map ( combout=>d(1), cout=>nx45949z20, dataa=>b(1), datab=>a(1), 
      datad=>nx_add_9_0_vcc_net, cin=>nx45949z23);
   ix45949z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"99ee") 
       port map ( combout=>d(0), cout=>nx45949z23, dataa=>a(0), datab=>b(0), 
      datad=>nx_add_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_10_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (9 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (9 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_10_0 ;

architecture IMPLEMENTATION of modgen_counter_10_0 is 
   signal q_9_EXMPLR895, q_8_EXMPLR896, q_7_EXMPLR897, q_6_EXMPLR898, 
      q_5_EXMPLR899, q_4_EXMPLR900, q_3_EXMPLR901, q_2_EXMPLR902, 
      q_1_EXMPLR903, q_0_EXMPLR904, nx51271z1, nx60244z10, nx52268z1, 
      nx60244z9, nx53265z1, nx60244z8, nx54262z1, nx60244z7, nx55259z1, 
      nx60244z6, nx56256z1, nx60244z5, nx57253z1, nx60244z4, nx58250z1, 
      nx60244z3, nx59247z1, nx60244z2, nx60244z1, 
      nx_modgen_counter_10_0_vcc_net: std_logic ;

begin
   q(9) <= q_9_EXMPLR895 ;
   q(8) <= q_8_EXMPLR896 ;
   q(7) <= q_7_EXMPLR897 ;
   q(6) <= q_6_EXMPLR898 ;
   q(5) <= q_5_EXMPLR899 ;
   q(4) <= q_4_EXMPLR900 ;
   q(3) <= q_3_EXMPLR901 ;
   q(2) <= q_2_EXMPLR902 ;
   q(1) <= q_1_EXMPLR903 ;
   q(0) <= q_0_EXMPLR904 ;
   reg_q_9 : cycloneii_lcell_ff port map ( regout=>q_9_EXMPLR895, datain=>
      nx60244z1, clk=>clock);
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>q_8_EXMPLR896, datain=>
      nx59247z1, clk=>clock);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>q_7_EXMPLR897, datain=>
      nx58250z1, clk=>clock);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>q_6_EXMPLR898, datain=>
      nx57253z1, clk=>clock);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>q_5_EXMPLR899, datain=>
      nx56256z1, clk=>clock);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>q_4_EXMPLR900, datain=>
      nx55259z1, clk=>clock);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>q_3_EXMPLR901, datain=>
      nx54262z1, clk=>clock);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>q_2_EXMPLR902, datain=>
      nx53265z1, clk=>clock);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>q_1_EXMPLR903, datain=>
      nx52268z1, clk=>clock);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>q_0_EXMPLR904, datain=>
      nx51271z1, clk=>clock);
   ix60244z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx60244z8, dataa=>q_2_EXMPLR902, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z9);
   nx_modgen_counter_10_0_vcc_net <= '1';
   ix60244z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx60244z1, dataa=>q_9_EXMPLR895, datad=>
      nx_modgen_counter_10_0_vcc_net, cin=>nx60244z2);
   ix60244z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, cout=>nx60244z2, dataa=>q_8_EXMPLR896, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z3);
   ix60244z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx60244z9, dataa=>q_1_EXMPLR903, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z10);
   ix60244z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx60244z3, dataa=>q_7_EXMPLR897, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z4);
   ix60244z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx60244z4, dataa=>q_6_EXMPLR898, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z5);
   ix60244z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx60244z5, dataa=>q_5_EXMPLR899, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z6);
   ix60244z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx60244z6, dataa=>q_4_EXMPLR900, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z7);
   ix60244z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx60244z7, dataa=>q_3_EXMPLR901, 
      datad=>nx_modgen_counter_10_0_vcc_net, cin=>nx60244z8);
   ix60244z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx60244z10, dataa=>q_0_EXMPLR904, 
      datad=>nx_modgen_counter_10_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity modgen_counter_9_0 is 
   port (
      clock : IN std_logic ;
      q : OUT std_logic_vector (8 DOWNTO 0) ;
      clk_en : IN std_logic ;
      aclear : IN std_logic ;
      sload : IN std_logic ;
      data : IN std_logic_vector (8 DOWNTO 0) ;
      aset : IN std_logic ;
      sclear : IN std_logic ;
      updn : IN std_logic ;
      cnt_en : IN std_logic) ;
end modgen_counter_9_0 ;

architecture IMPLEMENTATION of modgen_counter_9_0 is 
   signal nx2038z1, nx59247z3, nx59247z5, nx59247z7, nx59247z9, nx59247z11, 
      nx59247z13, nx59247z15, nx59247z17, nx51271z1, nx59247z16, nx52268z1, 
      nx59247z14, nx53265z1, nx59247z12, nx54262z1, nx59247z10, nx55259z1, 
      nx59247z8, nx56256z1, nx59247z6, nx57253z1, nx59247z4, nx58250z1, 
      nx59247z2, nx59247z1, nx_modgen_counter_9_0_vcc_net: std_logic ;

begin
   q(8) <= nx2038z1 ;
   q(7) <= nx59247z3 ;
   q(6) <= nx59247z5 ;
   q(5) <= nx59247z7 ;
   q(4) <= nx59247z9 ;
   q(3) <= nx59247z11 ;
   q(2) <= nx59247z13 ;
   q(1) <= nx59247z15 ;
   q(0) <= nx59247z17 ;
   reg_q_8 : cycloneii_lcell_ff port map ( regout=>nx2038z1, datain=>
      nx59247z1, clk=>clock, sclr=>sclear);
   reg_q_7 : cycloneii_lcell_ff port map ( regout=>nx59247z3, datain=>
      nx58250z1, clk=>clock, sclr=>sclear);
   reg_q_6 : cycloneii_lcell_ff port map ( regout=>nx59247z5, datain=>
      nx57253z1, clk=>clock, sclr=>sclear);
   reg_q_5 : cycloneii_lcell_ff port map ( regout=>nx59247z7, datain=>
      nx56256z1, clk=>clock, sclr=>sclear);
   reg_q_4 : cycloneii_lcell_ff port map ( regout=>nx59247z9, datain=>
      nx55259z1, clk=>clock, sclr=>sclear);
   reg_q_3 : cycloneii_lcell_ff port map ( regout=>nx59247z11, datain=>
      nx54262z1, clk=>clock, sclr=>sclear);
   reg_q_2 : cycloneii_lcell_ff port map ( regout=>nx59247z13, datain=>
      nx53265z1, clk=>clock, sclr=>sclear);
   reg_q_1 : cycloneii_lcell_ff port map ( regout=>nx59247z15, datain=>
      nx52268z1, clk=>clock, sclr=>sclear);
   reg_q_0 : cycloneii_lcell_ff port map ( regout=>nx59247z17, datain=>
      nx51271z1, clk=>clock, sclr=>sclear);
   ix59247z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx53265z1, cout=>nx59247z12, dataa=>nx59247z13, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z14);
   nx_modgen_counter_9_0_vcc_net <= '1';
   ix59247z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5a00",
         sum_lutc_input => "cin") 
       port map ( combout=>nx59247z1, dataa=>nx2038z1, datad=>
      nx_modgen_counter_9_0_vcc_net, cin=>nx59247z2);
   ix59247z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx58250z1, cout=>nx59247z2, dataa=>nx59247z3, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z4);
   ix59247z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx57253z1, cout=>nx59247z4, dataa=>nx59247z5, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z6);
   ix59247z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx52268z1, cout=>nx59247z14, dataa=>nx59247z15, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z16);
   ix59247z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx56256z1, cout=>nx59247z6, dataa=>nx59247z7, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z8);
   ix59247z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx55259z1, cout=>nx59247z8, dataa=>nx59247z9, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z10);
   ix59247z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5aa0",
         sum_lutc_input => "cin") 
       port map ( combout=>nx54262z1, cout=>nx59247z10, dataa=>nx59247z11, 
      datad=>nx_modgen_counter_9_0_vcc_net, cin=>nx59247z12);
   ix59247z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"55aa") 
       port map ( combout=>nx51271z1, cout=>nx59247z16, dataa=>nx59247z17, 
      datad=>nx_modgen_counter_9_0_vcc_net);
end IMPLEMENTATION ;

library IEEE;library altera_mf;library lpm;library altera; 
 use IEEE.STD_LOGIC_1164.ALL;
 use altera_mf.altera_mf_components.all, lpm.lpm_components.all, altera.altera_primitives_components.all;
-- Library use clause for technology cells
library cycloneii ;
use cycloneii.cycloneii_components.all;

entity fir_top is 
   port (
      clock_50 : IN std_logic ;
      clock_27 : IN std_logic ;
      key : IN std_logic_vector (3 DOWNTO 0) ;
      sw : IN std_logic_vector (17 DOWNTO 0) ;
      ledg : OUT std_logic_vector (8 DOWNTO 0) ;
      ledr : OUT std_logic_vector (17 DOWNTO 0) ;
      hex0 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex1 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex2 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex3 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex4 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex5 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex6 : OUT std_logic_vector (6 DOWNTO 0) ;
      hex7 : OUT std_logic_vector (6 DOWNTO 0) ;
      aud_xck : OUT std_logic ;
      aud_bclk : INOUT std_logic ;
      aud_dacdat : OUT std_logic ;
      aud_daclrck : OUT std_logic ;
      aud_adclrck : OUT std_logic ;
      i2c_sdat : INOUT std_logic ;
      i2c_sclk : OUT std_logic) ;
end fir_top ;

architecture main of fir_top is 
   component fir
      port (
         clk : IN std_logic ;
         i_data : IN std_logic_vector (15 DOWNTO 0) ;
         o_data : OUT std_logic_vector (15 DOWNTO 0)) ;
   end component ;
   component i2c_av_config_notri
      port (
         p_u0_not_sdo : OUT std_logic ;
         p_i2c_sclk : OUT std_logic ;
         p_i2c_sdat : IN std_logic ;
         p_clk : IN std_logic ;
         p_sdo : OUT std_logic) ;
   end component ;
   component add_9_0
      port (
         cin : IN std_logic ;
         a : IN std_logic_vector (8 DOWNTO 0) ;
         b : IN std_logic_vector (8 DOWNTO 0) ;
         d : OUT std_logic_vector (8 DOWNTO 0) ;
         cout : OUT std_logic) ;
   end component ;
   component modgen_counter_10_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (9 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (9 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   component modgen_counter_9_0
      port (
         clock : IN std_logic ;
         q : OUT std_logic_vector (8 DOWNTO 0) ;
         clk_en : IN std_logic ;
         aclear : IN std_logic ;
         sload : IN std_logic ;
         data : IN std_logic_vector (8 DOWNTO 0) ;
         aset : IN std_logic ;
         sclear : IN std_logic ;
         updn : IN std_logic ;
         cnt_en : IN std_logic) ;
   end component ;
   signal clock_27_EXMPLR910, key_0_EXMPLR911, sw_17_EXMPLR912, 
      sw_16_EXMPLR913, sw_6_EXMPLR914, sw_5_EXMPLR915, sw_4_EXMPLR916, 
      sw_3_EXMPLR917, sw_2_EXMPLR918, sw_1_EXMPLR919, sw_0_EXMPLR920: 
   std_logic ;
   
   signal ledg_EXMPLR1011: std_logic_vector (8 DOWNTO 0) ;
   
   signal ledr_EXMPLR1012: std_logic_vector (17 DOWNTO 0) ;
   
   signal hex0_EXMPLR1013: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex1_EXMPLR1014: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex2_EXMPLR1015: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex3_EXMPLR1016: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_dup0, aud_bclk_dup0, aud_dacdat_dup0, aud_adclrck_dup0, 
      i2c_sclk_dup0, sine_data_11, sine_data_10, sine_data_9, sine_data_8, 
      sine_data_7, sine_data_6, sine_data_5, sine_data_4, sine_data_3, 
      sine_data_2, sine_data_1, sine_data_0, noise_data_15, noise_data_10, 
      noise_data_9, noise_data_8, noise_data_7, noise_data_6, noise_data_5, 
      noise_data_4: std_logic ;
   
   signal low_pass_data: std_logic_vector (15 DOWNTO 0) ;
   
   signal low_pass_input_12, low_pass_input_10, low_pass_input_9, 
      low_pass_input_8, low_pass_input_7, low_pass_input_6, low_pass_input_5, 
      low_pass_input_4, low_pass_input_3, low_pass_input_2, low_pass_input_1, 
      low_pass_input_0, data_buffer_15, data_buffer_10, data_buffer_9, 
      data_buffer_8, data_buffer_7, data_buffer_6, data_buffer_5, 
      data_buffer_4, data_buffer_3, data_buffer_2, data_buffer_1, 
      data_buffer_0: std_logic ;
   
   signal audio_out: std_logic_vector (15 DOWNTO 0) ;
   
   signal bit_position: std_logic_vector (3 DOWNTO 0) ;
   
   signal nx49625z1, nx49625z2, nx49625z3, nx49625z4: std_logic ;
   
   signal u_sine_address: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_sine_address_0n0r2: std_logic_vector (8 DOWNTO 0) ;
   
   signal u_noise_address: std_logic_vector (9 DOWNTO 0) ;
   
   signal u_audio_dac_bck_div_2, u_audio_dac_bck_div_1, 
      u_audio_dac_bck_div_0: std_logic ;
   
   signal u_audio_dac_lrck_1x_div: std_logic_vector (8 DOWNTO 0) ;
   
   signal nx24999z5, nx24999z4, nx24999z3, nx24999z2, nx24999z7, nx24999z6, 
      nx24999z9, nx24999z8, nx24999z1, nx38664z9, nx38664z6, nx38664z7, 
      nx38664z5, nx38664z3, nx38664z1, nx38664z2, nx4119z14, nx4119z15, 
      nx4119z12, nx4119z10, nx4119z11, nx4119z8, nx4119z5, nx4119z7, 
      nx4119z3, nx4119z1, nx17637z2, clock_27_int, key_int_0, sw_int_17, 
      sw_int_16, sw_int_6, sw_int_5, sw_int_4, sw_int_3, sw_int_2, sw_int_1, 
      sw_int_0: std_logic ;
   
   signal hex4_EXMPLR1017: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_EXMPLR1018: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_EXMPLR1019: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_EXMPLR1020: std_logic_vector (6 DOWNTO 0) ;
   
   signal aud_xck_EXMPLR1006, aud_dacdat_EXMPLR1007, aud_daclrck_EXMPLR1008, 
      aud_adclrck_EXMPLR1009, i2c_sclk_EXMPLR1010: std_logic ;
   
   signal hex4_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex5_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex6_dup0: std_logic_vector (6 DOWNTO 0) ;
   
   signal hex7_dup0: std_logic_vector (6 DOWNTO 4) ;
   
   signal display_freq: std_logic_vector (11 DOWNTO 0) ;
   
   signal nx55607z1, NOT_bit_position_0, u_audio_dac_not_reset_n, nx48238z1, 
      nx50205z2, nx15494z1, nx48820z1, nx49817z1, nx50814z1, nx32096z1, 
      nx30102z1, nx30102z2, nx31099z1, nx31099z2, nx50205z3, nx50205z4, 
      nx38664z4, nx38664z8, nx4119z2, nx4119z9, nx4119z13, nx10101z1, 
      nx17637z1, nx10101z2, nx4119z6, nx4119z4, nx55607z2, sdo_dup_340, 
      nx50205z1: std_logic ;
   
   signal DANGLING : std_logic_vector (48 downto 0 );

begin
   clock_27_EXMPLR910 <= clock_27 ;
   key_0_EXMPLR911 <= key(0) ;
   sw_17_EXMPLR912 <= sw(17) ;
   sw_16_EXMPLR913 <= sw(16) ;
   sw_6_EXMPLR914 <= sw(6) ;
   sw_5_EXMPLR915 <= sw(5) ;
   sw_4_EXMPLR916 <= sw(4) ;
   sw_3_EXMPLR917 <= sw(3) ;
   sw_2_EXMPLR918 <= sw(2) ;
   sw_1_EXMPLR919 <= sw(1) ;
   sw_0_EXMPLR920 <= sw(0) ;
   ledg(8) <= ledg_EXMPLR1011(8) ;
   ledg(7) <= ledg_EXMPLR1011(7) ;
   ledg(6) <= ledg_EXMPLR1011(6) ;
   ledg(5) <= ledg_EXMPLR1011(5) ;
   ledg(4) <= ledg_EXMPLR1011(4) ;
   ledg(3) <= ledg_EXMPLR1011(3) ;
   ledg(2) <= ledg_EXMPLR1011(2) ;
   ledg(1) <= ledg_EXMPLR1011(1) ;
   ledg(0) <= ledg_EXMPLR1011(0) ;
   ledr(17) <= ledr_EXMPLR1012(17) ;
   ledr(16) <= ledr_EXMPLR1012(16) ;
   ledr(15) <= ledr_EXMPLR1012(15) ;
   ledr(14) <= ledr_EXMPLR1012(14) ;
   ledr(13) <= ledr_EXMPLR1012(13) ;
   ledr(12) <= ledr_EXMPLR1012(12) ;
   ledr(11) <= ledr_EXMPLR1012(11) ;
   ledr(10) <= ledr_EXMPLR1012(10) ;
   ledr(9) <= ledr_EXMPLR1012(9) ;
   ledr(8) <= ledr_EXMPLR1012(8) ;
   ledr(7) <= ledr_EXMPLR1012(7) ;
   ledr(6) <= ledr_EXMPLR1012(6) ;
   ledr(5) <= ledr_EXMPLR1012(5) ;
   ledr(4) <= ledr_EXMPLR1012(4) ;
   ledr(3) <= ledr_EXMPLR1012(3) ;
   ledr(2) <= ledr_EXMPLR1012(2) ;
   ledr(1) <= ledr_EXMPLR1012(1) ;
   ledr(0) <= ledr_EXMPLR1012(0) ;
   hex0(6) <= hex0_EXMPLR1013(6) ;
   hex0(5) <= hex0_EXMPLR1013(5) ;
   hex0(4) <= hex0_EXMPLR1013(4) ;
   hex0(3) <= hex0_EXMPLR1013(3) ;
   hex0(2) <= hex0_EXMPLR1013(2) ;
   hex0(1) <= hex0_EXMPLR1013(1) ;
   hex0(0) <= hex0_EXMPLR1013(0) ;
   hex1(6) <= hex1_EXMPLR1014(6) ;
   hex1(5) <= hex1_EXMPLR1014(5) ;
   hex1(4) <= hex1_EXMPLR1014(4) ;
   hex1(3) <= hex1_EXMPLR1014(3) ;
   hex1(2) <= hex1_EXMPLR1014(2) ;
   hex1(1) <= hex1_EXMPLR1014(1) ;
   hex1(0) <= hex1_EXMPLR1014(0) ;
   hex2(6) <= hex2_EXMPLR1015(6) ;
   hex2(5) <= hex2_EXMPLR1015(5) ;
   hex2(4) <= hex2_EXMPLR1015(4) ;
   hex2(3) <= hex2_EXMPLR1015(3) ;
   hex2(2) <= hex2_EXMPLR1015(2) ;
   hex2(1) <= hex2_EXMPLR1015(1) ;
   hex2(0) <= hex2_EXMPLR1015(0) ;
   hex3(6) <= hex3_EXMPLR1016(6) ;
   hex3(5) <= hex3_EXMPLR1016(5) ;
   hex3(4) <= hex3_EXMPLR1016(4) ;
   hex3(3) <= hex3_EXMPLR1016(3) ;
   hex3(2) <= hex3_EXMPLR1016(2) ;
   hex3(1) <= hex3_EXMPLR1016(1) ;
   hex3(0) <= hex3_EXMPLR1016(0) ;
   hex4(6) <= hex4_EXMPLR1017(6) ;
   hex4(5) <= hex4_EXMPLR1017(5) ;
   hex4(4) <= hex4_EXMPLR1017(4) ;
   hex4(3) <= hex4_EXMPLR1017(3) ;
   hex4(2) <= hex4_EXMPLR1017(2) ;
   hex4(1) <= hex4_EXMPLR1017(1) ;
   hex4(0) <= hex4_EXMPLR1017(0) ;
   hex5(6) <= hex5_EXMPLR1018(6) ;
   hex5(5) <= hex5_EXMPLR1018(5) ;
   hex5(4) <= hex5_EXMPLR1018(4) ;
   hex5(3) <= hex5_EXMPLR1018(3) ;
   hex5(2) <= hex5_EXMPLR1018(2) ;
   hex5(1) <= hex5_EXMPLR1018(1) ;
   hex5(0) <= hex5_EXMPLR1018(0) ;
   hex6(6) <= hex6_EXMPLR1019(6) ;
   hex6(5) <= hex6_EXMPLR1019(5) ;
   hex6(4) <= hex6_EXMPLR1019(4) ;
   hex6(3) <= hex6_EXMPLR1019(3) ;
   hex6(2) <= hex6_EXMPLR1019(2) ;
   hex6(1) <= hex6_EXMPLR1019(1) ;
   hex6(0) <= hex6_EXMPLR1019(0) ;
   hex7(6) <= hex7_EXMPLR1020(6) ;
   hex7(5) <= hex7_EXMPLR1020(5) ;
   hex7(4) <= hex7_EXMPLR1020(4) ;
   hex7(3) <= hex7_EXMPLR1020(3) ;
   hex7(2) <= hex7_EXMPLR1020(2) ;
   hex7(1) <= hex7_EXMPLR1020(1) ;
   hex7(0) <= hex7_EXMPLR1020(0) ;
   aud_xck <= aud_xck_EXMPLR1006 ;
   aud_dacdat <= aud_dacdat_EXMPLR1007 ;
   aud_daclrck <= aud_daclrck_EXMPLR1008 ;
   aud_adclrck <= aud_adclrck_EXMPLR1009 ;
   i2c_sclk <= i2c_sclk_EXMPLR1010 ;
   u_low_pass : fir port map ( clk=>aud_adclrck_dup0, i_data(15)=>
      low_pass_input_12, i_data(14)=>low_pass_input_12, i_data(13)=>DANGLING
      (0), i_data(12)=>DANGLING(1), i_data(11)=>low_pass_input_12, 
      i_data(10)=>low_pass_input_10, i_data(9)=>low_pass_input_9, i_data(8)
      =>low_pass_input_8, i_data(7)=>low_pass_input_7, i_data(6)=>
      low_pass_input_6, i_data(5)=>low_pass_input_5, i_data(4)=>
      low_pass_input_4, i_data(3)=>low_pass_input_3, i_data(2)=>
      low_pass_input_2, i_data(1)=>low_pass_input_1, i_data(0)=>
      low_pass_input_0, o_data(15)=>low_pass_data(15), o_data(14)=>
      low_pass_data(14), o_data(13)=>low_pass_data(13), o_data(12)=>
      low_pass_data(12), o_data(11)=>low_pass_data(11), o_data(10)=>
      low_pass_data(10), o_data(9)=>low_pass_data(9), o_data(8)=>
      low_pass_data(8), o_data(7)=>low_pass_data(7), o_data(6)=>
      low_pass_data(6), o_data(5)=>low_pass_data(5), o_data(4)=>
      low_pass_data(4), o_data(3)=>low_pass_data(3), o_data(2)=>
      low_pass_data(2), o_data(1)=>low_pass_data(1), o_data(0)=>
      low_pass_data(0));
   u_i2c_av_config : i2c_av_config_notri port map ( p_u0_not_sdo=>DANGLING(2
      ), p_i2c_sclk=>i2c_sclk_dup0, p_i2c_sdat=>DANGLING(3), p_clk=>
      clock_27_int, p_sdo=>sdo_dup_340);
   u_sine_address_add9_0i1 : add_9_0 port map ( cin=>DANGLING(4), a(8)=>
      u_sine_address(8), a(7)=>u_sine_address(7), a(6)=>u_sine_address(6), 
      a(5)=>u_sine_address(5), a(4)=>u_sine_address(4), a(3)=>
      u_sine_address(3), a(2)=>u_sine_address(2), a(1)=>u_sine_address(1), 
      a(0)=>u_sine_address(0), b(8)=>DANGLING(5), b(7)=>DANGLING(6), b(6)=>
      sw_int_6, b(5)=>sw_int_5, b(4)=>sw_int_4, b(3)=>sw_int_3, b(2)=>
      sw_int_2, b(1)=>sw_int_1, b(0)=>sw_int_0, d(8)=>
      u_sine_address_0n0r2(8), d(7)=>u_sine_address_0n0r2(7), d(6)=>
      u_sine_address_0n0r2(6), d(5)=>u_sine_address_0n0r2(5), d(4)=>
      u_sine_address_0n0r2(4), d(3)=>u_sine_address_0n0r2(3), d(2)=>
      u_sine_address_0n0r2(2), d(1)=>u_sine_address_0n0r2(1), d(0)=>
      u_sine_address_0n0r2(0), cout=>DANGLING(7));
   u_noise_modgen_counter_address : modgen_counter_10_0 port map ( clock=>
      aud_adclrck_dup0, q(9)=>u_noise_address(9), q(8)=>u_noise_address(8), 
      q(7)=>u_noise_address(7), q(6)=>u_noise_address(6), q(5)=>
      u_noise_address(5), q(4)=>u_noise_address(4), q(3)=>u_noise_address(3), 
      q(2)=>u_noise_address(2), q(1)=>u_noise_address(1), q(0)=>
      u_noise_address(0), clk_en=>DANGLING(8), aclear=>DANGLING(9), sload=>
      DANGLING(10), data(9)=>DANGLING(11), data(8)=>DANGLING(12), data(7)=>
      DANGLING(13), data(6)=>DANGLING(14), data(5)=>DANGLING(15), data(4)=>
      DANGLING(16), data(3)=>DANGLING(17), data(2)=>DANGLING(18), data(1)=>
      DANGLING(19), data(0)=>DANGLING(20), aset=>DANGLING(21), sclear=>
      DANGLING(22), updn=>DANGLING(23), cnt_en=>DANGLING(24));
   u_audio_dac_modgen_counter_lrck_1x_div : modgen_counter_9_0 port map ( 
      clock=>aud_xck_dup0, q(8)=>u_audio_dac_lrck_1x_div(8), q(7)=>
      u_audio_dac_lrck_1x_div(7), q(6)=>u_audio_dac_lrck_1x_div(6), q(5)=>
      u_audio_dac_lrck_1x_div(5), q(4)=>u_audio_dac_lrck_1x_div(4), q(3)=>
      u_audio_dac_lrck_1x_div(3), q(2)=>u_audio_dac_lrck_1x_div(2), q(1)=>
      u_audio_dac_lrck_1x_div(1), q(0)=>u_audio_dac_lrck_1x_div(0), clk_en=>
      DANGLING(25), aclear=>DANGLING(26), sload=>DANGLING(27), data(8)=>
      DANGLING(28), data(7)=>DANGLING(29), data(6)=>DANGLING(30), data(5)=>
      DANGLING(31), data(4)=>DANGLING(32), data(3)=>DANGLING(33), data(2)=>
      DANGLING(34), data(1)=>DANGLING(35), data(0)=>DANGLING(36), aset=>
      DANGLING(37), sclear=>nx48238z1, updn=>DANGLING(38), cnt_en=>DANGLING(
      39));
   u_audio_dac_p1_altpll : altpll
      generic map (CLK0_DIVIDE_BY => 15,
         CLK0_DUTY_CYCLE => 50,
         CLK0_MULTIPLY_BY => 14,
         CLK0_PHASE_SHIFT => "0",
         CLK1_DIVIDE_BY => 3,
         CLK1_DUTY_CYCLE => 50,
         CLK1_MULTIPLY_BY => 2,
         CLK1_PHASE_SHIFT => "0",
         COMPENSATE_CLOCK => "CLK0",
         INCLK0_INPUT_FREQUENCY => 37037
         ,
         INTENDED_DEVICE_FAMILY => "Cyclone II",
         LPM_TYPE => "altpll",
         OPERATION_MODE => "NORMAL",
         PLL_TYPE => "FAST") 
       port map ( clk(9)=>DANGLING(40), clk(8)=>DANGLING(41), clk(7)=>
      DANGLING(42), clk(6)=>DANGLING(43), clk(5)=>DANGLING(44), clk(4)=>
      DANGLING(45), clk(3)=>DANGLING(46), clk(2)=>DANGLING(47), clk(1)=>
      aud_xck_dup0, clk(0)=>DANGLING(48), inclk(1)=>hex7_dup0(4), inclk(0)=>
      clock_27_int);
   u_sine_modgen_rom_ix21_ix20462z58995 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_sine_modgen_rom_ix21__altsyncram_12_6_64_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 64,
         widthad_b => 6,
         width_b => 12,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 64,
         widthad_a => 6,
         width_a => 12) 
       port map ( address_a(5)=>u_sine_address_0n0r2(8), address_a(4)=>
      u_sine_address_0n0r2(7), address_a(3)=>u_sine_address_0n0r2(6), 
      address_a(2)=>u_sine_address_0n0r2(5), address_a(1)=>
      u_sine_address_0n0r2(4), address_a(0)=>u_sine_address_0n0r2(3), wren_a
      =>hex7_dup0(4), clock0=>aud_adclrck_dup0, clocken0=>hex7_dup0(6), 
      q_a(11)=>sine_data_11, q_a(10)=>sine_data_10, q_a(9)=>sine_data_9, 
      q_a(8)=>sine_data_8, q_a(7)=>sine_data_7, q_a(6)=>sine_data_6, q_a(5)
      =>sine_data_5, q_a(4)=>sine_data_4, q_a(3)=>sine_data_3, q_a(2)=>
      sine_data_2, q_a(1)=>sine_data_1, q_a(0)=>sine_data_0);
   u_noise_modgen_rom_ix24_ix20462z34211 : altsyncram
      generic map (lpm_type => "altsyncram",
         lpm_hint => "UNUSED",
         intended_device_family => "Stratix",
         maximum_depth => 0,
         init_file_layout => "UNUSED"
         ,
         init_file => "u_noise_modgen_rom_ix24__altsyncram_8_10_1024_2_0.hex"
         ,
         ram_block_type => "AUTO"
         ,
         read_during_write_mode_mixed_ports => "DONT_CARE",
         byte_size => 8,
         operation_mode => "ROM",
         address_aclr_b => "NONE",
         width_byteena_b => 1,
         byteena_aclr_b => "NONE",
         wrcontrol_aclr_b => "NONE",
         indata_aclr_b => "NONE",
         byteena_reg_b => "CLOCK1",
         wrcontrol_wraddress_reg_b => "CLOCK1",
         indata_reg_b => "CLOCK1",
         rdcontrol_aclr_b => "NONE",
         outdata_aclr_b => "NONE",
         outdata_reg_b => "UNREGISTERED",
         address_reg_b => "CLOCK1",
         rdcontrol_reg_b => "CLOCK1",
         numwords_b => 1024,
         widthad_b => 10,
         width_b => 8,
         width_byteena_a => 1,
         byteena_aclr_a => "NONE",
         wrcontrol_aclr_a => "NONE",
         indata_aclr_a => "NONE",
         outdata_aclr_a => "NONE",
         address_aclr_a => "NONE",
         outdata_reg_a => "UNREGISTERED",
         numwords_a => 1024,
         widthad_a => 10,
         width_a => 8) 
       port map ( address_a(9)=>u_noise_address(9), address_a(8)=>
      u_noise_address(8), address_a(7)=>u_noise_address(7), address_a(6)=>
      u_noise_address(6), address_a(5)=>u_noise_address(5), address_a(4)=>
      u_noise_address(4), address_a(3)=>u_noise_address(3), address_a(2)=>
      u_noise_address(2), address_a(1)=>u_noise_address(1), address_a(0)=>
      u_noise_address(0), wren_a=>hex7_dup0(4), clock0=>aud_adclrck_dup0, 
      clocken0=>hex7_dup0(6), q_a(7)=>noise_data_15, q_a(6)=>noise_data_10, 
      q_a(5)=>noise_data_9, q_a(4)=>noise_data_8, q_a(3)=>noise_data_7, 
      q_a(2)=>noise_data_6, q_a(1)=>noise_data_5, q_a(0)=>noise_data_4);
   ix12601z20184 : TRI port map ( a_OUT=>aud_bclk, a_IN=>aud_bclk_dup0, OE=>
      hex7_dup0(6));
   hex7_dup0(4) <= '0';
   hex7_dup0(6) <= '1';
   u_audio_dac_not_reset_n <= NOT key_int_0;
   u_sine_reg_address_8 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(8), datain=>u_sine_address_0n0r2(8), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_7 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(7), datain=>u_sine_address_0n0r2(7), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_6 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(6), datain=>u_sine_address_0n0r2(6), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_5 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(5), datain=>u_sine_address_0n0r2(5), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_4 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(4), datain=>u_sine_address_0n0r2(4), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_3 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(3), datain=>u_sine_address_0n0r2(3), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_2 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(2), datain=>u_sine_address_0n0r2(2), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_1 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(1), datain=>u_sine_address_0n0r2(1), clk=>
      aud_adclrck_dup0);
   u_sine_reg_address_0 : cycloneii_lcell_ff port map ( regout=>
      u_sine_address(0), datain=>u_sine_address_0n0r2(0), clk=>
      aud_adclrck_dup0);
   u_i2c_av_config_u0_ix31977z43919 : cycloneii_io
      generic map (operation_mode => "bidir",
         open_drain_output => "true",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sdat, datain=>sdo_dup_340, oe=>hex7_dup0(6));
   u_audio_dac_reg_lrck_1x : cycloneii_lcell_ff port map ( regout=>
      aud_adclrck_dup0, datain=>nx50205z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_reg_aud_bck : cycloneii_lcell_ff port map ( regout=>
      aud_bclk_dup0, datain=>nx15494z1, clk=>aud_xck_dup0, sclr=>
      u_audio_dac_not_reset_n);
   u_audio_dac_modgen_counter_bck_div_reg_q_2 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_2, datain=>nx30102z1, clk=>
      aud_xck_dup0, ena=>nx30102z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_1 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_1, datain=>nx31099z1, clk=>
      aud_xck_dup0, ena=>nx31099z2);
   u_audio_dac_modgen_counter_bck_div_reg_q_0 : cycloneii_lcell_ff
       port map ( regout=>u_audio_dac_bck_div_0, datain=>nx32096z1, clk=>
      aud_xck_dup0);
   sw_ibuf_6 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_6, padio=>sw_6_EXMPLR914);
   sw_ibuf_5 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_5, padio=>sw_5_EXMPLR915);
   sw_ibuf_4 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_4, padio=>sw_4_EXMPLR916);
   sw_ibuf_3 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_3, padio=>sw_3_EXMPLR917);
   sw_ibuf_2 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_2, padio=>sw_2_EXMPLR918);
   sw_ibuf_17 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_17, padio=>sw_17_EXMPLR912);
   sw_ibuf_16 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_16, padio=>sw_16_EXMPLR913);
   sw_ibuf_1 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_1, padio=>sw_1_EXMPLR919);
   sw_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>sw_int_0, padio=>sw_0_EXMPLR920);
   reg_low_pass_input_9 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_9, datain=>data_buffer_9, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_8 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_8, datain=>data_buffer_8, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_7 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_7, datain=>data_buffer_7, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_6 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_6, datain=>data_buffer_6, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_5 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_5, datain=>data_buffer_5, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_4 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_4, datain=>data_buffer_4, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_3 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_3, datain=>data_buffer_3, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_2 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_2, datain=>data_buffer_2, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_12 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_12, datain=>data_buffer_15, clk=>aud_adclrck_dup0, ena
      =>sw_int_16);
   reg_low_pass_input_10 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_10, datain=>data_buffer_10, clk=>aud_adclrck_dup0, ena
      =>sw_int_16);
   reg_low_pass_input_1 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_1, datain=>data_buffer_1, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_low_pass_input_0 : cycloneii_lcell_ff port map ( regout=>
      low_pass_input_0, datain=>data_buffer_0, clk=>aud_adclrck_dup0, ena=>
      sw_int_16);
   reg_data_buffer_9 : cycloneii_lcell_ff port map ( regout=>data_buffer_9, 
      datain=>sine_data_9, sdata=>noise_data_9, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_8 : cycloneii_lcell_ff port map ( regout=>data_buffer_8, 
      datain=>sine_data_8, sdata=>noise_data_8, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_7 : cycloneii_lcell_ff port map ( regout=>data_buffer_7, 
      datain=>sine_data_7, sdata=>noise_data_7, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_6 : cycloneii_lcell_ff port map ( regout=>data_buffer_6, 
      datain=>sine_data_6, sdata=>noise_data_6, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_5 : cycloneii_lcell_ff port map ( regout=>data_buffer_5, 
      datain=>sine_data_5, sdata=>noise_data_5, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_4 : cycloneii_lcell_ff port map ( regout=>data_buffer_4, 
      datain=>sine_data_4, sdata=>noise_data_4, clk=>aud_adclrck_dup0, ena=>
      hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_3 : cycloneii_lcell_ff port map ( regout=>data_buffer_3, 
      datain=>sine_data_3, clk=>aud_adclrck_dup0, sclr=>sw_int_17);
   reg_data_buffer_2 : cycloneii_lcell_ff port map ( regout=>data_buffer_2, 
      datain=>sine_data_2, clk=>aud_adclrck_dup0, sclr=>sw_int_17);
   reg_data_buffer_15 : cycloneii_lcell_ff port map ( regout=>data_buffer_15, 
      datain=>sine_data_11, sdata=>noise_data_15, clk=>aud_adclrck_dup0, ena
      =>hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_10 : cycloneii_lcell_ff port map ( regout=>data_buffer_10, 
      datain=>sine_data_10, sdata=>noise_data_10, clk=>aud_adclrck_dup0, ena
      =>hex7_dup0(6), sload=>sw_int_17);
   reg_data_buffer_1 : cycloneii_lcell_ff port map ( regout=>data_buffer_1, 
      datain=>sine_data_1, clk=>aud_adclrck_dup0, sclr=>sw_int_17);
   reg_data_buffer_0 : cycloneii_lcell_ff port map ( regout=>data_buffer_0, 
      datain=>sine_data_0, clk=>aud_adclrck_dup0, sclr=>sw_int_17);
   reg_audio_out_9 : cycloneii_lcell_ff port map ( regout=>audio_out(9), 
      datain=>data_buffer_9, sdata=>low_pass_data(9), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_8 : cycloneii_lcell_ff port map ( regout=>audio_out(8), 
      datain=>data_buffer_8, sdata=>low_pass_data(8), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_7 : cycloneii_lcell_ff port map ( regout=>audio_out(7), 
      datain=>data_buffer_7, sdata=>low_pass_data(7), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_6 : cycloneii_lcell_ff port map ( regout=>audio_out(6), 
      datain=>data_buffer_6, sdata=>low_pass_data(6), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_5 : cycloneii_lcell_ff port map ( regout=>audio_out(5), 
      datain=>data_buffer_5, sdata=>low_pass_data(5), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_4 : cycloneii_lcell_ff port map ( regout=>audio_out(4), 
      datain=>data_buffer_4, sdata=>low_pass_data(4), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_3 : cycloneii_lcell_ff port map ( regout=>audio_out(3), 
      datain=>data_buffer_3, sdata=>low_pass_data(3), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_2 : cycloneii_lcell_ff port map ( regout=>audio_out(2), 
      datain=>data_buffer_2, sdata=>low_pass_data(2), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_15 : cycloneii_lcell_ff port map ( regout=>audio_out(15), 
      datain=>data_buffer_15, sdata=>low_pass_data(15), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_14 : cycloneii_lcell_ff port map ( regout=>audio_out(14), 
      datain=>data_buffer_15, sdata=>low_pass_data(14), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_13 : cycloneii_lcell_ff port map ( regout=>audio_out(13), 
      datain=>data_buffer_15, sdata=>low_pass_data(13), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_12 : cycloneii_lcell_ff port map ( regout=>audio_out(12), 
      datain=>data_buffer_15, sdata=>low_pass_data(12), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_11 : cycloneii_lcell_ff port map ( regout=>audio_out(11), 
      datain=>data_buffer_15, sdata=>low_pass_data(11), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_10 : cycloneii_lcell_ff port map ( regout=>audio_out(10), 
      datain=>data_buffer_10, sdata=>low_pass_data(10), clk=>
      aud_adclrck_dup0, ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_1 : cycloneii_lcell_ff port map ( regout=>audio_out(1), 
      datain=>data_buffer_1, sdata=>low_pass_data(1), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   reg_audio_out_0 : cycloneii_lcell_ff port map ( regout=>audio_out(0), 
      datain=>data_buffer_0, sdata=>low_pass_data(0), clk=>aud_adclrck_dup0, 
      ena=>hex7_dup0(6), sload=>sw_int_16);
   ix17637z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aaa8") 
       port map ( combout=>nx17637z2, dataa=>sw_int_5, datab=>sw_int_2, 
      datac=>sw_int_0, datad=>sw_int_1);
   ix49625z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"9c69") 
       port map ( combout=>nx49625z4, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix4119z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"33c0") 
       port map ( combout=>nx4119z1, datab=>sw_int_4, datac=>sw_int_2, datad
      =>sw_int_5);
   ix4119z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"0100") 
       port map ( combout=>nx4119z3, dataa=>sw_int_1, datab=>sw_int_2, datac
      =>sw_int_0, datad=>sw_int_5);
   ix4119z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"fe00") 
       port map ( combout=>nx4119z7, dataa=>sw_int_1, datab=>sw_int_0, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"1115") 
       port map ( combout=>nx4119z5, dataa=>sw_int_5, datab=>sw_int_4, datac
      =>sw_int_2, datad=>sw_int_3);
   ix4119z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"666a") 
       port map ( combout=>nx4119z8, dataa=>sw_int_6, datab=>sw_int_4, datac
      =>sw_int_3, datad=>sw_int_2);
   ix4119z52937 : cycloneii_lcell_comb
      generic map (lut_mask => X"0313") 
       port map ( combout=>nx4119z11, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"c101") 
       port map ( combout=>nx4119z10, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_2);
   ix4119z52939 : cycloneii_lcell_comb
      generic map (lut_mask => X"f30c") 
       port map ( combout=>nx4119z12, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix4119z52942 : cycloneii_lcell_comb
      generic map (lut_mask => X"cd32") 
       port map ( combout=>nx4119z15, dataa=>sw_int_0, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix4119z52941 : cycloneii_lcell_comb
      generic map (lut_mask => X"0cf3") 
       port map ( combout=>nx4119z14, datab=>sw_int_4, datac=>sw_int_2, 
      datad=>sw_int_5);
   ix38664z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx38664z2, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"03c0") 
       port map ( combout=>nx38664z1, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"d2b0") 
       port map ( combout=>nx38664z3, dataa=>sw_int_1, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_0);
   ix38664z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"5515") 
       port map ( combout=>nx38664z5, dataa=>sw_int_2, datab=>sw_int_6, 
      datac=>sw_int_0, datad=>sw_int_5);
   ix38664z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"4338") 
       port map ( combout=>nx38664z7, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix38664z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c03") 
       port map ( combout=>nx38664z6, datab=>sw_int_2, datac=>sw_int_3, 
      datad=>sw_int_1);
   ix38664z52936 : cycloneii_lcell_comb
      generic map (lut_mask => X"3c34") 
       port map ( combout=>nx38664z9, dataa=>sw_int_6, datab=>sw_int_4, 
      datac=>sw_int_2, datad=>sw_int_5);
   ix49625z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"8111") 
       port map ( combout=>nx49625z1, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"3226") 
       port map ( combout=>nx49625z2, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   ix49625z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"5642") 
       port map ( combout=>nx49625z3, dataa=>sw_int_2, datab=>sw_int_3, 
      datac=>sw_int_1, datad=>sw_int_0);
   modgen_counter_bit_position_reg_q_3 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(3), datain=>nx48820z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_2 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(2), datain=>nx49817z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_1 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(1), datain=>nx50814z1, clk=>aud_bclk);
   modgen_counter_bit_position_reg_q_0 : cycloneii_lcell_ff port map ( 
      regout=>bit_position(0), datain=>NOT_bit_position_0, clk=>aud_bclk);
   ledr_triBus2_9 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(9), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_17 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(17), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_16 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(16), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_15 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(15), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_14 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(14), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_13 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(13), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_12 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(12), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_11 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(11), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_10 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(10), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledr_triBus2_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledr_EXMPLR1012(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_8 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(8), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_7 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(7), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   ledg_triBus1_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>ledg_EXMPLR1011(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   key_ibuf_0 : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>key_int_0, padio=>key_0_EXMPLR911);
   i2c_sclk_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>i2c_sclk_EXMPLR1010, datain=>i2c_sclk_dup0);
   hex7_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(6), datain=>hex7_dup0(6));
   hex7_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(5), datain=>hex7_dup0(5));
   hex7_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(4), datain=>hex7_dup0(5));
   hex7_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(3), datain=>hex7_dup0(5));
   hex7_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(2), datain=>hex7_dup0(4));
   hex7_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(1), datain=>hex7_dup0(4));
   hex7_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex7_EXMPLR1020(0), datain=>hex7_dup0(5));
   hex6_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(6), datain=>hex6_dup0(6));
   hex6_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(5), datain=>hex6_dup0(5));
   hex6_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(4), datain=>hex6_dup0(4));
   hex6_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(3), datain=>hex6_dup0(3));
   hex6_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(2), datain=>hex6_dup0(2));
   hex6_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(1), datain=>hex6_dup0(1));
   hex6_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex6_EXMPLR1019(0), datain=>hex6_dup0(0));
   hex5_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(6), datain=>hex5_dup0(6));
   hex5_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(5), datain=>hex5_dup0(5));
   hex5_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(4), datain=>hex5_dup0(4));
   hex5_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(3), datain=>hex5_dup0(3));
   hex5_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(2), datain=>hex5_dup0(2));
   hex5_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(1), datain=>hex5_dup0(1));
   hex5_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex5_EXMPLR1018(0), datain=>hex5_dup0(0));
   hex4_obuf_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(6), datain=>hex4_dup0(6));
   hex4_obuf_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(5), datain=>hex4_dup0(5));
   hex4_obuf_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(4), datain=>hex4_dup0(4));
   hex4_obuf_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(3), datain=>hex4_dup0(3));
   hex4_obuf_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(2), datain=>hex4_dup0(2));
   hex4_obuf_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(1), datain=>hex4_dup0(1));
   hex4_obuf_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex4_EXMPLR1017(0), datain=>hex4_dup0(0));
   hex3_triBus6_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex3_triBus6_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex3_EXMPLR1016(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex2_triBus5_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex2_EXMPLR1015(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex1_triBus4_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex1_EXMPLR1014(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_6 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(6), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_5 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(5), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_4 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(4), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_3 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(3), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_2 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(2), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_1 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(1), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   hex0_triBus3_0 : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>hex0_EXMPLR1013(0), datain=>hex7_dup0(4), oe=>
      hex7_dup0(4));
   clock_27_ibuf : cycloneii_io
      generic map (operation_mode => "input",
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( combout=>clock_27_int, padio=>clock_27_EXMPLR910);
   aud_xck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_xck_EXMPLR1006, datain=>aud_xck_dup0);
   aud_daclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_daclrck_EXMPLR1008, datain=>aud_adclrck_dup0);
   aud_dacdat_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_dacdat_EXMPLR1007, datain=>aud_dacdat_dup0);
   aud_adclrck_obuf : cycloneii_io
      generic map (operation_mode => "output"
         ,
         output_register_mode => "none"
         ,
         tie_off_output_clock_enable => "false",
         oe_register_mode => "none",
         tie_off_oe_clock_enable => "false",
         input_register_mode => "none") 
       port map ( padio=>aud_adclrck_EXMPLR1009, datain=>aud_adclrck_dup0);
   ix51811z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5555") 
       port map ( combout=>NOT_bit_position_0, dataa=>bit_position(0));
   ix24999z52932 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z9, dataa=>bit_position(1), datab=>
      audio_out(13), datac=>audio_out(12), datad=>bit_position(0));
   ix24999z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z7, dataa=>bit_position(1), datab=>
      audio_out(9), datac=>audio_out(8), datad=>bit_position(0));
   ix24999z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z3, dataa=>bit_position(1), datab=>
      audio_out(5), datac=>audio_out(4), datad=>bit_position(0));
   ix24999z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z5, dataa=>bit_position(1), datab=>
      audio_out(1), datac=>audio_out(0), datad=>bit_position(0));
   ix24999z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0dd") 
       port map ( combout=>nx24999z1, dataa=>bit_position(3), datab=>
      nx24999z2, datac=>nx24999z4, datad=>bit_position(2));
   ix24999z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z8, dataa=>nx24999z9, datab=>audio_out(14), 
      datac=>audio_out(15), datad=>bit_position(1));
   ix24999z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z6, dataa=>nx24999z7, datab=>audio_out(10), 
      datac=>audio_out(11), datad=>bit_position(1));
   ix24999z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z2, dataa=>nx24999z3, datab=>audio_out(6), 
      datac=>audio_out(7), datad=>bit_position(1));
   ix24999z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>nx24999z4, dataa=>nx24999z5, datab=>audio_out(2), 
      datac=>audio_out(3), datad=>bit_position(1));
   ix24999z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"aae4") 
       port map ( combout=>aud_dacdat_dup0, dataa=>nx24999z1, datab=>
      nx24999z6, datac=>nx24999z8, datad=>bit_position(3));
   ix55607z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2900") 
       port map ( combout=>nx55607z2, dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix4119z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx4119z4, dataa=>sw_int_17, datab=>sw_int_6);
   ix4119z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"3020") 
       port map ( combout=>nx4119z6, dataa=>nx4119z7, datab=>sw_int_6, datac
      =>sw_int_5, datad=>sw_int_4);
   ix10101z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"2004") 
       port map ( combout=>nx10101z2, dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix17637z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"cac0") 
       port map ( combout=>nx17637z1, dataa=>nx17637z2, datab=>sw_int_5, 
      datac=>sw_int_4, datad=>sw_int_3);
   ix10101z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0900") 
       port map ( combout=>nx10101z1, dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix4119z52940 : cycloneii_lcell_comb
      generic map (lut_mask => X"a0c0") 
       port map ( combout=>nx4119z13, dataa=>nx4119z14, datab=>nx4119z15, 
      datac=>sw_int_3, datad=>sw_int_1);
   ix4119z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"aa0c") 
       port map ( combout=>nx4119z9, dataa=>nx4119z10, datab=>nx4119z11, 
      datac=>sw_int_6, datad=>sw_int_1);
   ix4119z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"3a3a") 
       port map ( combout=>nx4119z2, dataa=>nx4119z3, datab=>sw_int_5, datac
      =>sw_int_4);
   ix38664z52935 : cycloneii_lcell_comb
      generic map (lut_mask => X"accc") 
       port map ( combout=>nx38664z8, dataa=>nx38664z9, datab=>sw_int_4, 
      datac=>sw_int_3, datad=>sw_int_1);
   ix38664z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"880f") 
       port map ( combout=>nx38664z4, dataa=>nx38664z5, datab=>sw_int_3, 
      datac=>sw_int_2, datad=>sw_int_1);
   ix50205z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"7fff") 
       port map ( combout=>nx50205z4, dataa=>u_audio_dac_lrck_1x_div(5), 
      datab=>u_audio_dac_lrck_1x_div(4), datac=>u_audio_dac_lrck_1x_div(3), 
      datad=>u_audio_dac_lrck_1x_div(2));
   ix50205z52925 : cycloneii_lcell_comb
      generic map (lut_mask => X"f7f7") 
       port map ( combout=>nx50205z3, dataa=>u_audio_dac_lrck_1x_div(1), 
      datab=>u_audio_dac_lrck_1x_div(0), datac=>nx50205z4);
   ix31099z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"f8ff") 
       port map ( combout=>nx31099z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix31099z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"1300") 
       port map ( combout=>nx31099z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e8ff") 
       port map ( combout=>nx30102z2, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
   ix30102z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4444") 
       port map ( combout=>nx30102z1, dataa=>u_audio_dac_bck_div_2, datab=>
      key_int_0);
   ix50814z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6666") 
       port map ( combout=>nx50814z1, dataa=>bit_position(1), datab=>
      bit_position(0));
   ix49817z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6a6a") 
       port map ( combout=>nx49817z1, dataa=>bit_position(2), datab=>
      bit_position(1), datac=>bit_position(0));
   ix48820z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"6aaa") 
       port map ( combout=>nx48820z1, dataa=>bit_position(3), datab=>
      bit_position(2), datac=>bit_position(1), datad=>bit_position(0));
   ix15494z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"57a8") 
       port map ( combout=>nx15494z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>aud_bclk);
   ix50205z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"1511") 
       port map ( combout=>nx50205z2, dataa=>u_audio_dac_lrck_1x_div(8), 
      datab=>u_audio_dac_lrck_1x_div(7), datac=>u_audio_dac_lrck_1x_div(6), 
      datad=>nx50205z3);
   ix48238z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"7777") 
       port map ( combout=>nx48238z1, dataa=>nx50205z2, datab=>key_int_0);
   ix55607z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0004") 
       port map ( combout=>nx55607z1, dataa=>nx49625z1, datab=>nx49625z2, 
      datac=>nx49625z3, datad=>sw_int_17);
   ix49625z52930 : cycloneii_lcell_comb
      generic map (lut_mask => X"2222") 
       port map ( combout=>display_freq(0), dataa=>nx49625z4, datab=>
      sw_int_17);
   ix49625z52928 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(1), dataa=>nx49625z3, datab=>
      sw_int_17);
   ix49625z52926 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(2), dataa=>nx49625z2, datab=>
      sw_int_17);
   ix49625z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>display_freq(3), dataa=>nx49625z1, datab=>
      sw_int_17);
   ix38664z52934 : cycloneii_lcell_comb
      generic map (lut_mask => X"fbab") 
       port map ( combout=>display_freq(4), dataa=>sw_int_17, datab=>
      sw_int_4, datac=>sw_int_0, datad=>nx38664z8);
   ix38664z52931 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(5), dataa=>nx38664z6, datab=>
      nx38664z7, datac=>sw_int_17, datad=>sw_int_4);
   ix38664z52927 : cycloneii_lcell_comb
      generic map (lut_mask => X"fece") 
       port map ( combout=>display_freq(6), dataa=>nx38664z3, datab=>
      sw_int_17, datac=>sw_int_4, datad=>nx38664z4);
   ix38664z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"0a0c") 
       port map ( combout=>display_freq(7), dataa=>nx38664z1, datab=>
      nx38664z2, datac=>sw_int_17, datad=>sw_int_4);
   ix4119z52938 : cycloneii_lcell_comb
      generic map (lut_mask => X"ffce") 
       port map ( combout=>display_freq(8), dataa=>nx4119z12, datab=>
      sw_int_17, datac=>sw_int_3, datad=>nx4119z13);
   ix4119z52933 : cycloneii_lcell_comb
      generic map (lut_mask => X"3202") 
       port map ( combout=>display_freq(9), dataa=>nx4119z8, datab=>
      sw_int_17, datac=>sw_int_5, datad=>nx4119z9);
   ix4119z52929 : cycloneii_lcell_comb
      generic map (lut_mask => X"3320") 
       port map ( combout=>display_freq(10), dataa=>nx4119z5, datab=>
      sw_int_17, datac=>sw_int_6, datad=>nx4119z6);
   ix4119z52924 : cycloneii_lcell_comb
      generic map (lut_mask => X"e200") 
       port map ( combout=>display_freq(11), dataa=>nx4119z1, datab=>
      sw_int_3, datac=>nx4119z2, datad=>nx4119z4);
   ix17637z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4040") 
       port map ( combout=>hex7_dup0(5), dataa=>sw_int_17, datab=>sw_int_6, 
      datac=>nx17637z1);
   ix10101z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"eeee") 
       port map ( combout=>hex6_dup0(0), dataa=>nx10101z1, datab=>nx10101z2
   );
   ix9104z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex6_dup0(1), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix8107z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex6_dup0(2), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix7110z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex6_dup0(3), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix6113z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex6_dup0(4), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix5116z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex6_dup0(5), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix4119z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex6_dup0(6), dataa=>display_freq(11), datab=>
      display_freq(10), datac=>display_freq(9), datad=>display_freq(8));
   ix32682z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"2904") 
       port map ( combout=>hex5_dup0(0), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix33679z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex5_dup0(1), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix34676z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex5_dup0(2), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix35673z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex5_dup0(3), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix36670z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex5_dup0(4), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix37667z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex5_dup0(5), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix38664z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex5_dup0(6), dataa=>display_freq(7), datab=>
      display_freq(6), datac=>display_freq(5), datad=>display_freq(4));
   ix55607z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"ff20") 
       port map ( combout=>hex4_dup0(0), dataa=>display_freq(2), datab=>
      display_freq(0), datac=>nx55607z1, datad=>nx55607z2);
   ix54610z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"a4c8") 
       port map ( combout=>hex4_dup0(1), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix53613z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"8098") 
       port map ( combout=>hex4_dup0(2), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix52616z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"c324") 
       port map ( combout=>hex4_dup0(3), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix51619z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5704") 
       port map ( combout=>hex4_dup0(4), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix50622z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"5910") 
       port map ( combout=>hex4_dup0(5), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix49625z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"4109") 
       port map ( combout=>hex4_dup0(6), dataa=>display_freq(3), datab=>
      display_freq(2), datac=>display_freq(1), datad=>display_freq(0));
   ix50205z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"9999") 
       port map ( combout=>nx50205z1, dataa=>nx50205z2, datab=>
      aud_adclrck_dup0);
   ix32096z52923 : cycloneii_lcell_comb
      generic map (lut_mask => X"0700") 
       port map ( combout=>nx32096z1, dataa=>u_audio_dac_bck_div_2, datab=>
      u_audio_dac_bck_div_1, datac=>u_audio_dac_bck_div_0, datad=>key_int_0
   );
end main ;

