// ring counter
module ring_counter(input d,clk,clr, output reg [3:0] count);

  initial
    #2 count[3]<=d;
  
  always@(posedge clk)
    begin
      if(clr==1)
        count=4'b0000;
      
      else
        begin  
          
          count[2]<=count[3];
          count[1]<=count[2];
          count[0]<=count[1];
          count[3]<=count[0];
          
        end
    end
  
endmodule 
