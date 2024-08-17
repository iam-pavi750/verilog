module dynamic_array;
  int a[];
  initial begin
    a = new[7];
    a = '{1,2,3,4,5,6,7};
    foreach(a[i])begin
      $display( "value of a is a[%0d]= %0d",i,a[i]);
      end
  end
endmodule

# KERNEL: value of a is a[0]= 1
# KERNEL: value of a is a[1]= 2
# KERNEL: value of a is a[2]= 3
# KERNEL: value of a is a[3]= 4
# KERNEL: value of a is a[4]= 5
# KERNEL: value of a is a[5]= 6
# KERNEL: value of a is a[6]= 7
