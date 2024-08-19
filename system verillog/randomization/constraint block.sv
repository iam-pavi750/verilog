class class_a;
  rand byte a;
  rand byte b;
  constraint cons_b{a>2;}
  extern constraint cons_a;
endclass
    constraint class_a::cons_a{b>7;}

module class_b;
  
  class_a pack;
    initial begin
  pack = new();
    for( int i = 0;i<=5;i++)begin
      void'(pack.randomize());
      $display("iteration i = %d, a= %d, b=%d",i,pack.a,pack.b);
    end
  end
endmodule


 iteration i =           0, a=   15, b=  68
# KERNEL: iteration i =           1, a=   98, b= 103
# KERNEL: iteration i =           2, a=   74, b=  96
# KERNEL: iteration i =           3, a=   74, b=  10
# KERNEL: iteration i =           4, a=  108, b=  17
# KERNEL: iteration i =           5, a=   72, b=  40
