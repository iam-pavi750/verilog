module reduction_op;
  reg[32:0]i1;
  initial begin
    i1 = 4'd6;
 
    $display("for reduction operator  : (&): (i1=%0b) :%0d", i1,&i1);
    $display("for reduction operator  : (|): (i1=%0b) :%0d", i1,|i1);
    $display("for reduction operator  : (^): (i1=%0b) :%0d", i1,^i1);
    $display("for reduction operator  : (~&): (i1=%0b) :%0d", i1,~&i1);
    $display("for reduction operator  : (~|): (i1=%0b) :%0d", i1,~|i1);
    $display("for reduction operator  : (~^): (i1=%0b) :%0d", i1,~^i1);
  end 

endmodule
