class driver;
  
   transaction t;
   mailbox mail;
   virtual operation vit;
 
  function new(mailbox mail,virtual operation vit);
    this.mail=mail;
    this.vit =vit;
  endfunction
  
  
  task name;   
    @(posedge vit.clk);
        
        vit.rst=1;
     @(posedge vit.clk);
        
        vit.wr_en = 0;
        vit.rd_en = 0;
        vit.data_in=0;
        vit.data_out=0; 
    
        $display("reset condition");
         
    @(posedge vit.clk);
    
        vit.rst=0;
        vit.wr_en = 1;
         vit.rd_en = 0;
        vit.data_in=t.data_in;
    
        $display("write condition");
        
    @(posedge vit.clk);
    
         vit.rst=0;
         vit.rd_en= 1;
         vit.wr_en = 0;
         vit.data_out=t.data_in;
    
        $display("read condition");  
   
 endtask

  
  task dri;
    repeat(5)
    begin
    t = new();
    mail.get(t);
    name;
    #5;
  end
  endtask
        
  endclass

      
    
  
