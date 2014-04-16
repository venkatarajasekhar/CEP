library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.numeric_std.all;
--use ieee.std_logic_arith.all;

entity EQUALIZER is
  generic(whatever: natural);
  port( CLK_PE: in STD_LOGIC;
        RESET: in STD_LOGIC;
        Y: in STD_LOGIC_VECTOR(15 downto 0);
        W: out STD_LOGIC_VECTOR(15 downto 0);
        RDY: out STD_LOGIC);
end EQUALIZER;

architecture BEHAVIOUR OF EQUALIZER is
begin

  -- startzustand
  W <= (others => '0') after 10 ns;
  RDY <= '0' after 10 ns;

  Akku: process(CLK_PE)
	  variable RES: INTEGER := 0;
    variable STEPS: INTEGER := 0;
  begin
    if(CLK_PE'event and CLK_PE = '1') then
      if(RESET = '1') then
        W <= (others => '0') after 10 ns;
        RDY <= '0' after 10 ns;
        RES := 0;
        STEPS := 0;
      else
        RES := RES + TO_Integer(unsigned(Y));
        STEPS := STEPS + 1;
        
        if(RDY = '1') then
          RDY <= '0' after 10 ns;
        end if;

        if(STEPS = whatever) then
          RDY <= '1' after 10 ns;
          STEPS := 0;
        end if;
        
        W <= std_logic_vector(to_unsigned(RES, 16)) after 10 ns;
      end if;
    end if;
  end process Akku;

end BEHAVIOUR;