`timescale 1ns / 1ps
`include "control.v"
`include "adder.v"
`include "addFour.v"
`include "ALU.v"
`include "ALUControl.v"
`include "dataMemory.v"
`include "immediateGenerator.v"
`include "insMem.v"
`include "multiplexer.v"
`include "multiplexer2.v"
`include "programCounter.v"
`include "registerFile.v"
`include "shiftLeft.v"
`include "clock.v"

module SS_CPU;

wire [31:0] branchaddress,Writedata,Mux10output,ALUOut, DataOutput,pc_input,RD, PC, PCPlus4;
wire [63:0] immediateout,shiftoutput,Mux1output,RD1,RD2,d,e;
wire [3:0] Control; 
wire [1:0] Aluop;
wire MemtoReg;
wire clk;
reg pc_enable;
reg [31:0] pc_input1;
clock c(clk); 
programCounter P1(pc_enable,pc_input1,clk,PC);
addFour A1(PC,PCPlus4);
insMem I1(PC,RD);
control M1(RD[6:0],ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, Branch,Aluop);
registerFile R1(Writedata,RegWrite,RD[19:15],RD[24:20],clk,RD1[31:0],RD2[31:0],RD[11:7]);
immediateGenerator S1(RD[31:0],immediateout);
multiplexer #(64) M4(RD2,immediateout,ALUSrc,Mux1output);
ALUControl A3(Aluop,RD[30],RD[14:12],Control);
assign d = {{32{Mux10output[31]}},Mux10output[31:0]};
ALU A2(d[31:0],Mux1output[31:0],Control,ALUOut,Zero);
dataMemory D1(ALUOut,RD2[31:0],MemWrite,MemRead,clk,DataOutput);
assign e = {{32{PCPlus4[31]}},PCPlus4[31:0]};
multiplexer2 M2(ALUOut,DataOutput,e[31:0],{1'b0,MemtoReg},Writedata);
and Q1(andoutput,Branch,Zero);
shiftLeft #(64) S12(immediateout,shiftoutput);
adder A23(PC,shiftoutput[31:0],branchaddress);
multiplexer M3(PCPlus4,branchaddress,andoutput,pc_input);
    
initial begin
   $dumpfile("SS_CPU.vcd");
   $dumpvars(0,SS_CPU);
   pc_enable =1'b1;
   #10;
   pc_input1 = 32'b0;
   #10;
  end
 
 initial begin
    $display("test completed");
 end
endmodule