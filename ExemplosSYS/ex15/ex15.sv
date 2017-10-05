module ex15(
	input logic [7:0] sw,
	input logic s,
	output tri [3:0] ledg);

	tristate t0(sw[3:0], ~s, ledg);
	tristate t1(sw[7:4], s, ledg);
endmodule

module tristate(
	input logic [3:0]sw, 
	input logic en,
	output tri [3:0]ledg);
	
	assign ledg = en ? sw : 4'bz;
endmodule