//  testbench for frequency divider

module tb;
  reg CLK,RESET;
  wire D2,D4,D8,D16;
  
  ripple  counter(CLK,RESET,D2,D4,D8,D16);
  
  initial
    begin
      CLK=0;
      forever #2CLK=~CLK;
    end
  
   
  initial
    begin
         RESET=1;
      #2 RESET=0;
      #94RESET=1;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
endmodule
