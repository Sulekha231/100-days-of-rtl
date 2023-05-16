// Day-24 synchronous clock 
module synchronous_clk;
  reg syn_clk;
  
  initial
    begin
      syn_clk=0;
      forever #5syn_clk=~syn_clk;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100 $finish;
    end
endmodule


// Day-24 asynchronous clock 
module asyncronous_clk;
  
 task as_clk;
  reg asyn_clk=0;
   
   #2asyn_clk=~asyn_clk;
   #5asyn_clk=~asyn_clk;
   #8asyn_clk=~asyn_clk;
   #10asyn_clk=~asyn_clk;
   #4asyn_clk=~asyn_clk;
   
 endtask
  
  always
    begin
      as_clk();
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
endmodule
