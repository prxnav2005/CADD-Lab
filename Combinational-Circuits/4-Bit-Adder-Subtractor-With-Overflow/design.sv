module adder_subtractor_4bit (
    input logic [3:0] a, b,
    input logic sel,              
    output logic [3:0] result,
    output logic overflow
);

    logic [3:0] b_complement;
    logic carry_in;

    assign b_complement = sel ? ~b : b;      
    assign carry_in = sel;                   

    assign result = a + b_complement + carry_in;  

    assign overflow = (a[3] == b_complement[3]) && (result[3] != a[3]);   

endmodule
