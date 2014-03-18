library verilog;
use verilog.vl_types.all;
entity top_lab3 is
    port(
        nrst            : in     vl_logic;
        clk             : in     vl_logic;
        rxflex          : in     vl_logic;
        txflex          : out    vl_logic;
        ctsflex         : out    vl_logic;
        o_sevenseg      : out    vl_logic_vector(15 downto 0)
    );
end top_lab3;
