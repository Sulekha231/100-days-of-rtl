// Testbench for ring counter
module tb;
  reg D,CLK,CLR;
  wire[3:0] COUNT;
  
  ring_counter inst(.d(D),.clk(CLK),.clr(CLR),.count(COUNT));
  
  initial
    begin
      CLK=0;
      forever #2 CLK=~CLK;
    end
  
      
  initial
    begin
      $monitor("CLK=%b, CLR=%b, D=%b, COUNT=%b",CLK,CLR,D,COUNT,$time);
       D=1;
       CLR=1;    
    #4 CLR=0;
   #50 CLR=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #50 $finish;
    end
  
endmodule
