entity task0205a is

	port
	(	-- Input ports
		S	: in  bit_vector(2 downto 0);
		-- Output ports
		Y	: out bit_vector(7 downto 0)
	);
end task0205a;

architecture circuit1 of task0205a is
	-- Declarations (optional)
begin
	with (S) select
	
		Y <= 	"11111110" when "000",
			"11111101" when "001", 
		 	"11111011" when "010", 
		 	"11110111" when "011", 
		 	"11101111" when "100", 
		 	"11011111" when "101", 
		 	"10111111" when "110", 
		 	"01111111" when others;


end circuit1;