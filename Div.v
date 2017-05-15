module Div(A,B,clk,zero,divCtrl,S,reset);

input [31:0] A;
input [31:0] B;
input clk,divCtrl,zero,reset;
output [63:0] S;

reg [63:0] Remainder;
reg [63:0] Divisor;
reg [63:0] Quotient;
reg [5:0] counter;

endmodule