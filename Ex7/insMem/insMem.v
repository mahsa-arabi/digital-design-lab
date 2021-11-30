module insMem(dataIn,adress,clk,dataOut,write,read);
input [31:0]dataIn,adress;
input write,clk,read;
output [31:0]dataOut;
reg [31:0] mem [0:1023];       
assign dataOut = (read == 1)?mem[adress]:32'bx;
   always@(negedge clk)
        begin
         if (write == 1) mem[adress] = dataIn;
        end
 
endmodule