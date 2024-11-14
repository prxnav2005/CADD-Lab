module upcounter(
    input logic clk,
    input logic reset,
    output logic [3:0] q
);
    logic [7:0] sclk = 8'b0; 

    always @(posedge clk) begin
        sclk <= sclk + 1;
    end

    always_ff @(posedge sclk[1]) begin 
        if (reset)
            q <= 4'b0000;
        else
            q <= q + 1;
    end
endmodule