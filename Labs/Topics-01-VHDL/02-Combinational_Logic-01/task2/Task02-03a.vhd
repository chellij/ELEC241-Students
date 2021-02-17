entity task0203a is

	port
	(
		-- Input ports
		X	: in  bit_vector(7 downto 0);
		A	: in  bit;

		-- Output ports
		Y	: out bit_vector(7 downto 0)
	);
end task0203a;



-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture circuit1 of task0203a is

	-- Declarations (optional)

begin

	Y <=     X when A = '0' else
		 not X when A = '1';
					
end circuit1;