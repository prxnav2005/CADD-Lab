module tb_tristate_buffer;
    logic in, en;
    logic out;

    tristate_buffer tsb (in, en, out);

    initial begin
        in = 0; en = 0;
        #10 in = 1; en = 0;
        #10 in = 0; en = 1;
        #10 in = 1; en = 1;
    end
endmodule