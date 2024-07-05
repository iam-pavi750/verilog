7. Write RTL for designing a 2:4 encoder using behavior-level abstraction.


module encoder(input [3:0]d,output [1:0]y );
always@(d)begin
case(*)
4'b0001:y=2'00;
4'b0010:y=2'01;
4'b0100:y=2'10;
4'b1000:y=2'11;
end
endmodule
