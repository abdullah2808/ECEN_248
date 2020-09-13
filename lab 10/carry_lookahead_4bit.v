// This is the top-level module

module carry_lookahead_4bit(Cout,S,X,Y,Cin);

	output wire Cout; // C_4 for a 4-bit adder
	output wire [3:0] S; // final 4-bit sum vector
	input wire [3:0] X,Y; // 4-bit addends
	input wire Cin; // input carry in
	
	wire [4:0] C;
	wire [3:0] P, G;
	
	assign C[0] = Cin; // temp cin 
	
	generate_propagate_unit gpu0(G, P, X , Y); // using stuff from pre-lab
	
	carry_lookahead_unit CLU0(C[4:1], G, P, Cin);
	
	summation_unit SU0(S, P, C[3:0]);
	
	assign Cout = C[4];
	
endmodule

