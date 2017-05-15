module SignedExtend16_to_32(input [15:0] IN, output [31:0] S);

	assign S = {{16{IN[15]}}, IN};
	
endmodule