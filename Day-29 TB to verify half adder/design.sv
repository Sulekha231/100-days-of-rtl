// Code your design here
module dut(input a,b, output sum,carry);
  
  assign sum=a^b;
  assign carry=a&b;
  
endmodule
