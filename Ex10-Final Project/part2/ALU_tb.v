`timescale 1ns / 1ps  
`include "ALU.v"

module ALU_tb;

 reg[31:0] input0,input1;
 reg[3:0] select;
 wire[31:0] output0;
 integer i;
 ALU myALU(.input0(input0),.input1(input1),.select(select),.output0(output0),.zero(zero));
    initial begin
        $dumpfile("ALU_tb.vcd");
        $dumpvars(0,ALU_tb);
        
      input0 = 8'b0;
      input1 = 4'b0;
      select = 4'b0;
      
    end
    initial begin
         $display("test completed");
    end

endmodule