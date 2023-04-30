// Johnson counter
module Johnson_counter(input clr,clk, output reg [3:0]count);
  
  always@(posedge clk)
    if(clr)
      count=0;
    else
      begin
        count[3]<=~count[0];
        count[2]<=count[3];
        count[1]<=count[2];
        count[0]<=count[1];
      end
  
endmodule
