entity task0301c is
	port
	(
		X	: in  bit_vector(7 downto 0);		
		Y	: out bit_vector(7 downto 0);
		Z	: out bit_vector(7 downto 0)	
	);
end task0301c;

architecture encode of task0301c is

-- Declarations (optional)
signal Y1 : bit_vector(7 downto 0);			-- wires or nodes /not variables
constant  Y2 : bit_vector(7 downto 0) := "10110010";	-- private key
signal Y3 : bit_vector(7 downto 0);

begin
	-- scramble all the bits with xor, this is reversible
	Y1 <= X xor Y2;			
	-- scramble the positions of the bits					
	Y3 <= Y1(4 downto 2) & Y1(1 downto 0) & Y1(7 downto 5);
	Y  <= Y3;				
end encode;

architecture decode of task0301c is

signal Y3 : bit_vector(7 downto 0);
signal Z1 : bit_vector(7 downto 0);			-- wires or nodes /not variables
constant  Z2 : bit_vector(7 downto 0) := "10110010";	-- private key
signal Z3 : bit_vector(7 downto 0);

begin
	-- descramble the positions of the bits
	Z1 <= Y3(2 downto 0) & Y3(7 downto 5) & Y3(4 downto 3);
	-- reverse the XOR scramble
	Z3 <= Z1 xor Z2;
	Z  <= Z3;
end decode;