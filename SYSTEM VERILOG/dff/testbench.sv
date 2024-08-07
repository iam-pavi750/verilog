`include "interface.sv"
`include "test"

module dff;
  test tes;
  mailbox mail;
  
  interfaces inte();
    
  dflipflop_asyn ins(.d(inte.d),.clk(inte.clk),.rst(inte.rst),.q(inte.q));
  initial begin
    
    mail = new();
    tes = new(inte,mail);
    fork
      tes.en();
      tes.run();
    join
  end
  initial begin
    inte.clk = 0;
    inte.rst = 0;
    forever #5 inte.clk = ~inte.clk;
    #10 inte.rst=1;
    #20 inte.rst=0;
    
  end
  
  
   initial
     begin
     $monitor("  d= %b,clk=%b ,rst=%b ,q=%b ",inte.d,inte.clk,inte.rst,inte.q);
       #50;
       $finish;
     end
endmodule
