`timescale 1ns / 1ps
`include "register_64_bit.v"

module register_64_bit_tb;
reg  [7:0] data;
reg  [1:0]writeAd;
reg  writeCntrl,enable,clk;
reg  [7:0]readReg1,readReg2;
wire  [7:0] read1,read2;

register_64_bit myReg (.data(data),.enable(enable),.writeCntrl(writeCntrl),
.readReg1(readReg1),.readReg2(readReg2),.clk(clk),.read1(read1),.read2(read2),.writeAd(writeAd));

 initial begin
   $dumpfile("register_64_bit_tb.vcd");
   $dumpvars(0,register_64_bit_tb);

  data = 8'b0;
  writeAd = 2'b0;
  writeCntrl =1'b0;
  enable =1'b0;
  clk =1'b0;
  readReg1=8'b0;
  readReg2=8'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule