 class static_array;  
       randc byte  a[5];  
       endclass  
       module stat_array;  
       static_array stat_arr;  
       initial begin  
       stat_arr = new();  
      
       
       $display (" %0p", stat_arr.a);  
       void '(stat_arr.randomize ());  
       $display ("After randomize the elements of array 'a'");  
         $display ("Output =  %0p",stat_arr.a);   
       end  
       endmodule

output
 0 0 0 0 0
-20 81 -101 16 -53
 
