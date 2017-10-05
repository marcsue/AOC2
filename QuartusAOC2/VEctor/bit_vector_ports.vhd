library ieee;
use ieee.std_logic_1164.all;

entity bit_vector_ports is 
port(
	SW			:	in std_logic_vector (5 downto 0);
	LEDG		:	out std_logic_vector (2 downto 0)
	);
end entity;

architecture circuito of bit_vector_ports is 
begin 
	LEDG(0) <= SW(5) and SW(4);
	LEDG(1) <= SW(3) or SW(2);
	LEDG(2) <= SW(1) xor SW(0);
end architecture;



