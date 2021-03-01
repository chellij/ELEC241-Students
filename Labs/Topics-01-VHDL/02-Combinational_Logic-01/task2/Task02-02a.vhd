entity Task0202a is
	port
	(
		X	: in  bit_vector(7 downto 0);	--this is an 8-bit value
		Y	: out bit_vector(8 downto 0)	-- 2 bit output
	);
end Task0202a;

architecture option1 of Task0202a is
begin
	
	Y <= X & '1'; 
					
end option1;