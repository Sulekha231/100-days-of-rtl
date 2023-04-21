//  design for 4 bit ripple carry adder
module full_adder(output reg sum,carry,input a,b,ci);
  
  always@(a,b,ci)
    begin
      sum=a^b^ci;
      carry=(a&b)|(ci&(a^b));
    end
  
  endmodule

module ripple_carry_adder(input[3:0] a,b, input ci, output [3:0] sum, output carry );
  wire c1,c2,c3;
  
  full_adder  f0(sum[0],c1,a[0],b[0],ci);
  full_adder  f1(sum[1],c2,a[1],b[1],c1);
  full_adder  f2(sum[2],c3,a[2],b[2],c2);
  full_adder  f3(sum[3],carry,a[3],b[3],c3);
  
endmodule


