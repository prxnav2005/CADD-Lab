module tb_half_subtractor;
    reg A, B;
    wire Diff, Borrow;

    half_subtractor hs (A, B, Diff, Borrow);

    initial begin
        A = 0; B = 0;
        #10 A = 0; B = 1;
        #10 A = 1; B = 0;
        #10 A = 1; B = 1;
    end
endmodule
