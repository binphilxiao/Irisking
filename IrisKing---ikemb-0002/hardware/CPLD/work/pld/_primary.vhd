library verilog;
use verilog.vl_types.all;
entity pld is
    port(
        clk             : in     vl_logic;
        nCPLDCE         : in     vl_logic;
        nNANDFWE        : in     vl_logic;
        nOE_nFRE        : in     vl_logic;
        nHRESET         : in     vl_logic;
        wil             : in     vl_logic_vector(1 downto 0);
        addr            : in     vl_logic_vector(6 downto 0);
        data            : inout  vl_logic_vector(7 downto 0);
        IRQ4            : out    vl_logic;
        AD_CS           : out    vl_logic;
        AD_CLK          : out    vl_logic;
        AD_DOO          : in     vl_logic;
        test            : out    vl_logic_vector(3 downto 0)
    );
end pld;
