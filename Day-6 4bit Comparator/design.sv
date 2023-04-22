//4 bit comparator 
module comp(le,gr,eq,a,b);
  input [3:0]a,b;
  output le,gr,eq;
  
  always@(*)
    begin
      if(a<b)
        $display("time=%0t,  %d is less than  %d",$time,a,b);
      else if(a>b)
        $display("time=%0t,  %d is greater than  %d",$time,a,b);
      else if(a==b) 
        $display("time=%0t,  %d is equal to  %d",$time,a,b);
      else 
        $display("time=%0t,  %d or %d is  not a valid number",$time,a,b);
    end
  
endmodule 

