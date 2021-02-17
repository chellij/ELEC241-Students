entity Task0202d is
	port
	(
		X	: in  bit_vector(7 downto 0);	--this is an 8-bit value
		Y	: out bit_vector(2 downto 0)	--4 bit output
	);
end Task0202d;

architecture option1 of Task0202d is
begin
	
	Y <= X(4 downto 2); 
					
end option1;