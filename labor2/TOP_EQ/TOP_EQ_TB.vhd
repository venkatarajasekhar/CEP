library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;
--use IEEE.STD_LOGIC_ARITH.ALL;
use ieee.numeric_std.all;

entity TOP_EQ_TB is 
generic(PERIODE170MHZHALBE: time:= 2.941176471 ns; -- parameter 1/2fclk (170MHZ)   -->WAIT FOR
        PERIODE25MHZHALBE: time:= 20 ns;           -- parameter 1/2fclk (25MHZ)    -->CLK_PROCESS
        N: natural := 128);
end TOP_EQ_TB;

architecture BEHAVIOUR of TOP_EQ_TB is
  signal TB_NEX: STD_LOGIC;
  signal TB_NOE: STD_LOGIC;
  signal TB_NWE: STD_LOGIC;
  signal TB_CLK: STD_LOGIC;
  signal TB_RESET: STD_LOGIC;
  signal TB_DATA: STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
  signal TB_RDY: STD_LOGIC;
  signal TB_LOCKED: STD_LOGIC;

  component TOP_EQ is
    port( NEX: in STD_LOGIC;
          NOE: in STD_LOGIC;
          NWE: in STD_LOGIC;
          DATA: inout STD_LOGIC_VECTOR(15 downto 0);
          CLK: in STD_LOGIC;
          RESET: in STD_LOGIC;
          --ANODE: out STD_LOGIC_vector(3 downto 0);
          --CATHODE: out STD_LOGIC_vector(7 downto 0);
          RDY: out STD_LOGIC;                       --equalizer ausgang
          LOCKED: out STD_LOGIC);
  end component;

  --for all : TOP_EQ_CLKWIZ use entity work.TOP_EQ_CLKWIZ(Structure);

begin
  TOP_EQ_I : TOP_EQ
  port map(NEX => TB_NEX,
           NOE => TB_NOE,
           NWE => TB_NWE,
	         CLK => TB_CLK,
	         RESET => TB_RESET,
	         DATA => TB_DATA,
	         RDY => TB_RDY,
	         LOCKED => TB_LOCKED);        
	    
  CLOCK: process
  begin    
    for I in N-1 downto 0 loop        
      TB_CLK <= '0' after 1 ns;
      wait for PERIODE25MHZHALBE; 
     
      TB_CLK <= '1' after 1 ns;
      wait for PERIODE25MHZHALBE; 
    
    end loop; 
  end process;

  RESET: process
  begin    
    -- zwei 170er clock perioden pegel deaktivieren
    TB_RESET <= '0' after 1 ns;                      -- Reset low-ative
    wait for (PERIODE170MHZHALBE * 2 * 2);    
    TB_RESET <= '1' after 1 ns;
    wait;                                            -- keine veraenderung nach unbedingtem wait
  end process RESET;

  --eine while-schleife die die vorgaenge periodisch wiederholt
  CODEC: process
    variable NUM : integer := 0;
    variable counter : integer := 0;
  begin
  
    -- initialisieren, damit man nicht mit schlechten gedaechtnis die inkrementierung startet
    NUM := 1;
    TB_NWE <= '1' after 1 ns; 
    TB_NEX <= '1' after 1 ns;
    TB_NOE <= '1' after 1 ns;
    -- data spur auf Z setzen 
    TB_DATA <= (others => 'Z') after 1 ns;            -- sende signal 
  
    -- jetzt duerfen wir erst alle DFFs mit der clock betreiben 
    wait until TB_LOCKED'event and TB_LOCKED = '1';   -- sensitivity list

    while (NUM < N) loop

      -- deaktivierter zustand
      counter := counter + 1;                         -- inkrementer unter stimuli fuer den akkumulator
      TB_NWE <= '1' after 1 ns;                                    
      TB_NEX <= '1' after 1 ns; 

      TB_DATA <= ( others => 'Z') after 1 ns;         -- mikro-Controler keine sender
      wait for (PERIODE170MHZHALBE * 2 * 2);          -- 2 CLK pause zwischen transfers
   
      TB_NEX <= '0' after 1 ns;
      wait for (PERIODE170MHZHALBE * 2 * 2);          -- ADDSET +1  (2* 170)

      TB_NWE <= '0' after 1 ns;                       -- daten raus
      TB_DATA <= std_logic_vector(to_unsigned(counter, 16)) after 1 ns; -- parallel zu write-enable, werden die daten gesetzt, ansonsten 'Z'
      wait for (PERIODE170MHZHALBE * 2 * 2);          -- (DATAST + 1) -1 --> weil das write-enable eine clk vorher auf high geschaltet wird, damit die daten richtig alegen (doku)

      TB_NWE <= '1' after 1 ns; 
      wait for (PERIODE170MHZHALBE * 2 *1); 

      NUM := NUM +1;

    end loop;

    -- ausgabe der addierten werte
    TB_DATA <= ( others => 'Z') after 1 ns;
    wait for (PERIODE170MHZHALBE * 2 * 2);

    TB_NOE <= '0';
    wait for (PERIODE170MHZHALBE * 2 * 6);

    -- sicherheitshalber deaktivieren
    TB_NWE <= '1' after 1 ns;
    TB_NEX <= '1' after 1 ns;
  --  TB_NOE <= '1' after 1 ns;
    TB_DATA <= (others =>'Z') after 1 ns;
    wait;                                              -- unbedingter halt nach N whitw-vorgänge

  end process;

end BEHAVIOUR;
