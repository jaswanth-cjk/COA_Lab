`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:56 08/30/2022
// Design Name:   CLA_4_bit
// Module Name:   /home/jaswanth/ISE Project/CLA/CLA_4_bit_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4_bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_4_bit_tb;

	
		
	// Inputs
    reg [3:0] A;
	 reg [3:0] B;
    reg c_in;

    // Outputs
    wire [3:0] sum;
    wire c_out;

    // Instantiate the unit under test
    CLA_4_bit CLA(.a(A), .b(B), .c_in(c_in), .sum(sum), .c_out(c_out));

    initial begin
        // Monitor the changes
        $monitor("A = %b, B = %b, c_in = %b, sum = %b, c_out = %b", A, B, c_in, sum, c_out);
        
        // Stimulus to verify the working of the 4-bit carry look-ahead adder
      A = 4'b0010; B = 4'b0100; c_in = 0;
		#100;
		A = 4'b0101; B = 4'b1100; c_in = 0;
		#100;
		A = 4'b0111; B= 4'b0110; c_in = 1;
		#100;
		A = 4'b0001; B = 4'b0010; c_in = 1;
		#100;
		A = 4'b0011; B = 4'b0101; c_in = 1;
        
    end
      
endmodule

