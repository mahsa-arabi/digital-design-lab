`timescale 1ns / 1ps
`include "registerFile.v"

module registerFileTb;
reg  [31:0] data;
reg  [4:0]writeAd;
reg  writeCntrl,clk;
reg  [4:0]readReg1,readReg2;
wire  [31:0] read1,read2;

registerFile #(32)myReg (.data(data),.writeCntrl(writeCntrl),
.readReg1(readReg1),.readReg2(readReg2),.clk(clk),.read1(read1),.read2(read2),.writeAd(writeAd));

 initial begin
   $dumpfile("registerFileTb.vcd");
   $dumpvars(0,registerFileTb);

  data = 32'b0;
  writeAd = 4'b0;
  writeCntrl =1'b0;
  clk =1'b0;
  readReg1=4'b0;
  readReg2=4'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule