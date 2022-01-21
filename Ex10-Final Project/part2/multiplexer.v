module multiplexer #(parameter Width = 32) (
    input0, input1, s,y
);
input  [Width -1 : 0]  input0,input1;
input  s;
output  [Width -1 : 0] y;

assign y = (s == 1'b0) ? input0 : input1;
    
endmodule