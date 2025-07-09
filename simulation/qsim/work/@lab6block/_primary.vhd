library verilog;
use verilog.vl_types.all;
entity Lab6block is
    port(
        Decoder         : out    vl_logic_vector(15 downto 0);
        Enable          : in     vl_logic;
        Clock           : in     vl_logic;
        w               : in     vl_logic;
        R1              : out    vl_logic_vector(3 downto 0);
        resetA          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        resetB          : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        R2              : out    vl_logic_vector(3 downto 0);
        states          : out    vl_logic_vector(3 downto 0);
        student_id      : out    vl_logic_vector(3 downto 0);
        t               : out    vl_logic_vector(7 downto 0);
        u               : out    vl_logic_vector(7 downto 0);
        x               : out    vl_logic_vector(0 to 6);
        y               : out    vl_logic_vector(0 to 6);
        z               : out    vl_logic_vector(0 to 6)
    );
end Lab6block;
