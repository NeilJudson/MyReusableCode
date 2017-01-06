`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date: 2017/01/06 16:17:58
// Design Name: 
// Module Name: complex_abs_power2_35_1dsp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module complex_abs_power2_35_1dsp(
	i_clk,
	i_rst,
	i_en,
	i_r,
	i_i,
	o_p,
	o_p_en
    );
	input					i_clk;
	input					i_rst;
	input					i_en; // jiaweiwei: 6个周期后才能输入下一个数据
	input	signed	[34:0]	i_r;
	input	signed	[34:0]	i_i;
	output	signed	[69:0]	o_p; // jiaweiwei: 12dly
	output					o_p_en;
	
	reg				[11:0]	en_buf;
	reg		signed	[34:0]	r_buf;
	reg		signed	[34:0]	i_buf;
	
	reg		signed	[17:0]	u_a;
	reg		signed	[17:0]	u_b;
	reg		signed	[47:0]	u_c;
	wire	signed	[47:0]	u_p;
	
	reg		signed	[69:0]	p_in;
	reg		signed	[69:0]	p_acc;
	// reg		signed	[51:0]	p_acc;
	// reg				[17:0]	p_in_18;

	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				en_buf <= 11'd0;
			else
				if(i_en == 1'b1)
					en_buf <= {en_buf[10:0],1'b1};
				else
					en_buf <= {en_buf[10:0],1'b0};
		end

	always @(posedge i_clk)
		begin
			if(i_en == 1'b1)
				begin
					r_buf <= i_r; // jiaweiwei: 1dly
					i_buf <= i_i;
				end
			else
				begin
					r_buf <= r_buf;
					i_buf <= i_buf;
				end
		end
	
	always @(posedge i_clk)
		begin
			case({en_buf[6:0]})
				7'd1:
					begin
						u_a <= {r_buf[34:17]}; // jiaweiwei: 1dly
						u_b <= {r_buf[34:17]};
						u_c <= 48'd0;
					end
				7'd2:
					begin
						u_a <= {r_buf[34:17]};
						u_b <= {1'b0,r_buf[16:0]};
						u_c <= 48'd0;
					end
				7'd4:
					begin
						u_a <= {1'b0,r_buf[16:0]};
						u_b <= {1'b0,r_buf[16:0]};
						u_c <= 48'd0;
					end
				7'd8:
					begin
						u_a <= {i_buf[34:17]};
						u_b <= {i_buf[34:17]};
						u_c <= 48'd0;
					end
				7'd16:
					begin
						u_a <= {i_buf[34:17]};
						u_b <= {1'b0,i_buf[16:0]};
						u_c <= u_p;
					end
				7'd32:
					begin
						u_a <= {1'b0,i_buf[16:0]};
						u_b <= {1'b0,i_buf[16:0]};
						u_c <= u_p;
					end
				7'd64:
					begin
						u_a <= 18'd0;
						u_b <= 18'd0;
						u_c <= u_p;
					end
				default:
					begin
						u_a <= 18'd0;
						u_b <= 18'd0;
						u_c <= 48'd0;
					end
			endcase
		end
	
	dsp48_mul_add_ip u_dsp48_mul_add_ip(	// jiaweiwei: 3dly
		.CLK(i_clk),
		.A	(u_a),
		.B	(u_b),
		.C	(u_c),
		.P	(u_p)
		);
		
	always @(posedge i_clk)
		begin
			case(en_buf[9:7])
				3'd1: p_in <= {u_p[35:0],34'd0};
				3'd2: p_in <= {{(4){u_p[47]}},u_p,18'd0}; // jiaweiwei: 这里乘以2了
				3'd4: p_in <= {{(22){u_p[47]}},u_p};
				default: p_in <= 70'd0;
			endcase
		end
		
	always @(posedge i_clk)
		begin
			// if(en_buf[3] == 1'b1)
				// p_acc <= 103'b0;
			if(en_buf[8] == 1'b1)
				begin
					p_acc <= p_in;
					// p_acc <= p_in[69:18];
					// p_in_18 <= p_in[17:0];
				end
			else
				begin
					p_acc <= p_acc + p_in;
					// p_acc <= p_acc + p_in[69:18]; // jiaweiwei: 这里截去了末尾18个0，减少加法位宽
					// p_in_18 <= p_in[17:0];
				end
		end

	assign o_p = p_acc;
	// assign o_p = {p_acc,p_in_18};
	assign o_p_en = en_buf[11];
	
endmodule