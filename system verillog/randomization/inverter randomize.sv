 class inverter;
   rand bit [2:0]c;
   constraint c1 {! ( c inside {[3:6]});} 
 endclass

module m1;
  inverter h1;
  initial begin
    h1 = new();
    void'(h1.randomize());
    $display("the value of randomize is %d ",h1.c);
  end
endmodule

the value of randomize is 2
