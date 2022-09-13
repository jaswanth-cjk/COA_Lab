`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:33:41 08/31/2022 
// Design Name: 
// Module Name:    CLA_16_bit_LAC_wrapper 
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
module CLA_16_bit_LAC_wrapper(input clk,input rst,  input [15:0] a, input [15:0] b, input c_in, output reg [15:0] sum,  output reg c_out,output reg P, output reg G);
	
      reg [15:0] a_reg;
		reg [15:0] b_reg;
		reg c_in_reg;
		wire [15:0] sum_net;
		wire c_outnet;
		wire P_net;
		wire G_net;
		always @(posedge clk)
		   begin 
			  if(rst)
			    begin 
				   a_reg<=16'b0;
					b_reg<=16'b0;
					c_in_reg<=0;
					sum<= 16'b0;
					c_out<=0;
					P<=0;
					G<=0;
				 end
			else 
			begin
			    a_reg<=a;
				 b_reg<=b;
				 c_in_reg<=c_in;
				 sum<=sum_net;
				c_out<=c_outnet;
				P<=P_net;
				G<=G_net;
			 end
		end 	 
 CLA_16_bit_LAC cla(a_reg, b_reg, c_in_reg, sum_net, c_outnet,P_net,G_net);

endmodule 
