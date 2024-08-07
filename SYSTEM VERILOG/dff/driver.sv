class driver;
  transaction trans;
  mailbox mail;
  virtual interfaces inte;
    
  function new( virtual interfaces inte,  mailbox mail);
      this.inte = inte;
      this.mail= mail;
      endfunction
      
      task drive;
        repeat(5) begin
          
          trans = new();
          mail.get(trans);
          
//           inte.clk=trans.clk;
//           inte.rst=trans.rst;
          inte.d=trans.d;
          
          inte.q=trans.q;
          $display("trans is received");
        end
      endtask
      endclass
          
          
