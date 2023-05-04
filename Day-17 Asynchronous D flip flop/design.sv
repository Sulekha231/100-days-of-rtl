//Asynchronous D flip flop
module dff(input d,clk,reset, output reg q );
  
  initial
    q=1;
  
  always@(posedge clk,reset)
    begin
      if(!reset)
        q<=d;
      else 
        q<=0;
      
    end
  
endmodule
