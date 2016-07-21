`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date:    09:36:13 11/11/2015 
// Design Name: 
// Module Name:    multiplier_52 
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
module multiplier_52(
    i_clk	,
	i_rst	,
	i_en	,
    i_a		,
    i_b		,
	o_in_en	,
    o_c		,
	o_c_en	
    );
	input							i_clk	;
	input							i_rst	;
	
	input							i_en	;
    input		signed		[51:0]	i_a		;
    input		signed		[51:0]	i_b		;
	
	output							o_in_en	;
    output		signed		[102:0]	o_c		;
	output							o_c_en	;
	
	reg						[13:0]	en_buf	;
	reg			signed		[51:0]	a_buf	;
	reg			signed		[51:0]	b_buf	;
	
	reg			signed		[17:0]	u_a		;
	reg			signed		[17:0]	u_b		;
	wire		signed		[47:0]	u_p		;
	
	reg			signed		[102:0]	c_in	;
	// reg						[16:0]	c_in_17	;
	reg			signed		[102:0]	c_acc	;
	// reg			signed		[85:0]	c_acc	;
	
	// jiaweiwei: 数据输入标志buf
	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				en_buf <= 14'd0;
			else
				if(i_en == 1'b1)
					en_buf <= {en_buf[12:0],1'b1};
				else
					en_buf <= {en_buf[12:0],1'b0};
		end

	always @(posedge i_clk)
		begin
			if(i_en == 1'b1)
				begin
					a_buf <= i_a; // jiaweiwei: 1dly
					b_buf <= i_b;
				end
			else
				begin
					a_buf <= a_buf;
					b_buf <= b_buf;
				end
		end
	
	always @(posedge i_clk)
		begin
			case({en_buf[8:0]})
				9'd1:
					begin
						u_a <= {a_buf[51:34]}; // jiaweiwei: 1dly
						u_b <= {b_buf[51:34]};
					end
				9'd2:
					begin
						u_a <= {a_buf[51:34]};
						u_b <= {1'b0,b_buf[33:17]};
					end
				9'd4:
					begin
						u_a <= {a_buf[51:34]};
						u_b <= {1'b0,b_buf[16:0]};
					end
				9'd8:
					begin
						u_a <= {1'b0,a_buf[33:17]};
						u_b <= {b_buf[51:34]};
					end
				9'd16:
					begin
						u_a <= {1'b0,a_buf[33:17]};
						u_b <= {1'b0,b_buf[33:17]};
					end
				9'd32:
					begin
						u_a <= {1'b0,a_buf[33:17]};
						u_b <= {1'b0,b_buf[16:0]};
					end
				9'd64:
					begin
						u_a <= {1'b0,a_buf[16:0]};
						u_b <= {b_buf[51:34]};
					end
				9'd128:
					begin
						u_a <= {1'b0,a_buf[16:0]};
						u_b <= {1'b0,b_buf[33:17]};
					end
				9'd256:
					begin
						u_a <= {1'b0,a_buf[16:0]};
						u_b <= {1'b0,b_buf[16:0]};
					end
				default:
					begin
						u_a <= 18'd0;
						u_b <= 18'd0;
					end
			endcase
		end
	
	dsp48a1_ip_mul u_dsp48a1_ip_mul(
		.clk(i_clk),
		.a	(u_a),
		.b	(u_b),
		.p	(u_p) // jiaweiwei: 2dly
		);
	
	// jiaweiwei: 各乘积扩大对应2^n倍
	always @(posedge i_clk)
		begin
			case(en_buf[11:3])
				9'd1: c_in <= {u_p[34:0],68'd0};
				9'd2: c_in <= {{(4){u_p[47]}},u_p,51'd0};
				9'd4: c_in <= {{(21){u_p[47]}},u_p,34'd0};
				9'd8: c_in <= {{(4){u_p[47]}},u_p,51'd0};
				9'd16: c_in <= {{(21){u_p[47]}},u_p,34'd0};
				9'd32: c_in <= {{(38){u_p[47]}},u_p,17'd0};
				9'd64: c_in <= {{(21){u_p[47]}},u_p,34'd0};
				9'd128: c_in <= {{(38){u_p[47]}},u_p,17'd0};
				9'd256: c_in <= {{(55){u_p[47]}},u_p};
				default: c_in <= 103'd0;
			endcase
		end
	
	// jiaweiwei: 累加
	always @(posedge i_clk)
		begin
			// if(en_buf[3] == 1'b1)
				// c_acc <= 103'b0;
			if(en_buf[4] == 1'b1)
				begin
					c_acc <= c_in;
					// c_acc <= c_in[102:17];
					// c_in_17 <= c_in[16:0];
				end
			else
				begin
					c_acc <= c_acc + c_in;
					// c_acc <= c_acc + c_in[102:17];
					// c_in_17 <= c_in[16:0];
				end
		end

	// jiaweiwei: 输出
	assign o_in_en = en_buf[9];
	assign o_c = c_acc;
	// assign o_c = {c_acc,c_in_17};
	assign o_c_en = en_buf[13];

endmodule
