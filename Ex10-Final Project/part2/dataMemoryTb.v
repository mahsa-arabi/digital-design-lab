`timescale 1ns / 1ps  
`include "dataMemory.v"

module dataMemoryTb;
 reg [31:0] address;       
 reg [31:0] write_data;   
 reg memwrite, memread;
 reg clk;                  
 wire [31:0] read_data;
    
 dataMemory dm(.address(address),.write_data(write_data),
 .memwrite(memwrite),.memread(memread),.clk(clk),.read_data(read_data));
  initial begin
        $dumpfile("dataMemoryTb.vcd");
        $dumpvars(0,dataMemoryTb);
        
      address = 32'b0;
      write_data = 32'b0;
      memwrite = 1'b1;
      memread=1'b0;
      clk =1'b1;
      
    end
    initial begin
         $display("test completed");
    end

 
endmodule