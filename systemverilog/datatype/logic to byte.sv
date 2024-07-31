module casting_data;
  logic [3:0]logic_data_type;
  byte byte_data_type;
initial begin
  logic_data_type = 4'b1z1x;
  $display("value of bit_data_type:%0b",logic_data_type);
  byte_data_type=byte'(logic_data_type);
  $display("value of byte_data_type:%b",byte_data_type);
end
endmodule

# KERNEL: value of bit_data_type:1z1x
# KERNEL: value of byte_data_type:00001010
