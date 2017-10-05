library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example416 is
port(sw: in STD_LOGIC_VECTOR(16 downto 0);
ledr: out STD_LOGIC_VECTOR(7 downto 0));
end;
architecture struct of example416 is
component mux2
port(sw: in STD_LOGIC_VECTOR(8 downto 0);
ledr: out STD_LOGIC_VECTOR(3 downto 0));
end component;
for all: mux2 USE ENTity WORK.example45(synth);
signal d0, d1 : std_LOGIC_VECTOR( 8 downto 0);
begin
d0(7 downto 0) <= sw(7 downto 0);
d0(8) <= sw(16);

d1(7 downto 0) <= sw(15 downto 8);
d1(8) <= sw(16);
lsbmux: mux2
port map(d0, ledr(3 downto 0));
msbmux: mux2
port map(d1, ledr(7 downto 4));
end;