entity Task0201a is

	port
	(
		-- Input ports
		X	: in  bit_vector(7 downto 0);	--this is an 8-bit value
		
		-- Output ports
		Y	: out bit_vector(8 downto 0)	-- 2 bit output
	);
end Task0201a;


architecture circuit1 of Task0201a is

	-- Declarations (optional)

begin
	
	Y(0) <= X(7); 
	Y(1) <= X(6);
	Y(2) <= X(5); 
	Y(3) <= X(4); 
	Y(4) <= X(3); 
	Y(5) <= X(2); 
	Y(6) <= X(1); 
	Y(7) <= X(0);
					
end circuit1;
