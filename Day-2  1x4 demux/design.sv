//1x4 demux
module demux_1x4(input i,s1,s0, output logic y3,y2,y1,y0);
  
  always@(i,s1,s0)
       begin
         case({s1,s0})
           2'b00:begin y0=i; y1=1'bx; y2=1'bx; y3=1'bx; end
           2'b01:begin y0=1'bx; y1=i; y2=1'bx; y3=1'bx; end 
           2'b10:begin y0=1'bx; y1=1'bx; y2=i; y3=1'bx; end
           2'b11:begin y0=1'bx; y1=1'bx; y2=1'bx; y3=1'b1; end
           
         endcase  
       end
  
endmodule 


