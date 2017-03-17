library verilog;
use verilog.vl_types.all;
entity \buffer\ is
    port(
        clock           : in     vl_logic;
        clk             : in     vl_logic;
        nReset          : in     vl_logic;
        hpirdy          : in     vl_logic;
        nEXTBUS         : out    vl_logic;
        BUFDIR          : out    vl_logic;
        BUFDIR1         : out    vl_logic;
        nFCE            : in     vl_logic;
        nOE             : in     vl_logic;
        nWE             : in     vl_logic;
        nGCS            : in     vl_logic_vector(5 downto 0);
        nFWE            : in     vl_logic;
        nFRE            : in     vl_logic;
        addr            : in     vl_logic_vector(8 downto 2);
        data            : inout  vl_logic_vector(7 downto 0);
        wil             : in     vl_logic_vector(1 downto 0);
        eint11          : out    vl_logic;
        clkout          : out    vl_logic;
        vp2clk0         : in     vl_logic;
        vp2clk1         : in     vl_logic;
        vp2ctl0         : in     vl_logic;
        vp2ctl1         : in     vl_logic;
        vp2ctl2         : in     vl_logic;
        vCLK            : out    vl_logic;
        Hs              : out    vl_logic;
        Vs              : out    vl_logic;
        De              : out    vl_logic;
        nWAIT           : out    vl_logic;
        test            : out    vl_logic_vector(3 downto 0)
    );
end \buffer\;
