module adder (input0,input1,sum);
parameter Width = 32;
input [Width-1:0] input0,input1;
output [Width-1:0] sum;

assign sum = input0 + input1;
endmodule
