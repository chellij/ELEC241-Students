library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Declare entity - 2 inputs, 1 output
--
--    X---|-----|
--        | AND |------Y
--    Z---|     |
--    W---|-----|

Entity andgate_threein is

	port( X, W, Z : in std_logic; Y: out std_logic);

End entity;

architecture myLogic of andgate_threein is

begin

	Y <= X and W and Z;

end myLogic;
