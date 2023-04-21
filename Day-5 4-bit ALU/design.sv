//4-bit ALU
module alu(ctrl,a,b,c,d);
  input[3:0] ctrl;
  input [31:0] a,b,c;
  output  reg signed[31:0] d;
  
 always@(ctrl)
   case(ctrl)
     4'b0000: begin d=(a+b); $display("time=%0t,  %0d+%0d: %0d",$time,a,b,d); end
     4'b0001: begin d=(a-b); $display("time=%0t,  %0d-%0d: %0d",$time,a,b,d); end
     4'b0010: begin d=(a*b); $display("time=%0t,  %0d*%0d: %0d",$time,a,b,d); end
     4'b0011: begin d=(a/b);$display("time=%0t,  %0d/%0d: %0d",$time,a,b,d); end
     4'b0100: begin d=(a%b);$display("time=%0t,  mod of %0d and %0d is: %0d",$time,a,b,d); end
     4'b0101: begin d=(a**b);$display("time=%0t,  %0d**%0d: %0d",$time,a,b,d); end
     4'b0110: begin d=(a&&b);$display("time=%0t,  %0b&&%0b: %0b",$time,a,b,d); end
     4'b0111: begin d=(a||b);$display("time=%0t,  %0b||%0b : %0b",$time,a,b,d); end 
     4'b1000: begin d=(!b);$display("time=%0t,  !%0b : %0b",$time,b,d); end
     4'b1001: begin d=(a>=b);$display("time=%0t,  %0d>=%0d is: %0d",$time,a,b,d); end
     4'b1010: begin d=(a<=b);$display("time=%0t,  %0d<=%0d is: %0d",$time,a,b,d); end
     4'b1011: begin d=(a==b);$display("time=%0t,  %0b == %0b is: %0b",$time,a,b,d); end
     4'b1100: begin d=(a!=b);$display("time=%0t,  %0b != %0b is: %0b",$time,a,b,d); end
     4'b1101: begin d=(a^b);$display("time=%0t,  %0b xor %0b is: %0b",$time,a,b,d); end
     4'b1110: begin d=(a?b:c);$display("time=%0t,  %0b?%0b:%0b : %0b",$time,a,b,c,d); end
     4'b1111: begin d=(a>>>2);$display("time=%0t,  %0b>>>2 is: %0b",$time,a,d); end  
   endcase
  
endmodule 

