module shiftLeft #(parameter Width = 32) (
    dataIn,dataOut
);
input [Width-1:0] dataIn;
output [Width-1:0] dataOut;

assign dataOut = dataIn << 1;

endmodule