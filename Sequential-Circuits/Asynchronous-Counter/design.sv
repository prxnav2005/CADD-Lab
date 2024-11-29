module async_counter_with_divider (
    input logic clk,
    input logic reset,
    output logic [3:0] q
);
    logic [26:0] sclk = 25'b0;

    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            sclk <= 25'b0;
        else
            sclk <= sclk + 1;
    end

    always_ff @(posedge sclk[25] or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= q + 1;
    end
endmodule
