module tb_adder_subtractor_4bit;

    logic [3:0] a, b;
    logic sel;
    logic [3:0] result;
    logic overflow;

    adder_subtractor_4bit uut (a, b, sel, result, overflow);

    initial begin
        a = 4'b0011; b = 4'b0101; sel = 0;
        #10;

        a = 4'b0110; b = 4'b0011; sel = 1;
        #10;

        a = 4'b0111; b = 4'b0101; sel = 0;
        #10;

        a = 4'b1000; b = 4'b0001; sel = 1;
        #10;

        a = 4'b0000; b = 4'b0000; sel = 0;
        #10;
    end

endmodule