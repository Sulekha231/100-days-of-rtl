//  testbench for SR flip flop

module tb;
  reg S,R,CLK;
  wire Q,QBAR;
  
  sr_flip_flop  inst(S,R,CLK,Q,QBAR);
  
  
  initial
    begin
      CLK=1'b0;
      forever #2CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%b, S=%b, R=%b, Q=%b, QBAR=%b",CLK,S,R,Q,QBAR,$time);
      S=0; R=0;
    #4S=0; R=1;
    #4S=1; R=0;
    #4S=1; R=1;  
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
     #18 $finish; 
    end
  
endmodule
