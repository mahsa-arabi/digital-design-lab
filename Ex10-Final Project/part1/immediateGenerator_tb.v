`timescale 1ns / 1ps
`include "immediateGenerator.v"

module immediateGenerator_tb;


reg [31:0] instructor;
wire [63 : 0] outputData;
immediateGenerator n (.instructor(instructor),.outputData(outputData));

 initial begin
   $dumpfile("immediateGenerator_tb.vcd");
   $dumpvars(0,immediateGenerator_tb);

  instructor = 32'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule