module casting_data;
  bit [3:0]bit_data_type;
  byte byte_data_type;
initial begin
  bit_data_type = 4'b1010;
    $display("value of bit_data_type:%0b",bit_data_type);
  byte_data_type=byte'(bit_data_type);
    $display("value of byte_data_type:%b",byte_data_type);
end
endmodule

# KERNEL: value of bit_data_type:1010
# KERNEL: value of byte_data_type:00001010
