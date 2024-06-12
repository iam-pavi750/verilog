module relational_op;
  reg[3:0]i1,i2;
  initial begin
    i1 = 4'h6;
    i2 = 4'h2;
    
    $display("for relational operator : (>) : (i1=%0h) > (i2=%0h) : %0h" ,i1,i2,i1>i2);
    $display("for  relational operator :(>=): (i1=%0h) >= (i2=%0h) :%0h",i1,i2,i1>=i2);
    $display("for relational operator : (<) : (i1=%0h) < (i2=%0h) : %0h" ,i1,i2,i1<i2);
    $display("for relational operator : (<=): (i1=%0h) <= (i2=%0h) :%0h",i1,i2,i1<=i2);
  
    
  end 
  end module
