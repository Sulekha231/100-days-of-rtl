//  testbench for Asynchronous D flip flop
module tb;
  reg D,CLK,RESET;
  wire Q;
  
  dff inst(D,CLK,RESET,Q);
  
  initial
    CLK=1'b0;
  
  always #2CLK=~CLK;
  
  initial
    begin
      $monitor("CLK=%b, RESET=%b, D=%b, Q=%b ",CLK,RESET,D,Q,$time);
      #2 RESET=0; D=0;
      #2 D=1;
      #4 RESET=1;
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #16$finish;
    end
  
endmodule
