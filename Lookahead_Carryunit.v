`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:46 08/31/2022 
// Design Name: 
// Module Name:    Lookahead_Carryunit 
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
module Lookahead_Carryunit(p, g, c_in, c, c_out, P, G);
	 //inputs
	 
    input [3:0] p, g;
    input c_in;
	 
	 //outputs
	 
    output [3:0] c;
    output c_out;
	 output P;
	 output G;

    // compute the carry bits
    assign c[0] = c_in;
    assign c[1] = g[0] | (p[0] & c[0]);
    assign c[2] = g[1] | (p[1] & g[0]) | (p[1] & p[0] & c[0]);
    assign c[3] = g[2] | (p[2] & g[1]) | (p[2] & p[1] & g[0]) | (p[2] & p[1] & p[0] & c[0]);
    assign c_out = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]) | (p[3] & p[2] & p[1] & p[0] & c[0]);

    // compute block propagate and generate for the next level
    assign P = p[3] & p[2] & p[1] & p[0];
    assign G = g[3] | (p[3] & g[2]) | (p[3] & p[2] & g[1]) | (p[3] & p[2] & p[1] & g[0]);

endmodule
