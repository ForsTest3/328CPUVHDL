library verilog;
use verilog.vl_types.all;
entity ALU is
    port(
        clk             : in     vl_logic;
        res             : in     vl_logic;
        Reg1            : in     vl_logic_vector(7 downto 0);
        Reg2            : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(15 downto 0);
        neg1            : out    vl_logic;
        neg2            : out    vl_logic;
        out1            : out    vl_logic_vector(3 downto 0);
        out2            : out    vl_logic_vector(3 downto 0)
    );
end ALU;
