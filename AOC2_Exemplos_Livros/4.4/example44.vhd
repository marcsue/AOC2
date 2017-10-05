library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example44 is
port(

sw: in STD_LOGIC_VECTOR(7 downto 0);
ledG: out STD_LOGIC_vector(1 downto 0));
end;

architecture synth of example44 is
begin

ledG(0) <= sw(7) and sw(6) and sw(5) and sw(4) and sw(3) and sw(2) and sw(1) and sw(0);

end;