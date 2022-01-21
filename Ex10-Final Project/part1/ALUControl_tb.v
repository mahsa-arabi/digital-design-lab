`timescale 1ns / 1ps  
`include "ALUControl.v"

module ALUControl_tb;

 reg [1:0] ALUOp;
 reg [2:0]funct3;
 reg funct7;
 wire [3:0] ALUControl;
 ALUControl myALU(.ALUOp(ALUOp) , .funct7(funct7) , .funct3(funct3) , .ALUControl(ALUControl));
    initial begin
        $dumpfile("ALUControl_tb.vcd");
        $dumpvars(0,ALUControl_tb);
        
      ALUOp = 2'b0;
      funct3 = 3'b0;
      funct7 = 0;
      #100;
      $stop();
      
    end
    initial begin
         $display("test completed");
    end

endmodule