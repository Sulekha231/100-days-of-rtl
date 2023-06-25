class scoreboard;
  mailbox mon2scb;
  
  function new( mailbox mon2scb);

    this.mon2scb=mon2scb;
    endfunction
   
  task main();
    packet pkt;
    
    repeat(1)
      begin
        mon2scb.get(pkt);
        
        if(((pkt.a^pkt.b)==pkt.sum) && ((pkt.a & pkt.b)==pkt.carry))
          $display("Result is as expected");
        else
          $error("wrong result");
        
        pkt.display("scoreboard");
      end
    
  endtask
  
endclass
