`timescale 1ns/1ns
`include "fifthStage.v"
`include "clock.v"
`include "multiplexer.v"

module fifthStage_tb;
    parameter Width = 32;

    reg [Width-1:0] readData,ALUResult;
    reg [2:0] controlsignals;
    reg [4:0] Rd;
    wire RegWrite;
    wire [Width-1:0] Writeback;
    wire [4:0] rd;

    fifthStage name(.readData(readData),.ALUResult(ALUResult),.controlsignals(controlsignals)
    ,.Rd(Rd),.RegWrite(RegWrite),.Writeback(Writeback),.rd(rd));

    initial begin
         $dumpfile("fifthStage_tb.vcd");
         $dumpvars(0,fifthStage_tb);

         readData = 32'b0;
         ALUResult = 32'b0;
         controlsignals = 3'b0;
         Rd =5'b1;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule