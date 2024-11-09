module tff (
    input logic t,
    input logic clock,
    input logic reset,
    output logic q,
    output logic qb
);
    always_ff @(posedge clock or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (t)
            q <= ~q;
    end
    assign qb = ~q;
endmodule
