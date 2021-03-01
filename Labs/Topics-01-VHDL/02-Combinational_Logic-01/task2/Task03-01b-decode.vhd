entity task0301b is
	port
	(
		S	: in  bit_vector(7 downto 0);		
		Z	: out bit_vector(7 downto 0)	
	);
end task0301b;

architecture decode of task0301b is

signal Z1 : bit_vector(7 downto 0);			-- wires or nodes /not variables
constant  Z2 : bit_vector(7 downto 0) := "10110010";	-- private key
signal Z3 : bit_vector(7 downto 0);

begin
	-- descramble the positions of the bits
	Z1 <= S(2 downto 0) & S(7 downto 5) & S(4 downto 3);
	-- reverse the XOR scramble
	Z3 <= Z1 xor Z2;
	Z  <= Z3;
end decode;
--purpose of code is to decode the scrambled 8 bit signal
--reorder the bits
--xor the data