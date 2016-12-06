`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10:16:33 11/16/2015 
// Design Name: 
// Module Name: shift_register
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
module shift_register #(
	parameter	SHIFT_TABS = 16,
				DATA_WIDTH = 16
	)
	(
	i_clk		,
	i_shift_en	,
	i_data_in	,
	o_data_out
	);
	input						i_clk		;
	input						i_shift_en	;
	input	[DATA_WIDTH-1:0]	i_data_in	;
	output	[DATA_WIDTH-1:0]	o_data_out	;
	
	wire	[DATA_WIDTH-1:0]	data_in,data_out;
	reg		[SHIFT_TABS-1:0]	shift_reg[DATA_WIDTH-1:0];
	
	assign data_in = i_data_in;
	
	genvar i;
	generate
		for(i = 0; i < DATA_WIDTH; i = i + 1) begin
			always @(posedge i_clk) begin
				if(i_shift_en == 1'b1) begin
					shift_reg[i] <= {shift_reg[i][SHIFT_TABS-2:0],data_in[i]};
				end
			end
			assign data_out[i] = shift_reg[i][SHIFT_TABS-1];
		end
	endgenerate
	
	assign o_data_out = data_out;
	
endmodule
