module dataMemory (address,write_data, memwrite, memread,clk,read_data );
input  [31:0] address; 
input  [31:0] write_data;    
input  memwrite, memread,clk;         
output reg [31:0] read_data;   
reg [31:0] mem [0:255]; 

integer i;

initial begin
  read_data <= 0;
  for (i = 0; i < 256; i = i + 1) begin
    mem[i] = i;
  end
end

always @(posedge clk) begin
  if (memwrite == 1'b1) begin
    mem[address] <= write_data;
  end
 
  if (memread == 1'b1) begin
    read_data <= mem[address];
  end
end

endmodule