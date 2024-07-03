module mux2_1tb;
  reg a,b,sel;
  wire y;
  mux2_1 uut(.a(a),.b(b),.sel(sel),.y(y));
  
  initial begin
    
    a=0;#10;
    sel=0;#10
    a=1;#10
    sel=~sel;
   
  $stop; #40;
  end
 initial 
   $monitor("input values: a= %b,b=%b,sel=%b,output values : y=%b ",a,b,sel);
  
    endmodule
