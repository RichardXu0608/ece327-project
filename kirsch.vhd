library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity max is
  port (
    i_input0, i_input1	: in  std_logic_vector(13 downto 0);  -- input data
    i_dir0,   i_dir1    : in  std_logic_vector(2 downto 0);  -- input data
    o_output       	    : out std_logic_vector(13 downto 0);  -- output data
    o_dir               : out std_logic_vector(2 downto 0)
  );
end entity max;

architecture main of max is
begin 
       o_output <= i_input0 when i_input0 >= i_input1 
                   else i_input1;
       
       o_dir    <= i_dir0 when i_input0 >= i_input1
                   else i_dir1;
end architecture main;

library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

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

    -- A function to rotate left (rol) a vector by n bits  
    function "rol" ( a : std_logic_vector; n : natural )
        return std_logic_vector
    is
    begin
        return std_logic_vector( unsigned(a) rol n );
    end function;

    signal x_pos      : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal y_pos      : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal state      : unsigned(2 downto 0);

    signal v          : std_logic_vector(8 downto 0);
    
    signal a, b, c, d, e, f, g, h, i   : std_logic_vector(7 downto 0);
    
    signal TMP1, TMP2, TMP3, TMP4      : unsigned(13 downto 0) := to_unsigned(0, 14);
    signal TMP5, TMP6, TMP7, TMP8      : unsigned(13 downto 0) := to_unsigned(0, 14);
    signal TMP9, TMP10, TMP11, TMP12   : unsigned(13 downto 0) := to_unsigned(0, 14);
    signal TMP13, TMP14, TMP15, TMP16  : unsigned(13 downto 0) := to_unsigned(0, 14);
    signal TMP17, TMP18, TMP19, TMP20  : unsigned(13 downto 0) := to_unsigned(0, 14);
	signal TMP3_2, TMP4_2              : unsigned(13 downto 0) := to_unsigned(0, 14);
	signal TMP7_2, TMP9_2              : unsigned(13 downto 0) := to_unsigned(0, 14);
	signal TMP10_2, TMP11_2, TMP12_2   : unsigned(13 downto 0) := to_unsigned(0, 14);
    
    signal DIR1, DIR2, DIR3, DIR4, DIR5, DIR6  : std_logic_vector(2 downto 0);
    signal DIR1_2, DIR2_2, DIR3_2, DIR4_2      : std_logic_vector(2 downto 0);
	
	signal max1_in1   : std_logic_vector(13 downto 0);
	signal max1_in2   : std_logic_vector(13 downto 0);
    signal max1_dir1  : std_logic_vector(2 downto 0);
	signal max1_dir2  : std_logic_vector(2 downto 0);
	signal max1_out   : std_logic_vector(13 downto 0);
    signal max1_dir   : std_logic_vector(2 downto 0);
	
	signal max2_in1   : std_logic_vector(13 downto 0);
	signal max2_in2   : std_logic_vector(13 downto 0);
    signal max2_dir1  : std_logic_vector(2 downto 0);
	signal max2_dir2  : std_logic_vector(2 downto 0);
	signal max2_out   : std_logic_vector(13 downto 0);
    signal max2_dir   : std_logic_vector(2 downto 0);
    
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
	
	MAX1 : entity work.max(main)
	 port map (
	     i_input0  => max1_in1,
		 i_input1  => max1_in2,
         i_dir0    => max1_dir1,
         i_dir1    => max1_dir2,
		 o_output  => max1_out,
         o_dir     => max1_dir
	 );
	 
	MAX2 : entity work.max(main)
	 port map (
	     i_input0  => max2_in1,
		 i_input1  => max2_in2,
         i_dir0    => max2_dir1,
         i_dir1    => max2_dir2,
		 o_output  => max2_out,
         o_dir     => max2_dir
	 );
	 
    --DEBUG
	--debug_led_red <= a & b & "00";
	--debug_led_grn <= "000" & std_logic_vector(state);
	
    -- Calculate the mem_x_wren signals
    -- We write data into a memory buffer all the time essentially, but we only change the write pos when we get i_valid
    -- This has the same effect as making the write-enable tied into the i_valid signal
    mem_1_wren <= '1' when state = 1 else '0';
	mem_2_wren <= '1' when state = 2 else '0';
	mem_3_wren <= '1' when state = 4 else '0';
			
    o_row <= std_logic_vector(y_pos);
   
    with v select
	 o_mode <= "10" when "000000000",
			   "11" when others;	

    o_valid <= '1' when ((((y_pos >= 2) AND (x_pos >= 2)) OR (y_pos >= 3)) AND (v(8) = '1'))
	      else '0';
	
	o_edge <= '1' when ((((TMP20 - TMP19) > 383) AND ((TMP20 - TMP19) < 8192))  AND (v(8) = '1'))
	     else '0';
	
	--o_valid <= v(8);
	
    -- Valid bit generator
    v(0) <= i_valid;
    valid_for : for i in 1 to 8 generate
        process begin
            wait until rising_edge(i_clock);
            v(i) <= v(i-1);
        end process;
    end generate;
	
	--process begin
	--	wait until rising_edge(i_clock);
	--	if(((y_pos >= 2) AND (x_pos >= 3)) OR (y_pos >= 3)) then
				--this is the last iteration of the algorithm
	--		 v(8) <= v(7);
	--	end if;
	--end process;
	
    -- Stage 1 pipeline
    --     This pipeline needs to clock the data into the x_2 registers before exiting
    process
    begin
        wait until rising_edge(i_clock);
        if v(0) = '1' then
            -- e is always the most recently entered pixel: we go from [2, 2] to [255, 255] in the image processing (indexed from [0, 0])
            e <= i_pixel;
            
            -- Grab the fresh cells from the correct memory buffer depending 
            -- on the value of state: 
            -- if we insert into memory buffer 3, 'e' is in buffer 3 so c is in buffer 1, etc...)
            
            case state is
                when "001" =>
                    d <= mem_3_q;
                    c <= mem_2_q;
                when "010" => 
                    d <= mem_1_q;
                    c <= mem_3_q;
                when "100" => 
                    d <= mem_2_q;
                    c <= mem_1_q;
                when others =>
                    d <= "00000000";
                    c <= "00000000";
            end case;
			
			b <= c;
			a <= b;
			
			i <= d;
			h <= i;
			
			f <= e;
			g <= f;
        end if;
		
		if i_reset = '1' then
			state <= to_unsigned(1, 3);
		end if;

        if v(1) = '1' then
            TMP1 <= unsigned("000000" & b) + unsigned("000000" & c);
			
			max1_in1  <= "000000" & a; -- N
			max1_in2  <= "000000" & d; -- NE
            max1_dir1 <= "010";
            max1_dir2 <= "110";
            TMP2 <= unsigned(max1_out);
            DIR1 <= max1_dir; 
			
            TMP3 <= (unsigned("000000" & f) + unsigned("000000" & g));
        end if;

        if v(2) = '1' then
            TMP4 <= TMP1 + TMP2; -- Max of N, NE
			
			max1_in1 <= "000000" & e; -- S
			max1_in2 <= "000000" & h; -- SW
            max1_dir1 <= "011";
            max1_dir2 <= "111";
            TMP5 <= unsigned(max1_out);
			DIR2 <= max1_dir; 
            
            TMP6 <= (unsigned("000000" & d) + unsigned("000000" & e));
        end if;    
        
        if v(3) = '1' then    
            TMP7 <= TMP5 + TMP3; -- Max of S, SW
			
			max1_in1 <= "000000" & c; -- E
			max1_in2 <= "000000" & f; -- SE
            max1_dir1 <= "000";
            max1_dir2 <= "101";
            TMP8 <= unsigned(max1_out);
            DIR3 <= max1_dir; 
            
            TMP9 <= (unsigned("000000" & h) + unsigned("000000" & a));
        end if;    
            
        if v(4) = '1' then
            TMP10 <= TMP8 + TMP6; -- Max of E, SE
			
			max1_in1 <= "000000" & g; -- W
			max1_in2 <= "000000" & b; -- NW
            max1_dir1 <= "001";
            max1_dir2 <= "100";            
            TMP11 <= unsigned(max1_out);
            DIR4 <= max1_dir;
			
            TMP12 <= TMP1 + TMP6;   --  <- B + C + D + E
			
			--Set vars for stage 2
			TMP3_2 <= TMP3;
			TMP4_2 <= TMP4;
			TMP7_2 <= TMP7;
			TMP9_2 <= TMP9;
			TMP10_2 <= TMP10; 
			TMP11_2 <= TMP11;
			TMP12_2 <= TMP12;
            
            DIR1_2 <= DIR1;
            DIR2_2 <= DIR2;
            DIR3_2 <= DIR3;
            DIR4_2 <= DIR4;

			--Increment the x_pos and possibly y_pos
            if(x_pos = 255) then            
                y_pos <= y_pos + 1;
				state <= state ROL 1;
            end if;
			
            x_pos <= x_pos + 1;
        end if;
		
		if v(5) = '1' then
			TMP15 <= TMP9_2 + TMP11_2; -- Max of W, NW
			TMP13 <= TMP9_2 + TMP3_2; -- <- F + G + H + A
			
			max2_in1 <= std_logic_vector(TMP10_2); -- Max of E, SE
			max2_in2 <= std_logic_vector(TMP7_2);  -- Max of S, SW
            max2_dir1 <= DIR3_2;
            max2_dir2 <= DIR2_2;
			TMP14 <= unsigned(max2_out); -- Max of (E, SE), (S, SW)
			--DIR5 <= max2_dir; -- Max of (N, NE), (E, SE)
			DIR5 <= max2_dir; -- DIR of (E, SE), (S, SW)
        end if;

        if v(6) = '1' then 
			TMP16 <= TMP13 + TMP12_2;   --  <- A + B + C + D + E + F + G + H
			TMP18 <= TMP16 ROL 1;
			
			max2_in1 <= std_logic_vector(TMP15);   -- Max of W, NW
			max2_in2 <= std_logic_vector(TMP4_2);  -- Max of N, NE
            max2_dir1 <= DIR4_2;
            max2_dir2 <= DIR1_2;
			TMP17 <= unsigned(max2_out); -- Max of (W, NW), (N, NE)
			--DIR6 <= max2_dir; -- Max of (W, NW), (S, SW)
			DIR6 <= max2_dir; -- DIR of (W, NW), (N, NE)
        end if;

        if v(7) = '1' then
			TMP19 <= TMP18 + TMP16;  --  <- 3(a + b)
			
			max2_in1 <= std_logic_vector(TMP17); -- Max of (W, NW), (N, NE)
			max2_in2 <= std_logic_vector(TMP14); -- Max of (E, SE), (S, SW)
            max2_dir1 <= DIR6;
            max2_dir2 <= DIR5;
			TMP20 <= unsigned(max2_out) ROL 3; -- Max of ((W, NW), (N, NE)), ((E, SE), (S, SW))
            o_dir <= max2_dir; -- dir of ((W, NW), (N, NE)), ((E, SE), (S, SW))
        end if;
    end process;
end architecture;
