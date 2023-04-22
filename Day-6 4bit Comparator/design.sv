//4 bit comparator 
module comp(le,gr,eq,a,b);
  input [3:0]a,b;
  output reg le=0,gr=0,eq=0;
  
  always@(*)
    begin
      
      if(a<b)
        begin
          le=1;gr=0;eq=0;
          $display("time=%0t,  %d is less than  %d",$time,a,b);
        end
      
      else if(a>b)
        begin
          gr=1;le=0; eq=0;
        $display("time=%0t,  %d is greater than  %d",$time,a,b);
        end
      
      else if(a==b) 
        begin
          eq=1; le=0; gr=0;
        $display("time=%0t,  %d is equal to  %d",$time,a,b);
        end
      
      else 
        $display("time=%0t,  %d or %d is  not a valid number",$time,a,b);
      
    end
  
endmodule 

