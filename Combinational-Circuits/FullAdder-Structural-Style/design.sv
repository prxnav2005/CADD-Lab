module full_adder(
    input logic A, B, Cin,
    output logic Sum, Cout
);

    logic AB, BCin, ACin;

    xor (Sum, A, B, Cin);

    and (AB, A, B);
    and (BCin, B, Cin);
    and (ACin, A, Cin);

    or (Cout, AB, BCin, ACin);

endmodule
