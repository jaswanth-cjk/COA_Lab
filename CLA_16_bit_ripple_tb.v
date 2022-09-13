`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:22:54 08/31/2022
// Design Name:   CLA_16_bit_ripple
// Module Name:   /home/jaswanth/ISE Project/CLA/CLA_16_bit_ripple_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_16_bit_ripple
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_16_bit_ripple_tb;

	// Inputs
	reg [15:0] A;
	reg [15:0] B;
	reg c_in;

	// Outputs
	wire [15:0] sum;
	wire c_out;

	// Instantiate the Unit Under Test (UUT)
	CLA_16_bit_ripple uut (
		.a(A), 
		.b(B), 
		.c_in(c_in), 
		.sum(sum), 
		.c_out(c_out)
	);

	initial begin
		// Initialize Inputs

		$monitor("A = %d, B = %d, c_in = %d, sum = %d, c_out = %d", A, B, c_in, sum, c_out);
		// Initialize Inputs
		A = 16'd12345; B = 16'd98450; c_in = 0;
		#100;
		A = 16'd32768; B = 16'd32768; c_in = 0;
		#100;
		A = 16'd255; B = 16'd1111; c_in = 0;
		#100;
		A = 16'd65535; B = 16'd0000; c_in = 1;
      
	end
      
endmodule

