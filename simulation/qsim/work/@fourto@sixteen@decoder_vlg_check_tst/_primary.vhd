library verilog;
use verilog.vl_types.all;
entity FourtoSixteenDecoder_vlg_check_tst is
    port(
        a               : in     vl_logic_vector(0 to 7);
        b               : in     vl_logic_vector(0 to 7);
        sampler_rx      : in     vl_logic
    );
end FourtoSixteenDecoder_vlg_check_tst;
