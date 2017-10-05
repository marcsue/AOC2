library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example46 is
port(sw: in STD_LOGIC_VECTOR(17 downto 0);
ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture synth1 of example46 is
begin
ledr <= sw(3 downto 0) when sw(17 downto 16) = "00" else
sw(7 downto 4) when  sw(17 downto 16) = "01" else
sw(11 downto 8) when  sw(17 downto 16) = "10" else
sw(15 downto 12);
end;