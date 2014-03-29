library ieee;
use ieee.std_logic_1164.all;

package direction is
	subtype dir is std_logic_vector(2 downto 0);
	constant West 		: dir := "001";
	constant NorthWest 	: dir := "100";
	constant North 		: dir:=  "010";
	constant NorthEast 	: dir := "110";
	constant East  		: dir := "000";
	constant SouthEast 	: dir := "101";
	constant South  	: dir := "011";
	constant SouthWest 	: dir := "111";
end direction;

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.direction.all;

entity kirsch is
  port(
    ------------------------------------------
    -- main inputs and outputs
    i_clock    : in  std_logic;                      
    i_reset    : in  std_logic;                      
    i_valid    : in  std_logic;                 
    i_pixel    : in  std_logic_vector(7 downto 0);
    o_valid    : out std_logic;                 
    o_edge     : out std_logic;	                     
    o_dir      : out std_logic_vector(2 downto 0);                      
    o_mode     : out std_logic_vector(1 downto 0);
    o_row      : out std_logic_vector(7 downto 0);
    ------------------------------------------
    -- debugging inputs and outputs
    debug_key      : in  std_logic_vector( 3 downto 1) ; 
    debug_switch   : in  std_logic_vector(17 downto 0) ; 
    debug_led_red  : out std_logic_vector(17 downto 0) ; 
    debug_led_grn  : out std_logic_vector(5  downto 0) ;
    debug_num_0    : out std_logic_vector(3 downto 0) ; 
    debug_num_1    : out std_logic_vector(3 downto 0) ; 
    debug_num_2    : out std_logic_vector(3 downto 0) ; 
    debug_num_3    : out std_logic_vector(3 downto 0) ; 
    debug_num_4    : out std_logic_vector(3 downto 0) ;
    debug_num_5    : out std_logic_vector(3 downto 0) 
    ------------------------------------------
  );  
end entity;

architecture main of kirsch is

    signal x_pos      : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal y_pos      : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal state      : unsigned(2 downto 0);

    signal v          : std_logic_vector(7 downto 0);
	
    signal a, b, c, d, e, f, g, h, i   : unsigned(7 downto 0);
    
	signal MAXA, ADDER_A_OUT, ADDER_B_OUT : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP8, TMP11, TMP13, TMP14      : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP12, TMP17, TMP20            : unsigned(11 downto 0) := to_unsigned(0, 12);
	signal TMP2_2, TMP11_2                : unsigned(11 downto 0) := to_unsigned(0, 12);
	signal TMP8_2, TMP12_2                : unsigned(11 downto 0) := to_unsigned(0, 12);
    
    signal DIR1, DIR2, DIR3, DIR4, DIR5, DIR6, DIR7  : std_logic_vector(2 downto 0);
    signal DIR1_2, DIR2_2, DIR3_2, DIR4_2            : std_logic_vector(2 downto 0);
	
    signal mem_1_wren : std_logic;
    signal mem_1_q    : std_logic_vector(7 downto 0);

    signal mem_2_wren : std_logic;
    signal mem_2_q    : std_logic_vector(7 downto 0);

    signal mem_3_wren : std_logic;
    signal mem_3_q    : std_logic_vector(7 downto 0);

