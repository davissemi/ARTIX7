`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0 (davissemi@gmail.com)
// 
// Create Date: 11/20/2020 08:51:02 AM
// Design Name: 
// Module Name: four_bit_comparator_tb
// Project Name: 
// Target Devices: Artix A7-35T
// Tool Versions: Vivado 2020.1
// Description: Verilog Test Fixture created for module: four_bit_comparator
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module four_bit_comparator_tb;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;

	// Outputs
	wire a_gt_b;
	wire a_lt_b;
	wire a_eq_b;

	// Instantiate the Unit Under Test (UUT)
	four_bit_comparator uut (
		.a(a), 
		.b(b), 
		.a_gt_b(a_gt_b), 
		.a_lt_b(a_lt_b), 
		.a_eq_b(a_eq_b)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
      a = 4'b1101;
		b = 4'b0101;
		#200;
		
		a = 4'b0101;
		b = 4'b1101;
		#200;
		
		a = 4'b1111;
		b = 4'b1111;
		#200;
		
		$stop;
	end
   
	initial begin
	  $monitor("a = %b%b%b%b, b = %b%b%b%b, a>b = %b, a<b = %b, a=b = %b", a[3],a[2],a[1],a[0], b[3],b[2],b[1],b[0], a_gt_b, a_lt_b, a_eq_b);
	end
endmodule
