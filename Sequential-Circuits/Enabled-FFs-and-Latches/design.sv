// sr ff with enable

module sr_ff (
    input logic S,
    input logic R,
    input logic clk,
    input logic en,
    output logic Q
);
    always_ff @(posedge clk) begin
        if (en) begin
            case ({S, R})
                2'b10: Q <= 1;     // Set
                2'b01: Q <= 0;     // Reset
                2'b00: Q <= Q;     // Hold (retain state)
                2'b11: Q <= 1'bx;  // Undefined state
            endcase
        end
    end
endmodule

// d ff with enable

module dff (
    input logic d,
    input logic clk,
    input logic reset,
    input logic en,
    output logic q,
    output logic qb
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (en)
            q <= d;
    end
    assign qb = ~q;
endmodule

// jk ff with enable 

module jkff (
    input logic j,
    input logic k,
    input logic clk,
    input logic en,
    output logic q
);
    always_ff @(posedge clk) begin
        if (en) begin
            case ({j, k})
                2'b01: q <= 0;     // Reset
                2'b10: q <= 1;     // Set
                2'b11: q <= ~q;    // Toggle
                2'b00: q <= q;     // Hold (retain state)
            endcase
        end
    end
endmodule

// t ff with enable 

module tff (
    input logic t,
    input logic clk,
    input logic reset,
    input logic en,
    output logic q,
    output logic qb
);
    always_ff @(posedge clk or posedge reset) begin
        if (reset)
            q <= 1'b0;
        else if (en) begin
            if (t)
                q <= ~q; // Toggle
            else
                q <= q;  // Hold
        end
    end
    assign qb = ~q;
endmodule

// sr latch with enable

module sr_latch (
    input logic S,
    input logic R,
    input logic en,
    output logic Q,
    output logic Q_bar
);
    always_ff @(posedge en) begin
        if (S && !R)
            Q <= 1;
        else if (!S && R)
            Q <= 0;
        else if (!S && !R)
            Q <= Q;  // Hold state
        else
            Q <= 1'bx;  // Undefined state
    end
    assign Q_bar = ~Q;
endmodule
