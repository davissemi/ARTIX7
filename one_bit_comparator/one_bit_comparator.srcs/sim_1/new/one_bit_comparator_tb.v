`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/10/2020 05:21:36 PM
// Design Name: 
// Module Name: one_bit_comparator_tb
// Project Name: 
// Target Devices: Arty A7
// Tool Versions: Vivado 2020.1
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: From Pong Chu FPGA Prototyping with Verilog
// 
//////////////////////////////////////////////////////////////////////////////////


module one_bit_comparator_tb;

	// Inputs
	reg [1:0] sw;

	// Outputs
	wire led;

	// Instantiate the Unit Under Test (UUT)
	one_bit_comparator uut (
		.sw(sw), 
		.led(led)
	);

	initial begin
		// Initialize Inputs
		sw[0] = 0;
		sw[1] = 0;
        
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        sw[0] = 1'b0;
		sw[1] = 1'b0;
		#200;
		
		sw[0] = 1'b0;
		sw[1] = 1'b1;
		#200;
		
		sw[0] = 1'b1;
		sw[1] = 1'b0;
		#200;
		
		sw[0] = 1'b1;
		sw[1] = 1'b1;
		#200;
		
		$stop;
	end
   
	initial begin
	  $monitor("i0 = %b, i1 = %b, eq = %b\n", sw[0], sw[1], led);
	end
endmodule

