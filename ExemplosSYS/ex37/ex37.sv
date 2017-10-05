module ex37(
	output [1:0] ledg
);
	logic a, b, c;
	
	//instantiate device under test
	sillyfunction dut(a, b, c, ledg[0]);
	
	//apply inputs one at a time
	initial begin
		a = 0; b = 0; c = 0; #10;
		c = 1;					#10;
		b = 1; c = 0;			#10;
		c = 1;					#10;
		a = 1; b = 0; c = 0; #10;
		c = 1; 					#10;
		b = 1; c = 0; 			#10;
		c = 1;					#10;
	end
endmodule
		
module sillyfunction(
	input logic a, b, c,
	output logic y);
	
	assign y = ~a & ~b & ~c |
			      a & ~b & ~c |
					a & ~b & c;
endmodule
	