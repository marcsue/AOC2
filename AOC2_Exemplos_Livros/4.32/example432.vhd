library IEEE; 
use IEEE.STD_LOGIC_1164.all;

-- SW
-- a = 0
-- reset = 1
-- clk = 2

entity example432 is
port(
	SW: in STD_LOGIC_VECTOR(2 downto 0);
	LEDG: out STD_LOGIC_VECTOR(1 downto 0)
	);
end;


architecture synth of example432 is
	
	type statetype is (S0, S1);
	signal state, nextstate: statetype;

begin

	-- state register
	process(SW(2), SW(1)) 
	begin
		if SW(1)='1' then 
			state <= S0;
		elsif rising_edge(SW(2)) then 
			state <= nextstate;
		end if;
	end process;


	-- next state logic
	process(SW) 
	begin
		case state is
			when S0 =>
				if SW(0)='1' then 
					nextstate <= S0;
				else 
					nextstate <= S1;
				end if;
			when S1 =>
				if SW(0)='1' then 
					nextstate <= S0;
				else 
					nextstate <= S1;
				end if;
			when others =>
				nextstate <= S0;
		end case;
	end process;

	-- output logic
	LEDG(0) <= '1' when (SW(0) = '1' and state = S1) else '0';
end;