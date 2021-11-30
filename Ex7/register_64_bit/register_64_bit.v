module register_64_bit (
    data,enable,writeCntrl,readReg1,readReg2,clk,read1,read2,writeAd
);
input [7:0] data ;
input [1:0]writeAd;
input writeCntrl,enable,clk;
reg [7:0] writeReg [7:0];
input [7:0]readReg1,readReg2;
output [7:0] read1,read2;

always @(negedge clk) begin
    if(enable)begin
         if(writeCntrl) begin
          writeReg[writeAd]<=data;
     end
    end
      
end
assign read1 = writeReg[readReg1];
assign read2 = writeReg[readReg2];

    
endmodule
