library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity example423 is
port(
	SW: in STD_LOGIC_VECTOR(2 downto 0);
	LEDG: out STD_LOGIC_VECTOR(1 downto 0));
end;
architecture synth of example423 is
begin
	process(all)
	variable p, g: STD_LOGIC;
	begin
		p := SW(0) xor SW(1);
		g := SW(0) and SW(1);
		LEDG(0) <= p xor SW(2);
		LEDG(1) <= g or (p and SW(2));
	end process;
end;
