class instances;
  int light;
  bit fan;
  string switch;
  
  function open_electricity();
    switch = "on";
    $display("switch is on %s",switch);
  endfunction
endclass
  
  module tb;
    instances i1;
    
    initial begin
      i1 = new();
      
      if(i1==null)
        $display("object is not empty");
      else
        $display("object is empty");
    end
  endmodule

 object is empty
