library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example418 is
	port(
	SW:					in STD_LOGIC_VECTOR(5 downto 0);
	LEDG: 				out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture asynchronous of example418 is
begin
	process(SW(4), SW(5)) begin
		if (SW(5)='1') then
			LEDG <= "0000";
		elsif rising_edge(SW(4)) then
			LEDG <= SW(3 downto 0);
		end if;
	end process;
end;
