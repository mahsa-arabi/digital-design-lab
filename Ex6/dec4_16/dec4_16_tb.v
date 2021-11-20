`timescale 1ns/1ns
`include "dec4_16.v"

module dec4_16_tb;
reg input3,input0,input1,input2,e;
wire [15:0]output0;
dec4_16 s(.output0(output0),.e(e),.input0(input0),.input1(input1),.input2(input2),.input3(input3));
initial begin
      $dumpfile("dec4_16_tb.vcd");
      $dumpvars(0,dec4_16_tb);

      #2 e=1;
      #2 input0=0;
      #2 input1=0;
      #2 input2=0;
      #2 input3=0;
      #2 $stop();

end

initial begin
    $display("test completed");
end

endmodule