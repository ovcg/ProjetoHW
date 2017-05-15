module SignedExtend_to_32(input [7:0] IN, output [31:0] S);

	assign S = {{24{IN[7]}}, IN};
	
endmodule