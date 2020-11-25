`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/25/2020 07:14:34 AM
// Design Name: 
// Module Name: encode_2_4_case
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
//  This version uses a vector for input a.  It also doesn't tie the 'en' input to the
//  output as in the dataflow version.
//////////////////////////////////////////////////////////////////////////////////


module encode_2_4_case(input [1:0] a, input en, output reg [3:0] z, output reg en_out);

 always @*
     case ({en, a})
       3'b000, 
       3'b001, 
       3'b010, 
       3'b011 : begin
                  z = 4'b0000;
                  en_out = 1'b0;
                 end
       3'b100 : begin
                  z = 4'b0001;
                  en_out = 1'b1;
                end
       3'b101 : begin 
                  z = 4'b0010;
                  en_out = 1'b1;
                end
       3'b110 : begin
                  z = 4'b0100;
                  en_out = 1'b1;
                end
       3'b111 : begin
                  z = 4'b1000;
                  en_out = 1'b1;
                end
     endcase
     
endmodule
