library verilog;
use verilog.vl_types.all;
entity UARTS is
    port(
        CLK             : in     vl_logic;
        RST             : in     vl_logic;
        Din             : in     vl_logic_vector(7 downto 0);
        LD              : in     vl_logic;
        Rx              : in     vl_logic;
        Baud            : in     vl_logic;
        Dout            : out    vl_logic_vector(7 downto 0);
        Tx              : out    vl_logic;
        TxBusy          : out    vl_logic;
        RxErr           : out    vl_logic;
        RxRDY           : out    vl_logic;
        \p_Tx_Reg_14n6ss1_0_\: out    vl_logic;
        p_NOT_rtlcn2    : out    vl_logic;
        p_RXFLEX        : in     vl_logic;
        p_nrst_int_dup_76: in     vl_logic
    );
end UARTS;
