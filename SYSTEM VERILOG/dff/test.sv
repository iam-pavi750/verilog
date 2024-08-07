`include "environment.sv"
class test ;
  
  environment env;
    mailbox mail;
  virtual interfaces inte;
  
  function new( virtual interfaces inte,  mailbox mail);
      this.inte = inte;
      this.mail= mail;
      endfunction
     
     task en;
       
       mail = new();
       env = new(inte,mail);
     endtask
     
     task run;
       
       fork 
       env.environment;
       env.run;
       join
       
       $display("env is created");
       
       
     endtask
endclass
       
