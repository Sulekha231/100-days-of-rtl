// Day-22 Active low SR flip flop
module sr_flip_flop(input s,r,clk, output logic q,qbar);
  
  initial
    begin
      q=0;
      qbar=1;
    end
  
  
  always@(posedge clk)
    
    case({s,r}) 
      2'b00:begin q=q; qbar=qbar; end
      2'b01:begin q=0; qbar=1; end
      2'b10:begin q=1; qbar=0; end
      2'b11:begin q=1; qbar=1; $display("invalid case");end
      endcase
  
endmodule 


