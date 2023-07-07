class generator;
   mailbox gen2driv;
  
  function new(mailbox gen2driv);
    this.gen2driv=gen2driv;
  endfunction
  
  task main;
    transaction tr=new();
    tr.randomize();
    gen2driv.put(tr);
    tr.main("generator");
  endtask
  
  
endclass

