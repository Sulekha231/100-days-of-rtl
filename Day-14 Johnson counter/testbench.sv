//testbench for johnson counter
module tb;
  reg CLR,CLK=0;
  wire [3:0] COUNT;
  
 Johnson_counter inst(CLR,CLK,COUNT);
  
  always
    #2 CLK=~CLK;
  
  initial
    begin
      $monitor("CLK=%b  CLR=%b  COUNT=%d  ",CLK,CLR,COUNT,$time);
       CLR=1;
      #6 CLR=0;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish;
    end
  
endmodule
