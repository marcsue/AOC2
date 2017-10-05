library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example417 is
port(sw: in STD_LOGIC_VECTOR(4 downto 0);
ledr: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture synth of example417 is
begin
process(sw(4)) begin
if rising_edge(sw(4)) then
ledr <= sw(3 downto 0);
end if;
end process;
end;