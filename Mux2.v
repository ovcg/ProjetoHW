module mux2 (Select, IN1, IN2, Out1);

input IN1;
input IN2;
input Select;
output Out1;

assign Out1 = (Select) ? IN1 : IN2;

endmodule
