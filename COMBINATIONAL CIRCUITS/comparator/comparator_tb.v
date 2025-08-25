module comparator_tb;
  reg a0,a1,b0,b1;
  wire E, G, L, c,d;
  
  comparator DUT(
    .a0(a0),
    .a1(a1),
    .b0(b0),
    .b1(b1),
    .E(E),
    .G(G),
    .L(L));
  
initial begin
    $monitor("A=%b%b  B=%b%b  -> L=%b E=%b G=%b", a1,a0,b1,b0,L,E,G);

    a1=0;a0=0; b1=0;b0=0; #10;  
    a1=0;a0=1; b1=0;b0=0; #10;  
    a1=0;a0=1; b1=1;b0=0; #10;  
    a1=1;a0=0; b1=0;b0=1; #10;  
    a1=1;a0=1; b1=1;b0=0; #10;  
    a1=1;a0=0; b1=1;b0=0; #10;  
    a1=0;a0=0; b1=1;b0=1; #10;

    $finish;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0, comparator_tb);
  end
endmodule
  
