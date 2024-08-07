module dflipflop_asyn (input d, clk,rst, output reg q);
  always@(posedge clk or posedge rst)begin
      if(rst)begin
        q <= 0;
      end
      else begin
        q <= d;
      end
    end
      endmodule
