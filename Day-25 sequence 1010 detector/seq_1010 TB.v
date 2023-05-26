// Code your testbench here
// or browse Examples
module tb;
  reg CLK,RESET,IN;
  wire OUT;
  
  seq_1010  inst(CLK,RESET,IN,OUT);
  
  initial
    begin
      CLK=0;
      forever #5CLK=~CLK;
    end
  
  initial
    begin
      $monitor($time,"\tCLK=%b, RESET=%b, IN=%b, OUT=%b",CLK,RESET,IN,OUT);
      RESET=1'b1; 
      IN=1'b0;
      
      #5 RESET=0;
      @(posedge CLK);
      IN=1'b1;
      
      @(posedge CLK);
      IN=1'b0;
      
       @(posedge CLK);
      IN=1'b1;
      
      @(posedge CLK);
      IN=1'b0;
      
       @(posedge CLK);
      IN=1'b1;
      
      @(posedge CLK);
      IN=1'b0;
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #100$finish;
    end
  
endmodule
