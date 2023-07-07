class driver;
  mailbox gen2driv;
  virtual intf vif;
  
  function new(virtual intf vif, mailbox gen2driv);
    this.vif=vif;
    this.gen2driv=gen2driv;
    
  endfunction
  
  task main();
    transaction tr;
    gen2driv.get(tr);
    vif.a<=tr.a;
    vif.b<=tr.b;
    vif.c<=tr.c;
    
    tr.sum =vif.sum;
    tr.carry =vif.carry;
    tr.main("driver");
    
  endtask
  
  endclass

