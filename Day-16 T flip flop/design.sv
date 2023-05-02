// T flip flop
module t_ff(input clk,t,reset,output reg q);
  
  always@(posedge clk, reset)
    if(t)
     q=~q;
    else 
     q=0;
  
endmodule 
