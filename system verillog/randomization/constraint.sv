class packet;
  rand bit [3:0] addr;
  constraint addrs {addr > 5; }
endclass
module tb;
initial begin
  packet p1;
  p1 = new();
  repeat(10)begin
    p1.randomize();
  $display("addr = %d",p1.addr);
  end
end
endmodule


# KERNEL: addr = 10
# KERNEL: addr = 10
# KERNEL: addr = 12
# KERNEL: addr =  6
# KERNEL: addr =  6
# KERNEL: addr =  7
# KERNEL: addr = 14
# KERNEL: addr = 14
# KERNEL: addr =  8
# KERNEL: addr =  6
