library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity example420 is
port(
	SW: 		in STD_LOGIC_VECTOR(1 downto 0);
	LEDG: 	out STD_LOGIC_VECTOR(1 downto 0));
end;
architecture good of example420 is
signal n1: STD_LOGIC;
begin
	process(SW(1)) begin
		if rising_edge(SW(1)) then
			n1 <= SW(0);
			LEDG(0) <= n1;
		end if;
	end process;
end;
