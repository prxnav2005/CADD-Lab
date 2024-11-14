module mux4_1_tb;
    logic d0, d1, d2, d3;
    logic [1:0] s;
    logic y;

    mux4_1 dut (d0, d1, d2, d3, s, y);

    initial begin
        d0 = 0; d1 = 1; d2 = 0; d3 = 1; s = 2'b00; #10;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1; s = 2'b01; #10;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1; s = 2'b10; #10;
        d0 = 0; d1 = 1; d2 = 0; d3 = 1; s = 2'b11; #10;
    end
endmodule
