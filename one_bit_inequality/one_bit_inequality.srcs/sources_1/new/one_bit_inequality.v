`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/12/2020 05:30:40 AM
// Design Name: 
// Module Name: one_bit_inequality
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: Compares two 1-bit values, A and B, returns 1 if A > B.
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: From Pong Chu FPGA Prototyping with Verilog
// 
// Truth table:
//     A  B | Y
//     -  -   -
//     0  0 | 0
//     0  1 | 0
//     1  0 | 1
//     1  1 | 0
//////////////////////////////////////////////////////////////////////////////////

module one_bit_inequality(input a, b, output gt);

assign gt = a & ~b;

endmodule
