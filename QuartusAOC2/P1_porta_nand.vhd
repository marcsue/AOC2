library ieee;
use ieee.std_logic_1164.all;


--Entity

entity porta_nand is
	port
	(	
		
	   SW   : IN  STD_LOGIC_VECTOR(2 downto 0);
		LEDG : OUT STD_LOGIC_VECTOR(1 downto 0)
		);

		
end entity;

--Arquitetura
architecture comportamento of porta_nand is
begin

	LEDG(0) <= SW(1) nand SW(0);
end comportamento;


