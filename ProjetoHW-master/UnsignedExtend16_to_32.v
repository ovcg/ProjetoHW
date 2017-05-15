module UnsignedExtend16_to_32(input [15:0] IN, output [31:0] S);	

	assign Z = {16'b0, IN};

endmodule