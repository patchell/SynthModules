---------------------------------------------------------------------------------
-- 3 bit comparator
---------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package compare_pkg is
	component compare
	port (
		a:in std_logic_vector(2 downto 0);
		b:in std_logic_vector(2 downto 0);
		c:buffer std_logic
		);
	end component;
end compare_pkg;

library ieee;
use ieee.std_logic_1164.all;

library cypress;
use cypress.std_arith.all;
use cypress.lpmpkg.all;

entity compare is
	port (
		a:in std_logic_vector(2 downto 0);
		b:in std_logic_vector(2 downto 0);
		c:buffer std_logic
		);
end;

architecture compare_arch of compare is
begin
	c <= '1' when (a = b) else '0';
end compare_arch;

