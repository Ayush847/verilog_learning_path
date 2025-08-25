module b_to_g_conv_tb;
  reg[3:0] b;
  wire[3:0] g;
  
  b_to_g_conv DUT(
    .b(b),
    .g(g));
  
  initial begin
    $monitor("b=%b, g=%b", b,g);
    b = 4'b0000; #10;
    b = 4'b0001; #10;
    b = 4'b0010; #10;
    b = 4'b0011; #10;
    b = 4'b0100; #10;
    b = 4'b0101; #10;
    b = 4'b0110; #10;
    b = 4'b0111; #10;
    b = 4'b1000; #10;
    b = 4'b1001; #10;
    b = 4'b1010; #10;
    b = 4'b1011; #10;
    b = 4'b1100; #10;
    b = 4'b1101; #10;
    b = 4'b1110; #10;
    b = 4'b1111; #10;
    
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, b_to_g_conv_tb);
  end
endmodule
