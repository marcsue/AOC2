library ieee;
Use ieee.std_logic_1164.all;

entity paridade_par is
port(
	SW	:	in std_logic_vector(0 to 4);
	LEDG	:	out std_logic_vector(1 downto 0)
);
	
end entity;

architecture hardware of paridade_par is
	
	signal aux : std_logic_vector(0 to 3);
	begin
	aux(0) <= SW(0) xor SW(1);
	
	Gen: for i in 1 to 3 generate 
		aux(i) <= SW(i + 1) xor aux(i - 1);
	end generate Gen;
	
	LEDG(0) <= aux(3);
end architecture;