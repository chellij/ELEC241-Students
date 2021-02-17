entity task1p2a is

	port
	(
		-- Input ports
		A	: in  bit := '0';
		B	: in  bit := '0';

		-- Output ports
		Y	: out bit
	);
end task1p2a;



-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture task1p2a_v1 of task1p2a is

	-- Declarations (optional)

begin

	Y <= (A) or (not A and not B);

end task1p2a_v1;
