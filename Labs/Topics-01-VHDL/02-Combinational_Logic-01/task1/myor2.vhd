entity myor2 is

	port
	(
		-- Input ports
		A	: in  bit := '0';
		B	: in  bit := '0';

		-- Output ports
		Y	: out bit
	);
end myor2;



-- Library Clause(s) (optional)
-- Use Clause(s) (optional)

architecture myor2_v1 of myor2 is

	-- Declarations (optional)

begin

	Y <= A OR B;

end myor2_v1;
