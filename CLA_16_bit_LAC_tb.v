`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:03:49 08/31/2022
// Design Name:   CLA_16_bit_LAC
// Module Name:   /home/jaswanth/ISE Project/CLA/CLA_16_bit_LAC_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16_bit_LAC
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_16_bit_LAC_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg c_in;

	// Outputs
	wire [15:0] sum;
	wire c_out;
	wire P;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	CLA_16_bit_LAC uut (
		.a(A), 
		.b(B), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out), 
		.P(P), 
		.G(G)
	);

	initial begin
		// Initialize Inputs
		$monitor("A = %d, B = %d, c_in = %b, sum = %d, c_out = %b, block propagate = %b, block generate = %b", A, B, c_in, sum, c_out, P, G);
        
        // Stimulus to verify the working of the 4-bit carry look-ahead adder
      A = 16'd66666; B = 16'd0000; c_in = 0;
		#100;
		A = 16'd32768;  B = 16'd32768; c_in = 1;
		#100;
		A = 16'd25000; B = 16'd40535; c_in = 0;
		#100;
		A = 16'd25001; B = 16'd40535; c_in = 0;
		#100;
		A = 16'd65535; B= 16'd0000; c_in = 1;

	end
      
endmodule

