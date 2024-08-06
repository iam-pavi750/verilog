class packet1;
  rand bit[3:0] start_addr;
  constraint cons { start_addr dist {0:=5,7:=2,3:=3};}
endclass
module tb;
  initial begin
  packet1 p1;
  p1 = new();
    repeat(10) begin
    p1.randomize();
      $display("start_addr = %d",p1.start_addr);
 end
  end
  
endmodule


# KERNEL: start_addr =  0
# KERNEL: start_addr =  7
# KERNEL: start_addr =  3
# KERNEL: start_addr =  0
# KERNEL: start_addr =  7
# KERNEL: start_addr =  3
# KERNEL: start_addr =  3
# KERNEL: start_addr =  0
# KERNEL: start_addr =  0
# KERNEL: start_addr =  3
