// sipo register
module sipo(input clk,reset,din,output reg [3:0] q);

  always@(posedge clk)
    begin
      if(reset==1)
        q=0;
      
      else 
        begin
          q[3]<=din;
          q[2]<=q[3];
          q[1]<=q[2];
          q[0]<=q[1];  
        end  
      
    end
  
endmodule
