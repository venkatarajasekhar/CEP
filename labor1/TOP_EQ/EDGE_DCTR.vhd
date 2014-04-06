entity EDGE_DCTR is
  port(	CLK_EDGE_DCTR: in bit;
        RESET_EDGE_DCTR: in bit;
        INPUT_EDGE_DCTR: in bit;
        OUTPUT_EDGE_DCTR: out bit);
end EDGE_DCTR;

architecture BEHAVIOUR of EDGE_DCTR is
  signal out_first: bit;
  signal out_second: bit;

begin

  edge: process(CLK_EDGE_DCTR)
  begin 
    if (CLK_EDGE_DCTR = '1' and CLK_EDGE_DCTR'event ) then
      if(RESET_EDGE_DCTR = '1') then
        out_first <= '0' after 10 ns;
        out_second <= '0' after 10 ns;
      else
       out_first <= INPUT_EDGE_DCTR after 10 ns;
       out_second <= out_first after 10 ns;
      end if;
    end if;

	  OUTPUT_EDGE_DCTR <= out_first and not out_second after 10 ns;
  end process edge;
end BEHAVIOUR;