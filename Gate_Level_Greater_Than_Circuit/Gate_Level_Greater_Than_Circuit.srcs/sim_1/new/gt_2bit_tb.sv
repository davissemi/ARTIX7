`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Davis Semiconductor
// Engineer: psd0
// 
// Create Date: 02/26/2021 10:04:50 AM
// Design Name: Gate Level Greater Than Circuit
// Module Name: gt_2bit_tb
// Project Name: Gate Level Greater Than Circuit
// Target Devices: Nexys A7-100T
// Tool Versions: Vivado 2020.1
// Description: Test bench for 2 bit greater than comparator
// 
// Dependencies: 
// 
// Revision:
// Revision 0.0.1 - File Created
// Additional Comments: Experiment 2.6.1, FPGA Prototyping by SystemVerilog 
//                      Examples. Chu, Pong P. Wiley, 2018
// 
//////////////////////////////////////////////////////////////////////////////////


module gt_2bit_tb;

    // signal declarations
    logic [1:0] test_a, test_b;
    logic test_gt_out;

    // instantiate the circuit under test
    gt_2bit uut(.a(test_a), .b(test_b), .gt_out(test_gt_out));

    initial begin
        // test vector 1
        test_a = 2'b00;
        test_b = 2'b00;
        #200;

        // test vector 2
        test_a = 2'b01;
        test_b = 2'b00;
        #200;

        // test vector 3
        test_a = 2'b01;
        test_b = 2'b11;
        #200;

        // test vector 4
        test_a = 2'b10;
        test_b = 2'b10;
        #200;

        // test vector 5
        test_a = 2'b10;
        test_b = 2'b00;
        #200;

        // test vector 6
        test_a = 2'b11;
        test_b = 2'b11;
        #200;

        // test vector 7
        test_a = 2'b11;
        test_b = 2'b01;
        #200;

        $stop;
    end
endmodule
