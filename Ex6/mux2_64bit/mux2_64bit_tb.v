`timescale 1ns/1ns
`include "mux2_64bit.v"

module mux2_64bit_tb;
    
    reg [63 : 0] input0,input1;
    reg s;
    wire [63 : 0] y;

    mux2_64bit name(.input0(input0),.input1(input1),.s(s),.y(y));

    initial begin
        $dumpfile("mux2_64bit_tb.vcd");
         $dumpvars(0,mux2_64bit_tb);

         #2 input0 = 64'b1;
         #2 s = 1'b0;
         #2 input0 = 64'b0;
         #2 $stop();

    end
    initial begin

         $display("test completed");
        end



endmodule