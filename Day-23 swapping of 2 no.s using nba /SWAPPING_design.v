// Day-23 swapping of 2 no.s using non blocking assignment
module swap_by_nba;
  reg clk=0;
  bit[3:0] a=6,b=10;
  
  always
    #5 clk=~clk;
  
  always@(posedge clk)
    begin
      a<=b;
      b<=a;
    end
  
  initial
    begin
      $monitor(" t=%0t\t clk=%d\t a=%0d\t b=%0d",$time,clk,a,b);
      #10$finish;
    end
  
endmodule

