module tb_sr_latch;
    logic S, R;
    logic Q, Q_bar;

    sr_latch sr (S, R, Q, Q_bar);

    initial begin
        S = 0; R = 0;
        #10 S = 1; R = 0;
        #10 S = 0; R = 1;
        #10 S = 0; R = 0;
        #10 S = 1; R = 1;
    end
endmodule