// Day-20 frequency divider
module freq(input clk,reset,output reg d2,d4,d8,d16);
 
  reg[3:0] c=0;
  
  always@(negedge clk,negedge reset)
    
    begin
      if(reset )
        begin
          d2=0;
          d4=0;
          d8=0;
          d16=0;
        end
      
      else
        begin
          c++;
          d2=c[0];
          d4=c[1];
          d8=c[2];
          d16=c[3];
        end
      
    end
       
endmodule
