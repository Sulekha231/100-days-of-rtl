// Synchronous up counter 
module As_up(input clr,clk, output int count );
  
  always@(posedge clk)
  begin
  if(clr==1)
    count=0;
    
  else
    count=count++;
  
  end
endmodule 
