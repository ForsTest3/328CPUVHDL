library verilog;
use verilog.vl_types.all;
entity ALU2_vlg_check_tst is
    port(
        neg1            : in     vl_logic;
        neg2            : in     vl_logic;
        out1            : in     vl_logic_vector(3 downto 0);
        out2            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end ALU2_vlg_check_tst;
