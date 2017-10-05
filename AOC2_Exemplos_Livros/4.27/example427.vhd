library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity example427 is
port(
	SW: in STD_LOGIC_VECTOR(3 downto 0);
	LEDG: out STD_LOGIC_VECTOR(3 downto 0)
	);
end;

architecture dontcare of example427 is
begin
	process(SW) 
	begin
		case SW is
			when "1---" =>LEDG<= "1000";
			when "01--" =>LEDG<= "0100";
			when "001-" =>LEDG<= "0010";
			when "0001"	=>LEDG<= "0001";
			when others	=>LEDG<= "0000";
		end case;
	end process;
end;