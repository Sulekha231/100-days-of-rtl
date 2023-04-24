//  testbench for PIPO OR BUFFER REGISTER 
module pipo_tb;
  reg [3:0] X;
  reg CLK,RESET;
  wire [3:0]Q;
  
  pipo  buff(.x(X), .q(Q),  .clk(CLK), .reset(RESET));
  
  initial
    begin
  CLK=1'b0;
  
  while(1)
    #2CLK=~CLK;
    end
  
  initial
    begin
      
     X=4'b1011;
  
      $display("X=%b",X,$time);
      $monitor("Q=%b, CLK=%b, RESET=%b",Q,CLK,RESET,$time);
      RESET=1'b0;
   #2 RESET=1'b1;
   #4 RESET=1'b0;
   #2 RESET=1'b1;
   #2 RESET=1'b1;   
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      #12 $finish();
    end
  
  
endmodule
