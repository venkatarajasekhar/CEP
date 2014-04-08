entity FREQ_DIV is
  generic(CYCLE: natural);
  port(	CLK_FREQ: in bit;
	      OUTPUT_FREQ: out bit);
end FREQ_DIV;

architecture BEHAVIOUR of FREQ_DIV is	
begin

  p1 : process(CLK_FREQ) 
	  variable COUNTER: INTEGER := 0;
  begin
    if(CLK_FREQ = '1' and CLK_FREQ'event) then	
      if(COUNTER = CYCLE-1) then 
        OUTPUT_FREQ <= '1' after 10 ns;
				COUNTER := 0;

      else
        OUTPUT_FREQ <= '0' after 10 ns;
        COUNTER := COUNTER + 1;

      end if;
    end if;
  end process p1;
end BEHAVIOUR;	
	