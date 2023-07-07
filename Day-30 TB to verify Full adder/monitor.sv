class monitor;
  
  virtual intf vif;
  mailbox mon2scb;
  
  function new(virtual intf vif, mailbox mon2scb);
    this.vif=vif;
    this.mon2scb= mon2scb;
  endfunction
  
  task main();
    #3;
    begin
    transaction tr=new();
    tr.a=vif.a;
    tr.b=vif.b;
    tr.c=vif.c;
    tr.sum=vif.sum;
    tr.carry=vif.carry;
    mon2scb.put(tr);
    
    tr.main("monitor");
    end
  endtask
  
endclass

