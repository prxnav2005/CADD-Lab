module mux4_2level(input logic [3:0] d0, d1, d2, d3, input logic [1:0] s, output logic [3:0] y);
  logic [3:0] s0, s1;
  
  assign s0 = (s[0]) ? d1 : d0;
  assign s1 = (s[0]) ? d3 : d2;
  
  assign y = (s[1]) ? s1 : s0;
endmodule