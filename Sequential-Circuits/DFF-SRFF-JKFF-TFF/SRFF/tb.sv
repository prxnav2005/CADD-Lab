module tb_sr_ff;
    logic S, R, clk;
    logic Q;

    sr_ff uut (S, R, clk, Q);

    always #5 clk = ~clk;

    initial begin
        clk = 0; S = 0; R = 0;

        #10 S = 1; R = 0;
        #10 assert(Q == 1) else $error("Set failed at time %0t", $time);

        #10 S = 0; R = 1;
        #10 assert(Q == 0) else $error("Reset failed at time %0t", $time);

        #10 S = 0; R = 0;
        #10 assert(Q == Q) else $error("Hold failed at time %0t", $time);

        #10 S = 1; R = 1;
        #10 assert(Q === 1'bx) else $error("Undefined state failed at time %0t", $time);

        #20;
    end
endmodule