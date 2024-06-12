module shift_op;
  reg[7:0] i1,o1,o2,o3,o4;
  
  initial begin
    i1 = 8'b1111_0001;
    o1 = i1>>3;
    o2 = i1<<3;
    o3 = i1>>>3;
    o4 = i1<<<3;
    // logical shift
    $display("for shift right (>>) i1=%0b : %0b", i1,o1);
    
    $display("for shift left  : (<<): (i1=%0b) :%0b", i1,o2);
    // arithmetic shift
    $display("for shift right  : (>>>): (i1=%0b) :%0b", i1,o3);
    $display("for shift left : (<<<): (i1=%0b) :%0b", i1,o4);
  end
  endmodule
