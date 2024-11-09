module tb_async_counter;
    logic clk, reset;
    logic [3:0] q;

    async_counter ac (clk, reset, q);

    always begin
        #5 clk = ~clk;  
    end

    initial begin
        clk = 0; reset = 1;
        #10 reset = 0;
        #100 reset = 1;
        #10 reset = 0;
        #100;
    end
endmodule
