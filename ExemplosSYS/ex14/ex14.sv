module ex14(
	input logic [15:0] sw,
	input logic [1:0] key,
	output logic [3:0] ledg);
	
	logic [3:0] low, high;
	
	mux2 lowmux(sw[3:0], sw[7:4], key[0], low);
	mux2 highmux(sw[11:8], sw[15:12], key[0], high);
	mux2 finalmux(low, high, key[1], ledg);
endmodule

module mux2(
	input logic [3:0] d0, d1,
	input logic s,
	output logic [3:0] y);

	assign y = s ? d1 : d0;
endmodule