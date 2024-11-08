module tb_FA;
    reg x, y, cin;
    wire s, carry;

    FA DUT (x, y, cin, s, carry);

    initial begin
        x = 0; y = 0; cin = 0; #10;
        x = 0; y = 0; cin = 1; #10;
        x = 0; y = 1; cin = 0; #10;
        x = 0; y = 1; cin = 1; #10;
        x = 1; y = 0; cin = 0; #10;
        x = 1; y = 0; cin = 1; #10;
        x = 1; y = 1; cin = 0; #10;
        x = 1; y = 1; cin = 1; #10;
    end
endmodule
