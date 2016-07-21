`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:  Neil Judson
// 
// Create Date:    22:08:08 11/12/2015 
// Design Name: 
// Module Name:    complex_multiplier_18_17 
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
module complex_multiplier_18_17(
	i_clk,
	i_ar,
	i_ai,
	i_br,
	i_bi,
	o_pr,
	o_pi
    );
	input	 					i_clk	;
	input		signed	[17:0]	i_ar	;
	input		signed	[17:0]	i_ai	;
	input		signed	[16:0]	i_br	;
	input		signed	[16:0]	i_bi	;
	output	reg	signed	[34:0]	o_pr	; // jiaweiwei: 7dly
	output	reg	signed	[34:0]	o_pi	;
	
	reg			signed	[17:0]	c1		;
	reg			signed	[17:0]	c2		;
	reg			signed	[17:0]	d1		;
	reg			signed	[17:0]	d2		;
	reg			signed	[17:0]	c		;
	reg			signed	[17:0]	d		;
	wire		signed	[17:0]	c_dly	;
	wire		signed	[17:0]	d_dly	;
	
	wire		signed	[33:0]	u_pr	;
	wire		signed	[33:0]	u_pi	;

	always @(posedge i_clk)
		begin
			c1 <= (i_ar[0] == 1'b0) ? 18'd0 : {i_br[16],i_br};
			c2 <= (i_ai[0] == 1'b0) ? 18'd0 : {i_bi[16],i_bi};
			d1 <= (i_ar[0] == 1'b0) ? 18'd0 : {i_bi[16],i_bi};
			d2 <= (i_ai[0] == 1'b0) ? 18'd0 : {i_br[16],i_br};
		end
			
	always @(posedge i_clk)
		begin
			c <= c1 - c2;
			d <= d1 + d2;
		end
	
	defparam u1_shift_register.DATA_WIDTH = 18;
	defparam u1_shift_register.SHIFT_TABS = 4;
	shift_register_gai u1_shift_register(
	// defparam u1_shift_register.DEEP_BIT   = 3;
	// shift_register u1_shift_register(
		.i_clk			(i_clk		),
		.i_shift_en		(1'b1		),
		// .i_shift_taps	(3'd4		),
		.i_data_in		(c			),
		.o_data_out		(c_dly		)
		);
	defparam u2_shift_register.DATA_WIDTH = 18;
	defparam u2_shift_register.SHIFT_TABS = 4;
	shift_register_gai u2_shift_register(
	// defparam u2_shift_register.DEEP_BIT   = 3;
	// shift_register u2_shift_register(
		.i_clk			(i_clk		),
		.i_shift_en		(1'b1		),
		// .i_shift_taps	(3'd4		),
		.i_data_in		(d			),
		.o_data_out		(d_dly		)
		);
		
	complex_multiplier_ip_17_17 u3_complex_multiplier_ip_17_17(
		.clk(i_clk),
		.ai	(i_ai[17:1]),
		.bi	(i_bi),
		.ar	(i_ar[17:1]),
		.br	(i_br),
		.pi	(u_pi),
		.pr	(u_pr)
		);
		
	always @(posedge i_clk)
		begin
			o_pr <= {u_pr,1'b0} + {{(17){c_dly[17]}},c_dly};
			o_pi <= {u_pi,1'b0} + {{(17){d_dly[17]}},d_dly};
		end
		
endmodule

