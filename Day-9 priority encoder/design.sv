//priority encoder
module priority_encoder(input i3,i2,i1,i0, output y1,y0);
  
  assign y1=i3|i2;
  assign y0= i3|(~i2)&i1;
  
endmodule
