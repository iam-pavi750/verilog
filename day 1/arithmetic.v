module arithmetic;
reg [3:0]i1,i2;
initial begin
   i1 = 4'h6;
   i2 = 4'h2;

  $display("add: %0h", i1 + i2);
$display("sub: %0h", i1 - i2);
$display("mul: %0h", i1 * i2);
end 
endmodule
