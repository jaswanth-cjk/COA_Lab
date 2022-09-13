`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:23:34 08/31/2022
// Design Name:   CLA_4_bit_Augmented
// Module Name:   /home/jaswanth/ISE Project/CLA/CLA_4_bit_Augmented_tb.v
// Project Name:  CLA
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CLA_4_bit_Augmented
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module CLA_4_bit_Augmented_tb;

    // Inputs
    reg [3:0] A,B;
    reg c_in;

    // Outputs
    wire [3:0] sum;
    wire c_out, P, G;

    // Instantiate the unit under test
    CLA_4_bit_Augmented CLA(.a(A), .b(B), .c_in(c_in), .sum(sum), .c_out(c_out), .P(P), .G(G));

    initial begin
        // Monitor the changes
        $monitor("A = %b, B = %b, c_in = %b, sum = %b, c_out = %b, block propagate = %b, block generate = %b", A, B, c_in, sum, c_out, P, G);
        
        // Stimulus to verify the working of the 4-bit carry look-ahead adder
      A = 4'b0110; B = 4'b0110; c_in = 0;
		#100;
		A = 4'b1100; B = 4'b1111; c_in = 0;
		#100;
		A = 4'b1010; B = 4'b0111; c_in = 1;
		#100;
		A = 4'b1011; B = 4'b0010; c_in = 1;
		#100;
		A = 4'b0001; B = 4'b0000; c_in = 1;
    end
endmodule

