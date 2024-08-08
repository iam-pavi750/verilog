class generator;
  transaction trans;
  mailbox mail;
  
  function new(mailbox mail);
    this.mail = mail ;
  endfunction
  
  task gene;
    
    repeat(4)begin
    trans = new();
      trans.randomize();
      mail.put(trans);
      $display("trans is generator");
      #5;
    end
  endtask
endclass
