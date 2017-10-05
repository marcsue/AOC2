library IEEE; 
use IEEE.STD_LOGIC_1164.all;
entity example47 is
port(sw: in STD_LOGIC_VECTOR(0 TO 2);
LEDR: out STD_LOGIC_VECTOR(0 TO 1));
end;
architecture synth of example47 is
signal p: STD_LOGIC;
begin
p <= SW(0) xor SW(1);
LEDR(0) <= p xor SW(2);
LEDR(1) <= (SW(0) and SW(1) ) or (p and SW(2));
end;