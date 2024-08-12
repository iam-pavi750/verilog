class parent;
  int a ;
  
  function new();
    a =1;
  endfunction
   extern function void  display();
     
 endclass
   
class child extends parent;
  int b;
  
  function new();
    b = 1;
  endfunction
  extern function void display();
    
endclass

function void parent:: display;
  $display("a is %d",a);
endfunction

function void child :: display;
  $display("b is %d",b);
  super.display();
endfunction

module tb;
  initial begin
  child c1;
  c1 = new();
  c1.display;
  end
endmodule
  
  
 
b is 1
a is 1
