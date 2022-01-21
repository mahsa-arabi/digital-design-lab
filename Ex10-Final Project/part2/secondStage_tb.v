`timescale 1ns/1ns
`include "secondStage.v"
`include "clock.v"

module secondStage_tb;
    parameter Width = 32;

    wire clk;
    clock c(clk); 
     reg [Width-1:0]instruction,pc,writeData;
    reg regWrite;
    reg [4:0] writeAd;
   wire [Width-1:0] readData1,readData2,PC;
   wire [63:0]immediate;
   wire [4:0] rd;
   wire [3:0] ALUcontrol;
   wire [7:0] control; 
   wire [4:0] R1,R2;
    
    secondStage name(.clk(clk),.regWrite(regWrite),.pc(pc),.instruction(instruction),
    .writeData(writeData),.writeAd(writeAd),.readData1(readData1),.readData2(readData2),
    .PC(PC),.immediate(immediate),.rd(rd),.ALUcontrol(ALUcontrol),
    .control(control),.R1(R1),.R2(R2));

    initial begin
         $dumpfile("secondStage_tb.vcd");
         $dumpvars(0,secondStage_tb);

         writeAd =5'b0;
         regWrite =1'b1;
         pc = 32'b0;
         instruction = 32'b0;
         writeData = 32'b0;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule