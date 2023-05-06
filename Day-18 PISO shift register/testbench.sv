//  testbench here

module tb;
  reg [3:0]in;
  reg clk,reset;
  wire out;
  
  piso inst(in,clk,reset,out);
  
  initial
    begin
      clk=0;
      forever #2clk=~clk;
    end
   
  initial
    begin
      $monitor("clk=%b, reset=%b, in=%b, out=%b ",clk,reset,in,out,$time);
        reset=1; in=4'b1101;
       #4reset=0;
    end
   
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #30$finish;
    end
  
endmodule
