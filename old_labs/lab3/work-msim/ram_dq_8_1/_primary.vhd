library verilog;
use verilog.vl_types.all;
entity ram_dq_8_1 is
    port(
        wr_data1        : in     vl_logic_vector(7 downto 0);
        rd_data1        : out    vl_logic_vector(7 downto 0);
        addr1           : in     vl_logic_vector(3 downto 0);
        wr_clk1         : in     vl_logic;
        rd_clk1         : in     vl_logic;
        wr_ena1         : in     vl_logic;
        rd_ena1         : in     vl_logic;
        ena1            : in     vl_logic;
        rst1            : in     vl_logic;
        regce1          : in     vl_logic
    );
end ram_dq_8_1;
