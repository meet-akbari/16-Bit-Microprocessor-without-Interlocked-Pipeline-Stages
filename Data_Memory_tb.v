`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:05:13 09/03/2019
// Design Name:   Data_Memory
// Module Name:   E:/SecondYear/CO_Lab/MIPS/Data_Memory_tb.v
// Project Name:  MIPS
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Data_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Data_Memory_tb;

	// Inputs
	reg [15:0] ans_ex;
	reg [15:0] DM_data;
	reg mem_rw_ex;
	reg mem_en_ex;
	reg mem_mux_sel_dm;
	reg reset;
	reg clk;

	// Outputs
	wire [15:0] ans_dm;

	// Instantiate the Unit Under Test (UUT)
	Data_Memory uut (
		.ans_ex(ans_ex), 
		.DM_data(DM_data), 
		.mem_rw_ex(mem_rw_ex), 
		.mem_en_ex(mem_en_ex), 
		.mem_mux_sel_dm(mem_mux_sel_dm), 
		.reset(reset), 
		.clk(clk), 
		.ans_dm(ans_dm)
	);

		initial begin
		// Initialize Inputs
		ans_ex =  16'b0000000000000011;
		DM_data = 16'b1111111111111111;
		mem_rw_ex = 0;
		mem_en_ex = 0;
		mem_mux_sel_dm = 0;
		reset = 1;
		clk = 0;
		#2;
		reset = 0;
		#6;
		reset = 1;
		#2;
		mem_en_ex = 1;
		mem_mux_sel_dm = 1;
		#10;
		mem_rw_ex = 1;
		#10;
		mem_rw_ex = 0;

		// Wait 100 ns for global reset to finish
		
        
		// Add stimulus here
	end
	initial 
	begin
	clk=0;
	forever 
	begin
	#5;
	clk = ~clk;
	end
	end
      
endmodule

