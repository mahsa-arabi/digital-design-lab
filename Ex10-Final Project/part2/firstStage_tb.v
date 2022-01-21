`timescale 1ns/1ns
`include "firstStage.v"
`include "multiplexer.v" 
`include "clock.v"

module firstStage_tb;
    parameter Width = 32;
    reg [Width-1 : 0]adderResult,pcAddFour;
    reg pc_enable,PCSrc;
    wire clk;
    clock c(clk); 
    wire [Width-1 : 0]addressOut,instruction;

    firstStage name(.clk(clk),.PCSrc(PCSrc),.pc_enable(pc_enable),.pcAddFour(pcAddFour),
    .adderResult(adderResult),.addressOut(addressOut),.instruction(instruction));

    initial begin
         $dumpfile("firstStage_tb.vcd");
         $dumpvars(0,firstStage_tb);

         PCSrc =1'b1;
         pc_enable =1'b1;
         pcAddFour = 32'b0;
         adderResult = 32'b0;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule