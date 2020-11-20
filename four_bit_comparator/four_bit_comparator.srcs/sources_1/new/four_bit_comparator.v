`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/20/2020 08:16:59 AM
// Design Name: 
// Module Name: four_bit_comparator
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module four_bit_comparator(input [3:0] a, input [3:0] b, output a_gt_b, output a_lt_b, output a_eq_b);
 
   // High order bits of a and b
   wire [1:0] a_high_bits;
	wire [1:0] a_low_bits;
	
	// Low order bits of a and b 
	wire [1:0] b_high_bits;
	wire [1:0] b_low_bits;
	
	// a > b, a < b, a = b outputs from low order 2-bit comparator
	wire lsb_a_gt_b;
	wire lsb_a_lt_b;
	wire lsb_a_eq_b;
	
	// a > b, a < b, a = b outputs from high order 2-bit comparator
	wire msb_a_gt_b;
	wire msb_a_lt_b;
	wire msb_a_eq_b;
	
	// extract the high order bits from input a to be processed by the 2-bit comparator
	assign a_high_bits[1] = a[3];
	assign a_high_bits[0] = a[2];
	
	// extract the low order bits from input a to be processed by the 2-bit comparator
	assign a_low_bits[1] = a[1];
	assign a_low_bits[0] = a[0];
	
	// extract the high order bits from input b to be processed by the 2-bit comparator
	assign b_high_bits[1] = b[3];
	assign b_high_bits[0] = b[2];
	
	// extract the low order bits from input b to be processed by the 2-bit comparator
	assign b_low_bits[1] = b[1];
	assign b_low_bits[0] = b[0];
	
	// run the high order and low order bits through the 2-bit comparators
   two_bit_comparator msb_cmp(.a(a_high_bits), .b(b_high_bits), .a_gt_b(msb_a_gt_b), .a_lt_b(msb_a_lt_b), .a_eq_b(msb_a_eq_b));
	two_bit_comparator lsb_cmp(.a(a_low_bits), .b(b_low_bits), .a_gt_b(lsb_a_gt_b), .a_lt_b(lsb_a_lt_b), .a_eq_b(lsb_a_eq_b));
	
	// glue logic to tie outputs of the two 2-bit comparators together for final output of the 4-bit comparator
	assign a_eq_b = msb_a_eq_b & lsb_a_eq_b;
	assign a_gt_b = msb_a_gt_b | (msb_a_eq_b & lsb_a_gt_b);
	assign a_lt_b = (msb_a_eq_b & lsb_a_lt_b) | msb_a_lt_b;
	
endmodule

