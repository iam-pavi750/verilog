module example;
  int arr[8];
  initial begin
    foreach(arr[i])begin
      arr[i] = i;
      $display("value of arr[%0d] = %0d",i,arr[i]);
  end
  end
  endmodule



 value of arr[0] = 0
 value of arr[1] = 1
 value of arr[2] = 2
 value of arr[3] = 3
 value of arr[4] = 4
 value of arr[5] = 5
 value of arr[6] = 6
 value of arr[7] = 7
