`timescale 1ns/1ns
`include "fourthStage.v"
`include "clock.v"

module fourthStage_tb;
    parameter Width = 32;

    reg zero;
    reg [Width-1:0] ALUResult, adderResult, ReadData2;
    reg [4:0] rd0;
    reg [5:0] controlSignal;  
    wire clk;
    clock c(clk); 
    wire [Width-1:0] AdderResult, readData, Aluresult;
    wire sel;
    wire [2:0] controlsignal0;
    wire [4:0] rd;


    fourthStage name(.clk(clk),.adderResult(adderResult),.ALUResult(ALUResult),.ReadData2(ReadData2),
    .zero(zero),.controlSignal(controlSignal),.AdderResult(AdderResult),.readData(readData),
    .Aluresult(Aluresult),.sel(sel),.controlsignal0(controlsignal0),.rd(rd));

    initial begin
         $dumpfile("fourthStage_tb.vcd");
         $dumpvars(0,fourthStage_tb);

         ALUResult = 32'b0;
         adderResult = 32'b0;
         ReadData2 = 32'b0;
         zero = 1'b0;
         rd0 =5'b1;
         controlSignal =6'b1;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule