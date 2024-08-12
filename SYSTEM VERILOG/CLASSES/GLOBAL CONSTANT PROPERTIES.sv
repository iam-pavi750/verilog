class home;
  string a;
 const int b = 1;
  
  function new();
    a = "team";
  endfunction
  
  function void display();
    $display("a is %s and b is %d", a,b);
  endfunction
endclass

 module tb;
   initial begin
   home h;
   h = new();
   h.display;
   end
 endmodule

 a is team and b is  1
