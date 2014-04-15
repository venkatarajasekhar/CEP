library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SVN_SEG_DISP is
port( CLK: in STD_LOGIC;                                  -- clock eingang
      SVN_SEG_CE: in STD_LOGIC;                           --clock-enable
		SVN_SEG_VALUE: in STD_LOGIC_vector(15 downto 0);    -- 16STD_LOGIC = 4x 4STD_LOGIC = 4 ziffern
      SVN_SEG_ANODE: out STD_LOGIC_vector(3 downto 0);    -- 4STD_LOGIC fuer verschiedene ziffern
      SVN_SEG_CATHODE: out STD_LOGIC_vector(7 downto 0)); -- 4STD_LOGIC fuer segmente
end SVN_SEG_DISP;

architecture BEHAVIOUR of SVN_SEG_DISP is
  signal INT_DIGIT: STD_LOGIC_vector(3 downto 0);
begin

  state: process(CLK)
    variable STATE: INTEGER := 0;
  begin
		if(CLK'event and CLK = '1') then
		   if(SVN_SEG_CE = '1') then
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
      when "1000" => SVN_SEG_CATHODE <= "10000000";  -- 8
      when "1001" => SVN_SEG_CATHODE <= "10010000";  -- 9
      when "1010" => SVN_SEG_CATHODE <= "10001000";  -- A
      when "1011" => SVN_SEG_CATHODE <= "10000011";  -- b
      when "1100" => SVN_SEG_CATHODE <= "11000110";  -- C
      when "1101" => SVN_SEG_CATHODE <= "10100001";  -- d
      when "1110" => SVN_SEG_CATHODE <= "10000110";  -- E
      when "1111" => SVN_SEG_CATHODE <= "10001110";  -- F
      when others => SVN_SEG_CATHODE <= (others => '1');
    end case;
  end process decode;

end BEHAVIOUR;

  
  