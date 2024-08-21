class class_1;
     rand bit [3:0]que[$];
     constraint que_const{que.size()==5;}
     endclass
     module mod;
     class_1 pack;
     initial begin
     pack=new;
     for (int i = 0;i<=pack.que.size();i++)begin
     void'(pack.randomize());
     $display (" Iteration = %0d The value of array =%0p",i,pack.que); 
     end
    end
    endmodule


# KERNEL:  Iteration = 0 The value of array =10 3 11 6 4
# KERNEL:  Iteration = 1 The value of array =3 11 1 4 9
# KERNEL:  Iteration = 2 The value of array =14 6 3 13 7
# KERNEL:  Iteration = 3 The value of array =10 6 2 8 7
# KERNEL:  Iteration = 4 The value of array =0 7 3 11 7
# KERNEL:  Iteration = 5 The value of array =15 15 6 10 3
