module half_sub_tb;
  reg x,y;
  wire diff, borrow;
  
  half_sub DUT(
    .a(x),
    .b(y),
    .diff(diff),
    .borrow(borrow));
  
  initial begin
    $monitor("x=%b, y=%b, diff=%b, borrow=%b", x,y,diff,borrow);
    x=0; y=0;
    #10;
    
    x=0; y=1;
    #10;
    
    x=1; y=0;
    #10;
    
    x=1; y=1;
    #10;
    
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, half_sub_tb);
  end
endmodule
