library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity - 2 inputs, 1 output
--
--    X---|-----|
--        | AND |------Y
--    W---|-----|

Entity andgate_twoin is

	port( X, W : in std_logic; Y: out std_logic);

End entity;

architecture myLogic of andgate_twoin is

begin

	Y <= X and W;

end myLogic;
