module full_adder_tb;
  reg x,y,z;
  wire sum, carry;
  
  full_adder DUT(
    .a(x),
    .b(y),
    .c(z),
    .sum(sum),
    .carry(carry));
  
  initial begin
    $monitor("x=%b, y=%b, z=%b, sum=%b, carry=%b", x,y,sum,carry);
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
    
    x=1; y=0; y=1;
    #10;
    
    x=1; y=1; y=0;
    #10;
    
    x=1; y=1; y=1;
    #10;
    
    $finish;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, full_adder_tb);
  end
endmodule
