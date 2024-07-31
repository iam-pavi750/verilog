module casting_data;
  real real_data_type;
  time time_data_type;
initial begin
  real_data_type = 4.05;
$display("value of real_data_type:%0.2f",real_data_type);
  time_data_type=time'(real_data_type);
$display("value of time_data_type:%t",time_data_type);
end
endmodule


# KERNEL: value of real_data_type:4.05
# KERNEL: value of time_data_type:   4
