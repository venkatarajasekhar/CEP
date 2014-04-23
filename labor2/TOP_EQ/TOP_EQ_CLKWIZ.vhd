library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_EQ_CLKWIZ is
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
end TOP_EQ_CLKWIZ;

architecture BEHAVIOUR of TOP_EQ_CLKWIZ is
  --signal INT_FREQ_DIV_1_OUT: STD_LOGIC;
  --signal INT_FREQ_DIV_2_OUT: STD_LOGIC;
  --signal INT_PSDO_RNDM_GEN_1_OUT: STD_LOGIC_vector(15 downto 0);

  signal INT_CLK_SYN: STD_LOGIC;  -- internes clk signal, 350MHz
  signal INT_CLK_PE: STD_LOGIC;  -- internes clk signal, 100MHz
  signal INT_LOCKED: STD_LOGIC;  -- internes lock signal des clock-wizards
  signal INT_TRISTATE_CTRL: STD_LOGIC;  -- internes signal zur tristate steuerung
  
  signal INT_P1: STD_LOGIC := '1';  -- internes signal, doppelt abgetaktet + pulse-shorter
  signal INT_P2: STD_LOGIC := '1';  -- internes signal, doppelt abgetaktet
  signal INT_P1_P2: STD_LOGIC := '1';  -- internes Signal, verundung NWE und !NEX
  signal INT_P3: STD_LOGIC := '1';     -- internes Signal EN, zum process 4 als takt
  signal INT_P4: STD_LOGIC := '1';     -- internes signal verbindung zwischen P4 und P5
  signal INT_P5: STD_LOGIC := '1';  -- internes signal, zum starten des equalizers
  
  --EQUALIZER
  signal INT_W: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal INT_Y: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal INT_DATA: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  
  --component FREQ_DIV is
  --  generic (CYCLE : integer);
  --  port(	CLK: in STD_LOGIC;
  --        RESET_FREQ: in STD_LOGIC;
  --        OUTPUT_FREQ: out STD_LOGIC);
  --end component;
  
  --component EDGE_DCTR is
  --  port(	CLK: in STD_LOGIC;
  --        RESET_EDGE_DCTR: in STD_LOGIC;
  --        INPUT_EDGE_DCTR: in STD_LOGIC;
  --        OUTPUT_EDGE_DCTR: out STD_LOGIC);
  --end component;
  
  --component SVN_SEG_DISP is
  --  port( CLK: in STD_LOGIC;                                  -- clock eingang
  --        SVN_SEG_CE: in STD_LOGIC;                           --clock-enable
  --		      SVN_SEG_VALUE: in STD_LOGIC_vector(15 downto 0);    -- 16STD_LOGIC = 4x 4STD_LOGIC = 4 ziffern
  --        SVN_SEG_ANODE: out STD_LOGIC_vector(3 downto 0);    -- 4STD_LOGIC fuer verschiedene ziffern
  --        SVN_SEG_CATHODE: out STD_LOGIC_vector(7 downto 0)); -- 8STD_LOGIC fuer segmente
  --end component;
  
  --component PSDO_RNDM_GEN is
  --  port( CLK: in STD_LOGIC;
  --        NLOAD_RNDM: in STD_LOGIC;
  --        RESET_RNDM: in STD_LOGIC;
  --        OUTPUT_RNDM: out STD_LOGIC_vector(15 downto 0));
  --end component;
  
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
    
  --FREQ_DIV_1 : FREQ_DIV
  --generic map(CYCLE => 2) --125000
  --port map( CLK => CLK,
  --          RESET_FREQ  => RESET,
  --          OUTPUT_FREQ => INT_FREQ_DIV_1_OUT
  --);
  
  --FREQ_DIV_2 : FREQ_DIV
  --generic map(CYCLE => 4) --25000000
  --port map( CLK => CLK,
  --          RESET_FREQ  => RESET,
  --          OUTPUT_FREQ => INT_FREQ_DIV_2_OUT
  --);
  
  --PSDO_RNDM_GEN_1 : PSDO_RNDM_GEN
  --port map( CLK => CLK,
  --      NLOAD_RNDM => INT_FREQ_DIV_2_OUT,
  --      RESET_RNDM => RESET,
  --      OUTPUT_RNDM => INT_PSDO_RNDM_GEN_1_OUT
  --);
  
  --SVN_SEG_DISP_1 : SVN_SEG_DISP
  --port map( CLK => CLK,
  --          SVN_SEG_CE => INT_FREQ_DIV_1_OUT,
  --          SVN_SEG_VALUE => INT_PSDO_RNDM_GEN_1_OUT,
  --          SVN_SEG_ANODE => ANODE,
  --          SVN_SEG_CATHODE => CATHODE
  --);
  
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
 
  process_1: process(INT_CLK_SYN)
    variable NWE_CS: STD_LOGIC := '1';
    variable NWE_CS_2: STD_LOGIC := '1';
    variable NWE_CS_3: STD_LOGIC := '1';
  begin
    if(RESET = '1' OR INT_LOCKED = '1') then
      
      NWE_CS := '1';
      NWE_CS_2 := '1';
      NWE_CS_3 := '1';
    
    elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then      
    
      NWE_CS := NWE;  -- 1 stufe 
      NWE_CS_2 := NWE_CS;  -- 2 stufe 
      NWE_CS_3 := NWE_CS_2;  -- 3 stufe
       
    end if;
    
    -- 4 stufe
    INT_P1 <= NWE_CS_3 and not NWE_CS_2 after 10 ns;
  end process process_1;

  process_2: process(INT_CLK_SYN)
	 variable NEX_CS: STD_LOGIC := '1';
    variable NOE_CS: STD_LOGIC := '1';
    variable NOE_CS_2: STD_LOGIC := '1';
  begin
    if(RESET = '1' OR INT_LOCKED = '1') then
        
      NEX_CS := '1';
      NOE_CS := '1';
      NOE_CS_2 := '1';
      INT_P2 <= '1' after 10 ns;
      
    elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
        
      -- erste stufe 
      NEX_CS := NEX;
      NOE_CS := NOE;
        
      -- zweite stufe
      INT_P2 <= NEX_CS after 10 ns;
      NOE_CS_2 := NOE_CS;
    end if;

    -- dritte stufe
    INT_TRISTATE_CTRL <= INT_P2 or NOE_CS_2 after 10 ns;

  end process process_2;

  process_3: process(INT_CLK_SYN)
  begin
    if(RESET = '1' OR INT_LOCKED = '1') then
    
      INT_P3 <= '1' after 10 ns;
    
    elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
         
      INT_P3 <= INT_P1_P2 after 10 ns;
    end if;
  end process process_3;

  process_4:process(INT_P3)
  begin
    if(INT_P5 = '1' OR INT_LOCKED = '1') then
      INT_P4 <= '1' after 10 ns;
    elsif(INT_P3'event and INT_P3 = '1') then
      INT_P4 <= '0' after 10 ns;
    end if;
  end process process_4;
  
  process_5:process(INT_CLK_PE)
  begin
    if(RESET = '1' OR INT_LOCKED = '1') then
      INT_P5 <= '1' after 10 ns;
    elsif(INT_CLK_PE'event and INT_CLK_PE = '1') then
      INT_P5 <= INT_P4 after 10 ns;
    end if;        
  end process process_5;

  process_6:process(INT_CLK_SYN)
    variable v1: STD_LOGIC_VECTOR(15 downto 0) := (others => '0'); --weg
    variable v2: STD_LOGIC_VECTOR(15 downto 0) := (others => '0'); --weg
  begin
    if(RESET = '1' OR INT_LOCKED = '1') then
      v1 := (others => '0');
      v2 := (others => '0');
      INT_Y <= (others => '0');
    elsif(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
      v1 := INT_DATA; --DATA                              erst lesen , dann schreiben gedächnis, erst schreiben, dann lesen -> draht
      v2 := v1;                                          
       
      if(INT_P3 = '1') then 
        INT_Y <= v2 after 10 ns;
      end if;
    end if;        
  end process process_6;
 
  --OSZI: process(CLK)
  --begin
  --  TEST_OSZI <= CLK after 10 ns;
  --end process OSZI;
  
  INT_P1_P2 <= INT_P1 and not INT_P2 after 10 ns;
  
  -- Anfang Tri-State
  WRITE: process(INT_TRISTATE_CTRL, INT_W)
  begin
    if(INT_TRISTATE_CTRL = '1') then
       DATA <= (others => 'Z') after 10 ns;    -- empfaenger
    else
      DATA <= INT_W after 10 ns;       -- sender
    end if;
  end process WRITE;
  
  READ: INT_DATA <= DATA after 10 ns; 
  -- Ende Tri-State

end BEHAVIOUR;
