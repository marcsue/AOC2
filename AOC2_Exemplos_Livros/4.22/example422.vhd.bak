library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity inv is
port(
	SW: in STD_LOGIC_VECTOR(3 downto 0);
	LEDR: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture proc of inv is
begin
	process(all) begin
		LEDR<= not SW;
	end process;
end;
