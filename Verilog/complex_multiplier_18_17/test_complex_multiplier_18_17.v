`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:29:41 11/13/2015
// Design Name:   complex_multiplier_18_17
// Module Name:   F:/jiaweiwei/Project/complex_multiplier_18_17/test_complex_multiplier_18_17.v
// Project Name:  complex_multiplier_18_17
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: complex_multiplier_18_17
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_complex_multiplier_18_17;

	// Inputs
	reg i_clk;
	reg [17:0] i_ar;
	reg [17:0] i_ai;
	reg [16:0] i_br;
	reg [16:0] i_bi;

	// Outputs
	wire [34:0] o_pr;
	wire [34:0] o_pi;
	
	reg	[7:0]	cnt;

	// Instantiate the Unit Under Test (UUT)
	complex_multiplier_18_17 uut (
		.i_clk(i_clk), 
		.i_ar(i_ar), 
		.i_ai(i_ai), 
		.i_br(i_br), 
		.i_bi(i_bi), 
		.o_pr(o_pr), 
		.o_pi(o_pi)
	);

	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_ar = -18'd1;
		i_ai = -18'd2;
		i_br = -18'd3;
		i_bi = -18'd4;
		cnt = 0;

		// Wait 100 ns for global reset to finish
		#100;		
        
		// Add stimulus here

	end
      
	always @(posedge i_clk)
		begin
			cnt <= cnt + 8'd1;
		end
	
	always @(posedge i_clk)
		begin
			case(cnt)
				8'd10:i_ar <= 18'd1;
				8'd11:i_ai <= 18'd7;
				8'd12:i_br <= 17'd4;
				8'd13:i_bi <= -17'd3;
				default:
					begin
						i_ar <= i_ar;
						i_ai <= i_ai;
						i_br <= i_br;
						i_bi <= i_bi;
					end
			endcase
		end
	
	always @(posedge i_clk)
		begin
			if(cnt == 8'd50)
				$stop;
		end
	
endmodule

