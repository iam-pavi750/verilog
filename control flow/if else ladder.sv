module if_else_ladder;
  bit [3:0] a;
  bit [3:0] b;
  initial begin
    a = 10;
    b = 12;
    if(a>b)begin
      $display(" a is greater than b ");
    end
    else if(a<b) begin
      $display(" a is less than b ");
    end
    else  
      $display(" a is equal  to b ");
   
  end
endmodule
