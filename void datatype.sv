// Code your testbench here
module even_odd_checker;
    // A void function that checks if the given number is even or odd
    function  int check_even_odd(input int num);
        if (num % 2 == 0)
            $display("The number %d is even.", num);
        else
            $display("The number %d is odd.", num);
     return 11;
    endfunction

    // Initial block to call the void function with different numbers
    initial begin
        check_even_odd(4);  // This will print "The number 4 is even."
        check_even_odd(7);  // This will print "The number 7 is odd."
        check_even_odd(0);  // This will print "The number 0 is even."
     int a=  check_even_odd(4));
    end
endmodule
