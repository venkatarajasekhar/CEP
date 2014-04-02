entity PSDO_RNDM_GEN is
  port( CLK_RNDM: in bit;
        CE_RNDM: in bit;
        RESET_RNDM: in bit;
        OUTPUT_RNDM: out bit_vector(15 downto 0));
end PSDO_RNDM_GEN;

architecture BEHAVIOUR of PSDO_RNDM_GEN is
signal CLK_SRG_1: bit;
signal RESET_SRG_1: bit;  
signal NLOAD_SRG_1: bit;
signal INPUT_SRG_1: bit;
signal OUTPUT_SRG_1: bit_vector(7 downto 0);
signal CLK_SRG_2: bit;
signal RESET_SRG_2: bit;  
signal NLOAD_SRG_2: bit;
signal INPUT_SRG_2: bit;
signal OUTPUT_SRG_2: bit_vector(7 downto 0);
signal OUTPUT_TEMP: bit_vector(15 downto 0);
      
  component SRG_1 is
    port( CLK: in bit;                            -- clock signal
          NLOAD: in bit;                          -- low aktiver load, 1 = shiften, 0 = laden
          RESET: in bit;                          -- synchroner reset
          INPUT: in bit;                          -- 1 bit input
          OUTPUT: out bit_vector(7 downto 0));    -- N Bit Output
  end component;
  
  component SRG_2 is
    port( CLK: in bit;                            -- clock signal
          NLOAD: in bit;                          -- low aktiver load, 1 = shiften, 0 = laden
          RESET: in bit;                          -- synchroner reset
          INPUT: in bit;                          -- 1 bit input
          OUTPUT: out bit_vector(7 downto 0));    -- N Bit Output
  end component;

begin
  
  SRG_1_COMP : SRG_1
  port map( CLK => CLK_SRG_1,
            RESET => RESET_SRG_1,
            NLOAD => NLOAD_SRG_1,
            INPUT => INPUT_SRG_1,
            OUTPUT => OUTPUT_SRG_1
          );
          
  SRG_2_COMP : SRG_2
  port map( CLK => CLK_SRG_2,
            RESET => RESET_SRG_2,
            NLOAD => NLOAD_SRG_2,
            INPUT => INPUT_SRG_2,
            OUTPUT => OUTPUT_SRG_2
          );               
          
random: process(CLK_RNDM) is
  begin
    if(CE_RNDM = '1') then  
       if(CLK_RNDM = '1' and CLK_RNDM'event) then
         if(RESET_RNDM = '1') then 
           RESET_SRG_1 <= '1';
           RESET_SRG_2 <= '1';
           CLK_SRG_1 <= '1' after 10 ns;
           CLK_SRG_2 <= '1' after 10 ns;
           OUTPUT_RNDM <= (others => '1') after 10 ns;
         else
           
           NLOAD_SRG_1 <= '0' after 10 ns;
           NLOAD_SRG_2 <= '0' after 10 ns;
           
           OUTPUT_TEMP(7 downto 0) <= OUTPUT_SRG_1 after 10 ns;
           OUTPUT_TEMP(15 downto 8) <= OUTPUT_SRG_2 after 10 ns;
           
           NLOAD_SRG_1 <= '1' after 10 ns;
           NLOAD_SRG_2 <= '1' after 10 ns;
           
           INPUT_SRG_1 <= OUTPUT_TEMP(7) xor OUTPUT_TEMP(3) xor OUTPUT_TEMP(2) xor OUTPUT_TEMP(1) after 10 ns;
           INPUT_SRG_2 <= OUTPUT_TEMP(15) xor OUTPUT_TEMP(11) xor OUTPUT_TEMP(10) xor OUTPUT_TEMP(9) after 10 ns;
           
           CLK_SRG_1 <= '1' after 10 ns;
           CLK_SRG_2 <= '1' after 10 ns;
           
           OUTPUT_RNDM <= OUTPUT_TEMP after 10 ns;
         end if;
       else
          CLK_SRG_1 <= '0' after 10 ns;
          CLK_SRG_2 <= '0' after 10 ns;
          
          RESET_SRG_1 <= '0' after 10 ns;
          RESET_SRG_2 <= '0' after 10 ns;
       end if;
     end if;
  end process random;
end BEHAVIOUR;

