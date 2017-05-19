module Mux4_1 (sel, S, E0, E1, E2, E3);


input [1:0]sel;
input [0:0]E0;
input [0:0]E1;
input [0:0]E2;
input [0:0]E3;
output [0:0]S;


assign S[0] = (((~sel[0] & ~sel[1] ) & E0[0]) | ((sel[0] & ~sel[1] ) & E1[0]) | ((~sel[0] & sel[1] ) & E2[0]) | ((sel[0] & sel[1] ) & E3[0]));


endmodule