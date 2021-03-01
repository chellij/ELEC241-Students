library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity - 2 inputs, 1 output
--
--    A1---|------|
--         |  OR  |------Y
--    A2---|------|

Entity orgate_twoin is

	port( A, B : in std_logic; Y: out std_logic);

End entity;

architecture myLogic of orgate_twoin is

begin

	Y <= A or B;

end myLogic;