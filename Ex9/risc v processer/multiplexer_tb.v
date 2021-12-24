`timescale 1ns/1ns
`include "multiplexer.v"

module multiplexer_tb;
    parameter Width = 32;
    reg [Width -1 : 0] input0,input1;
    reg s;
    wire [Width -1 : 0] y;

    multiplexer #(32)name(.input0(input0),.input1(input1),.s(s),.y(y));

    initial begin
        $dumpfile("multiplexer_tb.vcd");
         $dumpvars(0,multiplexer_tb);

         #2 input0 = 32'b1;
         #2 s = 1'b0;
         #2 input1 = 32'b0;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule