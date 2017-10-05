library IEEE; 
use IEEE.STD_LOGIC_1164.all;

entity inv is
port(

SW: in STD_LOGIC_VECTOR(3 downto 0) ;
LEDG : out STD_LOGIC_VECTOR(3 downto 0) );
end inv;

architecture synth of inv is
begin

LEDG <= not SW(3 downto 0);

end; 