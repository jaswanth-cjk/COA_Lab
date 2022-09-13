`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:48:36 08/31/2022
// Design Name:   Lookahead_Carryunit
// Module Name:   /home/jaswanth/ISE Project/CLA/Lookahead_Carryunit_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Lookahead_Carryunit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Lookahead_Carryunit_tb;

	// Inputs
	reg [3:0] p;
	reg [3:0] g;
	reg c_in;

	// Outputs
	wire [3:0] carry;
	wire c_out;
	wire P;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	Lookahead_Carryunit uut (
		.p(p), 
		.g(g), 
		.c_in(c_in), 
		.c(carry), 
		.c_out(c_out), 
		.P(P), 
		.G(G)
	);

	initial begin
        
		// Add stimulus here
		$monitor("input propagates = %b, input generates = %b, c_in = %b, carry(s) = %b, c_out = %b, LCU propagate = %b, LCU generate = %b", p, g, c_in, carry, c_out, P, G);
        
        
		  p = 4'b1111; g = 4'b0110; c_in = 1'b0;
        #100;
		  p = 4'b1101; g = 4'b0010; c_in = 1'b0;
        #100;
		  p = 4'b1100; g = 4'b1001; c_in = 1'b0;


	end
      
endmodule

