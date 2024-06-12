module concatenation;
  reg[3:0] i1,i2;
  reg[2:0] i3;
  initial begin 
    i1= 4'h6;
    i2=2'h2;
   
    i3= 4'h4;
    $display("for concatenation : %b%b%b ",i1,i2,i3);
    $display("for concatenation : %b%b%b ",i1,i2,2'b11);   
    $display("for concatenation : %b%b%b ",i1,i2[0],2'b11);
    
  end
  endmodule

output
for concatenation : 01100010100 
for concatenation : 0110001011 
for concatenation : 0110011 
