`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/10/2020 05:18:01 PM
// Design Name: 
// Module Name: one_bit_comparator
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


module one_bit_comparator(
     input [1:0] sw,
	  output led
    );

wire p0, p1;

assign led = p0 | p1;

assign p0 = ~sw[0] & ~sw[1];
assign p1 = sw[0] & sw[1];


endmodule

