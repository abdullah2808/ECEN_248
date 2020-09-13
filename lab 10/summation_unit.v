// This module decribes the summation unit

module summation_unit(S,P,C);

	output wire [15:0] S; // sum vector
	input wire [15:0] P,C; // propagate and carry vectors
	assign  S = P ^ C; // S is P XOR C
	
endmodule
