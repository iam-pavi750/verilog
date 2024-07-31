module bit_data_type;
  bit single_bit_datatype;
  bit [3:0]multi_bit_datatype;
  initial begin 
    
    $display("\n before initilize the data   :%d",single_bit_datatype);
    $display("\n before the initilize the data :%b",multi_bit_datatype);
    
            single_bit_datatype = 1;
            multi_bit_datatype = 4'b1100;
    
    $display("\n after initilize the data :%b",single_bit_datatype);
    $display("\n after the initilize the data :%b",multi_bit_datatype);
    
             single_bit_datatype = 1'bx;
             multi_bit_datatype = 4'b11xz;
    
    $display("\n after initilize the data :%b",single_bit_datatype);
    $display("\n after the initilize the data :%b",multi_bit_datatype); 
  end
  endmodule
output
# KERNEL:  before initilize the data :0
# KERNEL: 
# KERNEL:  before the initilize the data :0000
# KERNEL: 
# KERNEL:  after initilize the data :1
# KERNEL: 
# KERNEL:  after the initilize the data :1100
# KERNEL: 
# KERNEL:  after initilize the data :0
# KERNEL: 
# KERNEL:  after the initilize the data :1100
