module dff (
    input logic d,
    input logic clock,
    input logic reset,
    output logic q,
    output logic qb
);
    always_ff @(posedge clock or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else
            q <= d;
    end
    
    assign qb = ~q;
endmodule
