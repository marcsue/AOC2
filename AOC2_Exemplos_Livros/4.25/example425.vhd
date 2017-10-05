library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example425 is
port(
	SW: in STD_LOGIC_VECTOR(2 downto 0);
	LEDG: out STD_LOGIC_VECTOR(7 downto 0)
	);
end;

architecture synth of example425 is
begin
	process(SW) 
	begin
		case SW is
			when "000" => LEDG<= "00000001";
			when "001" => LEDG<= "00000010";
			when "010" => LEDG<= "00000100";
			when "011" => LEDG<= "00001000";
			when "100" => LEDG<= "00010000";
			when "101" => LEDG<= "00100000";
			when "110" => LEDG<= "01000000";
			when "111" => LEDG<= "10000000";
			when others =>LEDG<= "XXXXXXXX";
		end case;
	end process;
end architecture;