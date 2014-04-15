library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;


entity TOP_EQ_TB_STDL is 
generic(N: natural := 50);
end TOP_EQ_TB_STDL;

architecture BEHAVIOUR of TOP_EQ_TB_STDL is

signal TB_NEX: STD_LOGIC;
signal TB_NOE: STD_LOGIC;
signal TB_NWE: STD_LOGIC;
signal TB_CLK: STD_LOGIC;
signal TB_RESET: STD_LOGIC;
signal TB_ANODE: STD_LOGIC_VECTOR(3 downto 0);
signal TB_CATHODE: STD_LOGIC_VECTOR(7 downto 0);
signal TB_TEST1: STD_LOGIC;
signal TB_TEST2: STD_LOGIC;
signal TB_TEST3: STD_LOGIC;


component TOP_EQ is
    
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
        TEST3: out STD_LOGIC);
end component;
for all : TOP_EQ use entity work.TOP_EQ(Structure);

begin
    
    TOP_EQ_TB_I : TOP_EQ
    port map(
    NEX => TB_NEX,
    NOE => TB_NOE,
    NWE => TB_NWE,
	 CLK => TB_CLK,
	 RESET => TB_RESET,
	 ANODE => TB_ANODE,
	 CATHODE => TB_CATHODE,
	 TEST1 => TB_TEST1,
	 TEST2 => TB_TEST2,
	 TEST3 => TB_TEST3
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