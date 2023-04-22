//  testbench 
module tb;
  reg[3:0] A,B;
  wire LE,GR,EQ;
  
  comp  inst(.le(LE), .gr(GR), .eq(EQ), .a(A), .b(B));
  
 initial
   begin
      for(int i=0; i<16; i++)
     begin
      A=$urandom;
      B=$urandom;
      #5;
     end
    
   end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule
