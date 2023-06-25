class driver;
   virtual intf vif;
   mailbox gen2driv;
 
  function new(virtual intf vif,  mailbox gen2driv);
    this.vif=vif;
    this.gen2driv=gen2driv;
    
  endfunction
  
  task main;
   
    repeat(1)
      begin
         packet pkt;
        gen2driv.get(pkt);
        vif.a <=pkt.a;
        vif.b <=pkt.b;
        
        pkt.sum =vif.sum;
        pkt.carry =vif.carry;
        pkt.display("driver");
      end
    
  endtask
  
endclass
