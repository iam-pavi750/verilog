class base_class;
  
  string  light,fan;
  
  function void open_electricity();
    light = "on";
    $write("light is %s" ,light);
  endfunction
  
endclass


class sub_class extends base_class;
  
 string fan ="on";
  function void open_electricity();
    super.open_electricity;
    $write("fan is %s",fan);
  endfunction
endclass

module tb;
  initial begin
  sub_class a1;
  a1 = new();
  a1.open_electricity();
  
  end
endmodule
  
  
  
light is on fan is on

     
  
