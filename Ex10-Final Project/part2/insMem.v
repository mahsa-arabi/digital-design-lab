module insMem(adress,readData);
parameter Width = 32;
input [Width-1:0]adress;
output [Width-1:0]readData;
reg temp;
assign readData = temp;
reg [Width-1:0] mem [256:0];     
initial
begin
// mem[0] = 32'h002081B3; // add x1, x2, x3
// mem[4] = 32'h403202B3; // sub x4, x3, x5
// mem[8] = 32'h00308383; // lw x7, 3(x1)
// mem[12] = 32'h0013F333; // and x7, x1, x6
// mem[16] = 32'h00210463; // beq x2, x3, 4 
// mem[20] = 32'h00110293; // addi x5, x2, 1
// mem[24] = 32'h00517293; // andi x5, x2, 5

mem[0] = 32'hAA03; // lw x20, 0(x10)
mem[4] = 32'h1400AB3; // add x21, 0, x20
mem[8] = 32'h1052A333; // sub x6, x21, x20 
mem[12] = 32'h1452423; // sw x20, 8(x10)
mem[16] = 32'h1E951C63; // beq x20, x21,-4
end
assign readData = mem[adress];
  
endmodule