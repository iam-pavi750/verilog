module example;
  int i;
  initial begin
    forever begin
      $display("value of i = %0d",i);
      #2 i++;
    end
  end
    initial begin
     #10 $finish;
  end
endmodule


value of i = 0
 value of i = 1
 value of i = 2
 value of i = 3
 value of i = 4
