library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity FSMC is
port(
	CLK_SYN, CLK_PE, NWE, NE, NOE, RESET_ALL: in std_logic;
	DATA: inout std_logic_vector (15 downto 0);
	RDY: out std_logic
	);
end FSMC;

architecture VERHALTEN of FSMC is

component WURZEL is 
port(
	CLK, start: in std_logic;
	d: in std_logic_vector (15 downto 0);
	q: out std_logic_vector (15 downto 0);
	RDY: out std_logic
	);
end component;


signal INTNWE: std_logic_vector(2 downto 0);
signal INTNE: std_logic_vector( 1 downto 0);
signal INTNOE: std_logic_vector(1 downto 0);
signal INTDATA_1: std_logic_vector(15 downto 0);
signal INTDATA_0: std_logic_vector(15 downto 0);
signal Y: std_logic_vector(15 downto 0);
signal EN, TRISTATE: std_logic;
signal PSEN, PSFF: std_logic;				--PSFF ist Start aus dem Schaltbild
signal W: std_logic_vector(15 downto 0);
--signal komplement: std_logic;


begin

	SQRT: WURZEL port map (
					CLK => CLK_PE,
					start => PSFF,
					d => Y,
					q => W,
					RDY => RDY
					);
	
	-----------------------------2eer-Komplement----------------------------
--	EINGANG_KOM: process(Y)
--	variable tmp_y: std_logic_vector(15 downto 0);
--	begin
--	 komplement <= Y(15) after 1 ns;
--   if Y(15) = '1' then
--		tmp_y := ((not Y) + 1);
--		Y <= tmp_y;
--	end if;
--	end process EINGANG_KOM;
--	
--	AUSGANG_KOM: process(W, komplement)
--	variable tmp_w: std_logic_vector(15 downto 0);
--	begin
--	if komplement = '1' then
--		tmp_w := ((not W) + 1);
--		W <= tmp_w;
--	end if;
--	end process AUSGANG_KOM;	
	
	--------------------------------CLK_SYN---------------------------------
	IM_CLK_SYN: process(CLK_SYN, RESET_ALL)
	begin
	if RESET_ALL = '1' then
	INTNWE		<= (others => '0') after 1 ns;
	INTNE		<= (others => '0') after 1 ns;
	INTNOE		<= (others => '0') after 1 ns;
	INTDATA_1	<= (others => '0') after 1 ns;
	INTDATA_0	<= (others => '0') after 1 ns;
	Y			<= (others => '0') after 1 ns;
	EN			<= '0' after 1 ns;
	
	elsif(CLK_SYN = '1' and CLK_SYN'event) then
			
		--NWE
			for I in 0 to 1 loop
				INTNWE(I) <= INTNWE(I+1) after 1 ns;
			end loop;
				INTNWE(2) <= NWE after 1 ns;
			
		--NE
			INTNE(0) <= INTNE(1) after 1 ns;
			INTNE(1) <= NE after 1 ns;
		
		--INTNOE
			INTNOE(0) <= INTNOE(1) after 1 ns;
			INTNOE(1) <= NOE after 1 ns;
			
		--Interne SIgnale setzen
		EN <= (INTNWE(0) and (NOT (INTNWE(1)))) and (NOT (INTNE(0))) after 1 ns;
		
		--Tristatesteuerungsbit
		TRISTATE <= INTNOE(0) OR INTNE(0) after 1 ns;
		
		--DATA
		if(EN = '1') then
			Y <= INTDATA_0 after 1 ns;	
		end if;
			
		INTDATA_0 <= INTDATA_1 after 1 ns;
		INTDATA_1 <= DATA after 1 ns;
		
		
		end if;
	end process IM_CLK_SYN;
	
	--------------------------------END_CLK_SYN---------------------------
	
	
	--------------------------------CLK_EN--------------------------------
	EN_CLK_PS: process(EN, PSFF)
	begin
		if(PSFF = '1') then
			PSEN <= '0' after 1 ns;
		elsif(EN = '1' and EN'event) then
			PSEN <= '1' after 1 ns;
		end if;
	end process EN_CLK_PS;
	---------------------------------END_CLK_EN--------------------------------
	
	
	----------------------------------CLK_PE-----------------------------------
	IM_CLK_PE: process(CLK_PE, RESET_ALL)
	begin
	if RESET_ALL = '1' then
	 PSFF <= '0' after 1 ns;
		elsif(CLK_PE = '1' and CLK_PE'event) then
			PSFF <= PSEN after 1 ns;
		end if;
	end process IM_CLK_PE;
	----------------------------------END_CLK_PE----------------------------------
	
	TRISTATE_T: process(TRISTATE, W)
	begin
		if(TRISTATE = '0') then
			DATA <= W after 1 ns;
		else
			DATA <= (others => 'Z') after 1 ns;
		end if;
	end process TRISTATE_T;	
	-------------------------------------------------------------------------------
--	AKKU : process(CLK_PE, RESET_ALL)
--	begin
--	if RESET_ALL = '1' then 
--	 W <= (others => '0') after 1 ns;
--	elsif CLK_PE='1' and CLK_PE'event then			
				-- "PSFF" was in den Equalizer PE rein geht
--			if PSFF = '1' then
--				W <= Y + W after 1 ns;
--			end if ;	
--		end if;
--	end process; 	
end VERHALTEN;
			