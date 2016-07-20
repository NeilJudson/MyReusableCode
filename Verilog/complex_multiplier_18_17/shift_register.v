`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:49:03 03/30/2012 
// Design Name: 
// Module Name:    nco_modulation 
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
module shift_register
	#(
    parameter DEEP_BIT   = 4,
    parameter DATA_WIDTH = 16
    )
    (
    i_clk       ,
    i_shift_en  ,
    i_shift_taps,
    
    i_data_in   ,
    o_data_out
    );

    input					i_clk       ;
    input					i_shift_en  ;
    input [DEEP_BIT-1:0]    i_shift_taps;
                                      
    input [DATA_WIDTH-1:0]	i_data_in   ;
    output[DATA_WIDTH-1:0]	o_data_out  ;
//====================================================================
//1.shift_register                                                         
//==================================================================== 
    wire [DATA_WIDTH-1:0] data_in,data_out;

    reg [2**DEEP_BIT-1:0] shift_reg[DATA_WIDTH-1:0];
   
    assign data_in = i_data_in ;

    genvar i;
    generate
        for(i = 0; i < DATA_WIDTH; i = i + 1) 
        begin: shfit_out
            always @(posedge i_clk)
                if(i_shift_en == 1'b1)
                    shift_reg[i] <= {shift_reg[i][2**DEEP_BIT-2 : 0], data_in[i]};
				 
            assign data_out[i] = shift_reg[i][i_shift_taps-1];
        end
    endgenerate

    assign o_data_out = data_out ;

endmodule