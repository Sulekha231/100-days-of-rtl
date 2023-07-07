class scoreboard;
  mailbox mon2scb;
  
  function new(mailbox mon2scb);
  this.mon2scb=mon2scb;  
  endfunction
  
  task main();
    transaction tr;
    mon2scb.get(tr);
    
    if((tr.a^tr.b^tr.c==tr.sum)&&((tr.a&tr.b)|(tr.c&(tr.a^tr.b))))
      $display("result as expected");
    else
      $error("wrong result");
    
    tr.main("scoreboard");
  endtask
  
endclass

