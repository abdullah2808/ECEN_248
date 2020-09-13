`timescale 1ns / 1ps
`default_nettype none

module four_bit_mux(Y, A, B, S);


    output wire [3:0] Y; // 4 bit wide output
    input wire [3:0] A, B; // 4 bit wide A and B
    input wire S; // select line
    
    // user defined modules
    two_one_mux MUX0(Y[0], A[0], B[0], S); //using previously constructed module two bit mux
    two_one_mux MUX1(Y[1], A[1], B[1], S);
    two_one_mux MUX2(Y[2], A[2], B[2], S);
    two_one_mux MUX3(Y[3], A[3], B[3], S);
    
endmodule

