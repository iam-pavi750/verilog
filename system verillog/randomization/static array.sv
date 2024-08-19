class array_stat;
  rand bit a[4:0];
endclass

module static_a;
  initial begin
  array_stat a;
    a = new();
    void'(a.randomize());
    $display("value of a is %0p",a.a);
  end
endmodule


 value of a is 0 0 0 1 1
