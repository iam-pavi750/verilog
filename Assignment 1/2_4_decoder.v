module decoder_2;
  reg en,a0,a1;
  wire d0,d1,d2,d3;
  decoder_2 dut(.en(en),.a0(a0),.d0(d0),.d1(d1),.d2(d2),.d3(d3));
  initial begin
   
    #10 en = 1'b1;a0=1'b0;a1 = 1'b0;
    #10 en = 1'b1;a0=1'b0;a1 = 1'b1;
    #10 en = 1'b1;a0=1'b1;a1 = 1'b0;
    #10 en = 1'b1;a0=1'b1;a1 = 1'b1;
    #10$stop;
   end 
  always @(d0,d1,d2,d3)
  $display("time =%0\t input values: \t en=%b\t a1=%b\t a0=%b\t output values d3,d2,d1,d0 = %b%b%b%b",en,a1,a0,d3,d2,d1,d0);
  $dump file("decoder_2.vcd");
  $dumpvars(1);
 endmodule
