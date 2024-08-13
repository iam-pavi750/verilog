virtual class mod;
  int a = 5;
  
  function void display;
    $display(" value of a is %d", a);
  endfunction
  
endclass

class child extends mod;
   int b = 20;
  
  function void disp;
    $display("value of b is %d",b);
  endfunction
  
endclass

module tb;
  initial begin
  child c1 ;
  c1=new();
  c1.disp;
  c1.display;
  
  end
endmodule



value of a is 5;
value of a is 20;
