module if_statement;
  bit [3:0]a;
 initial begin
   a = 9;
   if(a==9)begin
     $display(" a = %d",a);
     $display("statement is executed");
   end
   $display("out of exit");
 end
endmodule

# KERNEL:  a =  9
# KERNEL: statement is executed
# KERNEL: out of exit
