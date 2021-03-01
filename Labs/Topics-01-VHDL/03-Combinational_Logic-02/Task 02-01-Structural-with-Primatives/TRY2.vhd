library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

Entity TRY2 is

	port( A, B, C: in std_logic; Y: out std_logic);

End entity;

-- structural style
architecture myLogic of TRY2 is
	
	-- Component declarations (of existing component we're going to use in our design)

	component andgate_threein
		port (X, W, Z: in std_logic; Y: out std_logic);
	end component;

	component notgate_onein
		port (X: in std_logic; Y: out std_logic);
	end component;
	
	component orgate_fourin
		port (X, W, V, Z : in std_logic; Y: out std_logic);
	end component;
		
	-- Signals (nodes in the circuit)
	signal I1, I2, I3, S1, S2, S3, S4 : std_logic;
		

--			!A(!BC+B!C) + A(!B!C+BC)	
	
begin
	U1: notgate_onein port map (A, I1);		--I1 = !A
	U2: notgate_onein port map (B, I2);		--I2 = !B
	U3: notgate_onein port map (C, I3);		--I3 = !C
	
	U4: andgate_threein port map (I1, I2, C, S1);	--S1 = !A!BC
	U5: andgate_threein port map (I1, B, I3, S2);	--S2 = !AB!C
	U6: andgate_threein port map (A, I2, I3, S3);	--S3 = A!B!C
	U7: andgate_threein port map (A, B, C, S4);		--S4 = ABC
	
	U8:orgate_fourin port map (S1,S2,S3,S4,Y);	-- Y
	
end architecture myLogic;
