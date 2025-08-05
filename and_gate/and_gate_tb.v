`timescale 1ns / 1ps

module and_gate_tb;
  reg x;
  reg y;
  wire z;
  
  and_gate DUT(
    .a(x),
    .b(y),
    .c(z));
  initial begin
    #10;
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
    $dumpvars(0, and_gate_tb);
  end
endmodule
  
  
  
  
