// Code your testbench here
// or browse Examples

class message;
  rand bit [4:0]a,b;
  
  function void post_randomize();
    $display($time,"\tsend the message in the mailbox with values a=%0d, b=%0d ",a,b);
  
  endfunction
  
endclass

class write_mail;
   message ms =new();
    mailbox ma;
  
  function new(mailbox m);
    ma=m;
  endfunction
  
  task disp();
    
    repeat(5) begin
    ms.randomize();
    ma.put(ms);
      #5;
    end
    
  endtask
  
endclass

class read_mail;
  message ms=new();
  mailbox ma;
  
   function new(mailbox m);
    ma=m;
  endfunction
  
   task disp();
     
     repeat(5) begin
     ma.get(ms);
       $display($time,"\treceive the message from the mailbox with values a=%0d, b=%0d ",ms.a,ms.b);
       $display();
     end
     
  endtask
  
endclass

module mailbox_;
  
  mailbox m=new();
  write_mail write=new(m);
  read_mail read=new(m);
  
  initial
    fork
      write.disp();
      read.disp();
    join
  
endmodule
