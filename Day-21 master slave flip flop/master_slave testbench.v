// Code your testbench here
// or browse Examples
module tb;
  reg JM,KM,CLK;
  wire QS,QS_BAR;
  
  master_slave FF(JM,KM,CLK,QS,QS_BAR);
  
  initial
    begin
      CLK=0;
      forever #2 CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%b, JM=%b, KM=%b, QS=%b, QS_BAR=%b",CLK,JM,KM,QS,QS_BAR,$time);
        JM=0; KM=0; 
      #2JM=0; KM=1;
      #4JM=1; KM=0;
      #4JM=1; KM=1;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50$finish();
    end
  
endmodule
