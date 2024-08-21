class class_1;  
  rand bit [3:0]a[5][5];  
      endclass  
      module mod;  
      class_1 pack;  
      initial begin  
      pack = new;  
      $display ("The value elements of array before randomization = %0p",pack.a);  
      for (int i =0;i<=5;i++)begin  
      void'(pack.randomize());  
      $display ("The value of elements of array after randomization = %0p",pack.a);  
      end
      end   
      endmodule


# KERNEL: The value elements of array before randomization = {0 0 0 0 0} {0 0 0 0 0} {0 0 0 0 0} {0 0 0 0 0} {0 0 0 0 0}
# KERNEL: The value of elements of array after randomization = {10 3 11 6 4} {3 11 1 4 9} {14 6 3 13 7} {10 6 2 8 7} {0 7 3 11 7}
# KERNEL: The value of elements of array after randomization = {15 15 6 10 3} {15 5 1 6 15} {9 6 10 1 13} {3 3 8 6 13} {9 4 11 0 2}
# KERNEL: The value of elements of array after randomization = {14 7 11 0 4} {14 14 6 7 13} {2 1 3 5 8} {6 0 10 5 7} {8 7 13 10 9}
# KERNEL: The value of elements of array after randomization = {5 13 12 11 13} {14 2 4 10 8} {1 10 3 4 15} {10 8 4 10 8} {10 7 8 6 1}
# KERNEL: The value of elements of array after randomization = {9 15 8 9 8} {7 8 13 12 13} {6 7 8 10 3} {7 13 3 14 3} {15 2 15 14 10}
# KERNEL: The value of elements of array after randomization = {6 3 13 6 7} {8 6 9 13 10} {10 13 2 13 5} {2 5 12 3 6} {1 2 6 3 14}
