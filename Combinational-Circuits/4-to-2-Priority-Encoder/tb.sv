module tb;
  logic [3:0] A;
  logic [1:0] Y;

  prio_enco dut(A, Y);

  initial begin
    A = 4'b0001;
    #10 A = 4'b0010;
    #10 A = 4'b0100;
    #10 A = 4'b1000;
    #10 A = 4'b0000;
    #10 $stop;
  end
endmodule
