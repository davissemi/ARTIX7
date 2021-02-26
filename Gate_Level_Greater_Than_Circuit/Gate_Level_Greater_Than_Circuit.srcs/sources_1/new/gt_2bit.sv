`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 02/26/2021 10:04:50 AM
// Design Name: Gate Level Greater Than Circuit
// Module Name: gt_2bit
// Project Name: Gate Level Greater Than Circuit
// Target Devices: Nexys A7-100T
// Tool Versions: Vivado 2020.1
// Description: Implements a 2 bit greater than comparator
// 
// Dependencies: 
// 
// Revision:
// Revision 0.0.1 - File Created
// Additional Comments: Experiment 2.6.1, FPGA Prototyping by SystemVerilog 
//                      Examples. Chu, Pong P. Wiley, 2018
// 
//////////////////////////////////////////////////////////////////////////////////


module gt_2bit(input logic [1:0] a, b,
               output logic gt_out);

    logic p0, p1, p2, p3, p4, p5; // products

    // Unsimplified sum of products
    assign gt_out = p0 | p1 | p2 | p3 | p4 | p5;

    assign p0 = (~a[1] & a[0]) & (~b[1] & ~b[0]);
    assign p1 = (a[1] & ~a[0]) & (~b[1] & ~b[0]);
    assign p2 = (a[1] & ~a[0]) & (~b[1] & b[0]);
    assign p3 = (a[1] & a[0]) & (~b[1] & ~b[0]);
    assign p4 = (a[1] & a[0]) & (~b[1] & b[0]);
    assign p5 = (a[1] & a[0]) & (b[1] & ~b[0]);
endmodule
