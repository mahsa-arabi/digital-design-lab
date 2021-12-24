`timescale 1ns/1ns
`include "multiplexer2.v"

module multiplexer2_tb;
    parameter Width = 32;
    reg [Width -1 : 0] input0,input1,input2;
    reg [1:0]s;
    wire [Width -1 : 0] out;

    multiplexer2 #(32)name(.input0(input0),.input1(input1),.input2(input2),.s(s),.out(out));

    initial begin
        $dumpfile("multiplexer2_tb.vcd");
         $dumpvars(0,multiplexer2_tb);

         #2 input0 = 32'b1;
         #2 s = 2'b0;
         #2 input1 = 32'b0;
         #2 input2 = 32'b0;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule