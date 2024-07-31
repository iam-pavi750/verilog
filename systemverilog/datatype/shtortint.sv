module data_type_shortint;  
 shortint shortint_data; 
 
initial begin
   $display("\n value of shortint = %0b", shortint_data);
    shortint_data = 16'b1101001010101001;
  $display("\n value of shortint = %0b", shortint_data);
    shortint_data = 32767; 
  $display("\nvalue of shortint = %0d\n", shortint_data);
end
endmodule

output
# KERNEL:  value of shortint = 0
# KERNEL: 
# KERNEL:  value of shortint = 1101001010101001
# KERNEL: 
# KERNEL: value of shortint = 32767
