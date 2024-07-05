2. Write RTL for designing a 1-bit Full Subtractor using Half-Subtractor



module half_subtractor(input a,b,output diff,borr);
  assign diff = a^b;
  assign borr = ~a&b;
endmodule
module full_subtractor_using_half_subtractor(input a,b,bin,output diff,borr);
  wire x,y,z;
  
  half_subtractor h1(.a(a),.b(b),.diff(x),.borr(y));
  half_subtractor h2(.a(x),.b(bin),.diff(diff),.borr(z));         
  assign borr = y|z;
  endmodule
