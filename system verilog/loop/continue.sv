module example;

  initial begin
    for(int i = 0; i<8; i++)begin
    
     
      if(i == 2) begin
        continue;
  end
      $display("value of i = %0d",i); 
      
  end
  end
  endmodule

output
# KERNEL: value of i = 0
# KERNEL: value of i = 1
# KERNEL: value of i = 3
# KERNEL: value of i = 4
# KERNEL: value of i = 5
# KERNEL: value of i = 6
# KERNEL: value of i = 7
