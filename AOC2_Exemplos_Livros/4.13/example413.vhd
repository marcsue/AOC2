library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example413 is
port(

sw: in STD_LOGIC_vector(0 to 2);
ledG: out STD_LOGIC_vector(0 to 1));

end;
architecture synth of example413 is
signal ab, bb, cb, n1, n2, n3: STD_LOGIC;
begin
ab <= not sw(0) after 1 ns;
bb <= not sw(1) after 1 ns;
cb <= not sw(2) after 1 ns;
n1 <= ab and bb and cb after 2 ns;
n2 <= sw(0) and bb and cb after 2 ns;
n3 <= sw(0) and bb and sw(2) after 2 ns;
ledG(0) <= n1 or n2 or n3 after 4 ns;
end;