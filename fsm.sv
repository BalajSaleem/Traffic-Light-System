`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Balaj Saleem 
// 
// Create Date: 11/26/2018 11:53:01 PM
// Design Name: 
// Module Name: fsm
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


module fsm(
    
    input logic sB,sA,reset,clk,
    output logic [1:0] lA,lB 
    
    );
    logic [2:0] s;
    logic [2:0] nxtS;
    
    blue b(s,sA,sB,nxtS);
    red r(clk, reset, nxtS,s);
    green g(s,lA,lB); 
    
    
endmodule
