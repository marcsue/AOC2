entity port_or is 
	port(	
	-- VARIAVEL : IN/OUT TIPO	
	c,d,e : in bit ;
	 s : out bit );
	 
end entity;
	 
architecture comportamento of port_or is
	begin 
		
		s<= ( ( (c or d) and e ) nor c );
	end comportamento;