module full_adder(input logic A, B, Cin, output logic Sum, Carry);
    logic [7:0] D;

    assign D[0] = ~A & ~B & ~Cin;
    assign D[1] = ~A & ~B & Cin;
    assign D[2] = ~A & B & ~Cin;
    assign D[3] = ~A & B & Cin;
    assign D[4] = A & ~B & ~Cin;
    assign D[5] = A & ~B & Cin;
    assign D[6] = A & B & ~Cin;
    assign D[7] = A & B & Cin;

    assign Sum = D[1] | D[2] | D[4] | D[7];
    assign Carry = D[3] | D[5] | D[6] | D[7];
endmodule