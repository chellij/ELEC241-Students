entity Task0202b is
	port
	(
		X	: in  bit_vector(7 downto 0);	--this is an 8-bit value
		Y	: out bit_vector(9 downto 0)	--10 bit output
	);
end Task0202b;

architecture option1 of Task0202b is
begin
	
	Y <= '1' & X(7 downto 0) & '0'; 
					
end option1;