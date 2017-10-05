library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity example415 is
port(
sw: in STD_LOGIC_VECTOR(8 downto 0);
ledG: out STD_LOGIC_VECTOR(3 downto 0));
end;
architecture struct of example415 is
component example410
port(sw: in STD_LOGIC_VECTOR(4 downto 0);
ledG: out STD_LOGIC_VECTOR(3 downto 0));
end component;
for all: example410 USE ENTity work.example410(synth);
signal d0, d1 :std_LOGIC_VECTOR(4 downto 0);
begin
d0(3 downto 0) <= sw(3 downto 0);
d0(4)<= sw(8);

d1(3 downto 0) <= sw(7 downto 4);
d1(4) <= not sw(8);

t0: example410 port map(d0, ledg);
t1: example410 port map(d1, ledg);
end;