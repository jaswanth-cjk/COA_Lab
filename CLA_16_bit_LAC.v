`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:01:07 08/31/2022 
// Design Name: 
// Module Name:    CLA_16_bit_LAC 
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
module CLA_16_bit_LAC(a, b, c_in, sum, c_out, P, G);
    
	 //inputs 
    input [15:0] a, b;
    input c_in;
	 
	 //outputs
	 
    output [15:0] sum;
    output c_out, P, G;

    wire [3:0] p, g, c;

    // Instantiate 4 4-bit carry look-ahead adders for 16 bit CLA
    
    CLA_4_bit_Augmented cla1(.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(), .P(p[0]), .G(g[0]));
    CLA_4_bit_Augmented cla2(.a(a[7:4]), .b(b[7:4]), .c_in(c[1]), .sum(sum[7:4]), .c_out(), .P(p[1]), .G(g[1]));
    CLA_4_bit_Augmented cla3(.a(a[11:8]), .b(b[11:8]), .c_in(c[2]), .sum(sum[11:8]), .c_out(), .P(p[2]), .G(g[2]));
    CLA_4_bit_Augmented cla4(.a(a[15:12]), .b(b[15:12]), .c_in(c[3]), .sum(sum[15:12]), .c_out(), .P(p[3]), .G(g[3]));

    // Instantiate the Lookahead carry unit
    Lookahead_Carryunit lcu(.p(p), .g(g), .c_in(c_in), .c(c), .c_out(c_out), .P(P), .G(G));
endmodule
