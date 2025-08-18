module not_gate_tb;
  reg x;
  wire y;
  
  not_gate DUT(
    .a(x),
    .b(y));
  
  initial begin
    $monitor("x=%b, y=%b", x,y);
    x=0;
    #10;
    
    x=1;
    #10;
    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, not_gate_tb);
  end
endmodule
    
