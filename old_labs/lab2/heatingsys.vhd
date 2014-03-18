library ieee;
use ieee.std_logic_1164.all;

package heat_pkg is
  subtype heat_ty is std_logic_vector(1 downto 0);
  constant off  : heat_ty := "00";
  constant low  : heat_ty := "01";
  constant high : heat_ty := "11";
end heat_pkg;


library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.heat_pkg.all;

entity heatingsys is                           -- finite state machine
  port(i_cur_temp       : in signed(7 downto 0); -- current temp
       i_des_temp       : in signed(7 downto 0); -- desired temp
       i_reset          : in std_logic;          -- reset
       i_clock          : in std_logic;          -- clock
       o_heatmode       : out heat_ty            -- mode
      );
end heatingsys;

architecture main of heatingsys is
    signal state : heat_ty := off;
begin
    basic : process
    begin
        wait until rising_edge(i_clock);
        IF (i_reset = '1') THEN
            state <= off;
            o_heatmode <= off;
        ELSIF (state = off) THEN
            IF (i_des_temp - i_cur_temp >= 5) THEN
                state <= high;
                o_heatmode <= high;
            ELSIF (i_des_temp - i_cur_temp >= 3) THEN
                state <= low;                
                o_heatmode <= low;
            END IF;
        ELSIF (state = low) THEN
            IF (i_cur_temp - i_des_temp > 2) THEN
                state <= off;                
                o_heatmode <= off;
            ELSIF (i_des_temp - i_cur_temp >= 7) THEN
                state <= high;
                o_heatmode <= high;
            END IF;
        ELSIF (state = high) THEN
            IF (i_cur_temp - i_des_temp > 3) THEN
                state <= low;
                o_heatmode <= low;
            END IF;
        ELSE
            state <= off;
            o_heatmode <= off;
        END IF;
    end process;
end main;

-- question 1
  --There are:
  -- 2x 1 bit flip-flop
  -- 0x 1 bit latches
  -- 13x AND (some are multiple bits wide)
  -- 12x OR (some are multiple bits wide)
  -- 0x XOR
  -- 16x NOT
  -- 0x adders
  -- 2x subtracter
  -- 0x comparators
  -- 2x multiplexers
