//1x4 demux
module demux_1x4(input i,s1,s0, output logic y3,y2,y1,y0);
  
  always@(i,s1,s0)
       begin
         case({s1,s0})
      2'b00: y0=i;
      2'b01: y1=i;
      2'b10: y2=i;
      2'b11: y3=i;
           
         endcase  
       end
  
endmodule 

//1x4 demux testbench
module tb();
reg I,S1,S0;
wire Y3,Y2,Y1,Y0;
  
  demux_1x4 inst(.i(I), .s1(S1), .s0(S0), .y3(Y3), .y2(Y2), .y1(Y1), .y0(Y0));
  
initial
  begin
    $monitor("I=%b, S1=%b, S0=%b  Y3=%b, Y2=%b, Y1=%b, Y0=%b",I,S1,S0,Y3,Y2,Y1,Y0,$time);
    I=1;
    S1=0; S0=0;
  #2S1=0; S0=1;
  #2S1=1; S0=0;
  #2S1=1; S0=1;  
  end
  
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars;
    end
  
endmodule
