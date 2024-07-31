module data_type_longint;  // declare module name
 longint longint_data; //declare longint variable, by default longint is signed
 
initial begin
  
  $display("\n//longint is 64-bit signed ");
  $display("\nBefore initialization Default value of longint = %0b",longint_data);
  
  longint_data = 64'b11x01xz001x01010; // assign value for the longint

  $display("\nAfter initialization value of longint = %0b\n", longint_data);

 end
endmodule
 output
 KERNEL: //longint is 64-bit signed 
# KERNEL: 
# KERNEL: Before initialization Default value of longint = 0
# KERNEL: 
# KERNEL: After initialization value of longint = 1100100001001010
# KERNEL: 
