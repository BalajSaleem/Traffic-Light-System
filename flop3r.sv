`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/26/2018 08:09:59 PM
// Design Name: 
// Module Name: flop3r
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


module flop3r(
    input logic clk,
    input logic reset,
    input logic [2:0] d,
    output logic [2:0] q
    );
    
    always_ff @(posedge clk,posedge reset)
    if (reset) q <= 3'b0;
    else q <= d;
    
    
endmodule
