//  testbench for siso register
module siso_tb;
  reg DIN,CLK,RESET;
  wire DOUT;
  
  siso_reg  inst(.din(DIN),.clk(CLK),.reset(RESET),.dout(DOUT));
  
  initial
    begin
      CLK=0;
      forever #2CLK=~CLK;
    end
  
  initial
    begin
      $monitor("CLK=%b, RESET=%b, DIN=%b, DOUT=%b",CLK,RESET,DIN,DOUT,$time);
      #2 DIN=1; RESET=0;
      #4DIN=0;
      #4DIN=1; 
      #4DIN=1;      
       RESET=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #20$finish;
    end
  
endmodule
