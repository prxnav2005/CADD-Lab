module ring_counter(
    input logic clock,
    input logic reset,
    output logic [3:0] q
);
    always_ff @(posedge clock or posedge reset) begin
        if (reset)
            q <= 4'b1000;
        else begin
            case (q)
                4'b1000: q <= 4'b0100;
                4'b0100: q <= 4'b0010;
                4'b0010: q <= 4'b0001;
                4'b0001: q <= 4'b1000;
                default: q <= 4'b1000;
            endcase
        end
    end
endmodule
