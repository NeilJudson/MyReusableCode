`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date:    16:04:33 10/27/2015 
// Design Name: 
// Module Name:    complex_abs_power2_18
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


module complex_abs_power2_18(
	i_clk,
	i_data_valid,
	i_data_i,
	i_data_q,
	o_data_valid,
	o_data
    );
	input						i_clk;
	input						i_data_valid;
	input		signed	[17:0]	i_data_i;
	input		signed	[17:0]	i_data_q;
	output						o_data_valid;
	output		signed	[35:0]	o_data;
	
//================================================================================
// variable
//================================================================================
	reg							i_data_valid_dly1;
	reg							i_data_valid_dly2;
	reg							i_data_valid_dly3;
	
	wire		signed	[17:0]	u1_a;
	wire		signed	[17:0]	u1_b;
	wire		signed	[47:0]	u1_p;
	
	wire		signed	[17:0]	u2_a;
	wire		signed	[17:0]	u2_b;
	wire		signed	[47:0]	u2_c;
	wire		signed	[47:0]	u2_p;
	
	always @(posedge i_clk) begin
		i_data_valid_dly1 <= i_data_valid;
		i_data_valid_dly2 <= i_data_valid_dly1;
		i_data_valid_dly3 <= i_data_valid_dly2;
	end
	
	assign u1_a = i_data_i;
	assign u1_b = i_data_i;
	assign u2_a = i_data_q;
	assign u2_b = i_data_q;
	assign u2_c = u1_p;
	
	dsp48a1_ip_mul u1_dsp48a1_ip_mul(
		.clk	(i_clk	),	// input clk;
		.a		(u1_a	),	// input [17:0]a;
		.b		(u1_b	),	// input [17:0]b;
		.p		(u1_p	)	// output [47:0]p; // 2dly
	);
		
	dsp48a1_ip_mul_add u2_dsp48a1_ip_mul_add(
		.clk	(i_clk	),	// input clk;
		.a		(u2_a	),	// input [17:0]a;
		.b		(u2_b	),	// input [17:0]b;
		.c		(u2_c	),	// input [47:0]c;
		.p		(u2_p	)	// output [47:0]p; // 3dly
	);
	
	assign o_data_valid	= i_data_valid_dly3;
	assign o_data		= u2_P[35:0];

endmodule
