library verilog;
use verilog.vl_types.all;
entity lab3 is
    port(
        i_clock         : in     vl_logic;
        i_valid         : in     vl_logic;
        i_input         : in     vl_logic_vector(7 downto 0);
        i_reset         : in     vl_logic;
        o_output        : out    vl_logic_vector(7 downto 0)
    );
end lab3;
