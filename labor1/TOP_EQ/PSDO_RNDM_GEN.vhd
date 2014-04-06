
entity PSDO_RNDM_GEN is
  port( CLK_RNDM: in bit;
    NLOAD_RNDM: in bit;
    RESET_RNDM: in bit;
    OUTPUT_RNDM: out bit_vector(15 downto 0));
end PSDO_RNDM_GEN;

architecture BEHAVIOUR of PSDO_RNDM_GEN is
  signal INPUT_SRG_1: bit;
  signal INPUT_SRG_2: bit;
  signal OUTPUT_TMP: bit_vector(15 downto 0);
      
  component SRG is
    port( CLK: in bit;                        -- clock signal
      NLOAD: in bit;                          -- low aktiver load, 1 = shiften, 0 = laden
      RESET: in bit;                          -- synchroner reset
      INPUT: in bit;                          -- 1 bit input
      OUTPUT: out bit_vector(7 downto 0));    -- N Bit Output
  end component;

begin
  
  SRG_1_COMP : SRG
  port map( CLK => CLK_RNDM,
    RESET => RESET_RNDM,
    NLOAD => NLOAD_RNDM,
    INPUT => INPUT_SRG_1,
    OUTPUT => OUTPUT_TMP(7 downto 0)
  );
          
  SRG_2_COMP : SRG
  port map( CLK => CLK_RNDM,
    RESET => RESET_RNDM,
    NLOAD => NLOAD_RNDM,
    INPUT => INPUT_SRG_2,
    OUTPUT => OUTPUT_TMP(15 downto 8)
  );    
                    
  xor_session: process(CLK_RNDM)
    begin
      if(CLK_RNDM = '1' and CLK_RNDM'event) then
      
        INPUT_SRG_1 <= OUTPUT_TMP(7) xor OUTPUT_TMP(3) xor OUTPUT_TMP(2) xor OUTPUT_TMP(1) after 10 ns;
        INPUT_SRG_2 <= OUTPUT_TMP(9) xor OUTPUT_TMP(10) xor OUTPUT_TMP(11) xor OUTPUT_TMP(15) after 10 ns;
      
      end if;
  end process xor_session;
  
  reg_out: process(NLOAD_RNDM, OUTPUT_TMP)
    begin
      if(NLOAD_RNDM = '1') then
        OUTPUT_RNDM <= (others => '1') after 10 ns;
      else
        OUTPUT_RNDM <= OUTPUT_TMP after 10 ns; 
      end if;
  end process reg_out;

end BEHAVIOUR;

