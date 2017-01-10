library verilog;
use verilog.vl_types.all;
entity DSP48A1 is
    generic(
        A0REG           : integer := 0;
        A1REG           : integer := 1;
        B0REG           : integer := 0;
        B1REG           : integer := 1;
        CARRYINREG      : integer := 1;
        CARRYOUTREG     : integer := 1;
        CARRYINSEL      : string  := "OPMODE5";
        CREG            : integer := 1;
        DREG            : integer := 1;
        MREG            : integer := 1;
        OPMODEREG       : integer := 1;
        PREG            : integer := 1;
        RSTTYPE         : string  := "SYNC"
    );
    port(
        BCOUT           : out    vl_logic_vector(17 downto 0);
        CARRYOUT        : out    vl_logic;
        CARRYOUTF       : out    vl_logic;
        M               : out    vl_logic_vector(35 downto 0);
        P               : out    vl_logic_vector(47 downto 0);
        PCOUT           : out    vl_logic_vector(47 downto 0);
        A               : in     vl_logic_vector(17 downto 0);
        B               : in     vl_logic_vector(17 downto 0);
        C               : in     vl_logic_vector(47 downto 0);
        CARRYIN         : in     vl_logic;
        CEA             : in     vl_logic;
        CEB             : in     vl_logic;
        CEC             : in     vl_logic;
        CECARRYIN       : in     vl_logic;
        CED             : in     vl_logic;
        CEM             : in     vl_logic;
        CEOPMODE        : in     vl_logic;
        CEP             : in     vl_logic;
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(17 downto 0);
        OPMODE          : in     vl_logic_vector(7 downto 0);
        PCIN            : in     vl_logic_vector(47 downto 0);
        RSTA            : in     vl_logic;
        RSTB            : in     vl_logic;
        RSTC            : in     vl_logic;
        RSTCARRYIN      : in     vl_logic;
        RSTD            : in     vl_logic;
        RSTM            : in     vl_logic;
        RSTOPMODE       : in     vl_logic;
        RSTP            : in     vl_logic
    );
end DSP48A1;
