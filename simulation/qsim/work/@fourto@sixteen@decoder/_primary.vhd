library verilog;
use verilog.vl_types.all;
entity FourtoSixteenDecoder is
    port(
        a               : out    vl_logic_vector(0 to 7);
        z               : in     vl_logic;
        Enable          : in     vl_logic;
        x               : in     vl_logic_vector(2 downto 0);
        b               : out    vl_logic_vector(0 to 7);
        y               : in     vl_logic_vector(2 downto 0)
    );
end FourtoSixteenDecoder;
