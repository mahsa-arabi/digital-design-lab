`timescale 1ns/1ns
`include "adder_64_bit.v"

module adder_64_bit_tb;

reg [63:0] input1,input2;
wire [63:0] sum;
adder_64_bit adder(.input1(input1),.input2(input2),.sum(sum));

 initial begin
   $dumpfile("adder_64_bit_tb.vcd");
   $dumpvars(0,adder_64_bit_tb);

  input1 = 1234;
  input2 = 5678;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end
    
endmodule