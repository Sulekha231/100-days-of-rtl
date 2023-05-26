// Day-26 binary to gray code  converter
module binary_to_gray( b,temp);

  input  [3:0] b;
  output reg[3:0]temp;
  
  always @(*)
    begin
      temp[3]=b[3];
      temp[2]=b[3]^b[2];
      temp[1]=b[2]^b[1];
      temp[0]=b[1]^b[0];
    end
  
endmodule
  
