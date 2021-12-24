module registerFile #(parameter width = 32)(
    data,writeCntrl,readReg1,readReg2,clk,read1,read2,writeAd
);

input [width-1 :0] data ;
input [4:0]writeAd; //5 bit wide 
input writeCntrl,enable,clk;
reg [width -1:0] writeReg [width -1:0];
input [4:0]readReg1,readReg2;
output [width -1 :0] read1,read2;

initial
begin
  writeReg[1] = 32'h00000001;
  writeReg[2] = 32'h00000002;
  writeReg[3] = 32'h00000003;
  writeReg[4] = 32'h00000004;
  writeReg[5] = 32'h00000005;
  writeReg[6] = 32'h00000006;
  writeReg[7] = 32'h00000007;
  writeReg[8] = 32'h00000008;
  writeReg[9] = 32'h00000009;
  writeReg[10] = 32'h00000010;
end
always @(negedge clk) begin
    begin
         if(writeCntrl) begin
          writeReg[writeAd]<=data;
     end
    end
      
end
assign read1 = writeReg[readReg1];
assign read2 = writeReg[readReg2];

    
endmodule
