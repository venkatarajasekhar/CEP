library IEEE;
use IEEE.Std_Logic_1164.all;

entity TOP_EQ is
port	(	
		CLK, NE, NOE, NWE, Resetbutton: in std_logic;
		D: inout std_logic_vector (15 downto 0);
		--Test1, Test2, Test3,
		LOCKED_OUT, RDY: out std_logic
		);
end TOP_EQ;

architecture VERHALTEN of TOP_EQ is

-----------------------------components---------------------------------------
component FSMC is 
	port(
	CLK_SYN, CLK_PE, NWE, NE, NOE, RESET_ALL: in std_logic;
	DATA: inout std_logic_vector (15 downto 0);
	RDY: out std_logic
	);
end component;

component clk_wiz_v3_6 is 
	port(
	CLK_IN1		: in     std_logic;  -- Clock out ports
	CLK_OUT1    : out    std_logic;
	CLK_OUT2    : out    std_logic;  -- Status and control signals
	LOCKED      : out    std_logic
	);
end component;
---------------------------------------------------------------------------
signal out1: std_logic;
signal out2: std_logic;
signal locked: std_logic;
signal reset_fsmc: std_logic;

begin 
		
							
CLOCKDIV: clk_wiz_v3_6 port map(	
					CLK_IN1 	=> CLK, 
					CLK_OUT1 	=> out1, 
					CLK_OUT2 	=> out2, 
					LOCKED 		=> locked
					);
									
FSMC_IF: FSMC port map(
					CLK_SYN => out2, 
					CLK_PE 	=> out1,  
					NWE		=> NWE, 
					NE		=> NE, 
					NOE		=> NOE, 
					RESET_ALL 	=> reset_fsmc, 
					DATA 	=> D,
					RDY => RDY
					);    
					
--locked OR Resetbutton
reset_fsmc <= not locked OR Resetbutton after 1 ns;	

LOCKED_OUT <= locked after 1 ns;														
end VERHALTEN;