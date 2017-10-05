library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity fulladder is
port(
	SW: in STD_LOGIC_VECTOR(2 downto 0);
	LEDR: out STD_LOGIC_VECTOR(1 downto 0));
end;
architecture synth of fulladder is
begin
	process(all)
	variable p, g: STD_LOGIC;
	begin
		p := SW(0) xor SW(1);
		g := SW(0) and SW(1);
		LEDR(0) <= p xor SW(2);
		LEDR(1) <= g or (p and SW(2));
	end process;
end;
