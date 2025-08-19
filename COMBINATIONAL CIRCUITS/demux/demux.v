module demux(a,b,c,d,s0,s1,y);
  input y,s0,s1;
  output reg a,b,c,d;
  
  always@(*) begin
    a=0;b=0;c=0;d=0;
    
    if(s1==0 && s0==0) a=y;
    else if(s1==0 && s0==1) b=y;
    else if(s1==1 && s0==0) c=y;
    else d=y;
  end
endmodule
