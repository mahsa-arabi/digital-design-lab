module  dec4_16(input0,input1,input2,input3,e,output0);
input  input3,input0,input1,input2,e;
output [15:0]output0;

     assign output0[0]=  (~input0) & (~input1) &(~input2) & (~input3) & (e) ;
     assign output0[1]=  (~input0) & (~input1) &(~input2) & (input3) & (e) ;
     assign output0[2]=  (~input0) & (~input1) &(input2) & (~input3) & (e) ;
     assign output0[3]=  (~input0) & (~input1) &(input2)  & (input3) & (e) ;
     assign output0[4]=  (~input0) & (input1) &(~input2) & (~input3) & (e) ;
     assign output0[5]=  (~input0) & (input1) &(~input2)  & (input3) & (e) ;
     assign output0[6]=  (~input0) & (input1) &(input2)  & (~input3) & (e) ;
     assign output0[7]=  (~input0) & (input1) &(input2)  & (input3) & (e) ;
     assign output0[8]=  (input0) & (~input1) &(~input2) & (~input3) & (e) ;
     assign output0[9]=  (input0) & (~input1) &(~input2) & (input3) & (e) ;
     assign output0[10]= (input0) & (~input1) &(input2) & (~input3) & (e) ;
     assign output0[11]= (input0) & (~input1) &(input2)  & (input3) & (e) ;
     assign output0[12]= (input0) & (input1) &(~input2) & (~input3) & (e) ;
     assign output0[13]= (input0) & (input1) &(~input2)  & (input3) & (e) ;
     assign output0[14]= (input0) & (input1) &(input2)  & (~input3) & (e) ;
     assign output0[15]= (input0) & (input1) &(input2)  & (input3) & (e) ;

endmodule