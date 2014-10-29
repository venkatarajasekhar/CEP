library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_arith.all;

entity TOPEQ_TB is
	generic(HCKLHALBE: time := 2.9411 ns; --2.9411 weil 1/170 das / 2 dann *1000ns = 2.9411
			SAMPLES: positive := 512);
end entity TOPEQ_TB;

architecture BEHAV of TOPEQ_TB is
component TOP_EQ is 
port	(	
		CLK, NE, NOE, NWE, Resetbutton: in std_logic;
		D: inout std_logic_vector (15 downto 0);
		--Test1, Test2, Test3,
		LOCKED_OUT: out std_logic;
		RDY: out std_logic
		);
end component;		

--for all : TOP_EQ use entity work.TOP_EQ(Structure);

signal ne_intopeq, noe_intopeq, nwe_intopeq, clk_intopeq, LOCKED, rdy_intopeq, rest_but: std_logic;
signal data: std_logic_vector(15 downto 0);

begin

INSTANZ: TOP_EQ port map(
						CLK => clk_intopeq,
						NE => ne_intopeq,
						NOE => noe_intopeq,
						NWE => nwe_intopeq,
						D => data,
						Resetbutton => rest_but,
						LOCKED_OUT => LOCKED,
						RDY => rdy_intopeq
						);
 
CLK_IN: process		--25 MHZ
	begin
	clk_intopeq <= '0'; wait for 20 ns;
	clk_intopeq <= '1'; wait for 20 ns;
end process CLK_IN;
	
	
RESET: process
	begin
	rest_but <= '1'; wait for 30 ns;
	rest_but <= '0'; wait;
end process RESET;
 
 
TB_Prozess: process
	variable counter: integer;
	begin
		

   counter := -511;

--Initialisierung
		ne_intopeq <= '1';
		noe_intopeq <= '1';
		nwe_intopeq <= '1';
		data <= (others => '0');
			
--Initialisierung Ende

		wait until (LOCKED = '1' and LOCKED'event); --Warte bis CLK_wiz sich eingependelt hat
			

		while counter <= SAMPLES -1 loop

			

			ne_intopeq <= '1';
			nwe_intopeq <= '1';
			wait for HCKLHALBE * 2;
		
			ne_intopeq <= '0';
			data <= (others => 'Z');
			wait for HCKLHALBE * 2 * 2;
			
			nwe_intopeq <= '0';
			
			--Daten setzten
			
	    		 if (counter + 1) >= SAMPLES then
	        	 	 counter := -511;
	  		  else
				counter := counter + 1;

				data <= conv_std_logic_vector(counter, 16);
			end if;
			

			wait for HCKLHALBE * 2 * 2;
			nwe_intopeq <= '1';
			wait for HCKLHALBE * 2;

			wait for HCKLHALBE * 2 * 2;

			wait until (rdy_intopeq = '1' and rdy_intopeq'event);
		end loop;

	
	end process TB_Prozess;
end BEHAV;