library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example41 is
port(sw: in STD_LOGIC_VECTOR(2 DOWNTO 0);
ledG: out STD_LOGIC_vector (1 downto 0));
end;


architecture synth of example41 is
begin
ledG(0) <= (not sw(0) and not sw(1) and not sw(2)) or
(sw(0) and not sw(1) and not sw(2)) or
(sw(0) and not sw(1) and sw(2));
end;
