// Day-25 overlapping sequence 1010 detector using FSM
module seq_1010(input clk,reset,in, output reg out);
  parameter A=2'b00,
            B=2'b01,
            C=2'b10,
            D=2'B11;
  reg [1:0] CS,NS;
  
  always@(posedge clk, reset)
    begin
      if(reset)
        CS<=0;
      else
        CS<=NS;
    end
  
  always@(*)
    case(CS)
      A : begin NS=in?B:A; out=1'b0; end  
      B : begin NS=in?B:C; out=1'b0; end 
      C : begin NS=in?D:A; out=1'b0; end
      D : begin NS=in?B:C; out=in?1'b0:1'b1; end
      
    endcase 
  
endmodule
