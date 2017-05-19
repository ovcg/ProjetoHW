module SignedExtend16to32(input [15:0] A, output [31:0] Z);	

	assign Z = {{16{A[15]}}, A};

endmodule