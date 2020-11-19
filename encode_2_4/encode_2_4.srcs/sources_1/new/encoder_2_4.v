`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 11/18/2020 06:43:16 PM
// Design Name: 
// Module Name: encoder_2_4
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: 2-to-4 encoder with enable
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module encoder_2_4(input en, a0, a1, output [3:0] z, output en_out);

 
 assign z[0] = (~a1 & ~a0) & en;
 assign z[1] = (~a1 & a0)  & en;
 assign z[2] = (a1 & ~a0)  & en;
 assign z[3] = (a1 & a0)   & en;
 assign en_out = en; // Tying output to input -- good idea?

endmodule
