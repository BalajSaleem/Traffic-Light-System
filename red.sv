`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 11:44:30 PM
// Design Name: 
// Module Name: red
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
// 
//////////////////////////////////////////////////////////////////////////////////


module red(
    input logic clk, reset,
    input logic [2:0] nxtS,
    output logic [2:0] s
    );
    
    //logic clkOut;
    
    //ClockDivider(clk,clk);
    
    flop3r flp(clk,reset ,nxtS, s);
    
endmodule
