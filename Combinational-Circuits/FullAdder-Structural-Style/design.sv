module full_adder(
    input logic A, B, Cin,
    output logic Sum, Cout
);

    logic AxorB;
    logic AB, BCin, ACin;

    xor (AxorB, A, B);
    xor (Sum, AxorB, Cin);

    and (AB, A, B);
    and (BCin, B, Cin);
    and (ACin, A, Cin);

    or (Cout, AB, BCin, ACin);

endmodule
