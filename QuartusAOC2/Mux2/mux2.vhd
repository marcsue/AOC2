library ieee;
Use ieee.std_logic_1164.all;

entity mux2 is
port(
	SW : in std_logic_vector (5 downto 0);
	LEDG : out std_logic_vector(1 downto 0));
end entity;

architecture hardware of mux2 is 
begin 
	with SW (5 downto 4) select LEDG(0) <=	SW(0) when "00" ,
														SW(1) when "01"  ,
														SW(2) when "10"  ,
														SW(3) when others;
end hardware;