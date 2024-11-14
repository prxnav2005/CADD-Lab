module mux4_1(input logic d0, d1, d2, d3, input logic [1:0] s, output logic y);
    assign y = (~s[1] & ~s[0] & d0) | (~s[1] & s[0] & d1) | (s[1] & ~s[0] & d2) | (s[1] & s[0] & d3);
endmodule
