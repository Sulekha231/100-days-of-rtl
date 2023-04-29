//testbench
module tb;
  reg CLR,CLK;
  int COUNT;
  
  As_up counter(CLR,CLK,COUNT);
  
  initial
    begin
      CLK=0;
      forever  #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%d, CLR=%d, COUNT=%0d",CLK,CLR,COUNT,$time);
      #2CLR=0;
      #100 CLR=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
endmodule
