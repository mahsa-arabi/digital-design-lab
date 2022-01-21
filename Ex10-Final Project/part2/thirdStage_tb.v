`timescale 1ns/1ns
`include "thirdStage.v"
`include "multiplexer.v"

module thirdStage_tb;
    parameter Width = 32;

    reg [Width-1:0] readData1,readData2,PC;
    reg [63:0] immediate;
    reg [4:0] rd;
    reg [3:0] ALUcontrol;
    reg [7:0] control;
    reg [4:0] R1,R2;

    wire zero;
    wire [Width-1:0] ALUResult, adderResult, ReadData2;
    wire [4:0] rd0;
    wire [5:0] controlSignal;


    thirdStage name(.readData1(readData1),.readData2(readData2),.PC(PC),.immediate(immediate),
    .rd(rd),.ALUcontrol(ALUcontrol),.control(control),.R1(R1),.R2(R2)
    ,.zero(zero),.ALUResult(ALUResult),.adderResult(adderResult),.ReadData2(ReadData2),
    .rd0(rd0),.controlSignal(controlSignal));

    initial begin
         $dumpfile("thirdStage_tb.vcd");
         $dumpvars(0,thirdStage_tb);

         readData2 = 32'b0;
         readData1 = 32'b0;
         PC = 32'b0;
         immediate =64'b1;
         rd =5'b1;
         ALUcontrol =4'b1;
         control =8'b1;
         R1 =5'b1;
         R2 =5'b1;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule