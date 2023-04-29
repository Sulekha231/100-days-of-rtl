//testbench
module tb;
  reg CLR,CLK;
  wire [3:0] COUNT;
  
  As_up counter(CLR,CLK,COUNT);
  
  initial
    begin
      CLK=0;
      forever  #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%d, CLR=%d, COUNT=%d",CLK,CLR,COUNT,$time);
      CLR=1;
      #2CLR=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
endmodule
