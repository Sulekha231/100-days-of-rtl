// Day-19 MOD-10 counter
module ripple(clk,reset,c);
  input clk,reset;
  output reg[3:0]c;
  
  always@(negedge clk,posedge reset)
    
    begin
      if(reset || c==9)
           c=0;
      else
          c++;
      
    end
       
endmodule
