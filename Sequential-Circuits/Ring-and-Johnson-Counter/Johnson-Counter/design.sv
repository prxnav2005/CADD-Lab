module johnson_counter(
    input logic clock,
    input logic reset,
    output logic [3:0] q
);
    always_ff @(posedge clock or posedge reset) begin
        if (reset) // Synchronous reset
            q <= 4'b1000;
        else begin
            case (q)
                4'b1000: q <= 4'b1100;
                4'b1100: q <= 4'b1110;
                4'b1110: q <= 4'b1111;
                4'b1111: q <= 4'b0111;
                4'b0111: q <= 4'b0011;
                4'b0011: q <= 4'b0001;
                4'b0001: q <= 4'b0000;
                default: q <= 4'b1000;
            endcase
        end
    end
endmodule
