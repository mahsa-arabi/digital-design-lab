module adder_64_bit (input1,input2,sum);
input [63:0] input1,input2;
output [63:0] sum;
wire [63:0] carry;
genvar i;
generate
    for(i=0;i<64;i=i+1)
    begin
        if(i==0)
           half_adder h(input1[i],input2[i],sum[i],carry[i]);
        else
          full_adder f(input1[i],input2[i],carry[i-1],sum[i],carry[i]);
    end
     
    
endgenerate
endmodule

module half_adder(a,b,s1,s0);
   input a,b;
   output s0,s1;

   assign s1=a&b;
   assign s0=a^b;
endmodule

module full_adder ( x, y,Cin,s, Cout);
input Cin, x, y;
output s, Cout;
xor (s, x, y, Cin);
and (z1, x, y);
and (z2, x, Cin);
and (z3, y, Cin);
or (Cout, z1, z2, z3);
endmodule