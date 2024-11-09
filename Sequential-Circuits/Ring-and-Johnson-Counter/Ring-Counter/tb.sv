module tb_ring_counter;
    logic clock, reset;
    logic [3:0] q;

    ring_counter uut (clock, reset, q);

    always #5 clock = ~clock;

    initial begin
        clock = 0; reset = 1;
        #10 reset = 0;
        #100 reset = 1;
        #10 reset = 0;
        #100 $stop;
    end
endmodule
