library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;
use IEEE.numeric_std.all;

entity WURZEL is
port(
	CLK, start: in std_logic;
	d: in std_logic_vector (15 downto 0);
	q: out std_logic_vector (15 downto 0);
	RDY: out std_logic
	);
end WURZEL;


architecture arch of WURZEL is

----------------------------SIGNALE----------------------------

--STATE
type STATE is (IDLE, S1, S2, S3, S4, S5, PSD1, IF1, S6, S7, PSD2, IF2);
signal S, NEXT_S: STATE;
--Steuersignale
signal PRESET, EN0, EN1, EN2, EN3, EN4, Sel0, Sel2,Sel3, Sel4: std_logic;
signal Sel1: std_logic_vector (1 downto 0);
signal komplement: std_logic;
--Operators
signal cmp: std_logic;
signal sub, add: std_logic_vector(15 downto 0);
signal shift: unsigned (15 downto 0);
--DFF-Outputs
signal q_out, r_out, n_out, x0_t_out, x1_x2_out: std_logic_vector(15 downto 0);

begin
---------------------------------------------------STATE_REG---------------------------------------------------------------
STATE_REG: process (CLK)
--bei jedem Takt, zustand wechseln
	begin
		if CLK = '1' and CLK'event then
			S <= NEXT_S after 1 ns;		
			end if;
end process STATE_REG;


------------------------------------------------STEUERPFAD-----------------------------------------------------------------
STEUERPFAD: process(S, start, cmp)		
		variable tmp_q_out: std_logic_vector(15 downto 0);
	begin	
	  
	  ----------------Default Value--------------
	  
	  PRESET <= '0' after 1 ns;
	  --DFF-Enables
	  EN0 <= '0' after 1 ns;
	  EN1 <= '0' after 1 ns;
	  EN2 <= '0' after 1 ns;
	  EN3 <= '0' after 1 ns;
	  EN4 <= '0' after 1 ns;
	  --MUX-Selects
	  Sel0 <= '0' after 1 ns;
	  Sel1 <= "00" after 1 ns;
	  Sel2 <= '0' after 1 ns;
	  Sel3 <= '0' after 1 ns;
	  Sel4 <= '0' after 1 ns;
	  
	  ------------------Zustandsdiagramm----------------------
	 case S is		
		when IDLE =>	RDY <= '0' after 1 ns;
					
				if start = '1' then
					NEXT_S <= S1 after 1 ns;
					PRESET <= '1' after 1 ns;
					EN1 <= '1' after 1 ns;
				else
					NEXT_S <= IDLE after 1 ns;
				end if;

		when S1 => 	NEXT_S <= S2 after 1 ns;
				Sel0 <= '0' after 1 ns;
				EN2 <= '1' after 1 ns;
										
		
		when S2 => 	NEXT_S <= S3 after 1 ns;
				Sel1 <= "00" after 1 ns;
				Sel3 <= '1' after 1 ns;
				EN3 <= '1' after 1 ns;
					
		when S3 => 	NEXT_S <= S4 after 1 ns;
				Sel1 <= "01" after 1 ns;
				EN4 <= '1' after 1 ns;
					
					
		when S4 => 	NEXT_S <= S5 after 1 ns;
				Sel2 <= '0' after 1 ns;
				Sel3 <= '0' after 1 ns;
				EN3 <= '1' after 1 ns;
					
		when S5 => 	NEXT_S <= PSD1 after 1 ns;
				Sel1 <= "10" after 1 ns;
				EN4 <= '1' after 1 ns;
					
		when PSD1 => 	NEXT_S <= IF1 after 1 ns;
				Sel4 <= '0' after 1 ns;
					
		when IF1 => 	if cmp = '1' then
					NEXT_S <= S6 after 1 ns;
				else 
					NEXT_S <= PSD2 after 1 ns;
				end if;
		
		when S6 => 	NEXT_S <= S7 after 1 ns;
				Sel0 <= '1' after 1 ns;
				EN1 <= '1' after 1 ns;
				Sel1 <= "00" after 1 ns;
				Sel3 <= '1' after 1 ns;
				EN3 <= '1' after 1 ns;
		
		when S7 => 	NEXT_S <= PSD2 after 1 ns;
				Sel2 <= '1' after 1 ns;
				EN0 <= '1' after 1 ns;
					
		when PSD2 => 	NEXT_S <= IF2 after 1 ns;
				Sel4 <= '1' after 1 ns;
		
		--pruefen ob fertig
		when IF2 =>	Sel4 <= '1' after 1 ns;
				if cmp = '1' then
					--weiter berechnen
					NEXT_S <= S1 after 1 ns;
				else 
					--fertig
					NEXT_S <= IDLE after 1 ns;
					
					--wenn ergebnis negativ, 2-er komplement bilden
					if komplement = '1' then
                  				q <= ((not q_out) + 1);
               				else
						q <= q_out after 1 ns;
					end if;

					RDY <= '1' after 1 ns;

				end if;

	 end case;
	end process STEUERPFAD;

	
	
	
	
