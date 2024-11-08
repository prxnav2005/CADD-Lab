module tb_logic_gates;

    logic a;
    logic b;
    logic and_out;
    logic or_out;
    logic not_out;
    logic nand_out;
    logic nor_out;
    logic xor_out;
    logic xnor_out;

    logic_gates dut (a, b, and_out, or_out, not_out, nand_out, nor_out, xor_out, xnor_out);

    initial begin
        a = 0; b = 0;
        #10;
        a = 0; b = 1;
        #10;
        a = 1; b = 0;
        #10;
        a = 1; b = 1;
        #10;
    end

endmodule