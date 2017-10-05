library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example426 is
port(
	SW: in STD_LOGIC_VECTOR(3 downto 0);
	LEDG: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of example426 is
begin
	process(SW) 
	begin
		if SW(3)='1' then 
			LEDG <= "1000";
		elsif SW(2)='1' then 
			LEDG <= "0100";
		elsif SW(1)='1' then 
			LEDG <= "0010";
		elsif SW(0)='1' then 
			LEDG <= "0001";
		else 
			LEDG <= "0000";
		end if;
	end process;
end;