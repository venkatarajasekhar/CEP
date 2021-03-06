library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity FREQ_DIV is
  generic(CYCLE: natural);
  port(	CLK: in STD_LOGIC;
        RESET_FREQ: in STD_LOGIC;
        LOCKED_FREQ: in STD_LOGIC;
	     OUTPUT_FREQ: out STD_LOGIC);
end FREQ_DIV;


architecture BEHAVIOUR of FREQ_DIV is	
begin

  p1 : process(CLK) 
	  variable COUNTER: INTEGER := 0;
  begin
    if(RESET_FREQ = '0' or LOCKED_FREQ = '0') then
      COUNTER := 0;
      OUTPUT_FREQ <= '0' after 1 ns;
        
    elsif(CLK = '1' and CLK'event) then
         
     if(COUNTER = CYCLE-1) then
       OUTPUT_FREQ <= '1' after 1 ns;
		 COUNTER := 0;

     else
       OUTPUT_FREQ <= '0' after 1 ns;
       COUNTER := COUNTER + 1;

     end if;
    end if;
  end process p1;
end BEHAVIOUR;	
	