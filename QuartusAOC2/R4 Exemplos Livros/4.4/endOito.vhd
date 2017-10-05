library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity andOito is

port(

SW: in STD_LOGIC_VECTOR(7 downto 0);
LEDG: out STD_LOGIC );

	end andOito;

architecture synth of andOito is
begin

LEDG <= SW(7)and SW(6)and SW(5)and SW(4)and SW(3)and SW(2)and SW(1)and SW(0); 

end  synth;