class packet1;
  rand bit[3:0] start_addr;
  rand bit[3:0] end_addr;
  rand bit[5:0] addr;
  constraint cons { addr inside {[start_addr:end_addr]}; }
endclass
module tb;
  initial begin
  packet1 p1;
  p1 = new();
 repeat(5) begin
    p1.randomize();
   $display("addr = %d,start_addr = %d,end_addr = %d",p1.addr,p1.start_addr,p1.end_addr);
 end
  end
  
endmodule

# KERNEL: addr =  2,start_addr =  1,end_addr = 10
# KERNEL: addr =  5,start_addr =  5,end_addr = 13
# KERNEL: addr = 14,start_addr =  1,end_addr = 15
# KERNEL: addr =  3,start_addr =  0,end_addr =  6
# KERNEL: addr =  6,start_addr =  2,end_addr =  8
