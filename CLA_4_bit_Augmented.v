`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:44 08/31/2022 
// Design Name: 
// Module Name:    CLA_4_bit_Augmented 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module CLA_4_bit_Augmented(a, b, c_in, sum, c_out, P, G);

	 //inputs 
	 input [3:0] a, b;
    input c_in;
    output [3:0] sum;
    output c_out, P, G;
    wire [3:0] p;            //propogated carry bits
	 wire [3:0] g;           //generated carry bits
    wire [3:0] c;           // carry bits

    assign p = a ^ b;       // assign values to propagate bits
    assign g = a & b;       // assign values to generate bits

    // compute the carry bits
    assign c[0] = c_in;
    assign c[1] = g[0] | (p[0] & c_in);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c_in);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c_in);

    // compute the sum
    assign sum = p ^ c;

    // compute block propagate and generate for the next level
    assign P = p[3] & p[2] & p[1] & p[0];
    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);
    
    // assign c_out
    assign c_out = G + (P & c_in);


endmodule