begin  
    --instantiate the 3 instances of the memory module
    mem1 : entity work.mem(main)
     port map (
       address => std_logic_vector(x_pos),
       clock   => i_clock,
       data    => i_pixel,
       wren    => mem_1_wren,
       q       => mem_1_q
    );

    mem2 : entity work.mem(main)
     port map (
       address => std_logic_vector(x_pos),
       clock   => i_clock,
       data    => i_pixel,
       wren    => mem_2_wren,
       q       => mem_2_q
    );

    mem3 : entity work.mem(main)
     port map (
       address => std_logic_vector(x_pos),
       clock   => i_clock,
       data    => i_pixel,
       wren    => mem_3_wren,
       q       => mem_3_q
    );
	
    -- Calculate the mem_x_wren signals
    -- We write data into a memory buffer all the time essentially, but we only change the write pos when we get i_valid
    -- This has the same effect as making the write-enable tied into the i_valid signal
    mem_1_wren <= '1' when state = 1 else '0';
	mem_2_wren <= '1' when state = 2 else '0';
	mem_3_wren <= '1' when state = 4 else '0';
	
	o_mode(1) <= NOT i_reset;
   	o_mode(0) <= '1' when (y_pos > 0 OR x_pos > 0) OR i_reset = '1' else '0';
	
    -- Valid bit generator	
	v(0) <= i_valid when (y_pos >= 2 AND x_pos >= 2) else '0';
	
    valid_for : for i in 1 to 7 generate
        process begin
            wait until rising_edge(i_clock);
            v(i) <= v(i-1);
        end process;
    end generate;
	
    -- Stage 1 pipeline
    --     This pipeline needs to clock the data into the x_2 registers before exiting
    process begin
        wait until rising_edge(i_clock);
		if v(0) = '1' then
			-- One square to the left because we're doing matrix shifts in this clock cycle
			if c > f then
				MAXA <= ("0000" & c);
				DIR4 <= NorthWest;
			else
				MAXA <= ("0000" & f);
				DIR4 <= West;
			end if;
			ADDER_B_OUT <= ("0000" & i) + ("0000" & b); --Note this is actually a + h
			
		elsif v(1) = '1' then
			if f > c then
				MAXA <= ("0000" & f);
				DIR3 <= SouthEast;
			else
				MAXA <= ("0000" & c);
				DIR3 <= East;
			end if;
			ADDER_B_OUT <= ("0000" & d) + ("0000" & e);
			TMP11 <= MAXA + ADDER_B_OUT; --TMP11 is max of W, NW		
			TMP12 <= ADDER_B_OUT; -- (a + h)
			
		elsif v(2) = '1' then   
			if d > a then
				MAXA <= ("0000" & d);
				DIR1 <= NorthEast;
			else
				MAXA <= ("0000" & a);
				DIR1 <= North;
			end if;
			ADDER_B_OUT <= ("0000" & b) + ("0000" & c);
			TMP8 <= MAXA + ADDER_B_OUT; --TMP8 is max of E, SE
			TMP12 <= TMP12 + ADDER_B_OUT; -- (a + h + d + e)
				
		elsif v(3) = '1' then
			if h > e then
				MAXA <= ("0000" & h);
				DIR2_2 <= SouthWest;
			else
				MAXA <= ("0000" & e);
				DIR2_2 <= South;
			end if;
			ADDER_B_OUT <= ("0000" & f) + ("0000" & g);
			TMP2_2  <= MAXA + ADDER_B_OUT; --TMP2_2 is max of N and NE
			
			--Set vars for stage 2
			TMP8_2  <= TMP8; --TMP8 is max of E, SE
			TMP11_2 <= TMP11; --TMP11 is max of W, NW
			TMP12_2 <= TMP12 + ADDER_B_OUT; -- (a + h + d + e + b + c)
            
            DIR1_2 <= DIR1;
            DIR3_2 <= DIR3;
            DIR4_2 <= DIR4;
		end if;
    end process;
	
	process
	begin
		wait until rising_edge(i_clock);		
		if v(4) = '1' then
			--ADDER_A_OUT is the result of the previous calculation (max of S and SW)
			if (MAXA + ADDER_B_OUT) > TMP8_2 then
				TMP14 <= (MAXA + ADDER_B_OUT); -- Max of S, SW
				DIR5 <= DIR2_2;	
			else
				TMP14 <= TMP8_2; -- Max of E, SE
				DIR5 <= DIR3_2;
			end if;
			--TMP14 is Max of (E, SE), (S, SW)
			TMP13 <= TMP12_2 + ADDER_B_OUT; --(a + h + d + e + b + c + f + g) 
		end if;
		
        if v(5) = '1' then 			
			if TMP2_2 > TMP11_2  then
				TMP17 <= TMP2_2; -- Max of N, NE
				DIR6 <= DIR1_2;
			else
				TMP17 <= TMP11_2; -- Max of W, NW
				DIR6 <= DIR4_2;
			end if;
			--TMP17 is Max of (W, NW), (N, NE)
		end if;
		
        if v(6) = '1' then
			if TMP14 > TMP17 then
				TMP20 <= TMP14; -- Max of (E, SE), (S, SW)
				DIR7 <= DIR5;
			else
				TMP20 <= TMP17; -- Max of (W, NW), (N, NE)
				DIR7 <= DIR6;
			end if;
			--TMP20 is Max of ((W, NW), (N, NE)), ((E, SE), (S, SW))
		end if;
		
        if v(7) = '1' then		
			if ((TMP20 sll 3) - (TMP13 + (TMP13 sll 1))) > 383 then
				o_edge <= '1';				 
				o_dir <= DIR7;
			else
				o_edge <= '0';				 
				o_dir <= "000";
			end if;
			o_valid <= '1';
		else
			o_valid <= '0';
		end if;
		
    end process;
	
	process
	begin
		wait until rising_edge(i_clock);
		--Give the reset signal priority
		if i_reset = '1' then
			state <= to_unsigned(1, 3);
			x_pos <= to_unsigned(0, 8);
			y_pos <= to_unsigned(0, 8);
			o_row <= "00000000";
		elsif i_valid = '1' then
			-- Grab the fresh cells from the correct memory buffer depending 
			-- on the value of state: 
			-- if we insert into memory buffer 3, 'e' is in buffer 3 so c is in buffer 1, etc...)
			b <= c;
			a <= b;
			i <= d;
			h <= i;
			f <= e;
			g <= f;
			-- e is always the most recently entered pixel: we go from [2, 2] to [255, 255] in the image processing (indexed from [0, 0])
			e <= unsigned(i_pixel);
			case state is
				when "001" =>
					c <= unsigned(mem_2_q);
					d <= unsigned(mem_3_q);
				when "010" => 
					c <= unsigned(mem_3_q);
					d <= unsigned(mem_1_q);
				when "100" => 
					c <= unsigned(mem_1_q);
					d <= unsigned(mem_2_q);
				when others =>
					c <= to_unsigned(0, 8);
					d <= to_unsigned(0, 8);
			end case;
			
			o_row <= std_logic_vector(y_pos);
			
			--Increment the x_pos and possibly y_pos
			if(x_pos = 255) then
				y_pos <= y_pos + 1;
				state <= state ROL 1;
			end if;
			x_pos <= x_pos + 1;
		end if;
	end process;
	
end architecture;
