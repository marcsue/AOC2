library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example436 is
	generic(width: integer := 8);
port(
	SW: in STD_LOGIC_VECTOR(width-1 downto 0);
	LEDG: out STD_LOGIC);
end;

architecture synth of example436  is
	signal x: STD_LOGIC_VECTOR(width-1 downto 0);
begin
	x(0) <= SW(0);
	
	gen: for i in 1 to width-1 generate
		x(i) <= SW(i) and x(i-1);
	end generate;
	
	LEDG <= x(width-1);
end;