library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TOP_EQ_TB is 
generic(PERIODE170MHZHALBE: time:= 2.941176471 ns; -- parameter 1/2fclk (170MHZ)   -->WAIT FOR
        PERIODE25MHZHALBE: time:= 20 ns; -- parameter 1/2fclk (25MHZ)              -->CLK_PROCESS
        N: natural := 50);
end TOP_EQ_TB;

architecture BEHAVIOUR of TOP_EQ_TB is
  signal TB_NEX: STD_LOGIC;
  signal TB_NOE: STD_LOGIC;
  signal TB_NWE: STD_LOGIC;
  signal TB_CLK: STD_LOGIC;
  signal TB_RESET: STD_LOGIC;
  signal TB_DATA: STD_ULOGIC_VECTOR(15 downto 0);
  signal TB_RDY: STD_LOGIC;
  signal TB_LOCKED: STD_LOGIC;

  component TOP_EQ is
    port( NEX: in STD_LOGIC;
          NOE: in STD_LOGIC;
          NWE: in STD_LOGIC;
          DATA: inout STD_ULOGIC_VECTOR(15 downto 0);
          CLK: in STD_LOGIC;
          RESET: in STD_LOGIC;
          --ANODE: out STD_LOGIC_vector(3 downto 0);
          --CATHODE: out STD_LOGIC_vector(7 downto 0);
          RDY: out STD_LOGIC; --equalizer ausgang
          LOCKED: in STD_LOGIC);
  end component;

  --for all : TOP_EQ_CLKWIZ use entity work.TOP_EQ_CLKWIZ(Structure);

begin
  TOP_EQ_I : TOP_EQ_CLKWIZ
  port map( NEX => TB_NEX,
            NOE => TB_NOE,
            NWE => TB_NWE,
	         CLK => TB_CLK,
	         RESET => TB_RESET,
	         DATA => TB_DATA,
	         RDY => TB_RDY,
	         LOCKED => TB_LOCKED);   
	         
	    
CLOCK: process
begin    
  for I in N-1 downto 0 loop        
    TB_CLK <= '0';
    wait for PERIODE25MHZHALBE; 
     
    TB_CLK <= '1';
    wait for PERIODE25MHZHALBE; 
    
    end loop; 
end process;


  
stimuli: process
begin    
  
  TB_RESET <= '1';
  wait for 220 ns;    
  TB_RESET <= '0';
  wait for 10000 ns; 
end process stimuli;

end BEHAVIOUR;