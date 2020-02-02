`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:08:57 09/03/2019
// Design Name:   Register_Bank_Block
// Module Name:   E:/SecondYear/CO_Lab/MIPS/Register_Bank_Block_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_Bank_Block
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_Bank_Block_tb;

	// Inputs
	reg [15:0] ans_ex;
	reg [15:0] ans_dm;
	reg [15:0] ans_wb;
	reg [15:0] imm;
	reg [4:0] RA;
	reg [4:0] RB;
	reg [4:0] RW_dm;
	reg [1:0] mux_sel_A;
	reg [1:0] mux_sel_B;
	reg imm_sel;
	reg clk;

	// Outputs
	wire [15:0] A;
	wire [15:0] B;

	// Instantiate the Unit Under Test (UUT)
	Register_Bank_Block uut (
		.ans_ex(ans_ex), 
		.ans_dm(ans_dm), 
		.ans_wb(ans_wb), 
		.imm(imm), 
		.RA(RA), 
		.RB(RB), 
		.RW_dm(RW_dm), 
		.mux_sel_A(mux_sel_A), 
		.mux_sel_B(mux_sel_B), 
		.imm_sel(imm_sel), 
		.clk(clk), 
		.A(A), 
		.B(B)
	);

	initial begin
		// Initialize Inputs
		ans_ex = 16'b1100000000000000;
		ans_dm = 16'b1101000000000000;
		ans_wb = 16'b1110000000000000;
		imm = 16'b1111111111111111;
		RA = 5'b00101;
		RB = 5'b00110;
		RW_dm = 5'b00111;
		mux_sel_A = 0;
		mux_sel_B = 0;
		imm_sel = 1;
		
		#10;
		RB = 5'b00111;
		imm_sel = 0;
		mux_sel_A = 2'b10;
		mux_sel_B = 2'b01;
		
		#10;
		mux_sel_A = 2'b11;
		mux_sel_B = 2'b00;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	initial 
	begin
	clk = 0;
	forever begin
		#5;
		clk = ~clk;
	end
	end
      
endmodule

