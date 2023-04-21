// 3X1 MUX
module mux3x1(i0,i1,i2,s0,s1,y);
  input i0,i1,i2,s0,s1;
  output y;
  
  assign y=s1?i2:(s0?i1:i0);
  
endmodule

