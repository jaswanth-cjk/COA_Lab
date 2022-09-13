`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:31:24 08/31/2022 
// Design Name: 
// Module Name:    wrapper 
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


module wrapper(input clk,input rst,  input [15:0] a, input [15:0] b, input c_in, output reg [15:0] sum,  output reg c_out);
	
      reg [15:0] a_reg;
		reg [15:0] b_reg;
		reg c_in_reg;
		wire [15:0] sum_net;
		wire c_outnet;
		always @(posedge clk)
		   begin 
			  if(rst)
			    begin 
				   a_reg<=16'b0;
					b_reg<=16'b0;
					c_in_reg<=0;
					sum<= 16'b0;
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
 CLA_16_bit_ripple cla(a_reg, b_reg, c_in_reg, sum_net, c_outnet);

endmodule 