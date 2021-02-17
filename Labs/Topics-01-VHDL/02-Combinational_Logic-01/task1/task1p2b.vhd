entity task1p2b is

	port
	(
		-- Input ports
		A	: in  bit;
		B	: in  bit;
		C 	: in  bit;

		-- Output ports
		Y	: out bit
	);
end task1p2b;



-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture task1p2b_v1 of task1p2b is

	-- Declarations (optional)

begin

	Y <= (A and B and C) or (not A and B and not C) or (not A and not B and C) or (A and not B and not C);

end task1p2b_v1;
