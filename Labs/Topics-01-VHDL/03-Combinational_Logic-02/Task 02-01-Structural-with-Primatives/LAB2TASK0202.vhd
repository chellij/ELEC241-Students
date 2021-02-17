library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity LAB2TASK0202 is

 port( A, B, C: in std_logic; Y: out std_logic);

End entity;

-- structural style
architecture myLogic of LAB2TASK0202 is
	
	-- Component declarations (of existing component we're going to use in our design)
	component orgate_twoin
		port (A, B: in std_logic; Y: out std_logic);
	end component;

	component andgate_twoin
		port (A, B: in std_logic; Y: out std_logic);
	end component;

	component notgate_onein
		port (A: in std_logic; Y: out std_logic);
	end component;
	
	component orgate_fourin
		port (A, B, C, D: in std_logic; Y: out std_logic);
	end component;
		
	-- Signals (nodes in the circuit)
	signal I1, I2, I3, I4, I5, I6, I7, S1, S2, S3, S4 : std_logic;
		
begin
	
	U1: notgate_onein port map (A, I1);			--I1 = A
	U2: notgate_onein port map (B, I2);			--I2 = !B
	U3: notgate_onein port map (C, I3);			--I3 = !C
	U4: andgate_twoin port map (A, B, I4);		--I4 = AB
	U5: andgate_twoin port map (I4, C, S1);	--S1 = ABC
	U6: andgate_twoin port map (I1, B, I5); 	--I5 = !AB
	U7: andgate_twoin port map (I5, I3, S2);	--S2 = !AB!C
	U8: andgate_twoin port map (A, I2, I6);	--I6 = A!B
	U9: andgate_twoin port map (I6, C, S3);	--S3 = A!BC
	U10:andgate_twoin port map (I1, I2, I7); 	--I7 = !A!B
	U11:andgate_twoin port map (I7,C, S4);		--S4 = !A!BC
	U12:orgate_fourin port map (S1, S2, S3, S4, Y); --internal signals connect to output Y.

end architecture myLogic;

--!A(!BC+B!C) + A(!B!C+BC)


