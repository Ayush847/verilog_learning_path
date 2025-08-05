`timescale 1ns/ 1ps

module or_gate_tb;
  reg x;
  reg y;
  wire z;
  
  or_gate DUT(
    .a(x),
    .b(y),
    .c(z));
  
  initial begin
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
    $dumpvars(0, or_gate_tb);
  end
endmodule
