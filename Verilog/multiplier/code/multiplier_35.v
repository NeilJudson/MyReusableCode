`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Neil Judson
// 
// Create Date:    18:39:45 11/04/2015 
// Design Name: 
// Module Name:    multiplier_35 
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
module multiplier_35(
    i_clk	,
	i_rst	,
	i_en	,
    i_a		,
    i_b		,
	// o_in_en	,
    o_c		,
	o_c_en	
    );
	input							i_clk	;
	input							i_rst	;
	
	input							i_en	; // jiaweiwei: 4个工作周期内只能1个数据
    input		signed		[34:0]	i_a		;
    input		signed		[34:0]	i_b		;
	
	// output							o_in_en	; // jiaweiwei: i_en的4dly
    output		signed		[68:0]	o_c		; // jiaweiwei: 8dly
	output							o_c_en	;
	
	reg						[7:0]	en_buf	;

	reg						[72:0]	a_seq	;
	reg						[72:0]	b_seq	;
	
	wire		signed		[17:0]	u_a		;
	wire		signed		[17:0]	u_b		;
	wire		signed		[47:0]	u_p		;
	
	reg			signed		[68:0]	c_in	;
	// reg						[16:0]	c_in_17	;
	// reg			signed		[51:0]	c_acc	;
	reg			signed		[68:0]	c_acc	;
	
	// jiaweiwei: 数据输入标志buf
	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				en_buf <= 8'd0;
			else
				if(i_en == 1'b1)
					en_buf <= {en_buf[6:0],1'b1};
				else
					en_buf <= {en_buf[6:0],1'b0};
		end
	
	// jiaweiwei: dsp输入序列
	always @(posedge i_clk or posedge i_rst)
		begin
			if(i_rst == 1'b1)
				begin
					a_seq <= 72'd0;
					b_seq <= 72'd0;
				end
			else
				if(i_en == 1'b1)
					begin
						a_seq <= {i_a[34:17],i_a[34:17],1'b0,i_a[16:0],1'b0,i_a[16:0]};
						b_seq <= {i_b[34:17],1'b0,i_b[16:0],i_b[34:17],1'b0,i_b[16:0]};
					end
				else
					begin
						a_seq <= a_seq<<18; // jiaweiwei: 1dly
						b_seq <= b_seq<<18;
					end
		end	
	assign u_a = a_seq[71:54];
	assign u_b = b_seq[71:54];
			
	dsp48a1_ip_mul u_dsp48a1_ip_mul(
		.clk(i_clk),
		.a	(u_a),
		.b	(u_b),
		.p	(u_p) // jiaweiwei: 2dly
		);
	
	// jiaweiwei: 各乘积扩大对应2^n倍
	always @(posedge i_clk)
		begin
			case(en_buf[5:2])
				4'b0001: c_in <= {u_p[34:0],34'd0};
				4'b0010: c_in <= {{(17){u_p[34]}},u_p[34:0],17'd0};
				4'b0100: c_in <= {{(17){u_p[34]}},u_p[34:0],17'd0};
				4'b1000: c_in <= {{(34){u_p[34]}},u_p[34:0]};
				default: c_in <= 69'd0;
			endcase
		end
	
	// jiaweiwei: 累加
	always @(posedge i_clk)
		begin
			// if(en_buf[2] == 1'b1)
				// c_acc <= 69'b0;
			if(en_buf[3] == 1'b1)
				c_acc <= c_in;
				// c_acc <= c_in[102:17];
				// c_in_17 <= c_in[16:0];
			else
				c_acc <= c_acc + c_in;
				// c_acc <= c_acc + c_in[102:17];
				// c_in_17 <= c_in[16:0];
		end

	// jiaweiwei: 输出
	// assign o_in_en = en_buf[3];
	assign o_c = c_acc;
	// assign o_c = {c_acc,c_in_17};
	assign o_c_en = en_buf[7];
endmodule