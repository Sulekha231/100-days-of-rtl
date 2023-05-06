//  testbench here

module tb;
  reg [3:0]IN;
  reg CLK,RESET;
  wire OUT;
  
  piso inst(IN,CLK,RESET,OUT);
  
  initial
    begin
      CLK=0;
      forever #2CLK=~CLK;
    end
   
  initial
    begin
      $monitor("CLK=%b, RESET=%b, IN=%b, OUT=%b ",CLK,RESET,IN,OUT,$time);
        RESET=1; IN=4'b1101;
       #4RESET=0;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #30$finish;
    end
  
endmodule
