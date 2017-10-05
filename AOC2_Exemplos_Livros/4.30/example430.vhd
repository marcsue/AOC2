library IEEE; use IEEE.STD_LOGIC_1164.all;
entity example430 is
	port(CLOCK, reset: in STD_LOGIC;
	y: out STD_LOGIC);
end entity;

architecture synth of example430 is
	type statetype is (S0, S1, S2);
	signal state, nextstate: statetype;

begin
	-- state register
	process(CLOCK, reset) begin
		if reset = '1' then state <= S0;
		elsif rising_edge(CLOCK) then
			state <= nextstate;
		end if;
	end process;
	-- next state logic
	nextstate <= S1 when state = S0 else
	S2 when state = S1 else
	S0;
	-- output logic
		y <= '1' when state = S0 else '0';
end synth;