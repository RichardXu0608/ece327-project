library verilog;
use verilog.vl_types.all;
entity sub_8_0 is
    port(
        cin             : in     vl_logic;
        a               : in     vl_logic_vector(7 downto 0);
        b               : in     vl_logic_vector(7 downto 0);
        d               : out    vl_logic_vector(7 downto 0);
        cout            : out    vl_logic
    );
end sub_8_0;
