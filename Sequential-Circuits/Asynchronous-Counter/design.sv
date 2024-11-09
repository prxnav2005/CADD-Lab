module async_counter (
    input logic clk,
    input logic reset,
    output logic [3:0] q
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 4'b0000;
        else
            q <= q + 1;
    end
endmodule