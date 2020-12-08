`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 12/03/2020 04:29:35 PM
// Design Name: 
// Module Name: mux_4_to_1_tb
// Project Name: 
// Target Devices: Arty A7-35T 
// Tool Versions: Vivado 2020.1
// Description: Test fixture for mux_4_to_1.v
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_4_to_1_tb;

reg [3:0] D;
reg [1:0] SEL;

wire Y;

mux_4_to_1 uut(.x(D), .sel(SEL), .y(Y));

initial begin
   // init inputs
   D = 4'b0000;
   SEL = 2'b00;
   
   #100;
   
   // Stimulus
   D = 4'b0100;
   SEL = 2'b00; // Y = 0
   #200;
   
   D = 4'b0001;
   SEL = 2'b00; // Y = 1
   #200;
   
   D = 4'b0101;
   SEL = 2'b01; // Y = 0
   #200;
   
   D = 4'b0110;
   SEL = 2'b01; // Y = 1
   #200;
   
   D = 4'b0100;
   SEL = 2'b10; // Y = 1
   #200;
   
   D = 4'b1000;
   SEL = 2'b11; // Y = 1;
   #200;
   
   D = 4'b0100;
   SEL = 2'b11; // Y = 0
   #200;
 end
 
 initial begin
    $monitor("D = %b%b%b%b, SEL = %b%b, Y = %b", D[3],D[2],D[1],D[0],SEL[1],SEL[0],Y);
 end
endmodule
