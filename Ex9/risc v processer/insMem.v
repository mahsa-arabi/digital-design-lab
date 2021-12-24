module insMem(adress,readData);
parameter Width = 32;
input [Width-1:0]adress;
output [Width-1:0]readData;
reg temp;
assign readData = temp;
reg [Width-1:0] mem [256:0];     
initial
begin
mem[0] = 32'h002081B3; // add $1, $2, $3
mem[4] = 32'h403202B3; // sub $4, $3, $5
mem[8] = 32'h00308383; // lw $7, 3($1)
mem[12] = 32'h0013F333; // and $7, $1, $6
mem[24] = 32'h00210463; // beq $2, $3, 4 // 4 is offset
mem[48] = 32'h00110293; // addi $5, $2, 1
mem[56] = 32'h00517293; // andi $5, $2, 5
end
assign readData = mem[adress];
// integer i;
// initial begin
//   temp = 0;
//   for (i = 0; i < 256; i = i + 1) begin
//     mem[i] = i;
//   end
//   temp = mem[adress];
// end
  
endmodule