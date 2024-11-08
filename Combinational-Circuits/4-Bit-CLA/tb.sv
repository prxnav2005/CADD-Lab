module testbench;
  reg [3:0] A, B;
  reg Cin;
  wire [3:0] S;
  wire Cout;
  
  CLA_four_bit DUT (A, B, Cin, S, Cout);

  initial begin
    A = 4'b0000; B = 4'b0000; Cin = 0;
    #10;
    A = 4'b0101; B = 4'b0011; Cin = 1;
    #10;
    A = 4'b1111; B = 4'b0001; Cin = 0;
    #10;
    A = 4'b1001; B = 4'b0110; Cin = 1;
    #10;
    A = 4'b1010; B = 4'b1101; Cin = 0;
    #10;
  end
endmodule