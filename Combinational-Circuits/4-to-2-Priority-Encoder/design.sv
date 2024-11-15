module prio_enco(input logic [3:0] A, output logic [1:0] Y);
  always_comb
    casez(A)
      4'b1???: Y = 2'b11;
      4'b01??: Y = 2'b10;
      4'b001?: Y = 2'b01;
      4'b0001: Y = 2'b00;
      default: Y = 2'b00;
    endcase
endmodule
