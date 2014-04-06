entity SVN_SEG_DISP is
port( SVN_SEG_CLK: in bit;                          -- clock eingang
			SVN_SEG_VALUE: in bit_vector(15 downto 0);    -- 16bit = 4x 4bit = 4 ziffern
      SVN_SEG_ANODE: out bit_vector(3 downto 0);    -- 4bit fuer verschiedene ziffern
      SVN_SEG_CATHODE: out bit_vector(7 downto 0)); -- 4bit fuer segmente
end SVN_SEG_DISP;

architecture BEHAVIOUR of SVN_SEG_DISP is
  signal INT_DIGIT: bit_vector(3 downto 0);
begin

  state: process(SVN_SEG_CLK)
    variable STATE: INTEGER := 0;
  begin
		if(SVN_SEG_CLK'event and SVN_SEG_CLK = '1') then
      case STATE is
        when 0 => SVN_SEG_ANODE <= "1110" after 10 ns;
                    INT_DIGIT <= SVN_SEG_VALUE(3 downto 0) after 10 ns;
                    STATE := 1;
        when 1 => SVN_SEG_ANODE <= "1101" after 10 ns;
                    INT_DIGIT <= SVN_SEG_VALUE(7 downto 4) after 10 ns;
                    STATE := 2;
        when 2 => SVN_SEG_ANODE <= "1011" after 10 ns;
                    INT_DIGIT <= SVN_SEG_VALUE(11 downto 8) after 10 ns;
                    STATE := 3;
        when 3 => SVN_SEG_ANODE <= "0111" after 10 ns;
                    INT_DIGIT <= SVN_SEG_VALUE(15 downto 12) after 10 ns;
                    STATE := 0; 
        when others => STATE := 0;   
        end case;
      end if;
  end process state;
   
  decode: process(INT_DIGIT)
  begin
    case INT_DIGIT is
      when "0000" => SVN_SEG_CATHODE <= "11000000";  -- 0
      when "0001" => SVN_SEG_CATHODE <= "11111001";  -- 1
      when "0010" => SVN_SEG_CATHODE <= "10100100";  -- 2
      when "0011" => SVN_SEG_CATHODE <= "10110000";  -- 3
      when "0100" => SVN_SEG_CATHODE <= "10011001";  -- 4
      when "0101" => SVN_SEG_CATHODE <= "10010010";  -- 5
      when "0110" => SVN_SEG_CATHODE <= "10000010";  -- 6
      when "0111" => SVN_SEG_CATHODE <= "11111000";  -- 7
      when "1000" => SVN_SEG_CATHODE <= "11111111";  -- 8
      when "1001" => SVN_SEG_CATHODE <= "10010000";  -- 9
      when "1010" => SVN_SEG_CATHODE <= "10001000";  -- A
      when "1011" => SVN_SEG_CATHODE <= "11000011";  -- b
      when "1100" => SVN_SEG_CATHODE <= "11000110";  -- C
      when "1101" => SVN_SEG_CATHODE <= "10100001";  -- d
      when "1110" => SVN_SEG_CATHODE <= "10000110";  -- E
      when "1111" => SVN_SEG_CATHODE <= "10001110";  -- F
    end case;
  end process decode;

end BEHAVIOUR;

  
  