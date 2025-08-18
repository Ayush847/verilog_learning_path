module full_sub(
  input a,
  input b,
  input c,
  output diff,
  output borrow);
  
  assign diff = a^b^c;
  assign borrow = ~a&(b^c)|(b&c);
  
endmodule
