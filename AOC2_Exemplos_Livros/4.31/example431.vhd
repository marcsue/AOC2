library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example431 is
	port(	CLOCK, reset: in STD_LOGIC;
			a: in STD_LOGIC;
			y: out STD_LOGIC);
end;
architecture synth of example431 is
	type statetype is (S0, S1, S2);
	signal state, nextstate: statetype;
begin
	-- state register
	process(CLOCK, reset) begin
		if reset = '1' then state <= S0;
		elsif rising_edge(CLOCK) then state <= nextstate;
		end if;
	end process;
	-- next state logic
	process(CLOCK,reset,a,state,nextstate) begin
		case state is
			when S0 =>
				if a = '1' then nextstate <= S0;
				else nextstate <= S1;
				end if;
			when S1 =>
				if a = '1' then nextstate <= S2;
				else nextstate <= S1;
				end if;
			when S2 =>
				if a = '1' then nextstate <= S0;
				else nextstate <= S1;
				end if;
			when others =>
				nextstate <= S0;
		end case;
	end process;
	--output logic
	y <= '1' when state = S2 else '0';
end;