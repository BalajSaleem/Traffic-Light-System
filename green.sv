`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:Balaj Saleem 
// 
// Create Date: 11/26/2018 10:42:04 PM
// Design Name: 
// Module Name: green
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


module green(
    input logic [2:0] s,
    output logic [1:0] lA,lB
    
    
    );
    
    logic p;
    logic g;
    logic k;
    mux2to1 m1(s[2],~s[2], s[1], p); //(0cond,1cond,select,out)
    mux2to1 m2(0,~p,s[0],lA[0]); //
    mux2to1 m3(0,p,s[0],lB[0]);
    mux2to1 m4(0,~s[0],s[2],g);
    mux2to1 m5(p,1,g,lA[1]);
    mux2to1 m6(0,~s[0],~s[2],k);
    mux2to1 m7(~p ,1,k,lB[1]);
    
endmodule
