// Code your testbench here
// or browse Examples
module tb;
  reg [3:0] B;
  wire [3:0]G;
  
  binary_to_gray inst(.b(B), .g(G));
  
  initial
    begin
      $monitor("binary code: %b, gray code: %b",B,G);
      repeat(16)
        begin
          B=$random;
          #5;
        end
      
    end
     
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
      #100$finish;
    end
  
endmodule
