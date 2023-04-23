//left/right shifter
module shifter;
  `define left_shift 1'b0
  `define right_shift 1'b1
  reg [31:0]ADDRESS,LEFT_ADDRESS,RIGHT_ADDRESS;
  
  initial
    begin
        ADDRESS=32'd9;
      #2  ADDRESS=32'd5;
      #2 ADDRESS=32'b1001_1110_1010_1011_0011_1000_1001_1010;
      #2 ADDRESS=32'b1101_0010_1010_0011_0011_1011_1001_1000;
    end
  
  always@(ADDRESS)
   begin
     LEFT_ADDRESS=shift(ADDRESS,`left_shift);
     $display("left shift address by 1 is: %b", LEFT_ADDRESS,$time);
     RIGHT_ADDRESS=shift(ADDRESS,`right_shift);
     $display("right shift address by 1 is: %b",RIGHT_ADDRESS,$time);
   end
  
  function [31:0]shift(input[31:0] address, input ctrl);
    begin
      shift=(ctrl==`left_shift)?address<<1:address>>1;  
     
    end
  endfunction  
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end 
  
endmodule
