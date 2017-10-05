library IEEE; 
use IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;

-- SW 
-- d0 = 0 a 3
-- d1 = 4 a 7
-- s = 8

entity example434 is
port(
	SW: in STD_LOGIC_VECTOR(8 downto 0);
	LEDG: out STD_LOGIC_VECTOR(3 downto 0)
	);
end;

architecture synth of example434 is
begin
	LEDG <= SW(3 downto 0) when SW(8) ='1' else SW(7 downto 4);

	end;
