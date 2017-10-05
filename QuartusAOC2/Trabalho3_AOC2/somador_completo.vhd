library ieee;
use ieee.std_logic_1164.all;


entity somador_completo is 
port(

	SW			:	in std_logic_vector (0 to 2);
	LEDG		:	out std_logic_vector (0 to 1)
);

end entity;

------------

architecture logica of somador_completo is 

	signal temp : std_logic;
	
begin 

	temp <= sw(0) xor sw(1);
	LEDg(0) <= temp xor sw(2);
	ledg(1) <= (sw(2) and temp) or (sw(0) and sw(1));
	
end logica;