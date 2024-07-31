module integer_to_int();
 
 integer integer_data;
 int int_data;

 initial begin
  
   integer_data = 8'b10xz1x11;

   $display("\nsize of integer = %0d",$size(integer_data));
   $display("before casting integer_data = %b",integer_data);

   int_data = 32'(integer_data);  

   $display("after casting integer to int = %b\n",int_data);

 end
endmodule

output
 KERNEL: size of integer = 32
# KERNEL: before casting integer_data = 00000000000000000000000010xz1x11
# KERNEL: after casting integer to int = 00000000000000000000000010001011
