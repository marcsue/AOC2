library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity example421 is
port(
	SW:		in STD_LOGIC_VECTOR(4 downto 0);
	LEDG: 	out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of example421 is
begin
	process(SW(4), SW(3 downto 0)) begin
		if SW(4) = '1' then
			LEDG <= SW(3 downto 0);
		end if;
	end process;
end;