`timescale 1ns / 1ps
`include "shiftLeft.v"

module shiftLeft_tb;

parameter width = 32;
reg [width -1:0] dataIn;
wire [width -1 : 0] dataOut;
shiftLeft myShift (.dataIn(dataIn),.dataOut(dataOut));

 initial begin
   $dumpfile("shiftLeft_tb.vcd");
   $dumpvars(0,shiftLeft_tb);

  dataIn = 32'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule