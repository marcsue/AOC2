-- Mutiplexador

library ieee;
Use ieee.std_logic_1164.all;

entity mux_4 is 
port (

	SW : in std_logic_vector(0 downto 5);
	LEDG : out std_logic_vector(0)
 );
end entity;
 
architecture hardware of mux_4 is
begin
	LEDG <= SW(0) when SW (4 downto 5) = "00" else
	        SW(1) when SW (4 downto 5) = "01" else
	        SW(2) when SW (4 downto 5) = "10" else
	        SW(3) when SW (4 downto 5) = "11";
				
end hardware;
