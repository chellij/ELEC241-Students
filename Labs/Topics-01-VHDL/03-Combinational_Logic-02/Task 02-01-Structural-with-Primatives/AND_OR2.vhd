

entity ANDOR2 is

 port
 ( 
	A1 : in std_logic;
	A2 : in std_logic; 
	Y	: out std_logic
 );

end ANDOR2;

architecture myLogic of ANDOR2 is

begin

	Y <= A XOR B;

end myLogic;



