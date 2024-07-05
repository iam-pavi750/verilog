What will be the value of the parameter constant for the instance DUT ir
the top module from the below snippet?
module test;
parameter WIDTH=8;
endmodule
module top;
test #(16) OUT ();
endmodule
