module tristate_buffer (
    input logic in,
    input logic en,
    output logic out
);
    assign out = (en) ? in : 1'bz;
endmodule
