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
