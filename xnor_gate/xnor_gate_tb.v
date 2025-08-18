`timescale 1ns / 1ps

module xor_gate_tb;
  reg x;
  reg y;
  wire z;
  
  xor_gate DUT(
    .a(x),
    .b(y),
    .c(z));
  initial begin
  	x=1'b0; y=1'b0;
  	#10;
  	x=1'b0; y=1'b1;
  	#10;
  	x=1'b1; y=1'b0;
  	#10;
  	x=1'b1; y=1'b1;
  	#20;
    $finish;
  end
  initial begin
    $display("Time | a | b | c");
    $monitor("%0t | %b | %b |%b", $time, x,y,z);
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, xor_gate_tb);
  end
endmodule
