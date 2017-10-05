entity port_or is
	port (
	 c,d : in bit;
	 s : out bit );
end port_or;

architecture comportamento of port_or is
	begin 
	s <= c or d;
	end comportamento;