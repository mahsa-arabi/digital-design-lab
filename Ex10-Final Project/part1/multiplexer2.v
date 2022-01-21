module multiplexer2 #(parameter Width = 32)(input0,input1,input2,s,out);
 input [Width-1 : 0] input0,input1,input2;
 input  [1:0] s;
 output [Width-1 : 0] out;
assign out = (s == 2'b10) ? input2 : (s == 2'b01) ? input1 : input0;
endmodule