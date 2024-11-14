module upcount_tb();
    logic clk;
    logic reset;
    logic [3:0] q;

    upcounter dut(clk, reset, q);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        reset = 1;
        #700;
        reset = 0;
        #1000; 
        $stop;
    end
endmodule