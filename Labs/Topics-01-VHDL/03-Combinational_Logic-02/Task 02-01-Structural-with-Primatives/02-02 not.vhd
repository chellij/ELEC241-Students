library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity - 1 inputs, 1 output
--
--    X--|-NOT-|--Y

Entity notgate_onein is

	port(X: in std_logic; Y: out std_logic);

End entity;

architecture myLogic of notgate_onein is

begin

	Y <= not X;

end myLogic;