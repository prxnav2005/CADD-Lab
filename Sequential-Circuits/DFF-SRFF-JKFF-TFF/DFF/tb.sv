module tb_dff;
    logic d, clock, reset;
    logic q, qb;
    
    dff uut (d, clock, reset, q, qb);

    always #5 clock = ~clock;

    initial begin
        clock = 0; reset = 1; d = 0;
        #10 reset = 0; d = 1;
        #10 assert(q == d && qb == ~d) else $error("Test failed at time %0t", $time);
        #10 d = 0;
        #10 assert(q == d && qb == ~d) else $error("Test failed at time %0t", $time);
        #10 reset = 1;
        #10 assert(q == 0 && qb == 1) else $error("Test failed at time %0t", $time);
        #10 reset = 0; d = 1;
        #10 assert(q == d && qb == ~d) else $error("Test failed at time %0t", $time);
        #20 $stop;
    end
endmodule
