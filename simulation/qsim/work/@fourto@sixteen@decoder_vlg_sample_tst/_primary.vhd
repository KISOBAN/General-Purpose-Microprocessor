library verilog;
use verilog.vl_types.all;
entity FourtoSixteenDecoder_vlg_sample_tst is
    port(
        Enable          : in     vl_logic;
        x               : in     vl_logic_vector(2 downto 0);
        y               : in     vl_logic_vector(2 downto 0);
        z               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end FourtoSixteenDecoder_vlg_sample_tst;