------------------------------------------------DATENPFAD-----------------------------------------------------------------
R0: process (CLK, PRESET)
begin
	if PRESET = '1' then
		q_out <= "0000000000000000" after 1 ns;
	elsif CLK = '1' and CLK'event then
		if EN0 = '1' then
			q_out <= add after 1 ns;
		end if;
	end if;
end process R0;

R1: process(CLK)
variable rin: std_logic_vector(15 downto 0);
begin
	if CLK = '1' and CLK'event then
	
	if PRESET = '1' then 
		
    komplement <= d(15) after 1 ns;
      if d(15) = '1' then
          rin := ((not d) + 1);
      else  
		rin := d;
		end if;
		
	else 
		rin := sub;
	end if;
	
		if EN1 = '1' then 
			r_out <= rin after 1 ns;
end if;
end if;
end process R1;

R2: process (CLK, PRESET)
begin
	if PRESET = '1' then
		n_out <= "0000000000001000" after 1 ns;
	elsif CLK = '1' and CLK'event then
		if EN2 = '1' then
			n_out <= sub after 1 ns;
		end if;
	end if;
end process R2;

R3: process (CLK, PRESET)
variable r3_in: std_logic_vector (15 downto 0);
begin
	if PRESET = '1' then
		x0_t_out <= "0000000000000000" after 1 ns;
	elsif CLK = '1' and CLK'event then
	
		if Sel3 = '1' then
			r3_in := std_logic_vector(shift);
		else 
			r3_in := add;
		end if;
	
		if EN3 = '1' then
			x0_t_out <= r3_in after 1 ns;
		end if;
	end if;
end process R3;

R4: process (CLK, PRESET)
begin
	if PRESET = '1' then
		x1_x2_out <= "0000000000000000" after 1 ns;
	elsif CLK = '1' and CLK'event then
		if EN4 = '1' then
			x1_x2_out <= std_logic_vector(shift) after 1 ns;
		end if;
	end if;
end process R4;



	
------------------------------------------------OPERATIONS-----------------------------------------------------------------
ADD_P: process(Sel2, x1_x2_out, x0_t_out, q_out)
variable op1, op2: std_logic_vector(15 downto 0);
begin
	if Sel2 = '0' then
		op1 := x0_t_out;
		op2 := x1_x2_out;
	else 
		op1 := q_out;
		op2 := x0_t_out;
	end if;
	
	add <= op1 + op2 after 1 ns;
end process ADD_P;

SHIFT_P: process(Sel1, n_out, q_out, x0_t_out)
variable op1, op2: std_logic_vector(15 downto 0);
begin
	if Sel1 = "00" then
	--1<<N
	op1 := "0000000000000001";
	op2 := n_out;
	elsif Sel1 = "01" then
	--q<<1
	op1 := q_out;
	op2 := "0000000000000001";
	else
	--t<<N
	op1 := x0_t_out;
	op2 := n_out;
	end if;
	
shift <= SHIFT_LEFT(UNSIGNED(op1), TO_INTEGER(UNSIGNED(op2))) after 1 ns;

end process SHIFT_P;

SUB_P: process(Sel0, n_out, r_out, x1_x2_out)
variable op1, op2: std_logic_vector(15 downto 0);
begin
	if Sel0 = '0' then
		op1 := n_out;
		op2 := "0000000000000001";
	else 
		op1 := r_out;
		op2 := x1_x2_out;
	end if;
	
	sub <= op1 - op2 after 1 ns;
	
end process SUB_P;

CMP_P: process(Sel4, x1_x2_out, r_out, n_out)
variable op1, op2: std_logic_vector(15 downto 0);
begin
	if Sel4 = '0' then
		op1 := x1_x2_out;
		op2 := r_out; 
	else 
		op1 := "0000000000000001";
		op2 := n_out;
	end if;
	if (op1 <= op2) then
		cmp <= '1' after 1 ns;
	else
		cmp <= '0' after 1 ns;
	end if;
end process CMP_P;

end arch;
	