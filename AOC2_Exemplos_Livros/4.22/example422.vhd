library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity example422 is
port(
	SW: in STD_LOGIC_VECTOR(3 downto 0);
	LEDG: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture proc of example422 is
begin
	process(all) begin
		LEDG<= not SW;
	end process;
end;
