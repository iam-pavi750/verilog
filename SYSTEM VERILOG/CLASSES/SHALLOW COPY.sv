class mirafra;
  int a;
  int b;
  
  function new();
    a=10;
    b=20;
  endfunction
  
  function void display();
    $display( "ais %d and b is %d",a,b);
  endfunction
  
endclass

module tb;
 mirafra tb1;
  mirafra tb2;
  initial begin 
    tb1 = new();
    tb1.display();
    tb2=new tb1;
    tb2.display();
    tb2.a=0;
    tb2.b=1;
    tb1.display();
    tb2.display();
  end
endmodule


a is 10 and b is 20
a is 10 and b is 20
a is 10 and b is 20
a is 0 and b is 1
