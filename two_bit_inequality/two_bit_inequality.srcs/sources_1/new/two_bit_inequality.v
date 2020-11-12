`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/12/2020 02:50:21 PM
// Design Name: 
// Module Name: two_bit_inequality
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: Compares 2 2-bit binary numbers A and B, returns 1 if A > B
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
//  On target board:
// SW0: a[0] low order bit of A
// SW1: a[1] high order bit of A
// SW2: b[0] low order bit of B
// SW3: b[1] high order bit of B
//
//////////////////////////////////////////////////////////////////////////////////


module two_bit_inequality(input [1:0] a, b, output gt);

//             a       b       c       d
assign gt = (~a[1] & a[0]  & ~b[1] & ~b[0]) | 
            (a[1]  & ~a[0] & ~b[1] & ~b[0]) |
				(a[1]  & ~a[0] & ~b[1] & b[0])  |
				(a[1]  & a[0]  & ~b[1] & ~b[0]) |
				(a[1]  & a[0]  & ~b[1] & b[0])  |
				(a[1]  & a[0]  & b[1]  & ~b[0]);


endmodule
