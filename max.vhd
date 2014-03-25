library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity max is
  port (
    i_input0, i_input1	: in std_logic_vector(11 downto 0);  -- input data
    o_output       		: out std_logic_vector(11 downto 0)  -- output data
  );
end entity max;

architecture main of max is
begin 
       cmp <= A when A >= B 
       else B; 
end architecture main;