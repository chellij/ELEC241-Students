entity Task0202c is
	port
	(
		X	: in  bit_vector(7 downto 0);	--this is an 8-bit value
		Y	: out bit_vector(3 downto 0)	--4 bit output
	);
end Task0202c;

architecture option1 of Task0202c is
begin
	
	Y <= X(0) & X(1) & X(2) & X(3); 
					
end option1;