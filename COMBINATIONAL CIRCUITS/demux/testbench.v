module demux_tb;
  reg y, s0,s1;
  wire a,b,c,d;
  
  demux DUT(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .s0(s0),
    .s1(s1),
    .y(y));
  
  initial begin
    $monitor("a=%b, b=%b, c=%b, d=%b,y=%b s0=%b, s1=%b",a,b,c,d,y,s0,s1);

    y=1;
    
    s0=0; s1=0; #10;
    s0=0; s1=1; #10;
    s0=1; s1=0; #10;
    s0=1; s1=1; #10;
    
    $finish;
  end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0, demux_tb);
end
endmodule
