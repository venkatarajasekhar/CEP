library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TOP_EQ_CLKWIZ_TB is 
generic(N: natural := 50);
end TOP_EQ_CLKWIZ_TB;

architecture BEHAVIOUR of TOP_EQ_CLKWIZ_TB is

signal TB_NEX: STD_LOGIC;
signal TB_NOE: STD_LOGIC;
signal TB_NWE: STD_LOGIC;
signal TB_CLK: STD_LOGIC;
signal TB_RESET: STD_LOGIC;
signal TB_DATA: STD_ULOGIC_VECTOR(15 downto 0);
signal TB_RDY: STD_LOGIC;
--signal TB_ANODE: STD_LOGIC_VECTOR(3 downto 0);
--signal TB_CATHODE: STD_LOGIC_VECTOR(7 downto 0);
--signal TB_TEST1: STD_LOGIC;
--signal TB_TEST2: STD_LOGIC;
--signal TB_TEST3: STD_LOGIC;


component TOP_EQ_CLKWIZ is
    
  port( NEX: in STD_LOGIC;
        NOE: in STD_LOGIC;
        NWE: in STD_LOGIC;
        DATA: inout STD_ULOGIC_VECTOR(15 downto 0);
        CLK: in STD_LOGIC;
        RESET: in STD_LOGIC;
        RDY: out STD_LOGIC --equalizer ausgang
		);
end component;
--for all : TOP_EQ_CLKWIZ use entity work.TOP_EQ_CLKWIZ(Structure);

begin
    
    TOP_EQ_TB_I : TOP_EQ_CLKWIZ
    port map(
     NEX => TB_NEX,
     NOE => TB_NOE,
     NWE => TB_NWE,
	 CLK => TB_CLK,
	 RESET => TB_RESET,
	 DATA => TB_DATA,
	 RDY => TB_RDY
    );       

P1_TB: process
begin    
  for I in N-1 downto 0 loop        
    TB_CLK <= '0';
    wait for 50 ns; 
     
    TB_CLK <= '1';
    wait for 50 ns; 
    
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