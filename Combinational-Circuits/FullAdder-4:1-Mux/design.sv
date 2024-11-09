module mux4to1(input logic a, input logic b, input logic c, input logic d, input logic [1:0] sel, output logic y);
    assign y = (sel == 2'b00) ? a :
               (sel == 2'b01) ? b :
               (sel == 2'b10) ? c :
               d;
endmodule

module full_adder(input logic A, input logic B, input logic Cin, output logic Sum, output logic Cout);
    logic s0, s1, s2, s3;

    assign s0 = A ^ B;
    assign s1 = Cin;
    assign s2 = A & B;
    assign s3 = Cin & s0;

    mux4to1 mux_sum(s0, ~s0, s1, ~s1, {1'b0, Cin}, Sum);
    mux4to1 mux_cout(1'b0, 1'b0, s2, s3, {A, B}, Cout);
endmodule
