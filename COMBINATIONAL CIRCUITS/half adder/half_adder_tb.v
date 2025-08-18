module half_adder_tb;
  reg x,y;
  wire sum, carry;
  
  half_adder DUT(
    .a(x),
    .b(y),
    .sum(sum),
    .carry(carry));
  
  initial begin
    $monitor("x=%b, y=%b, sum=%b, carry=%b", x,y,sum,carry);
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
    $dumpvars(0, half_adder_tb);
  end
endmodule
