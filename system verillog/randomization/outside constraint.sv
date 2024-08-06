class cons;
  randc bit[3:0] addr;
  constraint consi;
endclass
constraint cons::consi {addr > 5;}
module tb;
  initial begin
  cons c1;
  c1 = new();
    repeat(5) begin
  c1.randomize();
  $display("addr = %d",c1.addr);
  end
  end
endmodule

# KERNEL: addr = 10
# KERNEL: addr =  9
# KERNEL: addr =  6
# KERNEL: addr = 11
# KERNEL: addr = 13
