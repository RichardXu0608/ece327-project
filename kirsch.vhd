library IEEE;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity max is
  port (
    i_input0, i_input1	: in std_logic_vector(11 downto 0);  -- input data
    i_dir0,   i_dir1    : in std_logic_vector(2 downto 0);  -- input data
    o_output       		: out std_logic_vector(11 downto 0);  -- output data
    o_dir               : out std_logic_vector(2 downto 0);
  );
end entity max;

architecture main of max is
begin 
       o_output <= i_input0 when i_input0 > i_input1 
                   else i_input1;
       
       o_dir    <= i_dir0 when i_input0 > i_input1
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
    signal state      : unsigned(2 downto 0) := to_unsigned(1, 3);

    signal v          : std_logic_vector(8 downto 0) := "000000000";
    
    signal a, b, c, d, e, f, g, h, i   : unsigned(11 downto 0) := to_unsigned(0, 12);
    
    signal TMP1, TMP2, TMP3, TMP4      : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP5, TMP6, TMP7, TMP8      : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP9, TMP10, TMP11, TMP12   : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP13, TMP14, TMP15, TMP16  : unsigned(11 downto 0) := to_unsigned(0, 12);
    signal TMP17, TMP18, TMP19, TMP20  : unsigned(11 downto 0) := to_unsigned(0, 12);
	signal TMP21, TMP3_2, TMP4_2       : unsigned(11 downto 0) := to_unsigned(0, 12);
	signal TMP7_2, TMP9_2              : unsigned(11 downto 0) := to_unsigned(0, 12);
	signal TMP10_2, TMP11_2, TMP12_2   : unsigned(11 downto 0) := to_unsigned(0, 12);
    
    signal DIR1, DIR2, DIR3, DIR4, DIR5, DIR6, DIR7  : unsigned(2 downto 0) := to_unsigned(0, 3);
    signal DIR1_2, DIR2_2, DIR3_3, DIR4_4            : unsigned(2 downto 0) := to_unsigned(0, 3);
	
	signal max1_in1   : std_logic_vector(11 downto 0);
	signal max1_in2   : std_logic_vector(11 downto 0);
    signal max1_dir1  : std_logic_vector(2 downto 0);
	signal max1_dir2  : std_logic_vector(2 downto 0);
	signal max1_out   : std_logic_vector(11 downto 0);
    signal max1_dir   : std_logic_vector(2 downto 0);
	
	signal max2_in1   : std_logic_vector(11 downto 0);
	signal max2_in2   : std_logic_vector(11 downto 0);
    signal max2_dir1  : std_logic_vector(2 downto 0);
	signal max2_dir2  : std_logic_vector(2 downto 0);
	signal max2_out   : std_logic_vector(11 downto 0);
    signal max2_dir   : std_logic_vector(2 downto 0);
	
	signal edge_1     : std_logic_vector(2 downto 0);
	signal edge_2     : std_logic_vector(2 downto 0);
	
	signal curr_mode  : std_logic_vector(1 downto 0) := "00";
    
    signal eoi        : std_logic             := '0';
    
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
    
    -- Calculate the mem_x_wren signals
    -- We write data into a memory buffer all the time essentially, but we only change the write pos when we get i_valid
    -- This has the same effect as making the write-enable tied into the i_valid signal
    mem_1_wren <= '1' when i = 1 else '0';
	mem_2_wren <= '1' when i = 2 else '0';
	mem_3_wren <= '1' when i = 4 else '0';
			
   o_row <= std_logic_vector(y_pos);
   
   with v select
	 o_mode <= "10" when "000000000",
			   "11" when others;	

	o_valid <= '1' when ((((y_pos >= 2) AND (x_pos >= 3)) OR (y_pos >= 3)) AND (v(8) = '1'))
	      else '0';  
			   		   
    -- Valid bit generator
    v(0) <= i_valid;
    valid_for : for i in 1 to 8 generate
        process begin
            wait until rising_edge(i_clock);
            v(i) <= v(i-1);
        end process;
    end generate;
	
    -- Stage 1 pipeline
    --     This pipeline needs to clock the data into the x_2 registers before exiting
    process
    begin
        wait until rising_edge(i_clock);
        if v(0) = '1' then
            -- Shift the data from one cell to the other, which saves on reads from the memory units
            a <= b;
            b <= c;
            h <= i;
            i <= d;
            g <= f;
            f <= e;
            
            -- e is always the most recently entered pixel: we go from [2, 2] to [255, 255] in the image processing (indexed from [0, 0])
            e <= "0000" & unsigned(i_pixel);
            
            -- Grab the fresh cells from the correct memory buffer depending 
            -- on the value of state: 
            -- if we insert into memory buffer 3, 'e' is in buffer 3 so c is in buffer 1, etc...)
            
            case state is
                when "001" =>
                    d <= "0000" & unsigned(mem_3_q);
                    c <= "0000" & unsigned(mem_2_q);
                when "010" => 
                    d <= "0000" & unsigned(mem_1_q);
                    c <= "0000" & unsigned(mem_3_q);
                when "100" => 
                    d <= "0000" & unsigned(mem_2_q);
                    c <= "0000" & unsigned(mem_1_q);
                when others =>
                    d <= to_unsigned(0, 12);
                    c <= to_unsigned(0, 12);
            end case;
            
            --Increment the x_pos and possibly y_pos
            if(x_pos = 255) then
                if(y_pos = 255) then
                    --this is the last iteration of the algorithm
                    eoi <= '1';
                end if;
            
                y_pos <= y_pos + 1;
                state <= state rol 1;
            end if;
            x_pos <= x_pos + 1;

        end if;

        if(y_pos >= 2 AND x_pos >= 3 AND v(1) = '1') then -- We can start processing data: x_pos is >=3 here because we increment x_pos before getting here
            TMP1 <= b + c;
			
			max1_in1  <= std_logic_vector(d);
			max1_in2  <= std_logic_vector(a);
            max1_dir1 <= "110";                        
            max1_dir2 <= "010";
            TMP2 <= unsigned(max1_out); --Max of NE, N (Dir priority: N)
            DIR1 <= max1_dir;
			
            TMP3 <= f + g;
        end if;

        if v(2) = '1' then
            TMP4 <= TMP1 + TMP2; --Max of NE, N (Dir priority: N)
			
			max1_in1 <= std_logic_vector(h);
			max1_in2 <= std_logic_vector(e);
            max1_dir1 <= "111";                        
            max1_dir2 <= "011";
            TMP5 <= unsigned(max1_out); --Max of SW, S (Dir priority: S)
			DIR2 <= max1_dir;
            
            TMP6 <= d + e;
        end if;    
        
        if v(3) = '1' then    
            TMP7 <= TMP5 + TMP3; --Max of SW, S (Dir priority: S)
			
			max1_in1 <= std_logic_vector(f);
			max1_in2 <= std_logic_vector(c);
            max1_dir1 <= "101";                        
            max1_dir2 <= "000";
            TMP8 <= unsigned(max1_out); --Max of SE, E (Dir priority: E)
            DIR3 <= max1_dir;
            
            TMP9 <= h + a;
        end if;    
            
        if v(4) = '1' then
            TMP10 <= TMP8 + TMP6;
			
			max1_in1 <= std_logic_vector(b);
			max1_in2 <= std_logic_vector(g);
            max1_dir1 <= "100";                        
            max1_dir2 <= "001";            
            TMP11 <= unsigned(max1_out); --Max of NW, W (Dir priority: W)
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
            DIR3_3 <= DIR3;
            DIR4_4 <= DIR4;     
        end if;
    end process;
	
    process
    begin
        wait until rising_edge(i_clock); --Fifth clock boundary

        if v(5) = '1' then
			TMP13 <= TMP9_2 + TMP3_2; -- <- F + G + H + A
			
			max2_in1 <= std_logic_vector(TMP7_2); --  (max of SW, S) DIR2
			max2_in2 <= std_logic_vector(TMP10_2); -- (max of SE, E) DIR3
            max2_dir1 <= DIR2_2;                        
            max2_dir2 <= DIR3_2;  
			TMP14 <= unsigned(max2_out); -- Dir priority: (max of SE, E)
			DIR5 <= max2_dir;
            
			TMP15 <= TMP9_2 + TMP11_2;
        end if;

        if v(6) = '1' then 
			TMP16 <= TMP13 + TMP12_2;   --  <- A + B + C + D + E + F + G + H
			
			max2_in1 <= std_logic_vector(TMP4_2); --  (max of NE, N) DIR1
			max2_in2 <= std_logic_vector(TMP15);  --  (max of NW, W) DIR4
            max2_dir1 <= DIR1_2;                        
            max2_dir2 <= DIR4_2;
			TMP17 <= unsigned(max2_out); -- Dir priority: (max of NW, W)
			DIR6 <= max2_dir;
            
			TMP18 <= TMP16 ROL 1;
        end if;

        if v(7) = '1' then
			TMP19 <= TMP18 + TMP16;  --  <- 3(a + b)
			
			max2_in1 <= std_logic_vector(TMP14); -- Max of (max of SW, S), (max of SE, E)
			max2_in2 <= std_logic_vector(TMP17); -- Max of (max of NE, N), (max of NW, W)
            max2_dir1 <= DIR5;                        
            max2_dir2 <= DIR6;
			TMP20 <= unsigned(max2_out); -- Dir priority: (Max of (max of NE, N), (max of NW, W))
            DIR7 <= max2_dir;
            
			TMP21 <= TMP20 ROL 3;
        end if;

        if v(8) = '1' then
			if ((TMP21 - TMP19) > 383) then
				o_edge <= '1';
                o_dir <= DIR7;
			else
				o_edge <= '0';
                o_dir <= "000";
			end if;		
        end if;
    end process;

end architecture;
