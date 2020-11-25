`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/25/2020 09:10:07 AM
// Design Name: 
// Module Name: encode_2_3_case_tb
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: 2-to-4 encoder with enable test bench
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module encode_2_4_tb;

	// Inputs
	reg en;
	reg [1:0] a;

	// Outputs
	wire [3:0] z;

	// Instantiate the Unit Under Test (UUT)
	encode_2_4_case uut (
		.en(en), 
		.a(a),
		.z(z)
	);

	initial begin
		// Initialize Inputs
		en = 0;
		a[1] = 0;
		a[0] = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
        en = 1'b0;
		a[1] = 1'b1;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b0;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b0;
		a[0] = 1'b1;
		#200;
		
		en = 1'b1;
		a[1] = 1'b1;
		a[0] = 1'b0;
		#200;
		
		en = 1'b1;
		a[1] = 1'b1;
		a[0] = 1'b1;
		#200;
		
		$stop;
	end
   
   initial begin
       $monitor("en = %b, a1 = %b, a0 = %b, z = %b%b%b%b", en, a[1], a[0], z[3],z[2],z[1],z[0]);
   end
	
endmodule

