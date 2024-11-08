module HA(input logic a,b, output logic s, cout);
  assign s = a^b;
  assign cout = a&b;
endmodule

module FA(input logic x,y,cin, output logic s,carry);
  logic n1,n2,n3;
  HA I1(x,y,n1,n2);
  HA I2(n1,cin,s,n3);
  or I3(carry,n3,n2); //or is a built in primitive. syntax is (output,input,input...)
endmodule