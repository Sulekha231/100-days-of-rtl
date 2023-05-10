// Code your design here
module jk(input j,k,clk,output reg q=0,qbar);
  
  assign  qbar=~q;
  
  always@(posedge clk)
    case({j,k})
    2'b00 :  q<=q; 
    2'b01 :  q<=0;
    2'b10 :  q<=1;
    2'b11 :  q<=~q;
    endcase
  
endmodule

module master_slave(input jm,km,clk, output reg qs,qs_bar);
  wire qm,qm_bar,sclk;
  
  jk master(jm,km,clk,qm,qm_bar);
  
  assign sclk=~clk;
  jk slave (qm,qm_bar,sclk,qs,qs_bar);
  
endmodule
