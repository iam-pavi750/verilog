module unpacked_array;
  int a[8];
  initial begin
    a ='{8,7,6,5,4,3,2,1};
    foreach (a[i]) begin
      $display(" value of a is a[%0d] = %0d",i,a[i]);
    end
  end
endmodule

value of a is a[0] = 8
value of a is a[1] = 7
value of a is a[2] = 6
value of a is a[3] = 5
value of a is a[4] = 4
value of a is a[5] = 3
value of a is a[6] = 2
value of a is a[7] = 1



module multi_packed;
  int a[3][4];
 
  initial begin
   foreach (a[i])begin
    foreach (a[i][j])begin
      a[i][j] = $urandom_range(10,50);
         
      
      $display(" value of a[%0d][%0d] = %d",i,j,a[i][j]);
   
  end
  end
  end
endmodule

 value of a[0][0] =          44
# KERNEL:  value of a[0][1] =          40
# KERNEL:  value of a[0][2] =          42
# KERNEL:  value of a[0][3] =          16
# KERNEL:  value of a[1][0] =          43
# KERNEL:  value of a[1][1] =          28
# KERNEL:  value of a[1][2] =          24
# KERNEL:  value of a[1][3] =          32
# KERNEL:  value of a[2][0] =          47
# KERNEL:  value of a[2][1] =          30
# KERNEL:  value of a[2][2] =          41
# KERNEL:  value of a[2][3] =          11



displaying output in one line
module unpacked_array;
  int a[8];
  initial begin
    a ='{8,7,6,5,4,3,2,1};
    foreach (a[i]) begin
      $display(" value of a is= %p",a);
    end
  end
endmodule

# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}
# KERNEL:  value of a is= '{8, 7, 6, 5, 4, 3, 2, 1}


