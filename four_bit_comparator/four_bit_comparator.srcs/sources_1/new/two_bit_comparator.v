`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/20/2020 08:49:43 AM
// Design Name: 
// Module Name: two_bit_comparator
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: Compares magnitude of 2 2-bit numbers a, b.  Returns a 1 if:
//                 a > b
//                 a < b
//                 a = b
//               The outputs are mutually exclusive.	
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module two_bit_comparator(
    input [1:0] a,
    input [1:0] b,
    output a_gt_b,
    output a_lt_b,
    output a_eq_b
    );

  assign a_gt_b = (a[1] & ~b[1]) | (~(a[1] ^ b[1]) & a[0] & ~b[0]);
  assign a_lt_b = (~a[1] & b[1]) | (~(a[1] ^ b[1]) & ~a[0] & b[0]);
  assign a_eq_b = ~(a[1] ^ b[1]) & ~(a[0] ^ b[0]);
  
endmodule

