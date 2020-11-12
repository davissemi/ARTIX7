`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/12/2020 05:33:50 AM
// Design Name: 
// Module Name: one_bit_inequality_tb
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: Verilog Test Fixture for module: one_bit_inequality
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module one_bit_inequality_tb;

// Inputs
	reg a;
	reg b;

	// Outputs
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	one_bit_inequality uut (
		.a(a), 
		.b(b), 
		.gt(gt)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        a = 0;
		b = 0;
		#200;
		
		a = 0;
		b = 1;
		#200;
		
		a = 1;
		b = 0;
		#200;
		
		a = 1;
		b = 1;
		#200;
		
		$stop;
	end
   
	initial begin
	  $monitor("a = %b, b = %b, gt = %b\n", a, b, gt);
	end
endmodule
