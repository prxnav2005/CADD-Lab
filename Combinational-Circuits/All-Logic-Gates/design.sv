module logic_gates (
    input logic a,
    input logic b,
    output logic and_out,
    output logic or_out,
    output logic not_out,
    output logic nand_out,
    output logic nor_out,
    output logic xor_out,
    output logic xnor_out
);

    assign and_out = a & b;
    assign or_out = a | b;
    assign not_out = ~a;
    assign nand_out = ~(a & b);
    assign nor_out = ~(a | b);
    assign xor_out = a ^ b;
    assign xnor_out = ~(a ^ b);

endmodule