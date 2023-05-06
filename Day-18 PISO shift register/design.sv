// Day-18 PISO shift register
module piso(input [3:0]in, input clk,reset, output reg out);
  reg [3:0] t;
  
  initial
    t=in;
  
  always@(posedge clk)
    begin
      if(reset)
        begin
        out<=0;
         t<=in;
        end
      
      else
        begin
          out<=t[0];
          t<= t>>1;
        end
      
    end     
  
endmodule
