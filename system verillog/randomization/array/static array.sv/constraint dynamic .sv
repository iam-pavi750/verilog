 class class_1;  
       randc bit [7:0] dyn_arr[];  
       // declaring a dynamic array, each element is of 8 bits.  
     constraint dyn_arr_size{dyn_arr.size()>2;dyn_arr.size()<8;}  
       // declare the size of the dyn_arr between 3 to 7
//       constraint dyn_arr_ele{foreach (dyn_arr[i])   // each element value is square of the index number.  
//                              dyn_arr[i]==i*i;} 
       endclass  
       module mod;  
       class_1 pack;  
       initial begin  
       pack = new();  
         for(int i = 0;i<=10;i++)begin  
       void'(pack.randomize());   
       $display ("Iteration =%0d    Array =%0p",i,pack.dyn_arr);  
       end  
       end  
       endmodule

# KERNEL: Iteration =0    Array =140 8 0 54 166 41 252
# KERNEL: Iteration =1    Array =16 193 166 123 239 63
# KERNEL: Iteration =2    Array =225 152 20 63 48 57
# KERNEL: Iteration =3    Array =96 40 37 47
# KERNEL: Iteration =4    Array =216 143 65 203 235 242 181
# KERNEL: Iteration =5    Array =104 235 188 90 153
# KERNEL: Iteration =6    Array =164 215 77 156 112 198 2
# KERNEL: Iteration =7    Array =28 166 48 32 79
# KERNEL: Iteration =8    Array =230 145 99 185 174 174
# KERNEL: Iteration =9    Array =207 100 113 236 66 186
# KERNEL: Iteration =10    Array =41 32 207 172 255 12 32
