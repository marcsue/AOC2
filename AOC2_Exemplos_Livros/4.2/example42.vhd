library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example42 is
port(sw: in STD_LOGIC_VECTOR(3 downto 0);
ledG: out STD_LOGIC_VECTOR(3 downto 0));
end;

architecture synth of example42 is
begin
ledG <= not sw;
end;