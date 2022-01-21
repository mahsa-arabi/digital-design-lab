module ALU (input0,input1,select,output0,zero);
    parameter width = 32;
    input [3:0] select;
    input [width-1:0] input0,input1;
    output [width-1:0] output0;
    output zero;
    reg [63:0] result;
    assign output0 = result;
    reg temp2;
    assign zero = temp2;
    wire [64:0] temp;
    assign temp = {1'b0,input0} + {1'b0,input1};
    assign carry = temp[64];

     always @(*)
    begin
        case(select)
        4'b0010: // add
           result = input0 + input1 ; 
        4'b0110: // subtract
           result = input0 - input1 ;
        4'b0000: // and 
           result = input0 & input1;
        4'b0001: // or
           result = input0 | input1;
          default: result = input0 + input1 ; 
        endcase
         temp2 = (result == 0) ? 1 : 0;
    end

    
endmodule