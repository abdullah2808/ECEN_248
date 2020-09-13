// This module describes the carry look ahead unit
module carry_lookahead_unit(C,G,P,C0);

	output wire [4:1] C; // C4, C3, C2, C1
	input wire [3:0] G,P; // generates and propagates
	input wire C0; // input carry in
	assign  C[1] = G[0] | (P[0] & C0);
	assign  C[2] = G[1] | (P[1] & G[0]) | (P[1] & P[0] & C0);
	assign  C[3] = G[2] | (P[2] & G[1]) | (P[2] & P[1] & G[0]) | (P[2] & P[1] & P[0] & C0);
	assign  C[4] = G[3] | (P[3] & G[2]) | (P[3] & P[2] & G[1]) | (P[3] & P[2] & P[1] & G[0]) | (P[3] & P[2] & P[1] & P[0] & C0);
	
endmodule
