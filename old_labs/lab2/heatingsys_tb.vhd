------------------------------------------------------------------------
-- heating system testbench
------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity heatingsys_tb is
end entity;

architecture main of heatingsys_tb is
    signal cur_temp, des_temp : signed(7 downto 0);
    signal clock, reset       : std_logic;
    signal heatmode           : std_logic_vector(1 downto 0);

begin

    uut : entity work.heatingsys(main)
     port map (
       i_clock    => clock,
       i_reset    => reset,
       i_cur_temp => cur_temp,
       i_des_temp => des_temp,
       o_heatmode => heatmode
     );

    process
    begin
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --STATE 1
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000111";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000010"; des_temp <= "00000111";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000100"; des_temp <= "00000111";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000111"; des_temp <= "00000111";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --STATE 2
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000111"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000111"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000101"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000101"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --STATE 3
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000010"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000001"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000000";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --STATE 4
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000001"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000001"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000010"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;


        --STATE 5
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000100"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000110"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00001000"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00001010"; des_temp <= "00001010";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;
        -----------------------

        --RESET FROM HIGH
        clock <= '0'; reset <= '1';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --STATE 6
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000000"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000001"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000001"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0'; cur_temp <= "00000010"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '1'; reset <= '0'; cur_temp <= "00000011"; des_temp <= "00000011";
        wait for 10 ns;
        -----------------------
        clock <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;

        --RESET FROM LOW
        clock <= '0'; reset <= '1';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;
        -----------------------
        clock <= '0'; reset <= '0';
        wait for 10 ns;
        -----------------------
        clock <= '1';
        wait for 10 ns;



    end process;

end architecture;


