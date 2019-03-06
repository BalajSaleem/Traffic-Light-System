`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Balaj Saleem 
// 
// Create Date: 11/26/2018 09:15:13 PM
// Design Name: 
// Module Name: decoder3to8
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


module decoder2to8(
    input logic [2:0] in,
    output logic [32:0] out
    );
    
    always_comb
    begin
    out = 0;
    case(in)
    3'b000 : out = 8'b00000001;
    3'b001 : out = 8'b00000010;
    3'b010 : out = 8'b00000100;
    3'b011 : out = 8'b00001000;
    3'b100 : out = 8'b00010000;
    3'b101 : out = 8'b00100000;
    3'b110 : out = 8'b01000000;
    3'b111 : out = 8'b10000000;
    default : out = 8'bxxxxxxxx;
    endcase
    end
endmodule
