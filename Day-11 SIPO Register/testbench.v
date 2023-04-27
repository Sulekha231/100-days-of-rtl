//testbench for sipo register
module tb;
  reg CLK=0,RESET,DIN;
  wire [3:0] Q;
  
  sipo inst(CLK,RESET,DIN,Q);
  
  always
    #2 CLK=~CLK;
  
  initial
    begin
      $monitor("CLK=%b, RESET=%b, DIN=%b, Q=%b",CLK,RESET,DIN,Q,$time);
      
      #2RESET=1;
      #4RESET=0;
        DIN=1;
      #4DIN=0;
      #4DIN=0;
      #4DIN=1;
      RESET=0;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #20 $finish;
    end
   
endmodule
