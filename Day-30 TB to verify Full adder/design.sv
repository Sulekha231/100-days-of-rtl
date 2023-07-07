// Code your design here
module fulladder(a,b,c,sum,carry);
  input a,b,c;
  output reg sum,carry;
  
  always@(a,b,c)
    begin
      sum=a^b^c;
      carry=(a&b)|(c&(a^b));
    end
  
endmodule
