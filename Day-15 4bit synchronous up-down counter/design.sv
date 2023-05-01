// 4 bit Synchronous up/down counter 
module up_down_counter(input clk,reset, output reg [3:0] up_count,down_count);
   
  initial
    begin
     up_count=0;
      down_count=0;
    end
  always@(posedge clk)
    if(reset)
     up_count=  up_count++;
    else 
       down_count=down_count--;   
    
endmodule
