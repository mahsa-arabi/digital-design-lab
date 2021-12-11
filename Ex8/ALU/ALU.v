module ALU (input0,input1,select,output0,carry,zero);
    input [3:0] select;
    input [63:0] input0,input1;
    output [63:0] output0;
    reg [63:0] result;
    assign output0 = result;
    output carry,zero;
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
         if(result == 64'b0)
          temp2 = 1;
    end

    
endmodule