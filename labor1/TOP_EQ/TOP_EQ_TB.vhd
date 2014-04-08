entity TOP_EQ_TB is 
generic(N: natural := 50);
end TOP_EQ_TB;

architecture BEHAVIOUR of TOP_EQ_TB is

signal TB_NEX: bit;
signal TB_NOE: bit;
signal TB_NWE: bit;
signal TB_CLK: bit;
signal TB_RESET: bit;
signal TB_ANODE: bit_vector(3 downto 0);
signal TB_CATHODE: bit_vector(7 downto 0);
signal TB_TEST1: bit;
signal TB_TEST2: bit;
signal TB_TEST3: bit;


component TOP_EQ is
    
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
end component;


begin
    
    TOP_EQ_TB : TOP_EQ
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
  wait for 1000 ns; 
  TB_RESET <= '1';
  wait for 110 ns;    
  TB_RESET <= '0';
end process stimuli;

end BEHAVIOUR;