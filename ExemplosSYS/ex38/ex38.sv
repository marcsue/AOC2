module ex38(
	output logic [1:0] ledg
);
	logic a, b, c;
	
	//instantiate device under test
	sillyfunction(a, b, c, ledg[0]);
	
	//aplly inputs one at a time
	//checking results
	initial begin
		a = 0; b = 0; c = 0; #10;
		assert (ledg[0] === 1) else $error("000 failed");
		c = 1; #10;
		assert (ledg[0] === 0) else $error("001 failed");
		b = 1; c = 0; #10;
		assert (ledg[0] === 0) else $error("010 failed");
		c = 1; #10;
		assert (ledg[0] === 0) else $error("011 failed");
		a = 1; b = 0; c = 0; #10;
		assert (ledg[0] === 1) else $error("100 failed");
		c = 1; #10;
		assert (ledg[0] === 1) else $error("101 failed");
		b = 1; c = 0; #10; 
		assert (ledg[0] === 0) else $error("110 failed");
		c = 1; #10;
		assert (ledg[0] === 0) else $error("111 failed");
	end
endmodule

module sillyfunction(
	input logic a, b, c,
	output logic y);

	assign y = ~a & ~b & ~c |
	a & ~b & ~c |
	a & ~b & c;
endmodule
