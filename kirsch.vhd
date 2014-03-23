
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
    signal i          : unsigned(2 downto 0) := to_unsigned(1, 3);
    
    signal a          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal b          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal c          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal d          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal e          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal f          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal g          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal h          : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal i          : unsigned(7 downto 0) := to_unsigned(0, 8);
    
    signal a_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal b_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal c_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal d_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal e_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal f_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal g_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal h_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    signal i_2        : unsigned(7 downto 0) := to_unsigned(0, 8);
    
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

    debug_num_5 <= X"E";
    debug_num_4 <= X"C";
    debug_num_3 <= X"E";
    debug_num_2 <= X"3";
    debug_num_1 <= X"2";
    debug_num_0 <= X"7";

    debug_led_red <= (others => '0');
    debug_led_grn <= (others => '0');
    
    -- Calculate the mem_x_wren signals
    -- We write data into a memory buffer all the time essentially, but we only change the write pos when we get i_valid
    -- This has the same effect as making the write-enable tied into the i_valid signal
    mem_1_wren <= '1' when i = 1 else '0';
	mem_2_wren <= '1' when i = 2 else '0';
	mem_3_wren <= '1' when i = 4 else '0';
    
    -- Stage 1 pipeline
    --     This pipeline needs to clock the data into the x_2 registers before exiting
    process(i_clock, i_reset)
    begin
        wait for rising_edge(i_clock);
        if(i_valid = '1) then
            -- Shift the data from one cell to the other, which saves on reads from the memory units
            a <= b;
            b <= c;
            h <= i;
            i <= d;
            g <= f;
            f <= e;
            
            -- e is always the most recently entered pixel: we go from [2, 2] to [255, 255] in the image processing (indexed from [0, 0])
            e <= i_pixel;
            
            -- Grab the fresh cells from the correct memory buffer depending 
            -- on the value of i (i is the active memory buffer: 
            -- if we insert into memory buffer 3, 'e' is in buffer 3 so c is in buffer 1, etc...)
            
            with i select
             d <= unsigned(mem_3_q) when when to_unsigned(1, 3),
                  unsigned(mem_1_q) when when to_unsigned(2, 3),
                  unsigned(mem_2_q) when when to_unsigned(4, 3),
                  to_unsigned(0, 8) when others;
                  
            with i select
             c <= unsigned(mem_2_q) when when to_unsigned(1, 3),
                  unsigned(mem_3_q) when when to_unsigned(2, 3),
                  unsigned(mem_1_q) when when to_unsigned(4, 3),
                  to_unsigned(0, 8) when others;                  
            
            --Increment the x_pos and possibly y_pos
            if(x_pos = 255) then
                if(y_pos = 255) then
                    --this is the last iteration of the algorithm
                    end_of_input <= '1';
                end if;
            
                y_pos <= y_pos + 1;
                i <= i rol 1;
            end if;
            x_pos <= x_pos + 1;
            
            if(y_pos >= 2 AND x_pos >= 3) then -- We can start processing data: x_pos is >=3 here because we increment x_pos before getting here
                
                wait for rising_edge(i_clock); --First clock boundary
                
                --Assign the second-stage registers here, no sense waiting any longer
                a_2 <= a;
                b_2 <= b;
                c_2 <= c;
                d_2 <= d;
                e_2 <= e;
                f_2 <= f;
                g_2 <= g;
                h_2 <= h;
                i_2 <= i;
                
                wait for rising_edge(i_clock); --Second clock boundary
                
                wait for rising_edge(i_clock); --Third clock boundary
                
                wait for rising_edge(i_clock); --Fourth clock boundary
            end if;
        end if;
    end process;
    
    -- Stage 2 pipeline
    process(i_clock, i_reset)
    begin
        
    
    end process;
  
end architecture;
