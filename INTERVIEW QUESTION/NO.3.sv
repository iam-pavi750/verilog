module swap_arithmetic;
  int a, b;

  initial begin
    // Initial values
    a = 10;
    b = 20;
    
    $display("Before swap: a = %0d, b = %0d", a, b);

    // Swap logic
    a = a + b; // a now holds the sum of a and b
   b = a - b; // b now holds the original value of a
    a = a - b; // a now holds the original value of b

    $display("after swap: a = %0d, b = %0d", a, b);
  end
endmodule

Before swap: a = 10, b = 20
 after swap: a = 20, b = 10
