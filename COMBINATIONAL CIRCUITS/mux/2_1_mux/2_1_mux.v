module mux(
  input a,
  input b,
  input select,
  output c);
  
  assign c = select ? a : b;
  
endmodule
