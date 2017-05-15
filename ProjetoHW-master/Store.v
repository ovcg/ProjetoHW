module store(IN,MDR,StoreCtrl,S);

input [31:0]IN;
input [31:0] MDR;
input StoreCtrl;
wire [7:0] eight_bits;
assign eight_bits = IN[31:24];
wire [15:0] sixteen_bits;
assign sixteen_bits = IN[31:16];
wire [23:0]MDR_24;
assign MDR_24 = MDR[23:0];
wire [15:0] MDR_16;
assign MDR_16 = MDR [15:0];
output [31:0] S;

reg S;
always @(IN or StoreCtrl)
	begin
	case(StoreCtrl)
	2'b00 : S = IN;
	2'b01 : S = {eight_bits, MDR_24};
	2'b10 : S = {sixteen_bits,MDR_16};	
	endcase
	end
endmodule