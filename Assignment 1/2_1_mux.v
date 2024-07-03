module mux2_1(input a,b,sel,output y );
  
  wire t1,t2,selbar;
  
  and a1(t1,selbar,a);
  and a2(t2,sel,b);
  not n1(selbar,sel);
  or o1(y,t1,t2);
endmodule
