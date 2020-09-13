// This module describes the generate propagate unit

module generate_propagate_unit(G,P,X,Y);
// ports are wires as we will use dataflow
	output wire [15:0] G,P;
	input wire [15:0] X,Y;
	assign  P = X ^ Y; // P is X XOR Y
	assign  G = X & Y; // G is X AND Y
	
endmodule 

