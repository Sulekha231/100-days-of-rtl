//  testbench for the traffic signal controller

module testbench;
  wire[1:0] H,C;
  reg RESET,cars_on_country_road ;
  reg CLK=1'b0;
  traffic_signal_controller  inst(.hwy(H), .country(C), .clk(CLK),.reset(RESET),.x(cars_on_country_road));
  
  always
    #5 CLK=~CLK;
  
  initial
    begin
      $monitor($time,"\tHIGHWAY : %b, COUNTRY ROAD : %b, cars_on_country_road :%b  ",H,C,cars_on_country_road);
      
      RESET= `true;
      repeat(5)
        @(negedge CLK);
      RESET=`false;
    end
  
  initial
    begin
      cars_on_country_road=`false;
      repeat(20) @(negedge CLK);
         cars_on_country_road =`true;
      
      repeat(10) @(negedge CLK);
          cars_on_country_road =`false;
      
      repeat(20) @(negedge CLK);
         cars_on_country_road =`true;
      
      
      repeat(10) @(negedge CLK);
         cars_on_country_road =`false;
          $finish;
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
     
    end

endmodule
