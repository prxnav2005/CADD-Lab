module tb_tff;
    logic t, clock, reset;
    logic q, qb;

    tff uut (t, clock, reset, q, qb);

    always #5 clock = ~clock;

    initial begin
        clock = 0; reset = 1; t = 0;

        #10 reset = 0; t = 0;
        #10 assert(q == 0 && qb == 1) else $error("Test failed at time %0t", $time);

        #10 t = 1;
        #10 assert(q == 1 && qb == 0) else $error("Test failed at time %0t", $time);

        #10 t = 1;
        #10 assert(q == 0 && qb == 1) else $error("Test failed at time %0t", $time);

        #10 reset = 1;
        #10 assert(q == 0 && qb == 1) else $error("Test failed at time %0t", $time);

        #20 $stop;
    end
endmodule