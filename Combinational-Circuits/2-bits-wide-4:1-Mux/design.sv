module mux_2bit_4to1 (
    input logic [1:0] d0, d1, d2, d3, sel,
    output logic [1:0] out
);

    assign out = (sel == 2'b00) ? d0 :
                 (sel == 2'b01) ? d1 :
                 (sel == 2'b10) ? d2 :
                                  d3;
endmodule
