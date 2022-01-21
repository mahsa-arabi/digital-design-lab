module addFour (input0,sum);
parameter Width = 32;
input [Width-1:0] input0;
output [Width-1:0] sum;

assign sum = input0 + 4;
endmodule
