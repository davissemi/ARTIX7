`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 12/03/2020 03:56:47 PM
// Design Name: 
// Module Name: mux_4_to_1
// Project Name: 
// Target Devices: Arty A7-35T
// Tool Versions: Vivado 2020.1
// Description: 4-to-1 multiplexer
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4_to_1(
    input [1:0] sel,
    input [3:0] x,
    output reg y
    );
    
   always @*
    begin       
       case (sel)
         2'b00: y = x[0];
         2'b01: y = x[1];
         2'b10: y = x[2];
         2'b11: y = x[3];
       endcase
    end
endmodule
