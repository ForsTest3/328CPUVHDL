library verilog;
use verilog.vl_types.all;
entity ALU2_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        opcode          : in     vl_logic_vector(15 downto 0);
        Reg1            : in     vl_logic_vector(7 downto 0);
        Reg2            : in     vl_logic_vector(7 downto 0);
        res             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end ALU2_vlg_sample_tst;
