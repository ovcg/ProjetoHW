module mux4( Select, In1, In2, In3, In4, Out );

input In1, In2, In3, In4;
input [1:0] Select;
output Out;
reg Out; //guarda a informação
always@(In1 or In2 or In3 or In4 or Select)
begin
	case(Select)
	2'b00 : Out = In1;
	2'b01 : Out = In2;
	2'b10 : Out = In3;
	2'b11 : Out = In4;
	endcase
	end
 

endmodule
