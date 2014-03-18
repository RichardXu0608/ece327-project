library ieee;
use ieee.std_logic_1164.all;

entity sum is
       port ( i_a, i_b, i_cin : in std_logic;
              o_sum :       out std_logic
       );
end sum;

architecture main of sum is
begin
    o_sum <= i_a xor i_b xor i_cin;
end main;

-- question 1
  -- the circuit generated was two XOR gates that are cascaded together. Two inputs are connected to the first gate, and the output of that gate and the other input form the inputs to the second gate.

