module data_type;
   real real_data_type;
  initial begin
    $display( "real is 64 bit number");
    $display(" before initialize the default  value");
    real_data_type= 4.4555;
    $display("\nafter initialize the value =%f",real_data_type);
  end
endmodule

real is 64 bit number
# KERNEL:  before initialize the default  value
# KERNEL: 
# KERNEL: after initialize the value =4.455500
