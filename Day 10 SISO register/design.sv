//siso register 
module siso_reg(input din,clk,reset, output reg dout);
  reg [3:0]q;
  
  always@(posedge clk)
    begin
      if(reset)
        dout=0;
      else
        begin
          q[3]=din;
          q[2]=q[3];
          q[1]=q[2];
          q[0]=q[1];
        end
      dout=q[0];
    end
  
endmodule
