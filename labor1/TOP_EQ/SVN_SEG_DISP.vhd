entity SVN_SEG_DISP is
port( VALUE_DEC: in bit_vector(3 downto 0);   -- 4bit fuer 16 werte
      DIGIT_DEC: in bit_vector(1 downto 0);   -- 2bit ziffer decoder
      SEGMENTS: out bit_vector(7 downto 0);   -- 8bit fuer alle segmente
      ANODE: out bit_vector(3 downto 0));     -- 4bit fuer verschiedene ziffern      
end SVN_SEG_DISP;

architecture BEHAVIOUR of SVN_SEG_DISP is
begin
  seg: process(VALUE_DEC)
  begin
    case VALUE_DEC is
      when "0000" => SEGMENTS <= "11000000";  -- 0
      when "0001" => SEGMENTS <= "11111001";  -- 1
      when "0010" => SEGMENTS <= "10100100";  -- 2
      when "0011" => SEGMENTS <= "10110000";  -- 3
      when "0100" => SEGMENTS <= "10011001";  -- 4
      when "0101" => SEGMENTS <= "10010010";  -- 5
      when "0110" => SEGMENTS <= "10000010";  -- 6
      when "0111" => SEGMENTS <= "11111000";  -- 7
      when "1000" => SEGMENTS <= "11111111";  -- 8
      when "1001" => SEGMENTS <= "10010000";  -- 9
      when "1010" => SEGMENTS <= "10001000";  -- A
      when "1011" => SEGMENTS <= "11000011";  -- b
      when "1100" => SEGMENTS <= "11000110";  -- C
      when "1101" => SEGMENTS <= "10100001";  -- d
      when "1110" => SEGMENTS <= "10000110";  -- E
      when "1111" => SEGMENTS <= "10001110";  -- F
    end case;
  end process seg;
  
  dig: process(DIGIT_DEC)
  begin
    case DIGIT_DEC is
      when "00" => ANODE <= "0001";  -- 1
      when "01" => ANODE <= "0010";  -- 2
      when "10" => ANODE <= "0100";  -- 3
      when "11" => ANODE <= "1000";  -- 4
    end case;
  end process dig;
end BEHAVIOUR;