`timescale 1ns / 1ps
`include "firstStage.v"
`include "secondStage.v"
`include "thirdStage.v"
`include "fourthStage.v"
`include "fifthStage.v"
`include "clock.v"
`include "multiplexer.v"

module PL_CPU;
parameter Width=32;
wire clk;
clock c(clk); 

wire [31 : 0]adderResult,pcAddFour;
reg pc_enable;
reg PCSrc;
wire sel;
assign sel =PCSrc;
wire [31 : 0]addressOut,instruction;

wire [Width-1:0] writeData;
wire regWrite;
wire [4:0] writeAd;
wire [Width-1:0] readData1,readData2,PC;
wire [63:0]immediate;
wire [4:0] rd;
wire [3:0] ALUcontrol;
wire [7:0] control; 
wire [4:0] R1,R2;

wire zero;
wire [Width-1:0] ALUResult, ReadData3;
wire [4:0] rd0;
wire [5:0] controlSignal;

wire [Width-1:0] AdderResult2, readData, Aluresult2;
wire [2:0] controlsignal0;
wire [4:0] rd2;





secondStage second(clk,regWrite,addressOut,instruction,writeData,writeAd,readData1,readData2,PC,
                    immediate,rd,ALUcontrol,control,R1,R2);
firstStage first(clk,PCSrc,pc_enable,pcAddFour,adderResult,addressOut,instruction);
thirdStage third(readData1,readData2,PC,immediate,rd,ALUcontrol,control,R1,R2,
zero,ALUResult, adderResult, ReadData3, rd0 ,controlSignal);

fourthStage fourth(clk,adderResult, ALUResult, ReadData3,zero,controlSignal, rd0,
AdderResult2, readData, Aluresult2 ,sel,controlsignal0,rd2 );

fifthStage fifth(readData,ALUResult,controlSignal[2:0],rd2,RegWrite,writeData,writeAd);
    
initial begin
   $dumpfile("PL_CPU.vcd");
   $dumpvars(0,PL_CPU);
   pc_enable =1'b1;
   PCSrc = 1'b0;

  #100;
  $stop();
  
end
 
initial begin
    $display("test completed");
end
endmodule
