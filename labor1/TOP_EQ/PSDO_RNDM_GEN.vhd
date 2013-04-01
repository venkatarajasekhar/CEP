library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity PSDO_RNDM_GEN is
  generic(N: natural := 4);
  port( CLK_RNDM: in bit;
        RESET_RNDM: in bit;
        OUTPUT_RNDM: out bit_vector(N-1 downto 0));
end PSDO_RNDM_GEN;

architecture BEHAVIOUR of PSDO_RNDM_GEN is
signal CLK_SRG: bit;
signal RESET_SRG: bit;  
signal NLOAD_SRG: bit;
signal INPUT_SRG: bit;
signal OUTPUT_TMP: bit_vector(7 downto 0);

  component SRG is
    port(CLK: in bit;                           -- clock signal
        NLOAD: in bit;                          -- low aktiver load, 1 = shiften, 0 = laden
        RESET: in bit;                          -- synchroner reset
        INPUT: in bit;                          -- 1 bit input
        OUTPUT: out bit_vector(7 downto 0));  -- N Bit Output
  end component;

begin
  
  PSDO_RNDM_GEN : SRG
  port map( CLK => CLK_SRG,
            RESET => RESET_SRG,
            NLOAD => NLOAD_SRG,
            INPUT => INPUT_SRG,
            
            OUTPUT => OUTPUT_TMP
            
            --for I in N-1 downto 0 loop
            --  OUTPUT(I) => OUTPUT_RNDM(I);
            --end loop;
          );
          
          
  NLOAD_SRG <= '1';        
          
  random: process(CLK_RNDM) is
  begin
    if(CLK_RNDM = '1' and CLK_RNDM'event) then
      if(RESET_RNDM = '1') then 
        RESET_SRG <= '1';
        CLK_SRG <= '1' after 10 ns;
        OUTPUT_RNDM <= (others => '1') after 10 ns;
      else
        -- clock an srg anlegen
        -- nload auf laden stellen
        -- unterste 4 bit speichern
        -- unterste 2 bit mit xor
        -- srg nload auf shiften stellen
        -- ergebnis von xor bei srg eingang anlegen
        -- 4 bit ausgeben
        CLK_SRG <= '1' after 10 ns;
        --NLOAD_SRG <= '0' after 10 ns;
        --INPUT_SRG <= OUTPUT_TMP(0) xor OUTPUT_TMP(1) after 10 ns;
        --OUTPUT_RNDM <= OUTPUT_TMP(3 downto 0) after 10 ns;
        --NLOAD_SRG <= '1' after 10 ns;
      end if;
    else
       CLK_SRG <= '0' after 10 ns;
       RESET_SRG <= '0' after 10 ns;
    end if;
    
  end process random;
end BEHAVIOUR;

