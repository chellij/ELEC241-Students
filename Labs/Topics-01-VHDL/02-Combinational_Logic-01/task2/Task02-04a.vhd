entity task0204a is

	port
	(	-- Input ports
		S	: in  bit_vector(2 downto 0);
		-- Output ports
		Y	: out bit_vector(7 downto 0)
	);
end task0204a;

architecture circuit1 of task0204a is
	-- Declarations (optional)
begin
	Y <=    "11111110" when S = "000" else
		"11111101" when S = "001" else
		"11111011" when S = "010" else
		"11110111" when S = "011" else
		"11101111" when S = "100" else
		"11011111" when S = "101" else
		"10111111" when S = "110" else
		"01111111";					
end circuit1;