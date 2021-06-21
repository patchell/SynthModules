-------------------------------------------------------------------------------------
-- Top level for Multisegment Envelope Generator Controller
-------------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

library cypress;
use cypress.std_arith.all;

use work.compare_pkg.all;
use work.statemachine_pkg.all;
use work.counter_pkg.all;
use work.StateType_pkg.all;

entity multisegtop is
	port (
		CLOCK:in std_logic;
		RESET: in std_logic;
		COUNT: inout std_logic_vector(2 downto 0);
		GATE:in std_logic;
		SETTLED:in std_logic;
		MAX:in std_logic_vector(2 downto 0);
		HOLD:in std_logic_vector(2 downto 0);
--		MAXI:in std_logic;
--		HOLDI:in std_logic;
		MAXO:buffer std_logic;
		HOLDO:buffer std_logic;
		STATE:buffer std_logic_vector(1 downto 0)
		);
	attribute pin_numbers of multisegtop:entity is
		"CLOCK:1 "&
		"RESET:2 "&
		"GATE:3 "&
		"SETTLED:4 "&
		"MAX(0):5 "&
		"MAX(1):6 "&
		"MAX(2):7 "&
		"HOLD(0):8 "&
		"HOLD(1):9 "&
		"HOLD(2):10 "&
--		"MAXI:11 "&
--		"HOLDI:13 "&
		"COUNT(0):22 "&
		"COUNT(1):21 "&
		"COUNT(2):20 "&
		"STATE(0):15 "&
		"STATE(1):16 "&
		"MAXO:14 "&
		"HOLDO:23 ";
end multisegtop;

architecture archmultisegtop of multisegtop is
signal zerocount:std_logic;
signal enablecount:std_logic;
signal states:StateType;
begin
	u1:compare port map(a=>HOLD,b=>COUNT,c=>HOLDO);
	u2:compare port map(a=>MAX,b=>COUNT,c=>MAXO);
	u3:counter port map(clk=>CLOCK,reset=>RESET,dout=>COUNT,enable=>enablecount,clr=>zerocount);
	u4:statemachine port map(clk=>CLOCK,reset=>RESET,gate=>GATE,settled=>SETTLED,envend=>MAXO,hold=>HOLDO,inc=>enablecount,clear=>zerocount,state=>states);
	STATE <= "00" when (states = idle) else
	         "01" when (states = attack) else
			 "10" when (states = sustain) else
			 "11";

end archmultisegtop;

