//  testbench of 4bit ALU
module tb;
  reg [3:0]CTRL;
  reg [31:0]A,B,C;
  wire  [31:0]D;
  
  alu  inst(.ctrl(CTRL), .a(A), .b(B), .c(C), .d(D));
  
  initial
    begin
      A=15; B=20; C=35;
      $display("A=%0d, B=%0d, C=%0d",A,B,C,$time);
      
       CTRL= 4'b0000;
    #5 CTRL= 4'b0001;
    #5 CTRL= 4'b0010;
    #5 CTRL= 4'b0011;
    #5 CTRL= 4'b0100;
    #5 CTRL= 4'b0101;
    #5 CTRL= 4'b0110;
    #5 CTRL= 4'b0111; 
    #5 CTRL= 4'b1000;
    #5 CTRL= 4'b1001;
    #5 CTRL= 4'b1010;
    #5 CTRL= 4'b1011;
    #5 CTRL= 4'b1100;
    #5 CTRL= 4'b1101;
    #5 CTRL= 4'b1110;
    #5 CTRL= 4'b1111;  
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule

