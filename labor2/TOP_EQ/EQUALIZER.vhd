library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity EQUALIZER is
  port( CLK_PE: in STD_LOGIC;
        Y: in STD_ULOGIC_VECTOR(15 downto 0);
        W: out STD_ULOGIC_VECTOR(15 downto 0);
        RDY: out STD_LOGIC);
end EQUALIZER;