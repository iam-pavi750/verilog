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

multipacked

module packed_Array;
  reg [2:0][3:0] abc;
  
  initial begin
    abc = 4'b1010;
    
    foreach(abc[i])begin
      foreach(abc[i][j])begin
        $display("value of abc[%0d][%0d] = %0d",i,j,abc[i][j]);
      end
    end
  end
endmodule

value of abc[2][3] = 0
value of abc[2][2] = 0
value of abc[2][1] = 0
value of abc[2][0] = 0
value of abc[1][3] = 0
value of abc[1][2] = 0
value of abc[1][1] = 0
value of abc[1][0] = 0
value of abc[0][3] = 1
value of abc[0][2] = 0
value of abc[0][1] = 1
value of abc[0][0] = 0
    


        
