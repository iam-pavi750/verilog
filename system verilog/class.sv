class home;
  int fan; // declare properties
  bit light;
  string switch;
  
  task open_electricity(); //declare method
     switch = "on";
    $display(" switch is %s so electricity is open" ,switch);
  endtask
endclass
 module tb;
   home h1;
   initial begin
     h1 = new();
     h1.open_electricity();
     if (h1 == null)
       $display("empty");
     else
       $display("full");
   end
 endmodule


# KERNEL:  switch is on so electricity is open
# KERNEL: full
    
