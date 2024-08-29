module generate_multiples_of_power_2;

    // Parameters
    // Number of multiples to generate
    int multiplier = 3;  // Multiplier for the power of 2

    // Generate the multiples and print them
    initial begin
        int power_of_2 = 1;  // Start with 2^0

      for (int i = 0; i <= 10; i++) begin
            $display("2^%0d * %0d = %0d", i, multiplier, power_of_2 * multiplier);
           power_of_2 = power_of_2 << 1;  // Move to the next power of 2 (2^i)
        end
    end

endmodule

# KERNEL: 2^0 * 3 = 3
# KERNEL: 2^1 * 3 = 6
# KERNEL: 2^2 * 3 = 12
# KERNEL: 2^3 * 3 = 24
# KERNEL: 2^4 * 3 = 48
# KERNEL: 2^5 * 3 = 96
# KERNEL: 2^6 * 3 = 192
# KERNEL: 2^7 * 3 = 384
# KERNEL: 2^8 * 3 = 768
# KERNEL: 2^9 * 3 = 1536
# KERNEL: 2^10 * 3 = 3072
