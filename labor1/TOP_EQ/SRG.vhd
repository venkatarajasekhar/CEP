entity SRG is
  generic(N: natural := 8);
  port( CLK: in bit;                            -- clock signal
        NLOAD: in bit;                          -- low aktiver load, 1 = shiften, 0 = laden
        RESET: in bit;                          -- synchroner reset
        OUTPUT: out bit_vector(N-1 downto 0));  -- N Bit Output
end SRG;

architecture BEHAVIOUR of SRG is
signal INTREG: bit_vector(N-1 downto 0);
signal INPUT: bit;                         

begin

  p1: process(CLK)
  begin
    if(CLK = '1' and CLK'event) then
      if(RESET = '1') then
        INTREG <= (others => '1') after 10 ns;
      elsif(NLOAD = '1') then
        for I in N-2 downto 0  loop
            INTREG(I) <= INTREG(I+1) after 10 ns;
        end loop;
        INPUT <= INTREG(0) xor INTREG(1) after 10 ns;
        INTREG(N-1) <= INPUT after 10 ns;
      end if;
    end if;
  end process p1;

  p2: process(NLOAD, INTREG)
  begin
    if NLOAD = '1' then
      OUTPUT <= (others => '1') after 10 ns;
    else
      OUTPUT <= INTREG after 10 ns;
    end if;
  end process p2;

end BEHAVIOUR;

