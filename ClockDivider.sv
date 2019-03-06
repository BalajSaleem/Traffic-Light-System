`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Balaj Saleem
// 
// Create Date: 11/26/2018 09:28:47 PM
// Design Name: 
// Module Name: ClockDivider
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


module ClockDivider(
 input clk_in,
 output clk_out
 );

logic [25:0] count = {26{1'b0}};
logic clk_NoBuf;
always@ (posedge clk_in) begin
count <= count + 1;
end
// you can modify 25 to have different clock rate
assign clk_NoBuf = count[25];
BUFG BUFG_inst (
 .I(clk_NoBuf), // 1-bit input: Clock input
 .O(clk_out) // 1-bit output: Clock output
);
endmodule

