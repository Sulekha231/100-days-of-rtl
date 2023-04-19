// 3X1 MUX
module mux3x1(i0,i1,i2,s0,s1,y);
  input i0,i1,i2,s0,s1;
  output y;
  
  assign y=s1?i2:(s0?i1:i0);
  
endmodule

// 3x1 mux testbench 
module tb;
  reg I0,I1,I2,S0,S1;
  wire Y;
  
  mux3x1 inst(.i0(I0), .i1(I1), .i2(I2), .s0(S0), .s1(S1), .y(Y));
  
  initial
    begin
      I0=1; I1=0; I2=1;
      $display("I0:%b  I1:%b I2:%b",I0,I1,I2,$time);
      
      $monitor("S1: %b  S0:%b  Y:%b",S1,S0,Y,$time);
       S1=0; S0=0;
  #2   S1=0; S0=1;
  #2   S1=1; S0=0;
  #2   S1=1; S0=1; 
      
    end
  
  initial
    begin
      $dumpfile ("dump.vcd");
      $dumpvars();
      
    end
  
endmodule
