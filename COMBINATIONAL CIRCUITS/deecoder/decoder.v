module priority_encoder(d0, d1, d2, d3, x,y,valid);
  input d0, d1, d2, d3;
  output reg x,y,valid;
  
  always @(*) begin
    valid =1;
    
    if (d0) begin
      x=0; y=0;
    end
    
    else if (d1) begin
      x=0; y=1;
    end
    
    else if(d2) begin
      x=1; y=0;
    end
    
    else if(d3) begin
      x=1; y=1;
    end
    else begin
      x=0; y=0; valid =0;
    end
  end
endmodule
