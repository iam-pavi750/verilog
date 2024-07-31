module casting_data;
  real real_data_type;
  int int_data_type;
initial begin
  real_data_type = 4.5;
  $display("value of real_data_type:%0.1f",real_data_type);
  int_data_type=int'(real_data_type);
  $display("value of int_data_type:%b",int_data_type);
end
endmodule


# KERNEL: value of real_data_type:4.5
# KERNEL: value of int_data_type:00000000000000000000000000000101
