library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_EQ is
  port( NEX: in STD_LOGIC;
        NOE: in STD_LOGIC;
        NWE: in STD_LOGIC;
        DATA: inout STD_LOGIC_VECTOR(15 downto 0);
        CLK: in STD_LOGIC;
        RESET: in STD_LOGIC;
        --ANODE: out STD_LOGIC_vector(3 downto 0);
        --CATHODE: out STD_LOGIC_vector(7 downto 0);
        RDY: out STD_LOGIC; --equalizer ausgang
        LOCKED: out STD_LOGIC
        );
end TOP_EQ;

architecture BEHAVIOUR of TOP_EQ is

signal INT_CLK_SYN: STD_LOGIC;  -- internes clk signal, 350MHz
signal INT_CLK_PE: STD_LOGIC;  -- internes clk signal, 100MHz
signal INT_LOCKED: STD_LOGIC;  -- internes lock signal des clock-wizards

--EQUALIZER
signal INT_W: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal INT_Y: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

--WRITE_EN Process
signal INT_NWE1: STD_LOGIC := '1'; 
signal INT_NWE2: STD_LOGIC := '1';
signal INT_NWE3: STD_LOGIC := '1';
signal INT_NWE_SHORT: STD_LOGIC := '1';

--CHIP_EN Process
signal INT_NEX1: STD_LOGIC := '1'; 
signal INT_NEX2: STD_LOGIC := '1';

--OUTPUT_EN Process
signal INT_NOE1: STD_LOGIC := '1'; 
signal INT_NOE2: STD_LOGIC := '1';

--ENABLE Process
signal INT_EN_PULSE: STD_LOGIC := '0';

--PULSE1/2
signal INT_PE_PULSE: STD_LOGIC := '0';
signal INT_START: STD_LOGIC := '0';

--INPUT Process
signal INT_DATA_1: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal INT_DATA_2: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal INT_DATA_3: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');

--KOMBINATORISCHE LOGIK
signal INT_TRISTATE: STD_LOGIC;
signal INT_EN_0:STD_LOGIC;

component EQUALIZER is
  generic(COUNT: natural);
  port( CLK_PE: in STD_LOGIC;
        RESET: in STD_LOGIC;
        LOCKED: in STD_LOGIC;
        START: in STD_LOGIC;
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

EQUAL : EQUALIZER
  generic map(COUNT => 128)
  port map( CLK_PE => INT_CLK_PE,
            RESET => RESET,
            LOCKED => INT_LOCKED,
            START => INT_START,
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

WRITE_EN: process(INT_CLK_SYN, RESET, INT_LOCKED)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
      
    INT_NWE1 <= '1' after 1 ns;
    INT_NWE2 <= '1' after 1 ns;
    INT_NWE3 <= '1' after 1 ns;
    
  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then      
    
    INT_NWE1 <= NWE after 1 ns;  -- 1 stufe 
    INT_NWE2 <= INT_NWE1 after 1 ns;  -- 2 stufe 
    INT_NWE3 <= INT_NWE2 after 1 ns;  -- 3 stufe
       
  end if;
    -- 4 stufe
    INT_NWE_SHORT <= INT_NWE3 and not INT_NWE2 after 1 ns;
end process WRITE_EN;

CHIP_EN: process(INT_CLK_SYN, RESET, INT_LOCKED)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    INT_NEX1 <= '1' after 1 ns;
    INT_NEX2 <= '1' after 1 ns;

  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
    INT_NEX1 <= NEX after 1 ns;
    INT_NEX2 <= INT_NEX1 after 1 ns;
  end if; 
end process CHIP_EN;

OUTPUT_EN: process(INT_CLK_SYN, RESET, INT_LOCKED)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
     INT_NOE1 <= '1' after 1 ns;
     INT_NOE2 <= '1' after 1 ns;

  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
    INT_NOE1 <= NOE after 1 ns;
    INT_NOE2 <= INT_NOE1 after 1 ns;
  end if; 
end process OUTPUT_EN;

ENABLE: process(INT_CLK_SYN, RESET, INT_LOCKED)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    INT_EN_PULSE <= '0' after 1 ns;
    
  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then    
    INT_EN_PULSE <= INT_EN_0 after 1 ns;
  end if;
end process ENABLE;

-- nochmal wegen low-aktiv/nicht-low-aktiv logik frau behn fragen
PULSE1: process(INT_EN_PULSE, INT_START, INT_LOCKED)
begin
  if(INT_START = '1' OR INT_LOCKED = '0') then 
    INT_PE_PULSE <= '0' after 1 ns;
  elsif(INT_EN_PULSE'event and INT_EN_PULSE = '1') then
    INT_PE_PULSE <= '1' after 1 ns;
  end if;
end process PULSE1;

PULSE2: process(INT_CLK_PE, RESET, INT_LOCKED) --
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    INT_START <= '0' after 1 ns;
  elsif(INT_CLK_PE'event and INT_CLK_PE = '1') then
    INT_START <= INT_PE_PULSE after 1 ns;
  end if;        
end process PULSE2;

INPUT: process(INT_CLK_SYN, RESET, INT_LOCKED)
begin
  if(RESET = '0' OR INT_LOCKED = '0') then
    INT_DATA_2 <= (others => '0') after 1 ns;
    INT_DATA_3 <= (others => '0') after 1 ns;
    INT_Y <= (others => '0') after 1 ns;
  elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
    INT_DATA_2 <= INT_DATA_1 after 1 ns;                           
    INT_DATA_3 <= INT_DATA_2 after 1 ns;             
      
    if(INT_EN_PULSE = '1') then 
      INT_Y <= INT_DATA_3 after 1 ns;
    end if;
  end if;        
end process INPUT;

--KOMBINATORISCHE LOGIK
INT_TRISTATE <= INT_NEX2 OR INT_NOE2 after 1 ns;
INT_EN_0 <= not INT_NEX2 and INT_NWE_SHORT after 1 ns;
LOCKED <= INT_LOCKED after 1 ns;

-- von hier nur nch tri-state code
-- read/write aus sicht der top-eq

-- wenn INT_TRISTATE = 0, dann wird von int_w
-- nach data geschrieben
WRITE: process(INT_TRISTATE, INT_W)
begin
  if(INT_TRISTATE = '1') then
    DATA <= (others => 'Z') after 1 ns;
  else
    DATA <= INT_W after 1 ns;
  end if;
end process WRITE;
  
-- lesen geht immer, wird über en im letzten
-- flip-flop gesteuert  
READ: INT_DATA_1 <= DATA after 1 ns; 
end BEHAVIOUR;

