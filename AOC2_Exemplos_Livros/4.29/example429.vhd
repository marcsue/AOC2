-- Bad implementation of a synchronizer using blocking
-- assignment

library IEEE; 
use IEEE.STD_LOGIC_1164.all;

-- SW
-- clk = 1
-- d = 0


entity example429 is
port(
	SW: in STD_LOGIC_VECTOR (1 downto 0);
	LEDG: out STD_LOGIC_VECTOR (1 downto 0)
	);
end;

architecture bad of example429 is
begin
	process(SW(1))
		variable n1: STD_LOGIC;
	begin
		if rising_edge(SW(1)) then
			n1 := SW(0); -- blocking
			LEDG(0) <= n1;
		end if;
	end process;
end;