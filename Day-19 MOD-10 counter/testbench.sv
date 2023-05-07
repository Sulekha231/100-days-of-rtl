//  testbench for MOD-10 counter

module tb;
  reg CLK,RESET;
  wire[3:0] C;
  
  ripple  counter(CLK,RESET,C);
  
  initial
    begin
      CLK=0;
      forever #2CLK=~CLK;
    end
  
   
  initial
    begin
      $monitor("CLK=%b, RESET=%b,   C=%0d",CLK,RESET,C,$time);
         RESET=1;
      #2 RESET=0;
      #40RESET=1;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50$finish;
    end
  
endmodule
