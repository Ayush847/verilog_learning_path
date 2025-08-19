module mux_tb;
  reg x,y,select;
  wire z;
  
  mux DUT(
    .a(x),
    .b(y),
    .select(select),
    .c(z));
    
    initial begin
      $monitor("x=%b, y=%b, select=%b, z=%b", x, y, select, z);

      
      select=0;x=0;y=0;
      #10;
      select=0;x=0;y=1;
      #10;
      select=0;x=1;y=0;
      #10;
      select=0;x=1;y=1;
      #10
      select=1;x=0;y=0;
      #10;
      select=1;x=0;y=1;
      #10;
      select=1;x=1;y=0;
      #10;
      select=1;x=1;y=1;
      #10;
      
      $finish;
    end
    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0, mux_tb);
    end
endmodule
    
