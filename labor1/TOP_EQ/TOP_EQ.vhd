library ieee;
use ieee.std_logic_1164.all;

entity TOP_EQ is
  port( NEX: in bit;
        NOE: in bit;
        NWE: in bit;
        --D: inout std_ulogic_vector(15 downto 0);
        CLK: in bit;
        RESET: in bit;
        ANODE: out bit_vector(3 downto 0);
        CATHODE: out bit_vector(7 downto 0);
        TEST1: out bit;
        TEST2: out bit;
        TEST3: out bit);
end TOP_EQ;

architecture BEHAVIOUR of TOP_EQ is
  signal INT_FREQ_DIV_1_OUT: bit;
  signal INT_FREQ_DIV_2_OUT: bit;
  signal INT_EDGE_DCTR_1_OUT: bit;
  signal INT_PSDO_RNDM_GEN_1_OUT: bit_vector(15 downto 0);

  component FREQ_DIV is
    generic (CYCLE : integer);
    port(	CLK_FREQ: in bit;
          OUTPUT_FREQ: out bit);
  end component;
  
  component EDGE_DCTR is
    port(	CLK_EDGE_DCTR: in bit;
          RESET_EDGE_DCTR: in bit;
          INPUT_EDGE_DCTR: in bit;
          OUTPUT_EDGE_DCTR: out bit);
  end component;
  
  component SVN_SEG_DISP is
    port( SVN_SEG_CLK: in bit;                          -- clock eingang
			 SVN_SEG_VALUE: in bit_vector(15 downto 0);    -- 16bit = 4x 4bit = 4 ziffern
          SVN_SEG_ANODE: out bit_vector(3 downto 0);    -- 4bit fuer verschiedene ziffern
          SVN_SEG_CATHODE: out bit_vector(7 downto 0)); -- 8bit fuer segmente
  end component;
  
  component PSDO_RNDM_GEN is
    port( CLK_RNDM: in bit;
          NLOAD_RNDM: in bit;
          RESET_RNDM: in bit;
          OUTPUT_RNDM: out bit_vector(15 downto 0));
  end component;

begin
    
  FREQ_DIV_1 : FREQ_DIV
  generic map(CYCLE => 4)
  port map( CLK_FREQ => CLK,
            OUTPUT_FREQ => INT_FREQ_DIV_1_OUT
  );
  
  FREQ_DIV_2 : FREQ_DIV
  generic map(CYCLE => 2)
  port map( CLK_FREQ => INT_EDGE_DCTR_1_OUT,
            OUTPUT_FREQ => INT_FREQ_DIV_2_OUT
  );
  
  EDGE_DCTR_1 : EDGE_DCTR
  port map( CLK_EDGE_DCTR => CLK,
            RESET_EDGE_DCTR => RESET,
            INPUT_EDGE_DCTR => INT_FREQ_DIV_1_OUT,
            OUTPUT_EDGE_DCTR => INT_EDGE_DCTR_1_OUT
  );
  
  PSDO_RNDM_GEN_1 : PSDO_RNDM_GEN
  port map( CLK_RNDM => CLK,
        NLOAD_RNDM => INT_FREQ_DIV_2_OUT,
        RESET_RNDM => RESET,
        OUTPUT_RNDM => INT_PSDO_RNDM_GEN_1_OUT
  );
  
  SVN_SEG_DISP_1 : SVN_SEG_DISP
  port map( SVN_SEG_CLK => INT_EDGE_DCTR_1_OUT,
            SVN_SEG_VALUE => INT_PSDO_RNDM_GEN_1_OUT,
            SVN_SEG_ANODE => ANODE,
            SVN_SEG_CATHODE => CATHODE
  );
  
  TEST: process(NEX, NOE, NWE)
  begin
      TEST1 <= NEX and NOE after 10 ns;
      TEST2 <= NWE after 10 ns;
      TEST3 <= NOE after 10 ns;
  end process TEST;

end BEHAVIOUR;
