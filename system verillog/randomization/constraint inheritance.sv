class packet1;
  rand bit[3:0] addr;
  constraint cons { addr > 5;}
endclass
class packet2 extends packet1;
  constraint cons { addr < 5;}
endclass

module tb;
  initial begin
  packet1 p1;
  packet2 p2;
  p1 = new();
  p2 = new();
    repeat(5) begin
    p1.randomize();
    $display("addr = %d",p1.addr);
      
  end
     $display("---------------------");
    repeat(5)begin
      p2.randomize();
      $display("addr = %d",p2.addr);
   
  end# KERNEL: addr = 10
# KERNEL: addr = 10
# KERNEL: addr = 12
# KERNEL: addr =  6
# KERNEL: addr =  6
# KERNEL: ---------------------
# KERNEL: addr =  0
# KERNEL: addr =  4
# KERNEL: addr =  2
# KERNEL: addr =  1
# KERNEL: addr =  4
  end
endmodule

