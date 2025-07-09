library verilog;
use verilog.vl_types.all;
entity Lab6block_vlg_sample_tst is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        Clock           : in     vl_logic;
        Enable          : in     vl_logic;
        resetA          : in     vl_logic;
        resetB          : in     vl_logic;
        w               : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Lab6block_vlg_sample_tst;
