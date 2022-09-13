`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:01:19 08/31/2022 
// Design Name: 
// Module Name:    CLA_4_bit_wrapper 
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
module CLA_4_bit_wrapper(input clk,input rst,  input [3:0] a, input [3:0] b, input c_in, output reg [3:0] sum,  output reg c_out);
	
      reg [3:0] a_reg;
		reg [3:0] b_reg;
		reg c_in_reg;
		wire [3:0] sum_net;
		wire c_outnet;
		always @(posedge clk)
		   begin 
			  if(rst)
			    begin 
				   a_reg<=4'b0;
					b_reg<=4'b0;
					c_in_reg<=0;
					sum<= 4'b0;
					c_out<=0;
				 end
			else 
			begin
			    a_reg<=a;
				 b_reg<=b;
				 c_in_reg<=c_in;
				 sum<=sum_net;
				c_out<=c_outnet;
			 end
		end 	 
 CLA_4_bit cla(a_reg, b_reg, c_in_reg, sum_net, c_outnet);

endmodule
