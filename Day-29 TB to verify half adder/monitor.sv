class monitor;
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf vif, mailbox mon2scb);
   this.vif=vif;
   this.mon2scb=mon2scb; 
   endfunction
  
  task main();
   
    repeat(1)
      #3;
    begin
       packet pkt=new();
       pkt.a=vif.a;
       pkt.b=vif.b;
       pkt.sum=vif.sum;
       pkt.carry=vif.carry;
      mon2scb.put(pkt);
      pkt.display("monitor");
    end
    
  endtask
  
endclass
