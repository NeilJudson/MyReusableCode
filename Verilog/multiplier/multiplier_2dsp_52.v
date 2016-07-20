`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:59 11/15/2015 
// Design Name: 
// Module Name:    multiplier_2dsp_52 
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
module multiplier_2dsp_52(
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

	reg						[9:0]	en_buf	;
	reg			signed		[51:0]	a_buf	;
	reg			signed		[51:0]	b_buf	;

	reg			signed		[17:0]	u1_a	;
	reg			signed		[17:0]	u1_b	;
	wire		signed		[47:0]	u1_p	;
	
	reg			signed		[17:0]	u2_a	;
	reg			signed		[17:0]	u2_b	;
	wire		signed		[47:0]	u2_p	;
	
	reg			signed		[102:0]	c_in	;
	// reg						[16:0]	c_in_17	;
	reg			signed		[102:0]	c_acc	;
	// reg			signed		[85:0]	c_acc	;

	// jiaweiwei: 数据输入标志buf
	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				en_buf <= 10'd0;
			else
				if(i_en == 1'b1)
					en_buf <= {en_buf[8:0],1'b1};
				else
					en_buf <= {en_buf[8:0],1'b0};
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
			case({en_buf[3:0]})
				4'd1:
					begin
						u1_a <= {a_buf[51:34]}; // jiaweiwei: 1dly
						u1_b <= {b_buf[51:34]};
					end
				4'd2:
					begin
						u1_a <= {a_buf[51:34]};
						u1_b <= {1'b0,b_buf[33:17]};
					end
				4'd4:
					begin
						u1_a <= {a_buf[51:34]};
						u1_b <= {1'b0,b_buf[16:0]};
					end
				4'd8:
					begin
						u1_a <= {1'b0,a_buf[33:17]};
						u1_b <= {b_buf[51:34]};
					end
				default:
					begin
						u1_a <= 18'd0;
						u1_b <= 18'd0;
					end
			endcase
		end
	
	always @(posedge i_clk)
		begin
			case({en_buf[4:0]})
				5'd1:
					begin
						u2_a <= {1'b0,a_buf[33:17]};
						u2_b <= {1'b0,b_buf[33:17]};
					end
				5'd2:
					begin
						u2_a <= {1'b0,a_buf[33:17]};
						u2_b <= {1'b0,b_buf[16:0]};
					end
				5'd4:
					begin
						u2_a <= {1'b0,a_buf[16:0]};
						u2_b <= {b_buf[51:34]};
					end
				5'd8:
					begin
						u2_a <= {1'b0,a_buf[16:0]};
						u2_b <= {1'b0,b_buf[33:17]};
					end
				5'd16:
					begin
						u2_a <= {1'b0,a_buf[16:0]};
						u2_b <= {1'b0,b_buf[16:0]};
					end
				default:
					begin
						u2_a <= 18'd0;
						u2_b <= 18'd0;
					end
			endcase
		end
	
	dsp48a1_ip_mul u1_dsp48a1_ip_mul(
		.clk(i_clk),
		.a	(u1_a),
		.b	(u1_b),
		.p	(u1_p) // jiaweiwei: 2dly
		);

	dsp48a1_ip_mul u2_dsp48a1_ip_mul(
		.clk(i_clk),
		.a	(u2_a),
		.b	(u2_b),
		.p	(u2_p) // jiaweiwei: 2dly
		);
		
	// jiaweiwei: 各乘积扩大对应2^n倍
	always @(posedge i_clk)
		begin
			case(en_buf[7:3])
				5'd1: c_in <= {u1_p[34:0],68'd0} + {{(21){u2_p[47]}},u2_p,34'd0};
				5'd2: c_in <= {{(4){u1_p[47]}},u1_p,51'd0} + {{(38){u2_p[47]}},u2_p,17'd0};
				5'd4: c_in <= {{(21){u1_p[47]}},u1_p,34'd0} + {{(21){u2_p[47]}},u2_p,34'd0};
				5'd8: c_in <= {{(4){u1_p[47]}},u1_p,51'd0} + {{(38){u2_p[47]}},u2_p,17'd0};
				5'd16: c_in <= {{(55){u2_p[47]}},u2_p};
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
	assign o_in_en = en_buf[5];
	// assign o_c = {c_acc,c_in_17};
	assign o_c = c_acc;
	assign o_c_en = en_buf[9];
		
endmodule
