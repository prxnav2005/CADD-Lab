module CLA_four_bit(
    input logic [3:0] A, B,
    input logic Cin,
    output logic [3:0] S,
    output logic Cout
);
    logic [3:0] G, P;
    logic [4:0] C;

    assign G[0] = A[0] & B[0];
    assign G[1] = A[1] & B[1];
    assign G[2] = A[2] & B[2];
    assign G[3] = A[3] & B[3];

    assign P[0] = A[0] | B[0];
    assign P[1] = A[1] | B[1];
    assign P[2] = A[2] | B[2];
    assign P[3] = A[3] | B[3];
    
    assign C[0] = Cin;
    assign C[1] = G[0] | (P[0] & Cin);
    assign C[2] = G[1] | (P[1] & (G[0] | (P[0] & Cin)));
    assign C[3] = G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))));
    assign Cout = G[3] | (P[3] & (G[2] | (P[2] & (G[1] | (P[1] & (G[0] | (P[0] & Cin)))))));

    assign S[0] = A[0] ^ B[0] ^ C[0];
    assign S[1] = A[1] ^ B[1] ^ C[1];
    assign S[2] = A[2] ^ B[2] ^ C[2];
    assign S[3] = A[3] ^ B[3] ^ C[3];
   
endmodule