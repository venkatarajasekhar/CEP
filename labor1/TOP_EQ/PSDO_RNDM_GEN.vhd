library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity PSDO_RNDM_GEN is
  port( CLK: in STD_LOGIC;
    NLOAD_RNDM: in STD_LOGIC;
    RESET_RNDM: in STD_LOGIC;
    OUTPUT_RNDM: out STD_LOGIC_vector(15 downto 0));
end PSDO_RNDM_GEN;

architecture BEHAVIOUR of PSDO_RNDM_GEN is
  signal INPUT_SRG_1: STD_LOGIC;
  signal INPUT_SRG_2: STD_LOGIC;
  signal OUTPUT_TMP: STD_LOGIC_vector(15 downto 0);
      
  component SRG is
    port( CLK: in STD_LOGIC;                        -- clock signal
      NLOAD: in STD_LOGIC;                          -- low aktiver load, 1 = shiften, 0 = laden
      RESET: in STD_LOGIC;                          -- synchroner reset
      INPUT: in STD_LOGIC;                          -- 1 STD_LOGIC input
      OUTPUT: out STD_LOGIC_vector(7 downto 0));    -- N STD_LOGIC Output
  end component;

begin
  
  SRG_1_COMP : SRG
  port map( CLK => CLK,
    RESET => RESET_RNDM,
    NLOAD => NLOAD_RNDM,
    INPUT => INPUT_SRG_1,
    OUTPUT => OUTPUT_TMP(7 downto 0)
  );
          
  SRG_2_COMP : SRG
  port map( CLK => CLK,
    RESET => RESET_RNDM,
    NLOAD => NLOAD_RNDM,
    INPUT => INPUT_SRG_2,
    OUTPUT => OUTPUT_TMP(15 downto 8)
  );    
                    
  xor_session: process(CLK)
    begin
      if(CLK = '1' and CLK'event) then
      
        INPUT_SRG_1 <= OUTPUT_TMP(7) xor OUTPUT_TMP(3) xor OUTPUT_TMP(2) xor OUTPUT_TMP(1) after 10 ns;
        INPUT_SRG_2 <= OUTPUT_TMP(9) xor OUTPUT_TMP(10) xor OUTPUT_TMP(11) xor OUTPUT_TMP(15) after 10 ns;
      
				OUTPUT_RNDM <= OUTPUT_TMP after 10 ns; 
      end if;
  end process xor_session;
  
  --reg_out: process(NLOAD_RNDM, OUTPUT_TMP)
  --  begin
  --    if(NLOAD_RNDM = '1') then
  --      OUTPUT_RNDM <= (others => '1') after 10 ns;
  --    else
  --      OUTPUT_RNDM <= OUTPUT_TMP after 10 ns; 
  --    end if;
  --end process reg_out;

end BEHAVIOUR;

