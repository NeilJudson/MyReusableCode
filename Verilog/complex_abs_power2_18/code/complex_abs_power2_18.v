`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
	i_r,
	i_i,
	o_p
    );
	input					i_clk;
	input	signed	[17:0]	i_r;
	input	signed	[17:0]	i_i;
	output	signed	[35:0]	o_p;
	
	wire	signed	[47:0]	u1_p;
	wire	signed	[47:0]	u2_p;

	dsp48a1_ip_mul u1_dsp48a1_ip_mul(
		.clk	(i_clk	),
		.a		(i_r	),
		.b		(i_r	),
		.p		(u1_p	)
		);
	dsp48a1_ip_mul_add u2_dsp48a1_ip_mul_add(	// jiaweiwei: 3dly
		.clk	(i_clk	),
		.a		(i_i	),
		.b		(i_i	),
		.c		(u1_p	),
		.p		(u2_p	)
		);
	assign o_p = u2_p[35:0];

endmodule
