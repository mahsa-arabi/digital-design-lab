`timescale 1ns / 1ps
`include "insMem.v"

module insMem_tb;
reg  [31:0]dataIn,adress;
reg write,clk,read;
wire  [31:0]dataOut;

insMem ins (.dataIn(dataIn),.adress(adress),.clk(clk),.dataOut(dataOut),.write(write),.read(read));

 initial begin
   $dumpfile("insMem_tb.vcd");
   $dumpvars(0,insMem_tb);

  dataIn = 32'b0;
  adress = 32'b0;
  write =1'b0;
  read =1'b0;
  clk =1'b0;
  #100;
  $stop();
  
  end
 
 initial begin
    $display("test completed");
 end

endmodule