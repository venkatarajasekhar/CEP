library ieee;
use ieee.std_logic_1164.all;

entity TOP_EQ is
  port( NEX: in bit;
        NOE: in bit;
        NWE: in bit;
        D: inout std_ulogic_vector(15 downto 0);
        CLK: in bit;
        TEST1: out bit;
        TEST2: out bit;
        TEST3: out bit);
end TOP_EQ;

architecture BEHAVIOUR of TOP_EQ is
begin
  
  p1: process(CLK)
  begin
    if(CLK'event and CLK = '1') then
      TEST1 <= NEX and NOE after 10 ns;
      TEST2 <= NWE after 10 ns;
      TEST3 <= NOE after 10 ns;
    end if;
  end process p1;

end BEHAVIOUR;
