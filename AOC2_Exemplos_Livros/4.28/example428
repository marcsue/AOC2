
library IEEE; use IEEE.STD_LOGIC_1164.all;
entity fulladder is
port(
	SW    : in STD_LOGIC_VECTOR(2 downto 0);
	LEDG  : out STD_LOGIC_VECTOR(1 downto 0)
	);
end entity;

architecture nonblocking of fulladder is
signal p  : STD_LOGIC;
signal g  : STD_LOGIC;
begin
p <= SW(2) xor SW(1); 
g <= SW(1) and SW(1); 
LEDG(1) <= p xor SW(0);
LEDG(0) <= g or (p and SW(0));

end architecture;