module tb_mux_2bit_4to1;
    logic [1:0] d0, d1, d2, d3, sel;
    logic [1:0] out;

    mux_2bit_4to1 uut (d0, d1, d2, d3, sel, out);

    initial begin
        d0 = 2'b00; d1 = 2'b01; d2 = 2'b10; d3 = 2'b11; sel = 2'b00;
        #10;

        sel = 2'b01;
        #10;

        sel = 2'b10;
        #10;

        sel = 2'b11;
        #10;
    end
endmodule