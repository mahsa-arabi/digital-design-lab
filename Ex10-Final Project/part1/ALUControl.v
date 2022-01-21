module ALUControl (ALUOp , funct7 , funct3 , ALUControl);
    input [1:0] ALUOp;
    input [2:0]funct3;
    input funct7;
    output reg [3:0] ALUControl;
    always @(*)
    begin
        case (ALUOp)
            2'b00 : ALUControl <= 4'b0010;
            2'b01 : ALUControl <= 4'b0110;
            2'b10 : case({funct7,funct3})
            10'b0000 : ALUControl <= 4'b0010; // add
            10'b1000 : ALUControl <= 4'b0110; // sub
            10'b0111 : ALUControl <= 4'b0000; // and
            10'b0110 : ALUControl <= 4'b0001; // or
        default : ALUControl <= 4'bxxxx;
        endcase
        endcase
    end
endmodule

