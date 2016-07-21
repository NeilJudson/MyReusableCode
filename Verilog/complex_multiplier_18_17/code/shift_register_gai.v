`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date:    10:16:33 11/16/2015 
// Design Name: 
// Module Name:    shift_register_gai 
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
module shift_register_gai #(
    parameter SHIFT_TABS = 4,
    parameter DATA_WIDTH = 16
	)
	(
    i_clk       ,
    i_shift_en  ,
    i_data_in   ,
    o_data_out
    );
    input					i_clk       ;
    input					i_shift_en  ;
    input [DATA_WIDTH-1:0]	i_data_in   ;
    output[DATA_WIDTH-1:0]	o_data_out  ;
//====================================================================
//1.shift_register
//==================================================================== 
    wire	[DATA_WIDTH-1:0] data_in,data_out;

    reg		[SHIFT_TABS-1:0] shift_reg[DATA_WIDTH-1:0];

    assign data_in = i_data_in;

    genvar i;
    generate
        for(i = 0; i < DATA_WIDTH; i = i + 1)
        begin: shfit_out
            always @(posedge i_clk)
                if(i_shift_en == 1'b1)
                    shift_reg[i] <= {shift_reg[i][SHIFT_TABS-2:0], data_in[i]};
            assign data_out[i] = shift_reg[i][SHIFT_TABS-1];
        end
    endgenerate

    assign o_data_out = data_out;

endmodule
