`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"

class environment;
  
  transaction t;
  generator g;
  driver d;
  monitor m;
   mailbox mail;
  virtual interfaces inte;
  
    function new( virtual interfaces inte,  mailbox mail);
      this.inte = inte;
      this.mail= mail;
      endfunction
     
     task environment;
       mail = new();
       g = new(mail);
       d = new(inte,mail);
       m = new(inte,mail);
     endtask
     
     task run;
       fork
         g. gene;
         d. drive;
         m.monitor;
       join
       $display("packet received in environment");
       endtask
     endclass

       
