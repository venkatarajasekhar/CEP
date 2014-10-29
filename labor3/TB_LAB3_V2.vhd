library IEEE;
use IEEE.std_logic_1164.all;

entity LAB3TB is
end entity LAB3TB;

architecture BEHAV of LAB3TB is
component SQRT is 
port(
	CLK, start_in: in std_logic;
	d: in std_logic_vector (15 downto 0);
	q: out std_logic_vector (15 downto 0);
	RDY: out std_logic
	);
end component;

signal CLKsignal, start_in_signal, RDYsignal: std_logic;
signal dsignal: std_logic_vector(15 downto 0);
signal qsignal: std_logic_vector(15 downto 0):= "0000000000000000";

begin
	TEST: SQRT port map (
				CLK => CLKsignal,
				start_in => start_in_signal,
				d => dsignal,
				q => qsignal,
				RDY => RDYsignal
				);
	dsignal <= "1000000001000000";
	
	whoop: process
	begin
	start_in_signal <= '1'; 
	wait for 150 ns;
	start_in_signal <= '0';
	wait;
	end process whoop;
	
	clk_process: process
	begin
		CLKsignal <= '0'; wait for 50 ns;
		CLKsignal <= '1'; wait for 50 ns;
	end process clk_process;
	
end BEHAV;
		