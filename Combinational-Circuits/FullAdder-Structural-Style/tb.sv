module full_adder_tb;

    logic A, B, Cin;
    logic Sum, Cout;

    full_adder DUT(A, B, Cin, Sum, Cout);

    initial begin
        A = 0; B = 0; Cin = 0;
        #10;
        A = 0; B = 0; Cin = 1;
        #10;
        A = 0; B = 1; Cin = 0;
        #10;
        A = 0; B = 1; Cin = 1;
        #10;
        A = 1; B = 0; Cin = 0;
        #10;
        A = 1; B = 0; Cin = 1;
        #10;
        A = 1; B = 1; Cin = 0;
        #10;
        A = 1; B = 1; Cin = 1;
        #10;
    end

endmodule
