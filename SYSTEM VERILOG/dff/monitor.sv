class monitor;
  transaction trans;
  mailbox mail;
virtual interfaces inte;
    
function new( virtual interfaces inte,  mailbox mail);
   this.inte = inte;
   this.mail= mail;
endfunction
      
task monitor;
repeat(4) begin
          
      trans = new();
      mail.put(trans);
          
trans.d=inte.d;
#5;
trans.q=inte.q;

$display("trans is recieved from dut");
end
endtask
endclass
          
          
