`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Balaj Saleem 
// 
// Create Date: 11/27/2018 12:54:42 AM
// Design Name: 
// Module Name: TestBench
// Project Name:Trafic Light Control 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module TestBench();
    logic sB,sA,reset, clk;
    logic [1:0] lA,lB;
    
    //create a dut-device under test for test bench
    fsm dut(sB,sA,reset,clk,lA,lB);
    initial begin
            reset = 1; clk =0; sA = 0; sB = 0;
          #10;
            reset = 0; sA = 0; sB = 0;
          #20;
            reset = 0; sA = 0; sB = 1;
          #20;
            reset = 0; sA = 1; sB = 0;
          #20;
            reset = 0; sA = 1; sB = 1;
          #20; 
          // $finish;
    end
    
    always begin
        clk = ~clk; #10;
    end    
endmodule
