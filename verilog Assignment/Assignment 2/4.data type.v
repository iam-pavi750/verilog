4. Find the value of the variable t at 1ns &amp; 20ns respectively from the
below snippet:
  time = t;
  initial begin
   #10 t= $time;
   #20 ;
  end
 A: t=10ns
