module full_sub_tb;
  reg x,y,z;
  wire diff, borrow;
  
  full_sub DUT(
    .a(x),
    .b(y),
    .c(z),
    .diff(diff),
    .borrow(borrow));
  
  initial begin
    $monitor("x=%b, y=%b, z=%b, diff=%b, borrow=%b", x,y,z,diff, borrow);
    
    x=0; y=0; z=0;
    #10;
    x=0; y=0; z=1;
    #10;
    x=0; y=1; z=0;
    #10;
    x=0; y=1; z=1;
    #10;
    x=1; y=0; z=0;
    #10;
    x=1; y=0; z=1;
    #10;
    x=1; y=1; z=0;
    #10;
    x=1; y=1; z=1;
    #10;
    
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, full_sub_tb);
  end
endmodule
