//Parallel in parallel out register/buffer registeer
module pipo(input [3:0]x,input clk,reset,output reg [3:0] q);
  
  always@(posedge clk)
   begin
     if(reset)
       begin
        q=4'b0;
       end
     
     else
       begin
         q=x;
       end
     
   end
    
endmodule
