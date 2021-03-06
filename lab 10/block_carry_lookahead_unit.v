`timescale 1ns / 1ps
`default_nettype none
	
	/*This module describes the block carry-lookahead unit	*
	 *for a 2-level carry-lookahead adder							*/

module block_carry_lookahead_unit(G_star, P_star, C, G, P, C0);
	 
		//declare input and output ports
		output wire G_star, P_star;	//block generate and propagate
		output wire [3:1] C;				//C3, C2, C1
		input wire [3:0] G, P;			//generates and propagates
		input wire C0;						//input carry
		
		assign  C[1] = G[0] | ( P[0] & C0 );
		assign  C[2] = G[1] | ( G[0] & P[1] ) | ( C0 & P[0] & P[1] );
		assign  C[3] = G[2] | ( G[1] & P[2] ) | ( G[0] & P[1] & P[2] ) | (P[0] & P[1] & P[2] & C0);

		assign G_star = G[3] | (P[3] & C[3]);
		assign P_star = P[3] & P[2] & P[1] & P[0];
		
	endmodule