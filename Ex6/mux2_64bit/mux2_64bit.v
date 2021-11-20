module mux2_64bit (
    input0, input1, s,y
);
input  [63 : 0]  input0,input1;
input  s;
output  [63 : 0] y;

reg [63 : 0] y;
always @(input0,input1,s) begin
    if(s==0)  y = input0;
    else  y = input1;
end
// assign out = s ? input1 : input0;
    
endmodule