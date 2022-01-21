module programCounter (
    enable,adr,clk,pc
);
parameter width = 32;
input enable,clk;
input [width -1:0] adr;
output reg [width -1:0]pc;

always @(posedge clk) begin
    if(enable)
      pc <= adr;
    else
      pc <= pc;
    
    end

    
endmodule
