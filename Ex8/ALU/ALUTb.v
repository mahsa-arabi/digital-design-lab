`timescale 1ns / 1ps  
`include "ALU.v"

module ALUTb;

 reg[63:0] input0,input1;
 reg[3:0] select;
 wire[63:0] output0;
 wire carry;
 integer i;
 ALU myALU(.input0(input0),.input1(input1),.select(select),.output0(output0),.carry(carry),.zero(zero));
    initial begin
        $dumpfile("ALUTb.vcd");
        $dumpvars(0,ALUTb);
        
      input0 = 8'b0;
      input1 = 4'b0;
      select = 4'b0;
      
    end
    initial begin
         $display("test completed");
    end

endmodule