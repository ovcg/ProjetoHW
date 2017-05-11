module mux8( Select, In1, In2, In3, In4, In5, In6, In7, In8, Out );

input In1, In2, In3, In4, In5, In6, In7, In8;
input [2:0] Select;
output Out;
reg Out; //guarda a informação
always@(In1 or In2 or In3 or In4 or In5 or In6 or In7 or In8 or Select)
begin
	case(Select)
	2'b000 : Out = In1;
	2'b001 : Out = In2;
	2'b010 : Out = In3;
	2'b011 : Out = In4;
	2'b100 : Out = In5;
	2'b101 : Out = In6;
	2'b110 : Out = In7;
	2'b111 : Out = In8;
	endcase
	end
 

endmodule
