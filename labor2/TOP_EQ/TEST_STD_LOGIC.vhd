library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity TEST_STD_LOGIC is
  port( CLK: in STD_LOGIC;
        RESET: in STD_LOGIC;
        Y: in STD_LOGIC_VECTOR(15 downto 0);
        W: out STD_LOGIC_VECTOR(15 downto 0));
end TEST_STD_LOGIC;

architecture BEHAVIOUR OF TEST_STD_LOGIC is
begin
  whatever: process(CLK)
  begin
    if(CLK'event and CLK = '1') then
      if(RESET = '1') then
        W <= (others => '0') after 10 ns;
      else
        W <= Y after 10 ns;
      end if;
    end if;
  end process whatever;

end BEHAVIOUR;