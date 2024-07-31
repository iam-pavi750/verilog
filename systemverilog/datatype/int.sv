module data_type_int;  // declare module name
 int int_data; //declare int variable, by default int is signed
 
initial begin
  
  $display("\n//int is 32-bit signed");
  $display("\nBefore initialization Default value of int = %0b",int_data);
  
  int_data = 32'b110100101010; // assign value for the int

  $display("\nAfter initialization value of int = %0b", int_data);

  int_data = 2147483647; // assign maximum value for the int

  $display("\nAfter initialization maximum value of int = %0d\n", int_data);
end
endmodule

output

KERNEL: Before initialization Default value of int = 0
# KERNEL: 
# KERNEL: After initialization value of int = 110100101010
# KERNEL: 
# KERNEL: After initialization maximum value of int = 2147483647
