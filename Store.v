module store(IN,StoreCtrl,S);

input [31:0]IN;
input StoreCtrl;
wire [7:0] eight_bits;
assign eight_bits = IN[7:0];
wire [15:0] sixteen_bits;
assign sixteen_bits = IN[15:0];
output [31:0] S;

reg S;
always @(IN or storeCtrl)
	begin
	case(storeCtrl)
	2'b00 : assign S = IN;
	2'b01 : assign S = {{24{eight_bits[7]}}, eight_bits};
	2'b10 : assign S = {{16{sixteen_bits[15]}},sixteen_bits};	
	endcase
	end
endmodule