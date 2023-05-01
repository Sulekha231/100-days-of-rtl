//  testbench 
module testbench;
  reg clk=0,reset;
  wire [3:0]up_count,down_count;
  
  up_down_counter inst(clk,reset,up_count, down_count);
  always #2clk=~clk;
  
  initial
    begin
      $monitor("clk=%b, up_count=%d,down_count=%d",clk,up_count,down_count,$time);  
      reset =0;
      #50reset=1;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
  
endmodule
