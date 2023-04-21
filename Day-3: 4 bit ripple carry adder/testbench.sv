// testbench for 4 bit ripple carry adder

module tb;
  reg[3:0] A,B;
  reg CI;
  wire[3:0] SUM;
  wire CARRY;
  
  ripple_carry_adder inst(.sum(SUM), .carry(CARRY), .a(A), .b(B), .ci(CI));
  
  initial
    begin
      $monitor("A=%b, B=%b, CI=%b, SUM=%b, CARRY=%b",A,B,CI,SUM,CARRY,$time);
      
      for(int i=0; i<16; i++)
        begin
          A=$urandom;
          B=$urandom;
          CI=$urandom;
          #5;
        end
    end 
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule
