module bitwise_op;
  reg[32:0]i1,i2;
  initial begin
    i1 = 4'd6;
    i2 = 4'd4;
    $display("for bitwise operator : (&): (i1=%0b),(i2=%0b) :%0d", i1,i2,i1 & i2);
    $display("for bitwise operator : (|): (i1=%0b),(i2=%0b) :%0d", i1,i2,i1 | i2);
    $display("for bitwise operator : (^): (i1=%0b),(i2=%0b) :%0d", i1,i2,i1 ^ i2);
    $display("for bitwise operator : (~^): (i1=%0b),(i2=%0b) :%0d", i1,i2,i1 ~^ i2);
  
  
  
    
  end 

endmodule
    
