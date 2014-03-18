library verilog;
use verilog.vl_types.all;
entity uw_uart is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        RXFLEX          : in     vl_logic;
        datain          : out    vl_logic_vector(7 downto 0);
        TXFLEX          : out    vl_logic;
        o_pixavail      : out    vl_logic;
        \p_Tx_Reg_14n6ss1_0_\: out    vl_logic;
        p_NOT_rtlcn2    : out    vl_logic;
        \p_RData_0_\    : out    vl_logic;
        p_nrst_int      : in     vl_logic
    );
end uw_uart;
