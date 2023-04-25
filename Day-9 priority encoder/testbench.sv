//priority encoder testbench
module ptb;
  reg I3,I2,I1,I0;
  wire Y1,Y0;
  
  priority_encoder  inst(.i3(I3),.i2(I2),.i1(I1),.i0(I0),.y1(Y1),.y0(Y0));
  
  initial
    begin
      
      $monitor("I3=%b,I2=%b,I1=%b,I0=%b,Y1=%b,Y0=%b",I3,I2,I1,I0,Y1,Y0,$time);
      for(int i=0; i<16; i++)
        begin
        I3=$random;
        I2=$random;
        I1=$random;
        I0=$random;
      #2;
        end
      
    end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
  
endmodule
