`timescale 1ns/1ns
`include "adder.v"

module adder_tb;
parameter Width = 32;
reg [Width-1:0] input0,input1;
wire [Width-1:0] sum;
adder adder(.input0(input0),.input1(input1),.sum(sum));

 initial begin
   $dumpfile("adder_tb.vcd");
   $dumpvars(0,adder_tb);

  input0 = 1234;
  input1 = 4;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end
    
endmodule