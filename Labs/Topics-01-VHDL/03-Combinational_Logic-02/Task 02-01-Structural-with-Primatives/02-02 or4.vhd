library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity - 4 inputs, 1 output
--
--    X---|------|
--    W---|		  |
--		V---|  OR  |------Y
--    Z---|------|

Entity orgate_fourin is

	port(X,W,V,Z : in std_logic; Y: out std_logic);

End entity;

architecture myLogic of orgate_fourin is

begin

	Y <= X or W or V or Z;

end myLogic;