`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Balaj Saleem 
// 
// Create Date: 11/26/2018 09:56:30 PM
// Design Name: 
// Module Name: blue
// Project Name: Trafic Light Control 
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


module blue(
    input logic [2:0] s,
    input logic sB,
    input  logic sA,
    output logic [2:0] nxtS
    );
    
    logic [4:0] dIn;
    assign dIn[4] = s[2];
    assign dIn[3] = s[1];
    assign dIn[2] = s[0];
    assign dIn[1] = sB;
    assign dIn[0] = sA; 
    
    logic nxtS2,nxtS1,nxtS0;
     
     logic [31:0]o;
     decoder5to32 dc(dIn,o);
     
     or16 or1(o[12],o[13],o[14],o[15],o[16],o[17],o[18],o[19],o[20],o[21],o[22],o[23],o[24],o[25],o[26],o[27],nxtS2);
     or16 or2(o[4],o[5],o[6],o[7],o[8],o[9],o[10],o[11],o[20],o[21],o[22],o[23],o[24],o[25],o[26],o[27],nxtS1);
     or16 or3(o[0],o[1],o[8],o[9],o[10],o[11],o[16],o[17],o[24],o[25],o[26],o[27],0,0,0,0,nxtS0);
     
     
      
    assign nxtS[0] = nxtS0;
    assign nxtS[1] = nxtS1;
    assign nxtS[2] = nxtS2; 
    logic clkOut;      
     
    
endmodule
