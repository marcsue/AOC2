library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example45 is
port(sw: in STD_LOGIC_VECTOR(8 downto 0);
ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture synth of example45 is
begin
ledr <= sw(3 downto 0) when sw(8)='1' else 
        sw(7 downto 4);
end;