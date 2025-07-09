library verilog;
use verilog.vl_types.all;
entity ALU_vlg_check_tst is
    port(
        checkbit        : in     vl_logic;
        R1              : in     vl_logic_vector(0 to 3);
        R2              : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU_vlg_check_tst;
