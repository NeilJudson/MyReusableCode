library verilog;
use verilog.vl_types.all;
entity dsp48a1_ip_18 is
    port(
        clk             : in     vl_logic;
        a               : in     vl_logic_vector(17 downto 0);
        b               : in     vl_logic_vector(17 downto 0);
        p               : out    vl_logic_vector(35 downto 0)
    );
end dsp48a1_ip_18;
