module control(opcode,ALUSrc,MemtoReg,RegWrite, MemRead, MemWrite, Branch,Aluop);

input [6:0] opcode;
output ALUSrc,MemtoReg,RegWrite, MemRead, MemWrite, Branch;
output [1:0] Aluop;
reg [8:0] control;
assign {ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,Branch,Aluop} = control;
always @(*)
begin
case(opcode)
7'b0110011 : control <= 8'b00100010; // R-format
7'b0010011 : control <= 8'b11110000; // lw
7'b0100011 : control <= 8'b1x001000; // sw
7'b1100011 : control <= 8'b0x000101; // beq
default : control    <= 8'bxxxxxxxx;
endcase
end
endmodule