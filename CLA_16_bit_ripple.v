`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:04 08/31/2022 
// Design Name: 
// Module Name:    CLA_16_bit_ripple 
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
module CLA_16_bit_ripple(a, b, c_in, sum, c_out);

    //inputs
	 
    input [15:0] a, b;
    input c_in;
	 
	 //outputs
    output [15:0] sum;
    output c_out;

    wire [2:0] c;
 
    // Instantiate 4 cascaded 4-bit carry Lookahead adders for 16 bit Ripple CLA
	 
    CLA_4_bit cla1(.a(a[3:0]), .b(b[3:0]), .c_in(c_in), .sum(sum[3:0]), .c_out(c[0]));
    CLA_4_bit cla2(.a(a[7:4]), .b(b[7:4]), .c_in(c[0]), .sum(sum[7:4]), .c_out(c[1]));
    CLA_4_bit cla3(.a(a[11:8]), .b(b[11:8]), .c_in(c[1]), .sum(sum[11:8]), .c_out(c[2]));
    CLA_4_bit cla4(.a(a[15:12]), .b(b[15:12]), .c_in(c[2]), .sum(sum[15:12]), .c_out(c_out));
	 
endmodule
