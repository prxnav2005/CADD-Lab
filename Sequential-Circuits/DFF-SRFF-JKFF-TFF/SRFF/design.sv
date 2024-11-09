module sr_ff (
    input logic S,
    input logic R,
    input logic clk,
    output logic Q
);
    always_ff @(posedge clk) begin
        case ({S, R})
            2'b10: Q <= 1;  
            2'b01: Q <= 0;     
            2'b00: Q <= Q;     
            2'b11: Q <= 1'bx;  
        endcase
    end
endmodule