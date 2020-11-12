`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/12/2020 02:53:25 PM
// Design Name: 
// Module Name: two_bit_inequality_tb
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: Verilog Test Fixture for module: two_bit_inequality
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module two_bit_inequality_tb;

// Inputs
	reg [1:0] a;
	reg [1:0] b;

	// Outputs
	wire gt;

	// Instantiate the Unit Under Test (UUT)
	two_bit_inequality uut (
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
      a[1] = 1'b0;
		a[0] = 1'b0;
		b[1] = 1'b0;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b0;
		b[1] = 1'b0;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b0;
		b[1] = 1'b1;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b0;
		b[1] = 1'b1;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b1;
		b[1] = 1'b0;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b1;
		b[1] = 1'b0;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b1;
		b[1] = 1'b1;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b0;
		a[0] = 1'b1;
		b[1] = 1'b1;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b0;
		b[1] = 1'b0;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b0;
		b[1] = 1'b0;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b0;
		b[1] = 1'b1;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b0;
		b[1] = 1'b1;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b1;
		b[1] = 1'b0;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b1;
		b[1] = 1'b0;
		b[0] = 1'b1;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b1;
		b[1] = 1'b1;
		b[0] = 1'b0;
		#200;
		
		a[1] = 1'b1;
		a[0] = 1'b1;
		b[1] = 1'b1;
		b[0] = 1'b1;
		#200;
		
		$stop;
		
	end
   
   initial begin
      $monitor("a = %b%b, b = %b%b, gt = %b", a[1], a[0], b[1], b[0], gt);
   end
   
endmodule
