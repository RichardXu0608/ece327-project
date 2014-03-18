library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity lab3 is
  port (
    i_clock        : in std_logic;                     -- the system clock
    i_valid        : in std_logic;                     -- if data is available 
    i_input        : in std_logic_vector(7 downto 0);  -- input data
    i_reset        : in std_logic;                     -- reset
    o_output       : out std_logic_vector(7 downto 0)  -- output data
  );
end entity lab3;

architecture main of lab3 is

  -- A function to rotate left (rol) a vector by n bits  
  function "rol" ( a : std_logic_vector; n : natural )
    return std_logic_vector
  is
  begin
    return std_logic_vector( unsigned(a) rol n );
  end function;
  
  signal x_pos      : unsigned(3 downto 0) := to_unsigned(0, 4);
  signal y_pos      : unsigned(3 downto 0) := to_unsigned(0, 4);
  signal i          : unsigned(2 downto 0) := to_unsigned(0, 3);
  signal count      : unsigned(7 downto 0) := to_unsigned(0, 8);
  signal bytes_recv : unsigned(7 downto 0) := to_unsigned(0, 8);
  signal calc_res   : unsigned(9 downto 0);
  
  signal end_of_input : std_logic := '0';
  signal new_number_set : std_logic := '1';
  
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
       data    => i_input,
	   wren    => mem_1_wren,
	   q       => mem_1_q
    );
	
	mem2 : entity work.mem(main)
     port map (
       address => std_logic_vector(x_pos),
       clock   => i_clock,
       data    => i_input,
	   wren    => mem_2_wren,
	   q       => mem_2_q
    );
	
	mem3 : entity work.mem(main)
     port map (
       address => std_logic_vector(x_pos),
       clock   => i_clock,
       data    => i_input,
	   wren    => mem_3_wren,
	   q       => mem_3_q
    );

	mem_1_wren <= '1' when i = 0 else '0';
	mem_2_wren <= '1' when i = 1 else '0';
	mem_3_wren <= '1' when i = 2 else '0';
	
	o_output <= std_logic_vector(count);
	
	--Setup the calculation to occur in parallel
	with i select
	 calc_res <= unsigned("00" & mem_2_q) - unsigned("00" & mem_3_q) + unsigned("00" & i_input) when to_unsigned(0, 3),
	             unsigned("00" & mem_3_q) - unsigned("00" & mem_1_q) + unsigned("00" & i_input) when to_unsigned(1, 3),
                 unsigned("00" & mem_1_q) - unsigned("00" & mem_2_q) + unsigned("00" & i_input) when to_unsigned(2, 3),
				 to_unsigned(0, 10) when others;			 
	
	--shift data into the registers
	process(i_clock, i_reset)
    begin
		if (rising_edge(i_clock)) then
			--Shift data from the input into the matrix memory
			if(i_valid = '1') then
				if(new_number_set = '1') then
					count <= to_unsigned(0, 8);
					new_number_set <= '0';
				end if;
				
				if(y_pos >= 2) then					
					if((calc_res(9) = '0') OR (unsigned(calc_res(7 downto 0)) = 0)) then
						count <= count + 1;
					end if;
				end if;	
				
				if(x_pos = 15) then
					if(y_pos = 15) then
						--this is the last iteration of the algorithm
						end_of_input <= '1';
					end if;
				
					y_pos <= y_pos + 1;
					i <= (i + 1) mod 3;
				end if;
				x_pos <= x_pos + 1;
				bytes_recv <= bytes_recv + 1;
			end if;
		end if;
		
		if(end_of_input = '1') then
				x_pos          <= to_unsigned(0, 4);
				y_pos          <= to_unsigned(0, 4);
				i              <= to_unsigned(0, 3);
				end_of_input   <= '0';
				new_number_set <= '1';
		end if;
		
		if(i_reset = '1') then
				count          <= to_unsigned(0, 8);
				x_pos          <= to_unsigned(0, 4);
				y_pos          <= to_unsigned(0, 4);
				i              <= to_unsigned(0, 3);
				end_of_input   <= '0';
				new_number_set <= '1';
		end if;
    end process;
	
end architecture main;

-- Q1: number of flip flops and lookup tables?
-- LUTs: 108
-- Flip-Flops: 4

-- Q2: maximum clock frequency?
-- 65.81 MHz

-- Q3: source and destination signals of critical path?
-- The critical path source is from reg_i(1)/clk to reg_out_o_output_obuf(7)/ena

-- Q4: does your implementation function correctly?  If not,
-- explain bug and how you would fix it if you had more time.
--
-- The implementation functions correctly. There are no bugs that we have discovered in the implementation.

