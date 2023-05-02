//testbench for T flip flop
module tb;
  reg CLK,T,RESET;
  wire Q;
  
  t_ff inst(CLK,T,RESET,Q);
  
   initial
    begin
      CLK=0;
      forever #2CLK=~CLK;
      
    end
  
      
  initial
    begin
      $monitor("CLK=%b,  RESET=%b, T=%b, Q=%b",CLK,RESET,T,Q,$time);
      #2RESET=0;  T=0;
      #4RESET=1; T=1;
     #4RESET=0; T=0;
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #12$finish;
    end
  
      
endmodule
