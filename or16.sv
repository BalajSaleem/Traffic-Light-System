`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 11:13:58 PM
// Design Name: 
// Module Name: or16
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


module or16(
    input logic a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,
    output logic z
    );
    
    assign z = a|b|c|d|e|f|g|h|i|j|k|l|m|n|o|p;
    
endmodule
