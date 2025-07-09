library verilog;
use verilog.vl_types.all;
entity Lab6block_vlg_check_tst is
    port(
        Decoder         : in     vl_logic_vector(15 downto 0);
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        states          : in     vl_logic_vector(3 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        t               : in     vl_logic_vector(7 downto 0);
        u               : in     vl_logic_vector(7 downto 0);
        x               : in     vl_logic_vector(0 to 6);
        y               : in     vl_logic_vector(0 to 6);
        z               : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end Lab6block_vlg_check_tst;
