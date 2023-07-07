class transaction;
 
  randc bit a,b,c;
  bit sum,carry;
  
  task main(string s);
    $display("%s",s);
    $display("--------------------------------");
    $display("a=%b, b=%b, c=%b",a,b,c);
    $display("sum=%b, carry=%b",sum,carry);
  endtask
  
endclass
