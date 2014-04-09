library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EDGE_DCTR is
  port(	CLK: in STD_LOGIC;
        RESET_EDGE_DCTR: in STD_LOGIC;
        INPUT_EDGE_DCTR: in STD_LOGIC;
        OUTPUT_EDGE_DCTR: out STD_LOGIC);
end EDGE_DCTR;

architecture BEHAVIOUR of EDGE_DCTR is
  signal out_first: STD_LOGIC;
  signal out_second: STD_LOGIC;

begin

  edge: process(CLK)
  begin 
    if (CLK = '1' and CLK'event ) then
      if(RESET_EDGE_DCTR = '1') then
        out_first <= '0' after 10 ns;
        out_second <= '0' after 10 ns;
      else
       out_first <= INPUT_EDGE_DCTR after 10 ns;
       out_second <= out_first after 10 ns;
      end if;
    end if;

	  OUTPUT_EDGE_DCTR <= out_first and not out_second after 10 ns;
  end process edge;
end BEHAVIOUR;