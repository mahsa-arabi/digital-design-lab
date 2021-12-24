`timescale 1ns/1ns
`include "addFour.v"

module addFour_tb;
parameter Width = 32;
reg [Width-1:0] input0;
wire [Width-1:0] sum;
addFour adder(.input0(input0),.sum(sum));

 initial begin
   $dumpfile("addFour_tb.vcd");
   $dumpvars(0,addFour_tb);

  input0 = 1234;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end
    
endmodule