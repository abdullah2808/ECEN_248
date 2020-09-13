`timescale 1ns/1ps
`default_nettype none

module four_bit_alu(
    output wire [3:0] Result, // 4 bit output
    output wire Overflow, // 1 bit output 
    input wire [3:0] opA, opB, // 4 bit a and b inputs
    input wire [1:0] ctrl // 2 bit inputs 
);
    wire [3:0] sum; // 4 bit wide add_sub output
    wire overflow1; // overflow detectio nfrom add_sub output

    
    add_sub SUM(sum, overflow1, opA, opB, ctrl[1]); // the 4 bit full adder that uses ctrl 1 to choose whether to add or subtract 
    four_bit_mux MUX(Result, (opA & opB), sum, ctrl[0]); // the mux with ctrl 0 to select between and and add/sub function
    assign Overflow = overflow1 & ctrl[0]; //overflow check using lab 5 postlab 
 
    
 endmodule
   
        