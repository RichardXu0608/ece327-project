------------------------------------------------------------------------
-- fir test bench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

use work.fir_synth_pkg.all;

entity fir_tb is
end entity;

------------------------------------------------------------------------

architecture main of fir_tb is
	signal clock             : std_logic;
    signal in_data, out_data : word;
  
begin

	uut : entity work.fir(avg)
     port map (
       clk    => clock,
       i_data => in_data,
       o_data => out_data
     );

	process
    begin
	
		in_data <= x"0000";
		-----------------------
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
        clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
		-----------------------
		in_data <= x"1000";
		clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
		-----------------------
		in_data <= x"0000";
		clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
		clock <= '0';
        wait for 10 ns;
        clock <= '1';
        wait for 10 ns;
		-----------------------
		
	end process;
  
end architecture;
------------------------------------------------------------------------

