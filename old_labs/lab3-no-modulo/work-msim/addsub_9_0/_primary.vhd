library verilog;
use verilog.vl_types.all;
entity addsub_9_0 is
    port(
        mode            : in     vl_logic;
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(8 downto 0);
        b               : in     vl_logic_vector(8 downto 0);
        d               : out    vl_logic_vector(8 downto 0);
        cout            : out    vl_logic;
        px147           : in     vl_logic
    );
end addsub_9_0;
