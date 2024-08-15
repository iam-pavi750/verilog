module packed_array;
  reg [3:0] arr;
  initial begin
    foreach(arr[i])begin
      arr = 4'b0010;
      $display(" data is arr[%0d] = %b",i,arr[i]);
    end
  end
endmodule

data is arr[3] = 0
data is arr[2] = 0
data is arr[1] = 1
data is arr[0] = 0
