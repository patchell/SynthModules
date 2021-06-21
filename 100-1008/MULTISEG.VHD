--multi segment controller ic

library ieee;
use ieee.std_logic_1164.all;

package counter_pkg is
	component counter
	port (
		clk:in std_logic;
		reset: in std_logic;
		dout: inout std_logic_vector(2 downto 0);
		enable:in std_logic;
		clr:in std_logic
		);
	end component;
end counter_pkg;

library ieee;
use ieee.std_logic_1164.all;

library cypress;
use cypress.std_arith.all;
use cypress.lpmpkg.all;

entity counter is
	port (
		clk:in std_logic;
		reset: in std_logic;
		dout: inout std_logic_vector(2 downto 0);
		enable:in std_logic;
		clr:in std_logic
		);
end;

architecture counter_arch of counter is
begin
	sr:process(reset,clk)
	begin
		if(reset = '0') then
			dout <= "000";		--reset the counter
		elsif (clk'event and clk = '1') then
			if(clr = '1') then
				dout <= "000"; -- clear counter
			elsif(enable = '1') then
				dout <= dout +1;		--increment counter
			else
				dout <= dout;	--hold
			end if;
		end if;
	end process;
end counter_arch;

