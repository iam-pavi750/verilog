8. Design of a glitch-free clock mux: Inputs-&gt; pclk_62_5mhz,
pclk_250mhz, rate[1:0]; output pclk, When Rate=&#39;b00 Select 62.5MHZ
Clock; Rate=&#39;b10 Select 250MHZ Clock.



module glitch_free_clock_mux (
    input clk_62_5mhz,
    input clk_250mhz,
    input [1:0] rate,
    output reg clk_out
);
    always @(*) begin
        case (rate)
            2'b00: clk_out = clk_62_5mhz;
            2'b10: clk_out = clk_250mhz;
            default: clk_out = clk_62_5mhz; // Default to 62.5MHz
        endcase
    end
endmodule
