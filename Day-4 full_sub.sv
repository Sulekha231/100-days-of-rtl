
//full subtractor 
module full_sub(input a,b,c, output d,bo);
  
  assign d=a^b^c;
  assign bo=(~a&b)|(c&(a~^b));
  
endmodule


//testbench for subtractor
module tb;
  reg A,B,C;
  wire D,BO;
  
  full_sub  fs(.a(A), .b(B), .c(C), .d(D), .bo(BO));
  
  initial
    begin
      
      $monitor("A=%b, B=%b, C=%b, D=%b, BO=%b",A,B,C,D,BO,$time);
     A=0; B=0; C=0;
   #2A=0; B=0; C=1;
   #2A=0; B=1; C=0;
   #2A=0; B=1; C=1;
   #2A=1; B=0; C=0;
   #2A=1; B=0; C=1;
   #2A=1; B=1; C=0;
   #2A=1; B=1; C=1;    
     
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule
