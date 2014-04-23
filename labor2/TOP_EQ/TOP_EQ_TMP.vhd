library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_EQ_TMP is
  port( NEX: in STD_LOGIC;
        NOE: in STD_LOGIC;
        NWE: in STD_LOGIC;
        DATA: inout STD_LOGIC_VECTOR(15 downto 0);
        CLK: in STD_LOGIC;
        RESET: in STD_LOGIC;
        --ANODE: out STD_LOGIC_vector(3 downto 0);
        --CATHODE: out STD_LOGIC_vector(7 downto 0);
        RDY: out STD_LOGIC; --equalizer ausgang
        LOCKED: in STD_LOGIC
        );
end TOP_EQ_TMP;

architecture BEHAVIOUR of TOP_EQ_TMP is

signal INT_CLK_SYN: STD_LOGIC;  -- internes clk signal, 350MHz
signal INT_CLK_PE: STD_LOGIC;  -- internes clk signal, 100MHz
signal INT_LOCKED: STD_LOGIC;  -- internes lock signal des clock-wizards

--EQUALIZER
signal INT_W: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal INT_Y: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

--WRITE_EN Process
signal NWE1: STD_LOGIC := '1'; 
signal NWE2: STD_LOGIC := '1';
signal NWE3: STD_LOGIC := '1';
signal NWE_SHORT: STD_LOGIC := '1';

--CHIP_EN Process
signal NEX1: STD_LOGIC := '1'; 
signal NEX2: STD_LOGIC := '1';

--OUTPUT_EN Process
signal NOE1: STD_LOGIC := '1'; 
signal NOE2: STD_LOGIC := '1';

--ENABLE Process
signal EN_PULSE: STD_LOGIC := '0';

--PULSE1/2
signal PE_PULSE: STD_LOGIC := '0';
signal START: STD_LOGIC := '0';

--KOMBINATORISCHE LOGIK
signal TRISTATE: STD_LOGIC;
signal EN_0:STD_LOGIC;

component EQUALIZER is
  port( CLK_PE: in STD_LOGIC;
        RESET: in STD_LOGIC;
        LOCKED: in STD_LOGIC;
        Y: in STD_LOGIC_VECTOR(15 downto 0);
        W: out STD_LOGIC_VECTOR(15 downto 0);
        RDY: out STD_LOGIC);
  end component;
  
  component CLK_WIZ_100_350 is
  port( -- Clock in ports
        CLK_IN1: in STD_LOGIC;
        -- Clock out ports
        CLK_OUT1: out STD_LOGIC;
        CLK_OUT2: out STD_LOGIC;
        -- Status and control signals
        LOCKED : out STD_LOGIC);
  end component;

begin

EQUAL :  EQUALIZER
  port map( CLK_PE => INT_CLK_PE,
            RESET => RESET,
            LOCKED => INT_LOCKED,
            Y => INT_Y,
            W => INT_W,
            RDY => RDY
  );

CLKWIZ : CLK_WIZ_100_350
  port map(  -- Clock in ports
             CLK_IN1 => CLK,
             -- Clock out ports
             CLK_OUT1 => INT_CLK_PE,
             CLK_OUT2 => INT_CLK_SYN,
             -- Status and control signals
             LOCKED => INT_LOCKED
  );



WRITE_EN: process(INT_CLK_SYN)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
      
    NWE1 <= '1' after 1 ns;
    NWE2 <= '1' after 1 ns;
    NWE3 <= '1' after 1 ns;
    
  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then      
    
    NWE1 <= NWE after 1 ns;  -- 1 stufe 
    NWE2 <= NWE1 after 1 ns;  -- 2 stufe 
    NWE3 <= NWE2 after 1 ns;  -- 3 stufe
       
  end if;
    -- 4 stufe
    NWE_SHORT <= NWE3 and not NWE2 after 1 ns;
end process WRITE_EN;

CHIP_EN: process(INT_CLK_SYN)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    NEX1 <= '1' after 1 ns;
    NEX2 <= '1' after 1 ns;

  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
    NEX1 <= NEX after 1 ns;
    NEX2 <= NEX1 after 1 ns;
  end if; 
end process CHIP_EN;

OUTPUT_EN: process(INT_CLK_SYN)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
     NOE1 <= '1' after 1 ns;
     NOE2 <= '1' after 1 ns;

  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
    NOE1 <= NOE after 1 ns;
    NOE2 <= NOE1 after 1 ns;
  end if; 
end process OUTPUT_EN;

ENABLE: process(INT_CLK_SYN)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    EN_PULSE <= '1' after 1 ns;
    
  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then    
    EN_PULSE <= EN_0 after 1 ns;
  end if;
end process ENABLE;

PULSE1: process(EN_PULSE)
begin
  if(START = '1' OR INT_LOCKED = '0') then                --FRAU BEHN FRAGEN
    PE_PULSE <= '1' after 1 ns;
  elsif(EN_PULSE'event and EN_PULSE = '1') then
    PE_PULSE <= '0' after 1 ns;
  end if;
end process PULSE1;





--NOCH  NICHT FERTIG, NOCH NICHT KLAR WEGEN START --> KO
PULSE2: process(INT_CLK_PE)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    START <= '0' after 1 ns;                             --FRAU BEHN FRAGEN
  elsif(INT_CLK_PE'event and INT_CLK_PE = '1') then
    START <= EN_PULSE after 1 ns;
  end if;        
end process PULSE2;

--KOMBINATORISCHE LOGIK
TRISTATE <= NEX2 OR NOE2 after 1 ns;
EN_0 <= not NEX2 and NWE_SHORT after 1 ns;
end BEHAVIOUR;

