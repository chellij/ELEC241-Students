-- Quartus Prime VHDL Template
-- Four-State Moore State Machine

-- A Moore machine's outputs are dependent only on the current state.
-- The output is written only when the state changes.  (State
-- transitions are synchronous.)

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity seven_seg_decode is

	port(
		input	 : in	 std_logic_vector(3 downto 0); -- Binary input (0..15)
		reset	 : in	 std_logic;							 -- Asynchronous reset (sets output to blank)
		en     : in  std_logic;							 -- Input enable. Output is latched when 0
		output : out std_logic_vector(6 downto 0)  -- Decoded output for each of the 7 LEDs
	);

end entity;

architecture v1 of seven_seg_decode is
-- MODIFY THE CODE BELOW THIS LINE --

	signal A, B, C, D : std_logic;

	
begin

process (reset, en)
	begin
		A <= input(3);
		B <= input(2);
		C <= input(1);
		D <= input(0);
		if reset= '0' then
			 if en = '1' then
				output(0) <=	(A and not B and not C)
								or (A and not D)
								or (not A and B and D) 
								or (not A and C) 
								or (B and C)
								or (not B and not D);
								
				output(1) <=	(not A and C and D)
								or (not A and not D and not C)
								or (A and B and not C and D) 
								or (not B and not C)
								or (not B and not D);
								
				output(2) <=	(not A and not C)
								or (not A and D)
								or (not A and B and C and not D)
								or (A and not B)
								or (A and B and not C and D);
								
				output(3) <=	(A and not B and D)
								or (A and not C) 
								or (not A and not B and C)
								or (not A and not B and not D) 
								or (B and C and not D)
								or (B and not C and D);
								
				output(4) <=   (A and B)
								or (A and C)
								or (not D and not B)
								or (C and not D);
								
				output(5) <=	(A and B and C)
								or (A and C and not D)
								or (A and not B and D)
								or (A and not B and not C)
								or (not A and B and not C) 
								or (not A and not C and not D)
								or (not D and B);

				output(6) <=	(not A and B and not C)
								or (not A and C and not B) 
								or (not A and C and not D)
								or (A and B and C)
								or (A and not B and not D) 
								or (A and not B and not C)
								or (A and C and D)
								or (B and not C and D);				
				end if;
								
		elsif	reset = '1' then
		
			output(6 downto 0) <= "0000000";
		
		end if;
		
	end process;

end v1;

