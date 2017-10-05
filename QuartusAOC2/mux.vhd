library ieee;
Use ieee.std_logic_1164.all;



entity mux is
	 
port(


	SW : in std_logic_vector (17 downto 0);
	
	LEDG : out std_logic_vector (3 downto 0)
 );


end entity;



architecture circuito of mux is
 

begin 
		
	LEDG <=  SW (15 downto 12) when SW (17 downto 16) = "11" else 
				
                 SW (11 downto 8) when SW (17 downto 16) = "10" else
				
		 SW (7  downto 4) when SW (17 downto 16) = "01" else
				
		 SW (3  downto 0);

	--Sw 16 e 17 São Chaves de Controle


end architecture;