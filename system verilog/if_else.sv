module if_else;
byte a;
initial begin
  a = -1;
  $display ("Assign the value of a = %0d ",a);
  $display("-------------------------------------");
  if(a>-1)begin
    $display ("Successfully enters into if block");
    $display ("a is a postive number");
    $display ("----------------------------------");
  end 
  else 
    $display ("Number is negative");
  $display ("Out of if else block");
end 
 
endmodule

KERNEL: Assign the value of a = -1 
# KERNEL: -------------------------------------
# KERNEL: Number is negative
# KERNEL: Out of if else block
