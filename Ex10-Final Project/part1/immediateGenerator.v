module immediateGenerator(
input [31:0] instructor,
output reg [63:0] outputData);
always @(*)
begin
    case (instructor[6:0])
    //   7'b0110011  : outputData <=  //R-type
      7'b0000011  : outputData <=  instructor[31:20];//I-type
      7'b0100011  : outputData <=  {instructor[31:25],instructor[11:7]};//S-type
      7'b1100111  : outputData <=  {instructor[31:24],instructor[11:8]}; //SB-type
        default: outputData <= 32'b0;
    endcase
end
endmodule