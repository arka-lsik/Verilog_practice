//D FF behavioral mdodel 1 with Ashynchronus reset
module (q,clk,d,rst);
  input d,clk,rst;
  output q;

  always@(posedge clk or posedge rst)
    if(rst)
      q<=1'b0;
  else
    q<=d;
endmodule


////D FF behavioral mdodel 2 with Ashynchronus reset
module (q,clk,d,rst);
  input d,clk,rst;
  output q;

  always@(posedge clk or negedge rst)
    if(rst)
      q<=1'b0;
  else
    q<=d;
endmodule


////D FF behavioral mdodel 3 with Ashynchronus reset
module (q,clk,d,rst);
  input d,clk,rst;
  output q;

  always@(negedge clk or posedge rst)
    if(rst)
      q<=1'b0;
  else
    q<=d;
endmodule
