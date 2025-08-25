module comparator(
  input a0, a1, b0, b1,
  output E, G, L);
  
  wire c=~(a1^b1);
  wire d=~(a0^b0);
  
  assign E = d&c;
  assign L = (~a1 & b1)|(c & ~a0&b0);
  assign G = (a1& ~b1)|(c&a0& ~b0);
  
endmodule
