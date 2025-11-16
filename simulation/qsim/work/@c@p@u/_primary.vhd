library verilog;
use verilog.vl_types.all;
entity CPU is
    port(
        first4          : out    vl_logic_vector(0 to 6);
        clk             : in     vl_logic;
        EN              : in     vl_logic;
        data_in         : in     vl_logic;
        reset           : in     vl_logic;
        res1            : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        res2            : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        last4           : out    vl_logic_vector(0 to 6);
        leds0           : out    vl_logic;
        leds1           : out    vl_logic;
        leds2           : out    vl_logic;
        leds3           : out    vl_logic;
        leds4           : out    vl_logic;
        leds5           : out    vl_logic;
        leds6           : out    vl_logic;
        leds30          : out    vl_logic;
        leds31          : out    vl_logic;
        leds32          : out    vl_logic;
        leds33          : out    vl_logic;
        leds34          : out    vl_logic;
        leds35          : out    vl_logic;
        leds36          : out    vl_logic;
        leds40          : out    vl_logic;
        leds41          : out    vl_logic;
        leds42          : out    vl_logic;
        leds43          : out    vl_logic;
        leds44          : out    vl_logic;
        leds45          : out    vl_logic;
        leds46          : out    vl_logic
    );
end CPU;
