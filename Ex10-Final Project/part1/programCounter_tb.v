`timescale 1ns / 1ps
`include "programCounter.v"

module programCounter_tb;

parameter width = 32;
reg enable,clk;
reg [width -1:0] adr;
wire [width -1 : 0] pc;
programCounter myReg (.enable(enable),.adr(adr),.clk(clk),.pc(pc));

 initial begin
   $dumpfile("programCounter_tb.vcd");
   $dumpvars(0,programCounter_tb);

  adr = 32'b0;
  enable =1'b0;
  clk =1'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule