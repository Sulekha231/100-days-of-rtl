class packet;
  randc bit  a,b;
  bit sum,carry;
    
    function void display(string name);
      
      $display("%s",name);
      $display("--------------------------------");
      $display("a=%b, b=%b",a,b);
      $display("sum=%b, carry=%b",sum,carry);
    $display("--------------------------------");
    
  endfunction
  
endclass
