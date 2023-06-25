class generator;
  packet pkt;
  mailbox gen2driv;
  
  function new(mailbox gen2driv);
    this.gen2driv=gen2driv;
    
  endfunction
  
  task main();
   
    
    repeat(4)
    begin
      pkt=new();
      pkt.randomize();
      gen2driv.put(pkt);
      pkt.display("generator");
    end
    
  endtask
  
endclass
