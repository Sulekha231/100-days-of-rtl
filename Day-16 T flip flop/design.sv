// T flip flop
module t_ff(input clk,t,reset,output reg q);
  
  initial
    q=0;
  
  always@(posedge clk, reset)
    if(t)
     q<=~q;
    else 
     q<=q;
  
endmodule 
