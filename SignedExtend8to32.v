module SignedExtend8to32(input [7:0] A, output [31:0] Z);	

	assign Z = {{24{A[7]}}, A};

endmodule