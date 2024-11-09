module full_subtractor(input logic A, input logic B, input logic Bin, output logic Diff, output logic Bout);
    assign Diff = A ^ B ^ Bin;
    assign Bout = (~A & B) | ((~A | B) & Bin);
endmodule
