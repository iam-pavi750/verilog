class packet;
  rand bit [3:0] addr;
  randc bit [3:0] data;

  function void pre_randomize();
    $display("addr = %d,data = %d ",addr,data);
  endfunction
  function void post_randomize();
    $display("addr = %d,data = %d ",addr,data);
  endfunction
  
endclass

module tb;
initial begin
  packet p1;
  p1 = new();
  p1.randomize();
end
endmodule


  # KERNEL: addr =  0,data =  0 
# KERNEL: addr =  6,data =  8 
