module UnidadeControle(
	input [5:0] op, 
	input [5:0] funct, 
	input zero, 
	input overflow, 
	input clk, 
	input reset,
	output reg RegWrite,
	output reg IrWrite,
	output reg PcWrite,
	output reg PcWriteCond,
	output reg MemRead,
	output reg MemWrite,
	output reg Addiu,
	output reg EpcWrite,
	output reg AluOutWrite,
	output reg DivControl,
	output reg MultControl,
	output reg MdrControl,
	output reg [1:0] AluSrcA,
	output reg [1:0] AluSrcB,
	output reg [1:0] BranchControl,
	output reg [1:0] MuxAlu,
	output reg [1:0] ShiftControl1,
	output reg [1:0] ShiftControl2,
	output reg [2:0] MemToReg,
	output reg [2:0] PcSource,
	output reg [2:0] Iord,
	output reg [2:0] RegDst,
	output reg [2:0] AluOp,
	output reg [2:0] StoreControl,
	output reg [2:0] LoadControl,
	output reg [2:0] ShiftControl
);

initial
begin
	RegWrite 		= 1'b0;
	IrWrite 		= 1'b0;
	PcWrite 		= 1'b0;
	PcWriteCond 	= 1'b0;
	MemRead 		= 1'b0;
	MemWrite 		= 1'b0;
	Addiu 			= 1'b0;
	EpcWrite 		= 1'b0;
	AluOutWrite 	= 1'b0;
	DivControl 		= 1'b0;
	MultControl 	= 1'b0;
	MdrControl 		= 1'b0;
	AluSrcA 		= 2'b00;
	AluSrcB 		= 2'b00;
	BranchControl 	= 2'b00;
	MuxAlu 			= 2'b00;
	ShiftControl1 	= 2'b00;
	ShiftControl2 	= 2'b00;
	MemToReg 		= 3'b000;
	PcSource 		= 3'b000;
	Iord 			= 3'b000;
	RegDst 			= 3'b000;
	AluOp 			= 3'b000;
	StoreControl 	= 3'b000;
	LoadControl 	= 3'b000;
	ShiftControl 	= 3'b000;
end

endmodule