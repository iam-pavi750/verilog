module example;
int i;
  initial begin
    repeat(5)begin
    
 
      $display("value of i = %0d",i);
    i++;
  end
      
  end
 
  endmodule

output
 KERNEL: value of i = 0
# KERNEL: value of i = 1
# KERNEL: value of i = 2
# KERNEL: value of i = 3
# KERNEL: value of i = 4
