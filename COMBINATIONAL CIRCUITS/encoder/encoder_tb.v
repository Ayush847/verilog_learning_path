module encoder_tb;
  reg a,b,c,d;
  wire x,y;
  
  encoder DUT(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .x(x),
    .y(y));
  
  initial begin
    $monitor("a=%b, b=%b, c=%b, d=%b,  x=%b, y=%b", a,b,c,d,x,y);
    a=0; b=0; c=0; d=1; #10;
    a=0; b=0; c=1; d=0; #10;
    a=0; b=1; c=0; d=0; #10;
    a=1; b=0; c=0; d=0; #10; 
    
    $finish;
  end
   
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, encoder_tb);
  end
endmodule
