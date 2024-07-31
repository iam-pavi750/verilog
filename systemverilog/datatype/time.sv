module time_data;
  time time_data_type;
  initial begin
    $display(" value of time : %t\n", time_data_type);
    #5;
    time_data_type=$time;
    $display(" value of time :%t\n", time_data_type);
  end
endmodule
output 
value of time : x;
value of time : 5
