library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity FREQ_DIV_TB is 
  generic(N: natural := 256;
          PERIODE25MHZHALBE: time:= 20 ns);           -- parameter 1/2fclk (25MHZ)    -->CLK_PROCESS);
end FREQ_DIV_TB;

architecture BEHAVIOUR of FREQ_DIV_TB is
  signal INT_CLK: STD_LOGIC;
  signal INT_RESET: STD_LOGIC;
  signal INT_LOCKED: STD_LOGIC;
  signal INT_OUTPUT: STD_LOGIC;

  component FREQ_DIV is
    generic(CYCLE: natural := N);
    port(CLK: in STD_LOGIC;
         RESET_FREQ: in STD_LOGIC;
         LOCKED_FREQ: in STD_LOGIC;
	      OUTPUT_FREQ: out STD_LOGIC);
  end component;

begin
  FREQ_DIV_I : FREQ_DIV
  port map(CLK => INT_CLK,
           RESET_FREQ => INT_RESET,
           LOCKED_FREQ => INT_LOCKED,
	        OUTPUT_FREQ => INT_OUTPUT);        
	    
  CLOCK: process
  begin    
    for I in N-1 downto 0 loop        
      INT_CLK <= '0' after 1 ns;
      wait for PERIODE25MHZHALBE; 
     
      INT_CLK <= '1' after 1 ns;
      wait for PERIODE25MHZHALBE; 
    
    end loop; 
  end process;
  
  

  STIMULI: process
    
  begin
  
   INT_LOCKED <= '0' after 1 ns;
   wait for (PERIODE25MHZHALBE * 5);
   
    
   INT_LOCKED <= '1' after 1 ns;
   wait for (PERIODE25MHZHALBE * 256 * 4); 
   
   INT_RESET <= '1' after 1 ns;
   wait for (PERIODE25MHZHALBE * 256 * 4); 
   
   INT_RESET <= '0' after 1 ns;
   wait for (PERIODE25MHZHALBE * 2);
     

  end process;

end BEHAVIOUR;
