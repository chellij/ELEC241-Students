entity task0206a is

	port
	(	-- Input ports
		X	: in  bit_vector(6 downto 0); 	--7 bit ascii input
		-- Output ports
		Y	: out bit_vector(9 downto 0) 	--10 bit output
	);
end task0206a;

architecture circuit1 of task0206a is
	-- Declarations (optional)
begin
	Y <= 	"1" & X(6 downto 0) & "1" & "1";
end circuit1;