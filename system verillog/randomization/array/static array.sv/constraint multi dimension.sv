class class_1;  
        rand bit [4:0]a[3:0][3:0];  
      constraint cons_name1{foreach (a[i,j])    // standard way to represent multidimensional array using  
        a[i][j]<15;}           //foreach conditional statement  
       endclass  
       module mod;  
       class_1 pack;  
       initial begin  
         $display ("Randomization of multidimensional array");  
         $display ("----------------------------------------");  
        pack=new();  
        $display ("Before randomization");  
        $display (" Array = %0p",pack.a); // gives default value of data types .  
        $display ("After randomization");  
        void'(pack.randomize());  
        for (int i =0;i<=5;i++)begin  
        void'(pack.randomize());  
        $display (" Iteration = %0d, Array = %0p",i,pack.a);   
        end  
        end  
       endmodule

 KERNEL:  Array = {0 0 0 0} {0 0 0 0} {0 0 0 0} {0 0 0 0}
# KERNEL: After randomization
# KERNEL:  Iteration = 0, Array = {14 1 13 8} {10 3 2 8} {12 8 5 2} {13 1 4 13}
# KERNEL:  Iteration = 1, Array = {3 2 5 7} {5 7 3 10} {7 11 14 2} {10 1 10 4}
# KERNEL:  Iteration = 2, Array = {5 7 1 6} {13 0 7 3} {1 9 11 7} {3 2 2 7}
# KERNEL:  Iteration = 3, Array = {13 11 11 8} {7 7 12 9} {5 12 7 2} {11 1 1 14}
# KERNEL:  Iteration = 4, Array = {8 12 14 12} {8 1 13 2} {11 9 5 11} {14 7 8 7}
# KERNEL:  Iteration = 5, Array = {4 0 14 0} {11 0 10 4} {3 11 4 1} {14 12 0 1}
