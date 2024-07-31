module data_type_integer;
  integer integer_data_type;
  initial begin
    integer_data_type = 32'b101x;
  $display("value of integer = %0b\n", integer_data_type);
  
  end
endmodule
output
 value of integer = 101x
