module UnsignedExtend8_to_32(input [7:0] IN, output [31:0] S);	

	assign Z = {24'b0, IN};

endmodule