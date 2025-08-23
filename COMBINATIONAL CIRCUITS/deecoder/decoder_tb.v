module priority_encoder_tb;
  reg d3, d2, d1, d0;
  wire x, y;

  priority_encoder DUT(
    .d3(d3),
    .d2(d2),
    .d1(d1),
    .d0(d0),
    .x(x),
    .y(y)
  );

  initial begin
    $monitor("d3=%b, d2=%b, d1=%b, d0=%b => x=%b, y=%b", d3, d2, d1, d0, x, y);
    d3=0; d2=0; d1=0; d0=0; #10;
    d3=0; d2=0; d1=0; d0=1; #10;
    d3=0; d2=0; d1=1; d0=0; #10;
    d3=0; d2=1; d1=0; d0=0; #10;
    d3=1; d2=0; d1=0; d0=0; #10;
    d3=0; d2=1; d1=1; d0=1; #10;
    d3=1; d2=1; d1=1; d0=1; #10;
    $finish;
  end

  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, priority_encoder_tb);
  end
endmodule
