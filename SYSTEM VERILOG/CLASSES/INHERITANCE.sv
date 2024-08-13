class home;
  int a = 10;
  function void disp();
    $display( "value of a is %d ", a);
  endfunction
  
endclass

class apartment extends home;
  int b = 20;
  function void display();
    $display( "value of b is %d ", b);
    
  endfunction
endclass
  
  module tb;
    apartment a1;
    
    initial begin
      apartment a2;
 
      a1 = new();  
      a2 = new a1;
      a1.a = 25;
      a2.b = 202;
      
      
      a1.disp();
     a2.display();
  value of a is 25 
 value of b is 202 
    end
      endmodule
      
      
  
