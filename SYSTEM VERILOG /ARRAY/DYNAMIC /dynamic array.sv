module dynamic_array;
  int array[];
  initial begin
    array = new[5];
    array = '{1,2,3,4,5};
  
    foreach(array[i])
      $display("array[%0d]=%0d",i,array[i]);
      $display("size of the array = %0d",array.size());
    
    array = new[6](array);
    array ='{1,2,3,4,5,6};
     foreach(array[i])
    $display("array [%0d]=%0d",i,array[i]);
    $display("size of the array = %0d",array.size());
    
    array = new[7](array);
    array ='{1,2,3,4,5,6,7};
    foreach(array[i])
      $display("array [%0d]=%0d" ,i,array[i]);
    $display("size of array = %0d",array.size());
    array.delete();
    
    
    $display("size of array = %0d",array.size());
    
    array = new[9] (array);
    array ='{1,2,3,4,5,6,7,8,9};
    foreach(array[i])
    $display("array [%0d] =%0d",i,array[i]);
    
    
    
   
  end
    endmodule
