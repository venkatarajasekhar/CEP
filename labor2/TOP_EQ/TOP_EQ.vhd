library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity TOP_EQ is
  port( NEX: in STD_LOGIC;
        NOE: in STD_LOGIC;
        NWE: in STD_LOGIC;
        --D: inout std_ulogic_vector(15 downto 0);
        CLK: in STD_LOGIC;
        RESET: in STD_LOGIC;
        ANODE: out STD_LOGIC_vector(3 downto 0);
        CATHODE: out STD_LOGIC_vector(7 downto 0);
        TEST1: out STD_LOGIC;
        TEST2: out STD_LOGIC;
        TEST3: out STD_LOGIC;
        TEST_OSZI: out STD_LOGIC);
end TOP_EQ;

architecture BEHAVIOUR of TOP_EQ is
  signal INT_FREQ_DIV_1_OUT: STD_LOGIC;
  signal INT_FREQ_DIV_2_OUT: STD_LOGIC;
  signal INT_PSDO_RNDM_GEN_1_OUT: STD_LOGIC_vector(15 downto 0);

  signal INT_CLK_SYN: STD_LOGIC;  -- internes clk signal, 350mhz
  signal INT_CLK_PE: STD_LOGIC;  -- internes clk signal, 100hz
  signal INT_TRISTATE_CTRL: STD_LOGIC;  -- internes signal zur tristate steuerung
  
  signal INT_NEX_CS: STD_LOGIC;  -- internes signal, doppelt abgetaktet

  component FREQ_DIV is
    generic (CYCLE : integer);
    port(	CLK: in STD_LOGIC;
          RESET_FREQ: in STD_LOGIC;
          OUTPUT_FREQ: out STD_LOGIC);
  end component;
  
  component EDGE_DCTR is
    port(	CLK: in STD_LOGIC;
          RESET_EDGE_DCTR: in STD_LOGIC;
          INPUT_EDGE_DCTR: in STD_LOGIC;
          OUTPUT_EDGE_DCTR: out STD_LOGIC);
  end component;
  
  component SVN_SEG_DISP is
    port( CLK: in STD_LOGIC;                                  -- clock eingang
          SVN_SEG_CE: in STD_LOGIC;                           --clock-enable
			 SVN_SEG_VALUE: in STD_LOGIC_vector(15 downto 0);    -- 16STD_LOGIC = 4x 4STD_LOGIC = 4 ziffern
          SVN_SEG_ANODE: out STD_LOGIC_vector(3 downto 0);    -- 4STD_LOGIC fuer verschiedene ziffern
          SVN_SEG_CATHODE: out STD_LOGIC_vector(7 downto 0)); -- 8STD_LOGIC fuer segmente
  end component;
  
  component PSDO_RNDM_GEN is
    port( CLK: in STD_LOGIC;
          NLOAD_RNDM: in STD_LOGIC;
          RESET_RNDM: in STD_LOGIC;
          OUTPUT_RNDM: out STD_LOGIC_vector(15 downto 0));
  end component;

begin
    
  FREQ_DIV_1 : FREQ_DIV
  generic map(CYCLE => 2) --125000
  port map( CLK => CLK,
            RESET_FREQ  => RESET,
            OUTPUT_FREQ => INT_FREQ_DIV_1_OUT
  );
  
  FREQ_DIV_2 : FREQ_DIV
  generic map(CYCLE => 4) --25000000
  port map( CLK => CLK,
            RESET_FREQ  => RESET,
            OUTPUT_FREQ => INT_FREQ_DIV_2_OUT
  );
  
  PSDO_RNDM_GEN_1 : PSDO_RNDM_GEN
  port map( CLK => CLK,
        NLOAD_RNDM => INT_FREQ_DIV_2_OUT,
        RESET_RNDM => RESET,
        OUTPUT_RNDM => INT_PSDO_RNDM_GEN_1_OUT
  );
  
  SVN_SEG_DISP_1 : SVN_SEG_DISP
  port map( CLK => CLK,
            SVN_SEG_CE => INT_FREQ_DIV_1_OUT,
            SVN_SEG_VALUE => INT_PSDO_RNDM_GEN_1_OUT,
            SVN_SEG_ANODE => ANODE,
            SVN_SEG_CATHODE => CATHODE
  );
  
  --TEST: process(NEX, NOE, NWE)
  --begin
  --    TEST1 <= NEX and NOE after 10 ns;
  --    TEST2 <= NWE after 10 ns;
  --    TEST3 <= NOE after 10 ns;
  --end process TEST;
  
  NEX_NOE: process(NEX, NOE)
		variable NEX_CS: STD_LOGIC;
    variable NOE_CS: STD_LOGIC;
    variable NOE_CS_2: STD_LOGIC;
  begin
    if(INT_CLK_SYN'event and INT_CLK_SYN = '1') then
      if(RESET = '1') then
        NEX_CS := '0';
        NOE_CS := '0';
        NOE_CS_2 := '0';
        INT_NEX_CS <= '0' after 10 ns;
      else
        -- erste stufe 
        NEX_CS := NEX;
        NOE_CS := NOE;
        
        -- zweite stufe
        INT_NEX_CS <= NEX_CS after 10 ns;
        NOE_CS_2 := NOE_CS;
      end if;
    end if;

    -- dritte stufe
    INT_TRISTATE_CTRL <= INT_NEX_CS or NOE_CS_2 after 10 ns;

  end process NEX_NOE;




  OSZI: process(CLK)
  begin
      TEST_OSZI <= CLK after 10 ns;
  end process OSZI;

end BEHAVIOUR;
